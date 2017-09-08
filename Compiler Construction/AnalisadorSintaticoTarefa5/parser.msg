prog: ALGORITMO LITSTRING FUNCAO ID APAR FPAR DECLARA REAL XOU 
##
## Ends in an error in state: 33.
##
## func_decl -> FUNCAO ID APAR option(fparams) FPAR option(func_type) . fvar_decl func_bloc [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID APAR option(fparams) FPAR option(func_type) 
##

<Erro: após tipo de retorno de uma função>

prog: ALGORITMO LITSTRING FUNCAO ID APAR FPAR DECLARA XOU 
##
## Ends in an error in state: 31.
##
## func_type -> DECLARA . tp_primitivo [ VAR INICIO ]
##
## The known suffix of the stack is as follows:
## DECLARA 
##

<Erro: após ":" da declaracao de uma função>

prog: ALGORITMO LITSTRING FUNCAO ID APAR FPAR INICIO FIMFUNCAO XOU 
##
## Ends in an error in state: 188.
##
## list(func_decl) -> func_decl . list(func_decl) [ INICIO ]
##
## The known suffix of the stack is as follows:
## func_decl 
##

<Erro: após fimfuncao>

prog: ALGORITMO LITSTRING FUNCAO ID APAR FPAR INICIO RETORNE PTV FIMESCOLHA 
##
## Ends in an error in state: 174.
##
## func_bloc -> INICIO list(stm_list) . FIMFUNCAO [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## INICIO list(stm_list) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 142, spurious reduction of production list(stm_list) -> 
## In state 153, spurious reduction of production list(stm_list) -> stm_list list(stm_list) 
##

<Erro: após retorno de uma função>

prog: ALGORITMO LITSTRING FUNCAO ID APAR FPAR INICIO XOU 
##
## Ends in an error in state: 36.
##
## func_bloc -> INICIO . list(stm_list) FIMFUNCAO [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## INICIO 
##

<Erro: após inicio de uma função>

prog: ALGORITMO LITSTRING FUNCAO ID APAR FPAR VAR FUNCAO 
##
## Ends in an error in state: 35.
##
## func_decl -> FUNCAO ID APAR option(fparams) FPAR option(func_type) fvar_decl . func_bloc [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID APAR option(fparams) FPAR option(func_type) fvar_decl 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 5, spurious reduction of production list(var_decl) -> 
## In state 19, spurious reduction of production var_decl_block -> VAR list(var_decl) 
## In state 20, spurious reduction of production option(var_decl_block) -> var_decl_block 
## In state 34, spurious reduction of production fvar_decl -> option(var_decl_block) 
##

<Erro: após declaração de variáveis de uma função>

prog: ALGORITMO LITSTRING FUNCAO ID APAR FPAR XOU 
##
## Ends in an error in state: 30.
##
## func_decl -> FUNCAO ID APAR option(fparams) FPAR . option(func_type) fvar_decl func_bloc [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID APAR option(fparams) FPAR 
##

<Erro: após fechamento do paranteses de uma função >

prog: ALGORITMO LITSTRING FUNCAO ID APAR ID DECLARA CARACTER VIRGULA XOU 
##
## Ends in an error in state: 180.
##
## separated_nonempty_list(VIRGULA,fparam) -> fparam VIRGULA . separated_nonempty_list(VIRGULA,fparam) [ FPAR ]
##
## The known suffix of the stack is as follows:
## fparam VIRGULA 
##

<Erro: entre parâmetros de uma função>

prog: ALGORITMO LITSTRING FUNCAO ID APAR ID DECLARA CARACTER XOU 
##
## Ends in an error in state: 179.
##
## separated_nonempty_list(VIRGULA,fparam) -> fparam . [ FPAR ]
## separated_nonempty_list(VIRGULA,fparam) -> fparam . VIRGULA separated_nonempty_list(VIRGULA,fparam) [ FPAR ]
##
## The known suffix of the stack is as follows:
## fparam 
##

<Erro: após tipo de parâmetro de uma função>

prog: ALGORITMO LITSTRING FUNCAO ID APAR ID DECLARA XOU 
##
## Ends in an error in state: 26.
##
## fparam -> ID DECLARA . tp_primitivo [ VIRGULA FPAR ]
##
## The known suffix of the stack is as follows:
## ID DECLARA 
##

<Erro: após ":" dentro dos parâmetros de uma função>

prog: ALGORITMO LITSTRING FUNCAO ID APAR ID XOU 
##
## Ends in an error in state: 25.
##
## fparam -> ID . DECLARA tp_primitivo [ VIRGULA FPAR ]
##
## The known suffix of the stack is as follows:
## ID 
##

<Erro: após identificador de parâmetro de uma função>

prog: ALGORITMO LITSTRING FUNCAO ID APAR XOU 
##
## Ends in an error in state: 24.
##
## func_decl -> FUNCAO ID APAR . option(fparams) FPAR option(func_type) fvar_decl func_bloc [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID APAR 
##

<Erro: após abertura de paranteses dos parâmetros de uma função>

prog: ALGORITMO LITSTRING FUNCAO ID XOU 
##
## Ends in an error in state: 23.
##
## func_decl -> FUNCAO ID . APAR option(fparams) FPAR option(func_type) fvar_decl func_bloc [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID 
##

<Erro: após nome de uma função>

prog: ALGORITMO LITSTRING FUNCAO XOU 
##
## Ends in an error in state: 22.
##
## func_decl -> FUNCAO . ID APAR option(fparams) FPAR option(func_type) fvar_decl func_bloc [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO 
##

<Erro: após palavra-chave funcao>

prog: ALGORITMO LITSTRING INICIO ENQUANTO VERDADEIRO FACA RETORNE PTV FIMALGORITMO 
##
## Ends in an error in state: 155.
##
## stm_enquanto -> ENQUANTO expr FACA list(stm_list) . FIMENQUANTO [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ENQUANTO expr FACA list(stm_list) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 142, spurious reduction of production list(stm_list) -> 
## In state 153, spurious reduction of production list(stm_list) -> stm_list list(stm_list) 
##

<Erro: Comando enquando sem fimenquanto >

prog: ALGORITMO LITSTRING INICIO ENQUANTO VERDADEIRO FACA XOU 
##
## Ends in an error in state: 138.
##
## stm_enquanto -> ENQUANTO expr FACA . list(stm_list) FIMENQUANTO [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ENQUANTO expr FACA 
##

<Erro: após comando faca>

prog: ALGORITMO LITSTRING INICIO ENQUANTO VERDADEIRO VIRGULA 
##
## Ends in an error in state: 137.
##
## expr -> expr . SOMA expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . SUB expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MULT expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . DIVISAO expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . POTENCIA expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MOD expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . IGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . DIFERENTE expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MENOR expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MENORIGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MAIOR expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MAIORIGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . E expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . OU expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . XOU expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## stm_enquanto -> ENQUANTO expr . FACA list(stm_list) FIMENQUANTO [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ENQUANTO expr 
##

<Erro: após enquanto>

prog: ALGORITMO LITSTRING INICIO ENQUANTO XOU 
##
## Ends in an error in state: 136.
##
## stm_enquanto -> ENQUANTO . expr FACA list(stm_list) FIMENQUANTO [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ENQUANTO 
##

<Erro: após palavra-chave enquanto>

prog: ALGORITMO LITSTRING INICIO ESCOLHA ID CASO INT OUTROCASO RETORNE PTV FIMENQUANTO 
##
## Ends in an error in state: 162.
##
## stm_escolha -> ESCOLHA ID nonempty_list(case) OUTROCASO list(stm_list) . FIMESCOLHA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ESCOLHA ID nonempty_list(case) OUTROCASO list(stm_list) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 142, spurious reduction of production list(stm_list) -> 
## In state 153, spurious reduction of production list(stm_list) -> stm_list list(stm_list) 
##

<Erro: comando escolha>

prog: ALGORITMO LITSTRING INICIO ESCOLHA ID CASO INT OUTROCASO XOU 
##
## Ends in an error in state: 161.
##
## stm_escolha -> ESCOLHA ID nonempty_list(case) OUTROCASO . list(stm_list) FIMESCOLHA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ESCOLHA ID nonempty_list(case) OUTROCASO 
##

<Erro: comando escolha>

prog: ALGORITMO LITSTRING INICIO ESCOLHA ID CASO INT XOU 
##
## Ends in an error in state: 158.
##
## case -> CASO INT . list(stm_list) [ OUTROCASO CASO ]
##
## The known suffix of the stack is as follows:
## CASO INT 
##

<Erro: comando escolha>

prog: ALGORITMO LITSTRING INICIO ESCOLHA ID CASO LITCHAR RETORNE PTV SENAO 
##
## Ends in an error in state: 164.
##
## nonempty_list(case) -> case . [ OUTROCASO ]
## nonempty_list(case) -> case . nonempty_list(case) [ OUTROCASO ]
##
## The known suffix of the stack is as follows:
## case 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 142, spurious reduction of production list(stm_list) -> 
## In state 153, spurious reduction of production list(stm_list) -> stm_list list(stm_list) 
## In state 157, spurious reduction of production case -> CASO LITCHAR list(stm_list) 
##

<Erro: comando escolha>

prog: ALGORITMO LITSTRING INICIO ESCOLHA ID CASO LITCHAR XOU 
##
## Ends in an error in state: 135.
##
## case -> CASO LITCHAR . list(stm_list) [ OUTROCASO CASO ]
##
## The known suffix of the stack is as follows:
## CASO LITCHAR 
##

<Erro: comando escolha>

prog: ALGORITMO LITSTRING INICIO ESCOLHA ID CASO XOU 
##
## Ends in an error in state: 134.
##
## case -> CASO . LITCHAR list(stm_list) [ OUTROCASO CASO ]
## case -> CASO . INT list(stm_list) [ OUTROCASO CASO ]
##
## The known suffix of the stack is as follows:
## CASO 
##

<Erro: comando escolha>

prog: ALGORITMO LITSTRING INICIO ESCOLHA ID XOU 
##
## Ends in an error in state: 133.
##
## stm_escolha -> ESCOLHA ID . nonempty_list(case) OUTROCASO list(stm_list) FIMESCOLHA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ESCOLHA ID 
##

<Erro: comando escolha>

prog: ALGORITMO LITSTRING INICIO ESCOLHA XOU 
##
## Ends in an error in state: 132.
##
## stm_escolha -> ESCOLHA . ID nonempty_list(case) OUTROCASO list(stm_list) FIMESCOLHA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ESCOLHA 
##

<Erro: comando escolha>

prog: ALGORITMO LITSTRING INICIO ESCREVA APAR VERDADEIRO FPAR XOU 
##
## Ends in an error in state: 130.
##
## stm_escreva -> ESCREVA APAR separated_nonempty_list(VIRGULA,expr) FPAR . PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ESCREVA APAR separated_nonempty_list(VIRGULA,expr) FPAR 
##

<Erro: comando escreva>

prog: ALGORITMO LITSTRING INICIO ESCREVA APAR XOU 
##
## Ends in an error in state: 128.
##
## stm_escreva -> ESCREVA APAR . separated_nonempty_list(VIRGULA,expr) FPAR PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ESCREVA APAR 
##

<Erro: comando escreva>

prog: ALGORITMO LITSTRING INICIO ESCREVA XOU 
##
## Ends in an error in state: 127.
##
## stm_escreva -> ESCREVA . APAR separated_nonempty_list(VIRGULA,expr) FPAR PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ESCREVA 
##

<Erro: comando escreva>

prog: ALGORITMO LITSTRING INICIO ESCREVAL APAR VERDADEIRO FPAR XOU 
##
## Ends in an error in state: 125.
##
## stm_escreval -> ESCREVAL APAR separated_nonempty_list(VIRGULA,expr) FPAR . PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ESCREVAL APAR separated_nonempty_list(VIRGULA,expr) FPAR 
##

<Erro: comando escreval>

prog: ALGORITMO LITSTRING INICIO ESCREVAL APAR XOU 
##
## Ends in an error in state: 123.
##
## stm_escreval -> ESCREVAL APAR . separated_nonempty_list(VIRGULA,expr) FPAR PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ESCREVAL APAR 
##

<Erro: comando escreval>

prog: ALGORITMO LITSTRING INICIO ESCREVAL XOU 
##
## Ends in an error in state: 122.
##
## stm_escreval -> ESCREVAL . APAR separated_nonempty_list(VIRGULA,expr) FPAR PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## ESCREVAL 
##

<Erro: comando escreval>

prog: ALGORITMO LITSTRING INICIO FIMALGORITMO XOU 
##
## Ends in an error in state: 186.
##
## prog -> declaracao_algoritmo option(var_decl_block) list(func_decl) stm_block . EOF [ # ]
##
## The known suffix of the stack is as follows:
## declaracao_algoritmo option(var_decl_block) list(func_decl) stm_block 
##

<Erro: após fimalgoritmo>

prog: ALGORITMO LITSTRING INICIO ID ACOL VERDADEIRO VIRGULA 
##
## Ends in an error in state: 54.
##
## expr -> expr . SOMA expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . SUB expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . MULT expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . DIVISAO expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . POTENCIA expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . MOD expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . IGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . DIFERENTE expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . MENOR expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . MENORIGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . MAIOR expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . MAIORIGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . E expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . OU expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## expr -> expr . XOU expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FCOL E DIVISAO DIFERENTE ]
## lvalue -> lvalue ACOL expr . FCOL [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE DE ATRIB ATE ACOL ]
##
## The known suffix of the stack is as follows:
## lvalue ACOL expr 
##

<Erro: após abrir colchetes>

prog: ALGORITMO LITSTRING INICIO ID ACOL XOU 
##
## Ends in an error in state: 50.
##
## lvalue -> lvalue ACOL . expr FCOL [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE DE ATRIB ATE ACOL ]
##
## The known suffix of the stack is as follows:
## lvalue ACOL 
##

<Erro: após abrir colchetes>

prog: ALGORITMO LITSTRING INICIO ID APAR VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 92.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## separated_nonempty_list(VIRGULA,expr) -> expr . [ FPAR ]
## separated_nonempty_list(VIRGULA,expr) -> expr . VIRGULA separated_nonempty_list(VIRGULA,expr) [ FPAR ]
##
## The known suffix of the stack is as follows:
## expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO ID APAR VERDADEIRO VIRGULA XOU 
##
## Ends in an error in state: 93.
##
## separated_nonempty_list(VIRGULA,expr) -> expr VIRGULA . separated_nonempty_list(VIRGULA,expr) [ FPAR ]
##
## The known suffix of the stack is as follows:
## expr VIRGULA 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO ID APAR XOU 
##
## Ends in an error in state: 44.
##
## fcall -> ID APAR . option(fargs) FPAR [ XOU VIRGULA SUB SOMA SENAO SE RETORNE PTV POTENCIA PASSO PARA OUTROCASO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR LEIA IGUAL ID FPAR FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO FCOL FACA ESCREVAL ESCREVA ESCOLHA ENTAO ENQUANTO E DIVISAO DIFERENTE CASO ATE ]
##
## The known suffix of the stack is as follows:
## ID APAR 
##

<Erro: após "inicio" bloco de comandos deve estar incorreto>

prog: ALGORITMO LITSTRING INICIO ID ATRIB VERDADEIRO VIRGULA 
##
## Ends in an error in state: 151.
##
## expr -> expr . SOMA expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . SUB expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MULT expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . DIVISAO expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . POTENCIA expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MOD expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . IGUAL expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . DIFERENTE expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MENOR expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MENORIGUAL expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MAIOR expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MAIORIGUAL expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . E expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . OU expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . XOU expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## stm_attr -> lvalue ATRIB expr . PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## lvalue ATRIB expr 
##

<Erro: atribuição incorreta>

prog: ALGORITMO LITSTRING INICIO ID ATRIB XOU 
##
## Ends in an error in state: 150.
##
## stm_attr -> lvalue ATRIB . expr PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## lvalue ATRIB 
##

<Erro: atribuição incorreta>

prog: ALGORITMO LITSTRING INICIO ID VERDADEIRO 
##
## Ends in an error in state: 43.
##
## fcall -> ID . APAR option(fargs) FPAR [ XOU VIRGULA SUB SOMA SENAO SE RETORNE PTV POTENCIA PASSO PARA OUTROCASO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR LEIA IGUAL ID FPAR FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO FCOL FACA ESCREVAL ESCREVA ESCOLHA ENTAO ENQUANTO E DIVISAO DIFERENTE CASO ATE ]
## lvalue -> ID . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATRIB ATE ACOL ]
##
## The known suffix of the stack is as follows:
## ID 
##

<Erro: após "inicio" bloco de comandos deve estar incorreto>

prog: ALGORITMO LITSTRING INICIO ID XOU 
##
## Ends in an error in state: 149.
##
## lvalue -> lvalue . ACOL expr FCOL [ ATRIB ACOL ]
## stm_attr -> lvalue . ATRIB expr PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## lvalue 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 43, spurious reduction of production lvalue -> ID 
##

<Erro: após identificador>

prog: ALGORITMO LITSTRING INICIO LEIA APAR ID FPAR XOU 
##
## Ends in an error in state: 120.
##
## stm_leia -> LEIA APAR ID FPAR . PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## LEIA APAR ID FPAR 
##

<Erro: comando leia>

prog: ALGORITMO LITSTRING INICIO LEIA APAR ID XOU 
##
## Ends in an error in state: 119.
##
## stm_leia -> LEIA APAR ID . FPAR PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## LEIA APAR ID 
##

<Erro: comando leia>

prog: ALGORITMO LITSTRING INICIO LEIA APAR XOU 
##
## Ends in an error in state: 118.
##
## stm_leia -> LEIA APAR . ID FPAR PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## LEIA APAR 
##

<Erro: comando leia>

prog: ALGORITMO LITSTRING INICIO LEIA XOU 
##
## Ends in an error in state: 117.
##
## stm_leia -> LEIA . APAR ID FPAR PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## LEIA 
##

<Erro: comando leia>

prog: ALGORITMO LITSTRING INICIO PARA ID DE VERDADEIRO ATE VERDADEIRO FACA RETORNE PTV FIMFUNCAO 
##
## Ends in an error in state: 166.
##
## stm_para -> PARA lvalue DE expr ATE expr option(passo) FACA list(stm_list) . FIMPARA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## PARA lvalue DE expr ATE expr option(passo) FACA list(stm_list) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 142, spurious reduction of production list(stm_list) -> 
## In state 153, spurious reduction of production list(stm_list) -> stm_list list(stm_list) 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO PARA ID DE VERDADEIRO ATE VERDADEIRO FACA XOU 
##
## Ends in an error in state: 116.
##
## stm_para -> PARA lvalue DE expr ATE expr option(passo) FACA . list(stm_list) FIMPARA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## PARA lvalue DE expr ATE expr option(passo) FACA 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO PARA ID DE VERDADEIRO ATE VERDADEIRO PASSO SOMA XOU 
##
## Ends in an error in state: 112.
##
## passo -> PASSO SOMA . INT [ FACA ]
##
## The known suffix of the stack is as follows:
## PASSO SOMA 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO PARA ID DE VERDADEIRO ATE VERDADEIRO PASSO SUB INT ESCREVAL 
##
## Ends in an error in state: 115.
##
## stm_para -> PARA lvalue DE expr ATE expr option(passo) . FACA list(stm_list) FIMPARA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## PARA lvalue DE expr ATE expr option(passo) 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO PARA ID DE VERDADEIRO ATE VERDADEIRO PASSO SUB XOU 
##
## Ends in an error in state: 110.
##
## passo -> PASSO SUB . INT [ FACA ]
##
## The known suffix of the stack is as follows:
## PASSO SUB 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO PARA ID DE VERDADEIRO ATE VERDADEIRO PASSO XOU 
##
## Ends in an error in state: 109.
##
## passo -> PASSO . SOMA INT [ FACA ]
## passo -> PASSO . SUB INT [ FACA ]
##
## The known suffix of the stack is as follows:
## PASSO 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO PARA ID DE VERDADEIRO ATE VERDADEIRO VIRGULA 
##
## Ends in an error in state: 108.
##
## expr -> expr . SOMA expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . SUB expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MULT expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . DIVISAO expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . POTENCIA expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MOD expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . IGUAL expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . DIFERENTE expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MENOR expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MENORIGUAL expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MAIOR expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . MAIORIGUAL expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . E expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . OU expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## expr -> expr . XOU expr [ XOU SUB SOMA POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FACA E DIVISAO DIFERENTE ]
## stm_para -> PARA lvalue DE expr ATE expr . option(passo) FACA list(stm_list) FIMPARA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## PARA lvalue DE expr ATE expr 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO PARA ID DE VERDADEIRO ATE XOU 
##
## Ends in an error in state: 107.
##
## stm_para -> PARA lvalue DE expr ATE . expr option(passo) FACA list(stm_list) FIMPARA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## PARA lvalue DE expr ATE 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO PARA ID DE VERDADEIRO VIRGULA 
##
## Ends in an error in state: 106.
##
## expr -> expr . SOMA expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ATE ]
## stm_para -> PARA lvalue DE expr . ATE expr option(passo) FACA list(stm_list) FIMPARA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## PARA lvalue DE expr 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO PARA ID DE XOU 
##
## Ends in an error in state: 105.
##
## stm_para -> PARA lvalue DE . expr ATE expr option(passo) FACA list(stm_list) FIMPARA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## PARA lvalue DE 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO PARA ID XOU 
##
## Ends in an error in state: 104.
##
## lvalue -> lvalue . ACOL expr FCOL [ DE ACOL ]
## stm_para -> PARA lvalue . DE expr ATE expr option(passo) FACA list(stm_list) FIMPARA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## PARA lvalue 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO PARA XOU 
##
## Ends in an error in state: 102.
##
## stm_para -> PARA . lvalue DE expr ATE expr option(passo) FACA list(stm_list) FIMPARA [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## PARA 
##

<Erro: comando para>

prog: ALGORITMO LITSTRING INICIO RETORNE PTV CASO 
##
## Ends in an error in state: 184.
##
## stm_block -> INICIO list(stm_list) . FIMALGORITMO [ EOF ]
##
## The known suffix of the stack is as follows:
## INICIO list(stm_list) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 142, spurious reduction of production list(stm_list) -> 
## In state 153, spurious reduction of production list(stm_list) -> stm_list list(stm_list) 
##

<Erro: após "inicio" bloco de comandos deve estar incorreto>


prog: ALGORITMO LITSTRING INICIO RETORNE PTV XOU 
##
## Ends in an error in state: 142.
##
## list(stm_list) -> stm_list . list(stm_list) [ SENAO OUTROCASO FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO CASO ]
##
## The known suffix of the stack is as follows:
## stm_list 
##

<Erro: após "inicio" bloco de comandos deve estar incorreto>


prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO DIFERENTE VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 82.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr DIFERENTE expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr DIFERENTE expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO DIFERENTE XOU 
##
## Ends in an error in state: 81.
##
## expr -> expr DIFERENTE . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr DIFERENTE 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO DIVISAO VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 66.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr DIVISAO expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr DIVISAO expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO DIVISAO XOU 
##
## Ends in an error in state: 65.
##
## expr -> expr DIVISAO . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr DIVISAO 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO E VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 80.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr E expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr E expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO E XOU 
##
## Ends in an error in state: 79.
##
## expr -> expr E . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr E 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO IGUAL VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 78.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr IGUAL expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr IGUAL expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO IGUAL XOU 
##
## Ends in an error in state: 77.
##
## expr -> expr IGUAL . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr IGUAL 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MAIOR VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 76.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr MAIOR expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MAIOR expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MAIOR XOU 
##
## Ends in an error in state: 75.
##
## expr -> expr MAIOR . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MAIOR 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MAIORIGUAL VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 74.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr MAIORIGUAL expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MAIORIGUAL expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MAIORIGUAL XOU 
##
## Ends in an error in state: 73.
##
## expr -> expr MAIORIGUAL . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MAIORIGUAL 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MENOR VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 72.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr MENOR expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MENOR expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MENOR XOU 
##
## Ends in an error in state: 71.
##
## expr -> expr MENOR . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MENOR 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MENORIGUAL VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 70.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr MENORIGUAL expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MENORIGUAL expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MENORIGUAL XOU 
##
## Ends in an error in state: 69.
##
## expr -> expr MENORIGUAL . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MENORIGUAL 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MOD VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 64.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr MOD expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MOD expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MOD XOU 
##
## Ends in an error in state: 63.
##
## expr -> expr MOD . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MOD 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MULT VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 62.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr MULT expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MULT expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO MULT XOU 
##
## Ends in an error in state: 61.
##
## expr -> expr MULT . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr MULT 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO OU VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 84.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr OU expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr OU expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO OU XOU 
##
## Ends in an error in state: 83.
##
## expr -> expr OU . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr OU 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO POTENCIA VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 60.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr POTENCIA expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr POTENCIA expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO POTENCIA XOU 
##
## Ends in an error in state: 59.
##
## expr -> expr POTENCIA . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr POTENCIA 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO SOMA VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 68.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr SOMA expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr SOMA expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO SOMA XOU 
##
## Ends in an error in state: 67.
##
## expr -> expr SOMA . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr SOMA 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO SUB VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 58.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr SUB expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr SUB expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO SUB XOU 
##
## Ends in an error in state: 57.
##
## expr -> expr SUB . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr SUB 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO VIRGULA 
##
## Ends in an error in state: 101.
##
## expr -> expr . SOMA expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . SUB expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MULT expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . DIVISAO expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . POTENCIA expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MOD expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . IGUAL expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . DIFERENTE expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MENOR expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MENORIGUAL expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MAIOR expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . MAIORIGUAL expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . E expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . OU expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## expr -> expr . XOU expr [ XOU SUB SOMA PTV POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL E DIVISAO DIFERENTE ]
## option(expr) -> expr . [ PTV ]
##
## The known suffix of the stack is as follows:
## expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO XOU VERDADEIRO VERDADEIRO 
##
## Ends in an error in state: 56.
##
## expr -> expr . SOMA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . SUB expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MULT expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIVISAO expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . POTENCIA expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MOD expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . IGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . DIFERENTE expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MENORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIOR expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . MAIORIGUAL expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . E expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . OU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr . XOU expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
## expr -> expr XOU expr . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr XOU expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE VERDADEIRO XOU XOU 
##
## Ends in an error in state: 55.
##
## expr -> expr XOU . expr [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## expr XOU 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO RETORNE XOU 
##
## Ends in an error in state: 98.
##
## stm_ret -> RETORNE . option(expr) PTV [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## RETORNE 
##

<Erro: após retorne>

prog: ALGORITMO LITSTRING INICIO SE APAR VERDADEIRO VIRGULA 
##
## Ends in an error in state: 86.
##
## expr -> expr . SOMA expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . SUB expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MULT expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . DIVISAO expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . POTENCIA expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MOD expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . IGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . DIFERENTE expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MENOR expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MENORIGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MAIOR expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . MAIORIGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . E expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . OU expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> expr . XOU expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR E DIVISAO DIFERENTE ]
## expr -> APAR expr . FPAR [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## APAR expr 
##

<Erro: expressão incorreta>

prog: ALGORITMO LITSTRING INICIO SE APAR XOU 
##
## Ends in an error in state: 47.
##
## expr -> APAR . expr FPAR [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## APAR 
##

<Erro: comando se>

prog: ALGORITMO LITSTRING INICIO SE ID ATRIB 
##
## Ends in an error in state: 49.
##
## lvalue -> lvalue . ACOL expr FCOL [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ACOL ]
## termo -> lvalue . [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## lvalue 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 43, spurious reduction of production lvalue -> ID 
##

<Erro: comando se>

prog: ALGORITMO LITSTRING INICIO SE NAO XOU 
##
## Ends in an error in state: 39.
##
## expr -> NAO . termo [ XOU VIRGULA SUB SOMA PTV POTENCIA PASSO OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR FCOL FACA ENTAO E DIVISAO DIFERENTE ATE ]
##
## The known suffix of the stack is as follows:
## NAO 
##

<Erro: comando se>

prog: ALGORITMO LITSTRING INICIO SE VERDADEIRO ENTAO RETORNE PTV FIMPARA 
##
## Ends in an error in state: 168.
##
## stm_se -> SE expr ENTAO list(stm_list) . option(stm_senao) FIMSE [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## SE expr ENTAO list(stm_list) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 142, spurious reduction of production list(stm_list) -> 
## In state 153, spurious reduction of production list(stm_list) -> stm_list list(stm_list) 
##

<Erro: comando se>

prog: ALGORITMO LITSTRING INICIO SE VERDADEIRO ENTAO SENAO RETORNE PTV SENAO 
##
## Ends in an error in state: 172.
##
## stm_se -> SE expr ENTAO list(stm_list) option(stm_senao) . FIMSE [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## SE expr ENTAO list(stm_list) option(stm_senao) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 142, spurious reduction of production list(stm_list) -> 
## In state 153, spurious reduction of production list(stm_list) -> stm_list list(stm_list) 
## In state 170, spurious reduction of production stm_senao -> SENAO list(stm_list) 
## In state 171, spurious reduction of production option(stm_senao) -> stm_senao 
##

<Erro: comando se>

prog: ALGORITMO LITSTRING INICIO SE VERDADEIRO ENTAO SENAO XOU 
##
## Ends in an error in state: 169.
##
## stm_senao -> SENAO . list(stm_list) [ FIMSE ]
##
## The known suffix of the stack is as follows:
## SENAO 
##

<Erro: comando senao>

prog: ALGORITMO LITSTRING INICIO SE VERDADEIRO ENTAO XOU 
##
## Ends in an error in state: 97.
##
## stm_se -> SE expr ENTAO . list(stm_list) option(stm_senao) FIMSE [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## SE expr ENTAO 
##

<Erro: comando se>

prog: ALGORITMO LITSTRING INICIO SE VERDADEIRO VIRGULA 
##
## Ends in an error in state: 96.
##
## expr -> expr . SOMA expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . SUB expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . MULT expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . DIVISAO expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . POTENCIA expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . MOD expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . IGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . DIFERENTE expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . MENOR expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . MENORIGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . MAIOR expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . MAIORIGUAL expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . E expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . OU expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## expr -> expr . XOU expr [ XOU SUB SOMA POTENCIA OU MULT MOD MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL ENTAO E DIVISAO DIFERENTE ]
## stm_se -> SE expr . ENTAO list(stm_list) option(stm_senao) FIMSE [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## SE expr 
##

<Erro: comando se>

prog: ALGORITMO LITSTRING INICIO SE XOU 
##
## Ends in an error in state: 37.
##
## stm_se -> SE . expr ENTAO list(stm_list) option(stm_senao) FIMSE [ SENAO SE RETORNE PARA OUTROCASO LEIA ID FIMSE FIMPARA FIMFUNCAO FIMESCOLHA FIMENQUANTO FIMALGORITMO ESCREVAL ESCREVA ESCOLHA ENQUANTO CASO ]
##
## The known suffix of the stack is as follows:
## SE 
##

<Erro: comando se>

prog: ALGORITMO LITSTRING INICIO XOU 
##
## Ends in an error in state: 183.
##
## stm_block -> INICIO . list(stm_list) FIMALGORITMO [ EOF ]
##
## The known suffix of the stack is as follows:
## INICIO 
##

<Erro: após palavra reservada início>

prog: ALGORITMO LITSTRING VAR ID DECLARA CARACTER PTV XOU 
##
## Ends in an error in state: 9.
##
## list(var_decl) -> var_decl . list(var_decl) [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## var_decl 
##

<Erro: declaração de variáveis incorreta>

prog: ALGORITMO LITSTRING VAR ID DECLARA REAL XOU 
##
## Ends in an error in state: 16.
##
## var_decl -> separated_nonempty_list(VIRGULA,ID) DECLARA tp_primitivo . PTV [ INICIO ID FUNCAO ]
##
## The known suffix of the stack is as follows:
## separated_nonempty_list(VIRGULA,ID) DECLARA tp_primitivo 
##

<Erro: declaração de variáveis incorreta>

prog: ALGORITMO LITSTRING VAR ID DECLARA XOU 
##
## Ends in an error in state: 11.
##
## var_decl -> separated_nonempty_list(VIRGULA,ID) DECLARA . tp_primitivo PTV [ INICIO ID FUNCAO ]
##
## The known suffix of the stack is as follows:
## separated_nonempty_list(VIRGULA,ID) DECLARA 
##

<Erro: declaração de variáveis incorreta>

prog: ALGORITMO LITSTRING VAR ID VIRGULA XOU 
##
## Ends in an error in state: 7.
##
## separated_nonempty_list(VIRGULA,ID) -> ID VIRGULA . separated_nonempty_list(VIRGULA,ID) [ DECLARA ]
##
## The known suffix of the stack is as follows:
## ID VIRGULA 
##

<Erro: declaração de variáveis incorreta>

prog: ALGORITMO LITSTRING VAR ID XOU 
##
## Ends in an error in state: 6.
##
## separated_nonempty_list(VIRGULA,ID) -> ID . [ DECLARA ]
## separated_nonempty_list(VIRGULA,ID) -> ID . VIRGULA separated_nonempty_list(VIRGULA,ID) [ DECLARA ]
##
## The known suffix of the stack is as follows:
## ID 
##

<Erro: declaração de variáveis incorreta>

prog: ALGORITMO LITSTRING VAR XOU 
##
## Ends in an error in state: 5.
##
## var_decl_block -> VAR . list(var_decl) [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## VAR 
##

<Erro: declaração de variáveis incorreta>

prog: ALGORITMO LITSTRING XOU 
##
## Ends in an error in state: 4.
##
## prog -> declaracao_algoritmo . option(var_decl_block) list(func_decl) stm_block EOF [ # ]
##
## The known suffix of the stack is as follows:
## declaracao_algoritmo 
##

<Erro: após palavra reservada algoritmo>

prog: ALGORITMO XOU 
##
## Ends in an error in state: 1.
##
## declaracao_algoritmo -> ALGORITMO . LITSTRING [ VAR INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## ALGORITMO 
##

<Erro: após palavra reservada algoritmo>

prog: XOU 
##
## Ends in an error in state: 0.
##
## prog' -> . prog [ # ]
##
## The known suffix of the stack is as follows:
## 
##

<Erro: início do programa incorreto>

