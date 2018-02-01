(*
			      CS51 Lab 1
		     Basic Functional Programming
			 Some Testing Methods
			     Spring 2017
 *)

(* Here, we introduce a few ways to test the functions you wrote in
   lab. One or more of these methods may be useful in the future as
   you will want to provide for unit-testing of your code for problem
   sets and the final project. As an example, we provide a few tests
   for the square_all function.
 *)

open Lab1 ;; (* for access to your lab1 solution *)
open CS51 ;; (* for access to the verify function *)
  
(* Method 1: Evaluating assertions 

   This method executes the tests right away, throwing an xception if
   any of them fail. There's no way to run the tests though except to
   execute this file. For instance, it's not easy to run them from
   within a REPL. 
 *)
let () = assert (square_all [] = [])
let () = assert (square_all [1] = [1])
let () = assert (square_all [-1] = [1])
let () = assert (square_all [3; 4; 5] = [9; 16; 25])
let () = assert (square_all [4; -10; 12] = [16; 100; 144])

(* Method 2: Aggregating assertions into a testing function 

   By aggregating the assertions, we can both run them here and also
   get access to them in a REPL. It's still annoying that once one
   test fails, the remainder don't get checked.  
 *)
let test_square_all () =
  assert (square_all [] = []);
  assert (square_all [1] = [1]);
  assert (square_all [-1] = [1]);
  assert (square_all [3; 4; 5] = [9; 16; 25]);
  assert (square_all [4; -10; 12] = [16; 100; 144]) ;;

(* Now run the tests *)
let _ = test_square_all () ;;

(* Method 3: Using the CS51 "verify" function 

   We've provided a function verify : bool -> ... in the CS51 module
   that works a bit like an assert, but without throwing an exception
   on failure. Rather, it runs silently returning () unless its
   function argument evaluates to false, in which case it prints a
   user-supplied message a la Printf.printf. Like printf, the message
   can have extra values interpolated within it. See the CS51 module
   for examples.
 *)
let test_square_all_v () =
  verify (square_all [] = []) "empty list";
  verify (square_all [1] = [1]) "positive singleton";
  verify (square_all [-1] = [1]) "negative singleton";
  verify (square_all [3; 4; 5] = [9; 16; 25]) "positive long list";
  verify (square_all [4; -10; 12] = [16; 100; 144]) "mixed long list" ;;

let _ = test_square_all_v () ;;
