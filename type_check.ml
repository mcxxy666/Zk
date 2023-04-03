open Datatype

let rec check_message = function
  | Enc (m, k) ->
      let m_type = check_message m in
      let k_type = check_message k in
      (match k_type with
      | ETKey t' when m_type = t' -> ETEnc m_type
      | _ -> failwith "type error")
  | _ -> failwith "error"

and check_procexp env = function
  | In (m, n, _, p) ->
      let m_type = check_message m in
      (match m_type with
      | ETChan t ->
          let env = (n, t) :: env in
          check_procexp env p
      | _ -> failwith "type error")
  | Par (p, q) ->
      let fp = check_procexp env p in
      let fs = check_procexp (env @ fp) q in
      let fq = check_procexp env q in
      let es = check_procexp (env @ fq) p in
      es @ fs
  | Begin (m, p) ->
      let m_type = check_message m in
      let p_env = check_procexp env p in
      p_env
  | End (m, p) ->
      let m_type = check_message m in
      let p_env = check_procexp env p in
      p_env
  | _ -> failwith "error"
      