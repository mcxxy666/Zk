pen Z3
(* open Poly *)

let ctx = mk_context [] 
let f64_sort = Z3.FloatingPoint.mk_sort_64 ctx
let to_real_expr (i: float) = Z3.FloatingPoint.mk_to_real ctx (Z3.FloatingPoint.mk_numeral_f ctx i f64_sort)

let rec zipWith f xs ys = match xs, ys with
  | [], [] -> []
  | x::xs, y::ys -> (f x y) :: zipWith f xs ys
  | _ -> failwith "zipWith: lists have different lengths"
(* make z3 expression from coeffs and uppoer bounds *)
let mk_item (coeff: float) (var : Expr.expr)  : Expr.expr 
  = Z3.Arithmetic.mk_mul ctx [to_real_expr coeff; var] 

let create_vars (n : int) = 
  let rec create_vars' n = 
    if n = 0 then [] else
      let var_name = "x" ^ string_of_int n in
      let var = Arithmetic.Real.mk_const_s ctx var_name in
      var :: create_vars' (n-1)
  in create_vars' n
let mk_lhs (coeffs: float list) (vars : Expr.expr list) : Expr.expr = Z3.Arithmetic.mk_add ctx (zipWith mk_item coeffs vars)

let make_ineq_z3 (coeffs: float list) (vars : Expr.expr list) (pbounds : float * float): Expr.expr = 
  let rhs = to_real_expr (snd pbounds) in
  Z3.Arithmetic.mk_le ctx (mk_lhs coeffs vars) rhs

let make_solver (objcoef : float array) (constrs : float array array) (pbounds : (float * float) array) 
  = let n = Array.length objcoef in
    let xs = create_vars n in
    let ineqs = 
      zipWith (fun c p -> make_ineq_z3 (Array.to_list c) xs p) 
        (Array.to_list constrs) (Array.to_list pbounds) in 
    let obj = mk_lhs (Array.to_list objcoef) xs in
    let optimizer = Z3.Optimize.mk_opt ctx in
    (* let solver = Solver.mk_simple_solver ctx in *)
    (* x's domain *)
    Z3.Optimize.add optimizer (List.map (fun x -> (Z3.Arithmetic.mk_ge ctx x (to_real_expr 0.0))) xs);
    (* inequations *)
    Z3.Optimize.add optimizer ineqs;
    let _= Z3.Optimize.minimize optimizer obj in 

      (* print_endline  *)
      (* 'a option -> 'a *)
      print_endline (Z3.Solver.string_of_status (Z3.Optimize.check optimizer));
      (* 'a option -> 'a *)
      print_endline (Z3.Model.to_string (Option.get (Z3.Optimize.get_model optimizer)))
    

let _  =  make_solver 
        (Array.of_list [2.0; 2.0]) 
        (* (Array.of_list [Array.of_list [1.0; 1.0]; Array.of_list [4.0; 1.0]])  *)
        (Array.of_list [Array.of_list [1.0; 2.0]]) 
        (Array.of_list [(0.0, 40.0);])
    