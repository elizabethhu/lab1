(* 
			      CS51 Lab 1
		     Basic Functional Programming
			     Spring 2017
Objective:

This lab is intended to get you up and running with the course's
asssignment submission system, and thinking about core concepts
introduced in class, including:

    concrete versus abstract syntax
    basic and complex types
    functional programming, both first-order and higher-order
*)

(*======================================================================
Part 0: Testing your Gradescope Interaction

Labs and problem sets in CS51 are submitted using the Gradescope
system. By now, you should be set up with Gradescope.

........................................................................
Exercise 1: To make sure that the setup works, submit this file,
just as is, under the filename "lab1.ml" to the Lab 1 assignment on
the CS51 Gradescope web site.
........................................................................

When you submit labs (including this one) Gradescope will check that the
submission compiles cleanly, and if so, will run a set of unit tests
on the submission. For this part 0 submission, most of the unit tests
will fail (as you haven't done the exercises yet). But that's
okay. You still got 100% of the credit! Congratulations! (That's what
we mean when we say "labs are graded on effort, not result.")

Now let's get back to doing the remaining exercises so that more of
the unit tests pass.

........................................................................
Exercise 2: So that you can see how the unit tests in labs work,
replace the "failwith" expression below with the integer 42, so that
exercise2 is a function that returns 42 (instead of failing). When you
submit, the Exercise 2 unit test should then pass.
......................................................................*)

let exercise2 () = 42 ;;

(* Note that your grade on labs is not dependent on your passing the
unit tests. You'll see that even when a unit test is marked as passed,
it is still given 0 out of 0 points. The points on labs come from
making a good faith effort to do the labs (as evidenced by attendance
and the submission itself), for which you'll see points being
supplied.

(Of course, the situation is different for problem sets. There, we
grade both on correctness of the code (as evidenced by passing the
unit tests) and the quality of the code (based on code review from the
instructional staff).)

From here on, you'll want to test your lab solutions locally before
submitting them at the end of lab to Gradescope. A simple way to do that
is to cut and paste the exercises into an OCaml interpreter, such as
ocaml, which you run with the command

    % ocaml

We call this kind of interaction a "read-eval-print loop" or
"REPL". Alterantively, you can feed the whole file to OCaml with the
command:

    % ocaml < lab1.ml

to see what happens.
*)

(*======================================================================
Part 1: Concrete versus abstract syntax

In class, we distinguished concrete from abstract syntax. Abstract
syntax corresponds to the substantive tree structuring of expressions,
concrete syntax to the particulars of how those structures are made
manifest in the language's textual notation.

........................................................................
Exercise 3: Consider the following abstract syntax tree:

      -
      |
      |
      -
      ^
     / \
    /   \
   5     3

(that is, the negation of the result of subtracting 3 from 5). How
might this be expressed in the concrete syntax of OCaml using the
fewest parentheses? Replace the "failwith" expression with the
appropriate OCaml expression to assign the value to the variable
exercise1 below.
......................................................................*)

let exercise3 () = failwith "exercise3 not implemented" ;;

(* Hint: The OCaml concrete expression

   - 5 - 3

does *not* correspond to the abstract syntax above.

........................................................................
Exercise 4: Draw the tree that the concrete syntax "- 5 - 3" does
correspond to. Check it with a member of the course staff if you'd
like.
......................................................................*)

   
(*======================================================================
Part 2: Types and type inference

........................................................................
Exercise 5: What are appropriate types to replace the ??? in the
expressions below? Test your solution by uncommenting the examples
(removing the (* and *) at start and end) and verifying that no typing
error is generated.
......................................................................*)

(*   <--- remove this start of comment line

let exercise5a : ??? = 42 ;;

let exercise5b : ??? =
  let greet y = "Hello " ^ y
  in greet "World!";;

let exercise5c : ???  =
  fun (x, y) -> x + int_of_float y ;;

let exercise5d : ??? =
  fun x -> x < x + 1 ;;

let exercise5e : ??? =
  fun x -> if x then [x] else [] ;;

remove this end of comment line too ----> *)

(*======================================================================
Part 3: First-order functional programming

We'll start with some "finger exercises" defining simple functions
like those from class before moving onto more complex problems. As a
reminder, here's the definition for the length function of type int
list -> int:

let rec length (lst : int list) : int =
  match lst with
  | [] -> 0
  | head :: tail -> 1 + length tail ;;

........................................................................
Exercise 6: Define a function square_all that squares all of the
elements of an integer list. We've provided a bit of template code,
supplying the first line of the function definition but the body of
the skeleton code just fails by forcing an error using the built-in
failwith function. Edit the code to implement square_all
properly.

Test out your implementation of square_all by modifying the template
code below to define exercise6 to be the square_all function applied
to the list containing the elements 3, 4, and 5? You'll want to
replace the "[]" with the correct functional call.
......................................................................*)

let square_all (lst : int list) : int list =
  failwith "square_all not implemented" ;;

let exercise6 = [] ;;

(*......................................................................
Exercise 7: Define a recursive function that sums an integer
list. (What's a sensible return value for the empty list?)
......................................................................*)

let sum (lst : int list) : int =
  failwith "sum not implemented" ;;
  
(*......................................................................
Exercise 8: Define a recursive function that returns the maximum
element in a non-empty integer list. On the empty list, the function
can raise an appropriate exception -- a Match_failure or
Invalid_argument exception for instance.
......................................................................*)

let max_list (lst : int list) : int =
  failwith "max_list not implemented" ;;

(*......................................................................
Exercise 9: Define a function zip, that takes two int lists and
returns a list of pairs of ints, one from each of the two argument
lists. In case of mismatched list lengths, your function can just
raise an error.  For example, zip [1;2;3] [4;5;6] should evaluate to
[(1, 4); (2, 5); (3, 6)].

To think about: Why wouldn't it be possible, in cases of mismatched
length lists, to just pad the shorter list with, say, false values, so
that, zip [1] [2; 3; 4] = [(1, 2); (false, 3); (false, 4)]?
......................................................................*)

let zip (x : int list) (y : int list) : (int * int) list =
  failwith "zip not implemented" ;;

(*.....................................................................
Exercise 10: Recall the definition of the function prods from lecture
(duplicated below).

Using sum, prods, and zip, define a function dotprod that
takes the dot product of two integer lists (that is, the sum of the
products of corresponding elements of the lists). For example, you
should have:

# dotprod [1;2;3] [0;1;2] ;;
- : int = 8
# dotprod [1;2] [5;10] ;;
- : int = 25

Even without looking at the code for the functions, carefully looking
at the type signatures for zip, prods, and sum should give a good idea
of how you might combine these functions to implement dotproduct.

If you've got the right idea, your implementation should be literally
a single line of code. If it isn't, try it again, getting into the
functional programming zen mindset.
......................................................................*)

let rec prods (lst : (int * int) list) : int list =
  match lst with
  | [] -> []
  | (x, y) :: tail -> (x * y) :: (prods tail) ;;

let dotprod (a : int list) (b : int list) : int =
  failwith "dotprod not implemented" ;;

(*======================================================================
Part 4: High-order functional programming with map, filter, and fold

In these exercises, you should use the built-in functions map, filter,
and fold_left and fold_right provided in the OCaml List module to
implement these simple functions.

IMPORTANT NOTE 1: When you make use of these functions, you'll either
need to prefix them with the module name, for example, List.map or
List.fold_left, or you'll need to open the module with the line

    open List ;;

You can place that line at the top of this file if you'd like.

IMPORTANT NOTE 2: In these labs, and in the problem sets as well, we'll
often supply some skeleton code that looks like this:

    let somefunction (arg1 : type) (arg2 : type) : returntype =
      failwith "somefunction not implemented"

We provide this to give you an idea of the functions intended name,
its arguments and their types, and the return type. But there's no
need to slavishly follow that particular way of implementing code to
those specifications. In particular, you may want to modify the first
line to introduce, say, a rec keyword (if your function is to be
recursive):

    let rec somefunction (arg1 : type) (arg2 : type) : returntype =
      ...your further code here...

Or you might want to define the function using anonymous function
syntax. (If you haven't seen this yet, come back to this comment later
when you have.)

    let somefunction =
      fun (arg1 : type) (arg2 : type) : returntype ->
        ...your further code here...

This will be especially pertinent in this section, where functions can
be built just by applying other higher order functions directly,
without specifying the arguments explicitly, for example, in this
implementation of the double function, which doubles each element of a
list:

    let double : int list -> int list =
      map (( * ) 2) ;;
    
END IMPORTANT NOTES

........................................................................
Exercise 11: Reimplement sum using fold_left, naming it sum_ho (for
"higher order").
......................................................................*)

let sum_ho (lst : int list) : int =
  failwith "sum_ho not implemented" ;;

(*......................................................................
Exercise 12: Reimplement prods using map.
......................................................................*)

let prods_ho (lst : (int * int) list) : int list =
  failwith "prods_ho not implemented" ;;
  
(*......................................................................
Exercise 13: The OCaml List module provides, in addition to the map,
fold_left, and fold_right higher-order functions, several other useful
higher-order list manipulation functions. For instance, map2 is like
map, but takes two lists instead of one along with a function of two
arguments and applies the function to corresponding elements of the
two lists to form the result list. Use map2 to reimplement zip.
......................................................................*)

let zip_ho (x : int list) (y : int list) : (int * int) list =
  failwith "sum_ho not implemented" ;;

(*......................................................................
Exercise 14: Define a function evens, using these higher-order
functional programming techniques, that returns a list of all of the
even numbers in its argument list.
......................................................................*)
   
let evens : int list -> int list =
  fun _ -> failwith "evens not implemented" ;;
