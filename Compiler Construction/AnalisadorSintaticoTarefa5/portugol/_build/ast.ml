type identificador = string

type prog = Prog of declaracao_algoritmo * var_decl_block option * func_decl_list * statements
and declaracao_algoritmo = DeclAlg
and var_decl_block = VarDeclBlock of var_decl list
and var_decl = vars list
and vars = identificador * tipo
and func_decl_list = func_decl list
and func_decl = FuncDecl of identificador * fparams  * functype option * fvardecl * funcbloc
and fparams = fparam list
and fparam =  identificador * tipo
and functype = FuncTipo of tipo
and fvardecl = FVarDecl of var_decl_block option
and funcbloc = FuncBloc of stm_list list
and statements = StmBlock of stm_list list

and tipo = Inteiro
		  |Real
		  |Booleano
		  |Caractere

and stm_list  = Attrib of lvalue * expr
		  	   |Fcallargs of identificador * fargs 
		  	   |Retorne of expr option
		  	   |Se of expr * stm_list list * senao option
		  	   |Escolha of identificador * case list * stm_list list
		  	   |Para of stm_list list
		  	   |Leia of identificador
		  	   |Escreva of expr list
		  	   |Escreval of expr list
		  	   |Enquanto of stm_list list

and senao = SeNao of stm_list list

and case = CaseInt of int * stm_list list
		  |CaseChar of char * stm_list list

and lvalue = Var of identificador
			|VarElement of lvalue * expr

and expr = ExpOp of expr * op * expr
		  |ExpFunCall of stm_list
		  |ExpLit of literal
		  |ExpVar of lvalue
		  |Not of expr

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


(*let arguments:
  match args with
    None -> []
    Some xs -> xs*)
and fargs = args list

and args = expr


and literal = LitString of string 
			 |Int of int
			 |Float of float
			 |LitChar of char
			 |Bool of bool

and logico_value = Verdadeiro of bool
				  |Falso of bool
			