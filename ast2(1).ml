exception Type_error

type tipe =
  | Int
  | Private
  | Un
  | Ch of tipe
  | Nonce of atomic_effect list
  | Hash
  | Key of tipe
  | Enc of tipe

and atomic_effect =
  | End of message
  | Check of string

and message =
  | Variable of string
  | Set of message list
  | Ran
  | Hash of message
  | Encryption of message

type process =
  | Out of {m: message; n: message; p: process}
  | In of {m: message; n: message; p: process}
  | New of {a: string; t: tipe; p: process}
  | Parallel of {p: process; q: process}
  | Split of {m: message; xs: string list; p: process}
  | Check of {m: message; n: message; p: process}
  | Assume of {m: int} (* TODO *)
  | Assert of {p: process} (* TODO *)
  | Let of {x: string; t: tipe; m: message; p: process}
  | Cast of {m: message; x: string; t: tipe; p: process}
  | Decrypt of {m: message; x: string; t: tipe; k: message; p: process}
  | Begin of {m: message; p: process}
  | End of {m: message; p: process}

let rec tc_message = function
  | Encryption m ->
      let mt = tc_message m in
      Key mt
  | Ran -> Int
  | Hash m ->
      let mt = tc_message m in
      begin match mt with
      | Int
      | Private -> Hash
      | _ -> raise Type_error
      end
  | Variable _                (* TODO *)
  | Set _ -> raise Type_error (* TODO *)

let rec tc_process env = function
  | Out {m; n; p} ->
      let mt = tc_message m in
      let nt = tc_message n in
      begin match mt with
      | Ch t when t = nt -> tc_process env p
      | _ -> raise Type_error
      end
  | In {m; n; p} ->
      let mt = tc_message m in
      let nt = tc_message n in
      begin match mt with
      | Ch t when t = nt -> tc_process env p
      | _ -> raise Type_error
      end
  | New {a; t; p} ->
      begin match t with
      | Int | Private | Un | Ch _ | Key _ ->
          let env = (a, t) :: env in
          tc_process env p |>
          List.filter (fun x -> x <> (Check a: atomic_effect))
      | _ -> raise Type_error
      end
  | Parallel {p; q} ->
      let fs = tc_process env q in
      let es = tc_process env p in
      fs @ es
  | Split {m; xs; p} -> raise Type_error (* TODO *)
  | Check {m; n; p} ->
      let mt = tc_message m in
      let nt = tc_message n in
      begin match mt, nt with
      | Un, Nonce fs ->
          let es = tc_process env p in
          List.filter (fun e -> List.mem e fs |> not) es
      | _ -> raise Type_error
      end
  | Assume _ -> raise Type_error (* TODO *)
  | Assert _ -> raise Type_error (* TODO *)
  | Let {x; t; m; p} ->
      let mt = tc_message m in
      let env = (x, mt) :: env in
      tc_process env p
  | Cast {m; x; t; p} ->
      let mt = tc_message m in
      begin match mt, t with
      | mt, Nonce fs -> 
          let env = (x, t) :: env in
          tc_process env p @ fs
      | _ -> raise Type_error
      end
  | Decrypt {m; x; t; k; p} ->
      let mt = tc_message m in
      let kt = tc_message k in
      begin match mt, kt with
      | Un, Key t ->
          let env = (x, t) :: env in
          tc_process env p
      | _ -> raise Type_error
      end
  | Begin {m; p} ->
      let _mt = tc_message m in
      let pt = tc_process env p in
      List.filter (fun x -> x <> (End m: atomic_effect)) pt
  | End {m; p} ->
      let _mt = tc_message m in
      let pt = tc_process env p in
      (End m: atomic_effect) :: pt