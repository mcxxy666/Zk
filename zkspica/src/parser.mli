type token =
  | IDENT of (string)
  | INT of (int)
  | INL
  | INR
  | IN
  | ZERO
  | OUTPUT
  | INPUT
  | OUTPUTS
  | INPUTS
  | PAR
  | NU
  | NUS
  | NUSYM
  | NUASYM
  | CHECK
  | CASE
  | DECRYPT
  | SPLIT
  | MATCH
  | BEGIN
  | END
  | IS
  | LPAREN
  | RPAREN
  | ELPAREN
  | ERPAREN
  | COLON
  | COMMA
  | PERIOD
  | WITH
  | COPY
  | UNIT
  | EOF

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> unit Datatype.procexp
