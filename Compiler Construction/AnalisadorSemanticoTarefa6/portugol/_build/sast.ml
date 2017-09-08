open Ast

type expressao =
		  |ExpOp of op pos * expressao * expressao
		  |ExpFunCall of identificador pos * expressao fargs
		  |ExpString of string pos
		  |ExpInt of int pos
		  |ExpFloat of float pos
		  |ExpChar of char pos
		  |ExpBool of bool pos
		  |ExpVar of (expressao lvalue)
		(*  |ExpNot of expressao pos *)