(* Define message types *)
type variable = string
type nonce = string
type channel = string
type key = string

type message =
  | Var of variable
  | Nonce of nonce
  | Set of message
  | RandomInt
  | Hash of message
  | Encrypt of message * key

(* Define process types *)
type process =
  | Out of message * channel * process
  | In of variable * channel * process
  | New of variable * process
  | Parallel of process * process
  | Split of variable list * message * process
  | Check of nonce * nonce * process
  | Assume of string * process
  | Assert of string * process
  | LetBinding of variable * message * process
  | Cast of message * variable * process
  | Decrypt of message * nonce * process
  | Stop
  | Start of message * process
  | End of message * process
(* Function to send a message *)
let out msg channel process = Out (msg, channel, process)

(* Function to receive a message *)
let in_message var channel process = In (var, channel, process)

(* Function to declare a new variable *)
let new_declaration var process = New (var, process)

(* Function to run processes in parallel *)
let parallel p1 p2 = Parallel (p1, p2)

(* Function to split a message pair *)
let split_pair m vars process = Split (vars, m, process)

(* Function to check nonces *)
let check_nonces nonce1 nonce2 process =
  if nonce1 = nonce2 then process else Stop

(* Function to assume a logical proposition *)
let assume_proposition prop process = Assume (prop, process)

(* Function to assert a logical proposition *)
let assert_proposition prop process = Assert (prop, process)

(* Function for let binding *)
let let_binding var msg process = LetBinding (var, msg, process)

(* Function for cast typing *)
let cast_typing msg var process = Cast (msg, var, process)

(* Function to decrypt a message *)
let decrypt_message msg nonce process = Decrypt (msg, nonce, process)

(* Function to stop a process *)
let stop_process = Stop

(* Function for start declaration *)
let start_declaration msg process = Start (msg, process)

(* Function for end declaration *)
let end_declaration msg process = End (msg, process)
(* Helper function to count the difference between start and end declarations for a given message *)
let rec count_diff acc process msg =
  match process with
  | Start (m, p) -> count_diff (if m = msg then acc + 1 else acc) p msg
  | End (m, p) -> count_diff (if m = msg then acc - 1 else acc) p msg
  | Parallel (p1, p2) -> count_diff (count_diff acc p1 msg) p2 msg
  | _ -> acc

(* Function to check if a process is safe *)
let rec is_safe process =
  match process with
  | Start (msg, p) -> is_safe p
  | End (msg, p) -> count_diff 0 process msg > 0 && is_safe p
  | Parallel (p1, p2) -> is_safe p1 && is_safe p2
  | _ -> true
