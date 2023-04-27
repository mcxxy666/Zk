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

open Parsing;;
# 3 "parser.mly"
  open Datatype
# 41 "parser.ml"
let yytransl_const = [|
  259 (* INL *);
  260 (* INR *);
  261 (* IN *);
  262 (* ZERO *);
  263 (* OUTPUT *);
  264 (* INPUT *);
  265 (* OUTPUTS *);
  266 (* INPUTS *);
  267 (* PAR *);
  268 (* NU *);
  269 (* NUS *);
  270 (* NUSYM *);
  271 (* NUASYM *);
  272 (* CHECK *);
  273 (* CASE *);
  274 (* DECRYPT *);
  275 (* SPLIT *);
  276 (* MATCH *);
  277 (* BEGIN *);
  278 (* END *);
  279 (* IS *);
  280 (* LPAREN *);
  281 (* RPAREN *);
  282 (* ELPAREN *);
  283 (* ERPAREN *);
  284 (* COLON *);
  285 (* COMMA *);
  286 (* PERIOD *);
  287 (* WITH *);
  288 (* COPY *);
  289 (* UNIT *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* IDENT *);
  258 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\000\000"

let yylen = "\002\000\
\002\000\001\000\003\000\003\000\005\000\003\000\003\000\005\000\
\003\000\005\000\005\000\005\000\007\000\006\000\009\000\011\000\
\016\000\010\000\010\000\004\000\002\000\002\000\003\000\001\000\
\001\000\005\000\004\000\004\000\004\000\006\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\024\000\000\000\000\000\002\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\025\000\032\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\021\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\031\000\000\000\023\000\000\000\000\000\003\000\
\000\000\006\000\000\000\009\000\027\000\028\000\000\000\000\000\
\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\
\000\000\000\000\029\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\026\000\
\000\000\005\000\008\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\030\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\017\000"

let yydgoto = "\002\000\
\018\000\019\000\020\000"

let yysindex = "\255\255\
\168\255\000\000\000\000\240\254\248\254\000\000\019\255\040\255\
\040\255\040\255\040\255\040\255\040\255\144\255\067\255\168\255\
\000\000\000\000\028\255\003\000\040\255\040\255\000\255\040\255\
\005\255\007\255\009\255\016\255\250\254\000\000\039\255\041\255\
\044\255\057\255\074\255\001\255\067\255\034\255\056\255\040\255\
\068\255\040\255\071\255\168\255\000\000\049\255\051\255\076\255\
\242\254\082\255\053\255\062\255\063\255\168\255\069\255\077\255\
\079\255\078\255\000\000\040\255\000\000\065\255\040\255\000\000\
\075\255\000\000\080\255\000\000\000\000\000\000\101\255\084\255\
\003\255\108\255\110\255\000\000\168\255\168\255\168\255\111\255\
\088\255\030\255\000\000\168\255\168\255\168\255\113\255\089\255\
\114\255\090\255\092\255\056\255\056\255\056\255\093\255\000\000\
\040\255\000\000\000\000\056\255\097\255\040\255\096\255\123\255\
\126\255\168\255\000\000\098\255\124\255\103\255\106\255\107\255\
\056\255\168\255\168\255\040\255\132\255\133\255\252\254\056\255\
\134\255\168\255\168\255\137\255\168\255\056\255\056\255\118\255\
\056\255\142\255\121\255\119\255\168\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\006\000\009\000\010\000\000\000\000\000\
\000\000\000\000\000\000\013\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\014\000\000\000\000\000\000\000\000\000\000\000\000\000\017\000\
\000\000\000\000\000\000\000\000\000\000\018\000\021\000\000\000\
\022\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\038\000\011\000"

let yytablesize = 303
let yytable = "\001\000\
\004\000\007\000\045\000\088\000\022\000\010\000\044\000\021\000\
\011\000\012\000\059\000\044\000\014\000\013\000\060\000\022\000\
\015\000\018\000\124\000\023\000\019\000\016\000\048\000\054\000\
\036\000\061\000\039\000\050\000\089\000\051\000\003\000\052\000\
\004\000\005\000\040\000\041\000\042\000\043\000\053\000\055\000\
\003\000\056\000\004\000\005\000\057\000\025\000\026\000\027\000\
\028\000\029\000\030\000\035\000\038\000\024\000\068\000\015\000\
\097\000\058\000\046\000\047\000\063\000\049\000\017\000\024\000\
\076\000\015\000\044\000\003\000\065\000\004\000\005\000\067\000\
\017\000\069\000\062\000\070\000\071\000\064\000\073\000\066\000\
\040\000\041\000\042\000\043\000\072\000\074\000\075\000\092\000\
\093\000\094\000\024\000\082\000\037\000\077\000\098\000\099\000\
\100\000\081\000\059\000\017\000\083\000\078\000\060\000\079\000\
\084\000\086\000\080\000\087\000\090\000\085\000\091\000\095\000\
\096\000\101\000\103\000\102\000\113\000\106\000\104\000\083\000\
\105\000\108\000\110\000\111\000\119\000\120\000\112\000\114\000\
\115\000\116\000\117\000\118\000\126\000\127\000\107\000\129\000\
\122\000\123\000\125\000\109\000\128\000\130\000\131\000\134\000\
\003\000\132\000\004\000\005\000\133\000\006\000\000\000\000\000\
\000\000\121\000\000\000\031\000\032\000\033\000\034\000\007\000\
\008\000\009\000\010\000\011\000\012\000\013\000\000\000\014\000\
\003\000\015\000\004\000\005\000\000\000\006\000\000\000\016\000\
\017\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\
\008\000\009\000\010\000\011\000\012\000\013\000\000\000\014\000\
\000\000\015\000\000\000\000\000\000\000\000\000\000\000\016\000\
\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\004\000\007\000\044\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\
\007\000\004\000\007\000\022\000\010\000\022\000\010\000\011\000\
\012\000\011\000\012\000\014\000\013\000\014\000\013\000\015\000\
\018\000\015\000\018\000\019\000\016\000\019\000\016\000"

let yycheck = "\001\000\
\000\000\000\000\000\000\001\001\000\000\000\000\011\001\024\001\
\000\000\000\000\025\001\011\001\000\000\000\000\029\001\024\001\
\000\000\000\000\023\001\001\001\000\000\000\000\023\001\030\001\
\014\000\025\001\016\000\023\001\026\001\023\001\001\001\023\001\
\003\001\004\001\007\001\008\001\009\001\010\001\023\001\001\001\
\001\001\001\001\003\001\004\001\001\001\008\000\009\000\010\000\
\011\000\012\000\013\000\014\000\015\000\024\001\044\000\026\001\
\027\001\001\001\021\000\022\000\027\001\024\000\033\001\024\001\
\054\000\026\001\011\001\001\001\001\001\003\001\004\001\001\001\
\033\001\025\001\037\000\025\001\001\001\040\000\026\001\042\000\
\007\001\008\001\009\001\010\001\003\001\024\001\024\001\077\000\
\078\000\079\000\024\001\027\001\026\001\025\001\084\000\085\000\
\086\000\060\000\025\001\033\001\063\000\025\001\029\001\025\001\
\030\001\005\001\029\001\024\001\001\001\030\001\001\001\001\001\
\025\001\001\001\001\001\027\001\106\000\025\001\029\001\082\000\
\029\001\025\001\027\001\001\001\114\000\115\000\001\001\030\001\
\005\001\027\001\025\001\025\001\122\000\123\000\097\000\125\000\
\005\001\005\001\005\001\102\000\004\001\024\001\001\001\133\000\
\001\001\025\001\003\001\004\001\030\001\006\001\255\255\255\255\
\255\255\116\000\255\255\012\001\013\001\014\001\015\001\016\001\
\017\001\018\001\019\001\020\001\021\001\022\001\255\255\024\001\
\001\001\026\001\003\001\004\001\255\255\006\001\255\255\032\001\
\033\001\255\255\255\255\255\255\255\255\255\255\255\255\016\001\
\017\001\018\001\019\001\020\001\021\001\022\001\255\255\024\001\
\255\255\026\001\255\255\255\255\255\255\255\255\255\255\032\001\
\033\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\011\001\011\001\011\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\023\001\
\023\001\025\001\025\001\023\001\023\001\025\001\025\001\023\001\
\023\001\025\001\025\001\023\001\023\001\025\001\025\001\023\001\
\023\001\025\001\025\001\023\001\023\001\025\001\025\001"

let yynames_const = "\
  INL\000\
  INR\000\
  IN\000\
  ZERO\000\
  OUTPUT\000\
  INPUT\000\
  OUTPUTS\000\
  INPUTS\000\
  PAR\000\
  NU\000\
  NUS\000\
  NUSYM\000\
  NUASYM\000\
  CHECK\000\
  CASE\000\
  DECRYPT\000\
  SPLIT\000\
  MATCH\000\
  BEGIN\000\
  END\000\
  IS\000\
  LPAREN\000\
  RPAREN\000\
  ELPAREN\000\
  ERPAREN\000\
  COLON\000\
  COMMA\000\
  PERIOD\000\
  WITH\000\
  COPY\000\
  UNIT\000\
  EOF\000\
  "

let yynames_block = "\
  IDENT\000\
  INT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'proc) in
    Obj.repr(
# 53 "parser.mly"
  ( _1 )
# 285 "parser.ml"
               : unit Datatype.procexp))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "parser.mly"
  ( Zero )
# 291 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Datatype.message) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Datatype.message) in
    Obj.repr(
# 59 "parser.mly"
  ( Out(_1,_3) )
# 299 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Datatype.message) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 61 "parser.mly"
  ( In(_1,_3,(),Zero) )
# 307 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : Datatype.message) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 63 "parser.mly"
  ( In(_1,_3,(),_5) )
# 316 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Datatype.message) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Datatype.message) in
    Obj.repr(
# 65 "parser.mly"
  ( OutS(_1,_3) )
# 324 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Datatype.message) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 67 "parser.mly"
  ( InS(_1,_3,(),Zero) )
# 332 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : Datatype.message) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 69 "parser.mly"
  ( InS(_1,_3,(),_5) )
# 341 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'proc) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 71 "parser.mly"
  ( Par(_1,_3) )
# 349 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 73 "parser.mly"
  ( Nu(_3,(),_5) )
# 357 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 75 "parser.mly"
  ( NuS(_3,(),_5) )
# 365 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 77 "parser.mly"
  ( NuSym(_3,(),_5) )
# 373 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 79 "parser.mly"
  ( NuAsym(_3,(),_5,(),_7) )
# 382 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 81 "parser.mly"
  ( Check(_2,_4,_6) )
# 391 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 7 : Datatype.message) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : Datatype.message) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 83 "parser.mly"
  ( DecSym(_2,_5,(),_7,_9) )
# 401 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 9 : Datatype.message) in
    let _6 = (Parsing.peek_val __caml_parser_env 5 : string) in
    let _9 = (Parsing.peek_val __caml_parser_env 2 : Datatype.message) in
    let _11 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 85 "parser.mly"
  ( DecAsym(_2,_6,(),_9,_11) )
# 411 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 14 : Datatype.message) in
    let _6 = (Parsing.peek_val __caml_parser_env 10 : string) in
    let _9 = (Parsing.peek_val __caml_parser_env 7 : 'proc) in
    let _13 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _16 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 87 "parser.mly"
  ( Case(_2,_6,(),_9,_13,(),_16) )
# 422 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 8 : Datatype.message) in
    let _5 = (Parsing.peek_val __caml_parser_env 5 : string) in
    let _7 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _10 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 89 "parser.mly"
  ( Split(_2,_5,(),_7,(),_10) )
# 432 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 8 : Datatype.message) in
    let _5 = (Parsing.peek_val __caml_parser_env 5 : string) in
    let _7 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _10 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 91 "parser.mly"
  ( Match(_2,_5,_7,(),_10) )
# 442 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : Datatype.message) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 93 "parser.mly"
  ( Begin(_2,_4) )
# 450 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Datatype.message) in
    Obj.repr(
# 95 "parser.mly"
  ( End(_2) )
# 457 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 97 "parser.mly"
  ( Copy(_2) )
# 464 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'proc) in
    Obj.repr(
# 99 "parser.mly"
  ( _2 )
# 471 "parser.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 104 "parser.mly"
  ( Name(ENname(_1)) )
# 478 "parser.ml"
               : Datatype.message))
; (fun __caml_parser_env ->
    Obj.repr(
# 106 "parser.mly"
  ( Unit )
# 484 "parser.ml"
               : Datatype.message))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Datatype.message) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Datatype.message) in
    Obj.repr(
# 108 "parser.mly"
  ( Pair(_2,_4) )
# 492 "parser.ml"
               : Datatype.message))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Datatype.message) in
    Obj.repr(
# 110 "parser.mly"
  ( Inl(_3) )
# 499 "parser.ml"
               : Datatype.message))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Datatype.message) in
    Obj.repr(
# 112 "parser.mly"
  ( Inr(_3) )
# 506 "parser.ml"
               : Datatype.message))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : Datatype.message) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Datatype.message) in
    Obj.repr(
# 114 "parser.mly"
  ( EncSym(_2,_4) )
# 514 "parser.ml"
               : Datatype.message))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : Datatype.message) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Datatype.message) in
    Obj.repr(
# 116 "parser.mly"
  ( EncAsym(_3,_6) )
# 522 "parser.ml"
               : Datatype.message))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Datatype.message) in
    Obj.repr(
# 118 "parser.mly"
  ( _2 )
# 529 "parser.ml"
               : Datatype.message))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : unit Datatype.procexp)
