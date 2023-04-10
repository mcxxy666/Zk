(* types.ml *)

(* Define basic types *)
type basic_type =
  | Int
  | Private
  | Un
  | Ch of basic_type
  | Nonce
  | Hash
  | Key of basic_type
  | Enc of basic_type

(* Function to create a channel type *)
let create_channel_type t = Ch t

(* Function to create a key type *)
let create_key_type t = Key t

(* Function to create an encryption type *)
let create_encryption_type t = Enc t
