(* Define message types *)
type variable = string
type nonce = string
type channel = string
type key = string

type message =
  | Var of variable
  | Nonce of nonce
  | Pair of message * message
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

(* Example function to encrypt a message *)
let encrypt_message msg key = Encrypt (msg, key)

(* Example function to create a new variable *)
let new_variable name process = New (name, process)

(* Example function to send a message *)
let send_message msg channel process = Out (msg, channel, process)

(* Example function to receive a message *)
let receive_message variable channel process = In (variable, channel, process)
(* Example function to run processes in parallel *)
let run_parallel p1 p2 = Parallel (p1, p2)

(* Example function to split a message pair *)
let split_message_pair vars msg process =
  match msg with
  | Pair (m1, m2) -> Split (vars, msg, process)
  | _ -> failwith "Cannot split non-pair message"

(* Example function to check nonces *)
let check_nonces nonce1 nonce2 process =
  if nonce1 = nonce2 then process else Stop

(* Example function to assume a logical proposition *)
let assume_proposition prop process = Assume (prop, process)

(* Example function to assert a logical proposition *)
let assert_proposition prop process = Assert (prop, process)

(* Example function for let binding *)
let let_binding var msg process = LetBinding (var, msg, process)

(* Example function for cast typing *)
let cast_typing msg var process = Cast (msg, var, process)

(* Example function to decrypt a message *)
let decrypt_message msg nonce process = Decrypt (msg, nonce, process)

(* Example function to stop a process *)
let stop_process = Stop

