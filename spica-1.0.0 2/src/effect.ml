(* effects.ml *)

(* Define atomic effects *)
type atomic_effect =
  | End of string
  | Check of nonce

(* Define effects as a list of atomic effects *)
type effects = atomic_effect list

(* Function to create end effect *)
let create_end_effect label = End label

(* Function to create check effect *)
let create_check_effect nonce = Check nonce

(* Function to union two effects *)
let union_effects es fs = es @ fs

(* Function to remove elements of fs from es *)
let rec difference_effects es fs =
  match fs with
  | [] -> es
  | f :: fs' -> difference_effects (List.filter ((<>) f) es) fs'
