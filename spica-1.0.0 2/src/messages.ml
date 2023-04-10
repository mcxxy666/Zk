(* messages.ml *)

(* Define message types *)
type message =
  | ZeroKnowledgeProof
  | Process of process

(* Define process types *)
and process =
  | BifurcationEquality of message * process * process
  | VerificationBranch of message * process * process

(* Define sieve type *)
type sieve_type = (variable * string) list

(* Define zero-knowledge proof type *)
type zk_proof_type = sieve_type * message * nonce * sieve_type

(* Function to create a bifurcation by equality process *)
let bifurcation_equality msg p1 p2 = BifurcationEquality (msg, p1, p2)

(* Function to create a verification branch process *)
let verification_branch msg p1 p2 = VerificationBranch (msg, p1, p2)
