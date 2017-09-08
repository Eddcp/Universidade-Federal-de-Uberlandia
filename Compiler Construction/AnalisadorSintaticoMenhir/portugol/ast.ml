type identificador = string

type prog = Prog of declaracao_algoritmo * var_decl_block option * func_decl_list * statements
and declaracao_algoritmo = DeclAlg
and var_decl_block = VarDeclBlock of var_decl list
and var_decl = vars list
and vars = VarDecl of identificador * tipo
and func_decl_list = func_decl list
and func_decl = FuncDecl of fparams option * functype option * fvardecl * funcbloc
and fparams = FParams of fparam list
and fparam = FParam of identificador * tipo
and functype = FuncTipo of tipo
and fvardecl = FVarDecl of var_decl_block option
and funcbloc = FuncBloc of stm_list list
and statements = StmBlock of stm_list list

and tipo = Inteiro
		  |Real
		  |Booleano
		  |Caractere

and stm_list  = StmAttrib of lvalue * expr
		  	   |Fcallargs of identificador * fargs option
		  	   |StmRetorne of expr option
		  	   |StmSe of expr * stm_list list * senao option
		  	   |StmEscolha of identificador * case list * stm_list list
		  	   |StmPara of stm_list list
		  	   |StmLeia of identificador
		  	   |StmEscreva of expr list
		  	   |StmEscreval of expr list
		  	   |StmEnquanto of stm_list list

and senao = StmSeNao of stm_list list

and case = StmCase of stm_list list

and lvalue = Var of identificador
			|VarElement of lvalue * expr

and expr = ExpOp of expr * op * expr
		  |ExpTerm of termo
		  |ExpTermNeg of termo

and op = Soma
		|Subtracao
		|Multiplicacao
		|Divisao
		|Potencia
		|Modulo
		|Igual
		|Diferente
		|Menor
		|MenorIgual
		|Maior
		|MaiorIgual
		|ELogico
		|OuLogico
		|XouLogico

and termo = TermoFcall of stm_list 
		   |TermoLiteral of literal
		   |TermoVar of lvalue


(*let arguments:
  match args with
    None -> []
    Some xs -> xs
  and fargs = args list*)

and args = Fargs of expr


and literal = LitString 
			 |Int of int
			 |Float of float
			 |LitChar
			 |Bool of logico_value

and logico_value = Verdadeiro
				  |Falso
			