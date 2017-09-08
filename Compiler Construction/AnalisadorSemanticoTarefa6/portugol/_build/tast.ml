open Ast

type expressao = ExpVar of (expressao lvalue) * tipo
		  |ExpOp of (op * tipo ) * (expressao * tipo) * (expressao * tipo)
		  |ExpFunCall of identificador * expressao fargs * tipo 
		  |ExpString of string * tipo
		  |ExpInt of int * tipo
		  |ExpFloat of float * tipo
		  |ExpChar of char * tipo
		  |ExpBool of bool * tipo
		(*  |ExpNot of expressao * tipo *)

