
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20160825

module Basics = struct
  
  exception Error
  
  type token = 
    | XOU of (Lexing.position)
    | VOID of (Lexing.position)
    | VIRGULA of (Lexing.position)
    | VERDADEIRO of (Lexing.position)
    | VAR of (Lexing.position)
    | SUB of (Lexing.position)
    | SOMA of (Lexing.position)
    | SENAO of (Lexing.position)
    | SE of (Lexing.position)
    | RETORNE of (Lexing.position)
    | REAL of (Lexing.position)
    | PTV of (Lexing.position)
    | POTENCIA of (Lexing.position)
    | PASSO of (Lexing.position)
    | PARA of (Lexing.position)
    | OUTROCASO of (Lexing.position)
    | OU of (Lexing.position)
    | MULT of (Lexing.position)
    | MOD of (Lexing.position)
    | MENORIGUAL of (Lexing.position)
    | MENOR of (Lexing.position)
    | MAIORIGUAL of (Lexing.position)
    | MAIOR of (Lexing.position)
    | LOGICO of (Lexing.position)
    | LITSTRING of (string * Lexing.position)
    | LITCHAR of (char * Lexing.position)
    | LEIA of (Lexing.position)
    | INTEIRO of (Lexing.position)
    | INT of (int * Lexing.position)
    | INICIO of (Lexing.position)
    | IGUAL of (Lexing.position)
    | ID of (string * Lexing.position)
    | FUNCAO of (Lexing.position)
    | FPAR of (Lexing.position)
    | FLOAT of (float * Lexing.position)
    | FIMSE of (Lexing.position)
    | FIMPARA of (Lexing.position)
    | FIMFUNCAO of (Lexing.position)
    | FIMESCOLHA of (Lexing.position)
    | FIMENQUANTO of (Lexing.position)
    | FIMALGORITMO of (Lexing.position)
    | FCOL of (Lexing.position)
    | FALSO of (Lexing.position)
    | FACA of (Lexing.position)
    | ESCREVAL of (Lexing.position)
    | ESCREVA of (Lexing.position)
    | ESCOLHA of (Lexing.position)
    | EOF
    | ENTAO of (Lexing.position)
    | ENQUANTO of (Lexing.position)
    | E of (Lexing.position)
    | DIVISAO of (Lexing.position)
    | DIFERENTE of (Lexing.position)
    | DECLARA of (Lexing.position)
    | DE of (Lexing.position)
    | CASO of (Lexing.position)
    | CARACTER of (Lexing.position)
    | ATRIB of (Lexing.position)
    | ATE of (Lexing.position)
    | APAR of (Lexing.position)
    | ALGORITMO of (Lexing.position)
    | ACOL of (Lexing.position)
  
end

include Basics

let _eRR =
  Basics.Error
  
  open Lexing
  open Ast
  open Sast

module Tables = struct
  
  include Basics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | ACOL _ ->
          62
      | ALGORITMO _ ->
          61
      | APAR _ ->
          60
      | ATE _ ->
          59
      | ATRIB _ ->
          58
      | CARACTER _ ->
          57
      | CASO _ ->
          56
      | DE _ ->
          55
      | DECLARA _ ->
          54
      | DIFERENTE _ ->
          53
      | DIVISAO _ ->
          52
      | E _ ->
          51
      | ENQUANTO _ ->
          50
      | ENTAO _ ->
          49
      | EOF ->
          48
      | ESCOLHA _ ->
          47
      | ESCREVA _ ->
          46
      | ESCREVAL _ ->
          45
      | FACA _ ->
          44
      | FALSO _ ->
          43
      | FCOL _ ->
          42
      | FIMALGORITMO _ ->
          41
      | FIMENQUANTO _ ->
          40
      | FIMESCOLHA _ ->
          39
      | FIMFUNCAO _ ->
          38
      | FIMPARA _ ->
          37
      | FIMSE _ ->
          36
      | FLOAT _ ->
          35
      | FPAR _ ->
          34
      | FUNCAO _ ->
          33
      | ID _ ->
          32
      | IGUAL _ ->
          31
      | INICIO _ ->
          30
      | INT _ ->
          29
      | INTEIRO _ ->
          28
      | LEIA _ ->
          27
      | LITCHAR _ ->
          26
      | LITSTRING _ ->
          25
      | LOGICO _ ->
          24
      | MAIOR _ ->
          23
      | MAIORIGUAL _ ->
          22
      | MENOR _ ->
          21
      | MENORIGUAL _ ->
          20
      | MOD _ ->
          19
      | MULT _ ->
          18
      | OU _ ->
          17
      | OUTROCASO _ ->
          16
      | PARA _ ->
          15
      | PASSO _ ->
          14
      | POTENCIA _ ->
          13
      | PTV _ ->
          12
      | REAL _ ->
          11
      | RETORNE _ ->
          10
      | SE _ ->
          9
      | SENAO _ ->
          8
      | SOMA _ ->
          7
      | SUB _ ->
          6
      | VAR _ ->
          5
      | VERDADEIRO _ ->
          4
      | VIRGULA _ ->
          3
      | VOID _ ->
          2
      | XOU _ ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | ACOL _v ->
          Obj.repr _v
      | ALGORITMO _v ->
          Obj.repr _v
      | APAR _v ->
          Obj.repr _v
      | ATE _v ->
          Obj.repr _v
      | ATRIB _v ->
          Obj.repr _v
      | CARACTER _v ->
          Obj.repr _v
      | CASO _v ->
          Obj.repr _v
      | DE _v ->
          Obj.repr _v
      | DECLARA _v ->
          Obj.repr _v
      | DIFERENTE _v ->
          Obj.repr _v
      | DIVISAO _v ->
          Obj.repr _v
      | E _v ->
          Obj.repr _v
      | ENQUANTO _v ->
          Obj.repr _v
      | ENTAO _v ->
          Obj.repr _v
      | EOF ->
          Obj.repr ()
      | ESCOLHA _v ->
          Obj.repr _v
      | ESCREVA _v ->
          Obj.repr _v
      | ESCREVAL _v ->
          Obj.repr _v
      | FACA _v ->
          Obj.repr _v
      | FALSO _v ->
          Obj.repr _v
      | FCOL _v ->
          Obj.repr _v
      | FIMALGORITMO _v ->
          Obj.repr _v
      | FIMENQUANTO _v ->
          Obj.repr _v
      | FIMESCOLHA _v ->
          Obj.repr _v
      | FIMFUNCAO _v ->
          Obj.repr _v
      | FIMPARA _v ->
          Obj.repr _v
      | FIMSE _v ->
          Obj.repr _v
      | FLOAT _v ->
          Obj.repr _v
      | FPAR _v ->
          Obj.repr _v
      | FUNCAO _v ->
          Obj.repr _v
      | ID _v ->
          Obj.repr _v
      | IGUAL _v ->
          Obj.repr _v
      | INICIO _v ->
          Obj.repr _v
      | INT _v ->
          Obj.repr _v
      | INTEIRO _v ->
          Obj.repr _v
      | LEIA _v ->
          Obj.repr _v
      | LITCHAR _v ->
          Obj.repr _v
      | LITSTRING _v ->
          Obj.repr _v
      | LOGICO _v ->
          Obj.repr _v
      | MAIOR _v ->
          Obj.repr _v
      | MAIORIGUAL _v ->
          Obj.repr _v
      | MENOR _v ->
          Obj.repr _v
      | MENORIGUAL _v ->
          Obj.repr _v
      | MOD _v ->
          Obj.repr _v
      | MULT _v ->
          Obj.repr _v
      | OU _v ->
          Obj.repr _v
      | OUTROCASO _v ->
          Obj.repr _v
      | PARA _v ->
          Obj.repr _v
      | PASSO _v ->
          Obj.repr _v
      | POTENCIA _v ->
          Obj.repr _v
      | PTV _v ->
          Obj.repr _v
      | REAL _v ->
          Obj.repr _v
      | RETORNE _v ->
          Obj.repr _v
      | SE _v ->
          Obj.repr _v
      | SENAO _v ->
          Obj.repr _v
      | SOMA _v ->
          Obj.repr _v
      | SUB _v ->
          Obj.repr _v
      | VAR _v ->
          Obj.repr _v
      | VERDADEIRO _v ->
          Obj.repr _v
      | VIRGULA _v ->
          Obj.repr _v
      | VOID _v ->
          Obj.repr _v
      | XOU _v ->
          Obj.repr _v
  
  and default_reduction =
    (8, "\000\000\004\001\000\000\000\000:\000\000\000YVXUW\000Z(\000\000\000\000\000\000\030\031\000\000\000\"\000\000\000\000)\000\021\024\022\000\000\023*\000\000\000\025\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000,\000\027\028\000\0292\000\000<\000\000\000\000R\000\000\000\000\000\000\000\0007\000\000\000\000\000\000F\000\000\000\000D\000\000\000\000C\000\000\000\000\000\000\000JIL\000MHONPKG&\000E\000\000\000?\000A\002\000\003\000\000\000B\000.\000Q\000\000T6\000S\000 !4\000\000>\000\000\000@\0008\000$")
  
  and error =
    (63, "\000\000\000\000\000\000\000\004\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000X\000\000\000\004\000\000\000\000\000\000\128\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\128\000\000\000\000\000\000\000\000\000\b\001\000\128\004@\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000$\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000P\000\000\000\000\000\000\000\000\000\002\000@ \001\016\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000@\b\004\000\"\000\000\000\016\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\b\000\000\000\000C\b\003\164\144\185\000@\000\000\000\000\000\000\000\001\000\000\012\146\002\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\166\028\254\002@P\186t \000\001\146\192@\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\012\146\002\000\001\020\195\159\192H\n\023L\132\000\0002H\b\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\012\017\252\004\000\128p\000@\000\003$\128\128\000E0\231\240\018\002\133\211\001\000\000\012\146\002\000\001\020\195\159\192H\n\023L\004\000\0002H\b\000\004S\014\127\001 (]0\016\000\000\201  \000\017L9\252\004\128\161t\192@\000\003$\128\128\000E0\231\240\018\002\133\211\001\000\000\012\146\002\000\001\020\195\159\192H\n\023L\004\000\0002H\b\000\004S\014\127\001 (]0\016\000\000\201  \000\017L9\252\004\128\161t\192@\000\003$\128\128\000E0\231\240\018\002\133\211\001\000\000\012\146\002\000\001\020\195\159\192H\n\023L\004\000\0002H\b\000\004S\014\127\001 (]0\016\000\000\201  \000\017L9\252\004\128\161t\192@\000\003$\128\128\000E0\231\240\018\002\133\211\001\000\000\012\146\002\000\001\020\195\159\192H\n\023L\004\000\0002H\b\000\004S\014\127\001 (]0\000\000\000\000\000\000\000\001\012\017\252\004\128\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000S\004\127\001 \000\028\000\016\000\000\201  \000\016\000\000\000\000\000\000\000\002\024#\248\b\000\002\224\000\142\016\007I\129r\000\129\001\000\012\146\002\000\001\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000C\012\127\001\000\000\028\000\016\000\000\201  \000\017\012\017\252\004\000\000t\000@\000\003$\128\128\000D0G\240\016\000\001\193\001\000\000\012\146\002\000\001\016\193\159\192@\000\007\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000!\132\001\210P\\\128 \000\000\000\000\000\000\000@\128\000\006I\001\000\000\128\000\000\000\004\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\016\000\000\201  \000\016\000\000\000\000\128\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\002\000\000\025$\004\000\002\000\000\000\000\016\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\004\000\000\000\002@\000\000\000\001\0120\014\146\002\228\017\002\000\000\025$\004\000\002!\130?\128\128\004\014\000\ba\000t\144\151 \b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\142\024\007I\253r\b\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\ba\143\224 \000\003\132\000\000\000\000\000\000\000\000!\130?\128\128\000\014\016\b\000\000d\144\016\000\b\134\024\254\002\000\0008\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\024`\029$\005\200\"\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\016\194\000\233\".@\016\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\b\000\000\000\016\194\000\2330.@\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\128\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\002\024@\029$\021\200\002\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\018\000\000\000\000\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000u\000#\000\000\000\000\000(\000\t\000\002\000\t\000\000\000\t\000-\000\003\000\000\000\000\000\000\000\000\000\000\0004\000\000\000\000\000\002\000\030\000\023\0003\000:\000\003\000\000\000\000\000j\000F\000\003\000\000\000\174\000\t\000\154\000v\000\000\000\020\000\000\000\000\000\000\000\003\000\020\000\000\000\000\000\020\000v\000\020\000\000\000\000\b:\000\020\000\238\000\020\001d\000\020\001\218\000\020\002P\000\020\002\198\000\020\003<\000\020\003\178\000\020\004(\000\020\004\158\000\020\005\020\000\020\005\138\000\020\006\000\000\020\006v\000\020\006\236\000\020\007b\000\000\b:\000\000\000\000\000\158\000\000\000\000\007\216\000\020\000\000\007\216\000v\000\246\000\222\000\000\007\216\000\020\b:\000\020\007\216\000\020\007\216\000\190\000\000\000\168\000v\000\138\000\020\000\192\000\244\000\000\000\166\000\020\000\222\001\012\000\000\000\174\000\020\000\234\001\028\000\000\000\248\000\016\000\022\000v\000\020\b:\000v\000\000\000\000\000\000\000v\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\006\000\000\007\216\000\020\b:\000\000\000\234\000\000\000\000\000v\000\000\001\030\000v\000\242\000\000\000\016\000\000\000\250\000\000\000\216\000v\000\000\000\000\001\000\000\000\000\254\000\000\000\000\000\000\000\024\0003\000\000\001\018\000v\001\000\000\000\000\250\000\000\000\002\000\000"), (16, "\000\169\0002\000\169\000\006\000\030\000\169\000\169\000b\000\n\000\201\0006\000\169\000\169\000\169\000\146\002\174\000\169\000\169\000\169\000\169\000\169\000\169\000\169\000:\000\177\000\022\000\153\000>\000\026\000\153\000\169\000\137\000.\000\169\000V\000\154\000\158\001\246\000J\000\162\002Z\000\169\000\166\000\169\000\193\000\174\000\241\000Z\000\169\000^\000\169\000\169\000\169\000\178\000\169\000\225\000B\000\169\000\169\000\170\000e\000\169\000e\000\146\001\242\000e\000e\000\145\000\150\001v\000\182\000e\000e\000e\001\134\000\145\000e\000e\000e\000e\000e\000e\000e\000f\000\154\000\158\001\174\000v\000\162\000z\000e\000\166\000\134\000e\000\174\000\145\000\145\000\145\000\145\000\145\000\145\000e\000\178\000e\001\194\001\214\001\234\000\142\000e\001\250\000e\000e\000e\001Z\000e\000\145\002\134\000e\000e\000\182\000I\000\190\000I\001~\001\162\000\214\000\254\000\146\001\170\001\178\001\186\000I\000\222\000I\001\190\000\185\000I\000\230\000\238\001\006\001\014\001\022\001\030\001\198\000\209\001\206\001\210\001\218\000\154\000\158\001&\001\226\000\162\000I\001\230\000\166\001\238\002R\000\174\002f\002n\000I\002~\000I\002\150\002\158\000\178\002\186\000I\002\194\001.\000\246\0016\002\203\000I\000\000\000\000\000I\000I\000\021\000\000\000\021\000\000\000\182\000\021\000\021\000\000\000\000\000\000\000\000\000\021\000\222\000\021\000\000\000\000\000\021\000\230\000\238\000\021\000\021\000\021\000\021\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\021\000\000\000\000\000\021\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\021\000\000\000\021\000\000\000\000\000\000\000\000\000\021\000\000\000\021\000\246\000\021\000\000\000\021\000\000\000\000\000\021\000\021\000!\000\000\000!\000\000\000\000\000!\000!\000\000\000\000\000\000\000\000\000!\000\222\000!\000\000\000\000\000!\000!\000!\000!\000!\000!\000!\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000!\000\000\000\000\000!\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000!\000\000\000!\000\000\000\000\000\000\000\000\000!\000\000\000!\000!\000!\000\000\000!\000\000\000\000\000!\000!\000\025\000\000\000\025\000\000\000\000\000\025\000\025\000\000\000\000\000\000\000\000\000\025\000\222\000\025\000\000\000\000\000\025\000\025\000\025\000\025\000\025\000\025\000\025\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\025\000\000\000\000\000\025\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\025\000\000\000\025\000\000\000\000\000\000\000\000\000\025\000\000\000\025\000\025\000\025\000\000\000\025\000\000\000\000\000\025\000\025\000%\000\000\000%\000\000\000\000\000%\000%\000\000\000\000\000\000\000\000\000%\000\222\000%\000\000\000\000\000%\000%\000%\000%\000%\000%\000%\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000%\000\000\000\000\000%\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000%\000\000\000%\000\000\000\000\000\000\000\000\000%\000\000\000%\000%\000%\000\000\000%\000\000\000\000\000%\000%\000\029\000\000\000\029\000\000\000\000\000\029\000\029\000\000\000\000\000\000\000\000\000\029\000\222\000\029\000\000\000\000\000\029\000\029\000\029\000\029\000\029\000\029\000\029\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\029\000\000\000\000\000\029\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\029\000\000\000\029\000\000\000\000\000\000\000\000\000\029\000\000\000\029\000\029\000\029\000\000\000\029\000\000\000\000\000\029\000\029\000\017\000\000\000\017\000\000\000\000\000\017\000\017\000\000\000\000\000\000\000\000\000\017\000\222\000\017\000\000\000\000\000\017\000\230\000\238\000\017\000\017\000\017\000\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\000\000\000\000\000\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\000\000\000\017\000\000\000\000\000\000\000\000\000\017\000\000\000\017\000\246\000\017\000\000\000\017\000\000\000\000\000\017\000\017\0005\000\000\0005\000\000\000\000\000\214\000\254\000\000\000\000\000\000\000\000\0005\000\222\0005\000\000\000\000\0005\000\230\000\238\0005\0005\0005\0005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\000\000\000\000\0005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\000\000\0005\000\000\000\000\000\000\000\000\0005\000\000\0005\000\246\0005\000\000\0005\000\000\000\000\0005\0005\0001\000\000\0001\000\000\000\000\000\214\000\254\000\000\000\000\000\000\000\000\0001\000\222\0001\000\000\000\000\0001\000\230\000\238\0001\0001\0001\0001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0001\000\000\000\000\0001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0001\000\000\0001\000\000\000\000\000\000\000\000\0001\000\000\0001\000\246\0001\000\000\0001\000\000\000\000\0001\0001\000=\000\000\000=\000\000\000\000\000\214\000\254\000\000\000\000\000\000\000\000\000=\000\222\000=\000\000\000\000\000=\000\230\000\238\000=\000=\000=\000=\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000=\000\000\000\000\000=\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000=\000\000\000=\000\000\000\000\000\000\000\000\000=\000\000\000=\000\246\000=\000\000\000=\000\000\000\000\000=\000=\0009\000\000\0009\000\000\000\000\000\214\000\254\000\000\000\000\000\000\000\000\0009\000\222\0009\000\000\000\000\0009\000\230\000\238\0009\0009\0009\0009\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0009\000\000\000\000\0009\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0009\000\000\0009\000\000\000\000\000\000\000\000\0009\000\000\0009\000\246\0009\000\000\0009\000\000\000\000\0009\0009\000)\000\000\000)\000\000\000\000\000\214\000\254\000\000\000\000\000\000\000\000\000)\000\222\000)\000\000\000\000\000)\000\230\000\238\001\006\001\014\001\022\001\030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000)\000\000\000\000\000)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000)\000\000\000)\000\000\000\000\000\000\000\000\000)\000\000\000)\000\246\000)\000\000\000)\000\000\000\000\000)\000)\000A\000\000\000A\000\000\000\000\000\214\000\254\000\000\000\000\000\000\000\000\000A\000\222\000A\000\000\000\000\000A\000\230\000\238\001\006\001\014\001\022\001\030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001&\000\000\000\000\000A\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000A\000\000\000A\000\000\000\000\000\000\000\000\000A\000\000\000A\000\246\0016\000\000\000A\000\000\000\000\000A\000A\000-\000\000\000-\000\000\000\000\000\214\000\254\000\000\000\000\000\000\000\000\000-\000\222\000-\000\000\000\000\000-\000\230\000\238\001\006\001\014\001\022\001\030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000-\000\000\000\000\000-\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000-\000\000\000-\000\000\000\000\000\000\000\000\000-\000\000\000-\000\246\000-\000\000\000-\000\000\000\000\000-\000-\000E\000\000\000E\000\000\000\000\000\214\000\254\000\000\000\000\000\000\000\000\000E\000\222\000E\000\000\000\000\000E\000\230\000\238\001\006\001\014\001\022\001\030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001&\000\000\000\000\000E\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000E\000\000\000E\000\000\000\000\000\000\000\000\000E\000\000\001.\000\246\0016\000\000\000E\000\000\000\000\000E\000E\000\206\000\000\001f\000\000\000\000\000\214\000\254\000\000\000\000\000\000\000\000\000\189\000\222\001\158\000\000\000\000\001>\000\230\000\238\001\006\001\014\001\022\001\030\000M\000\000\000\000\000\000\000\000\000M\000M\001&\000\000\000\000\000\233\002:\000M\000\000\000\000\000\000\000M\000M\000M\000M\000M\000M\000M\000\000\000\000\001r\000\206\001.\000\246\0016\000M\000\214\000\254\000\000\002B\001\150\000\000\002J\000\222\000\000\000\000\000\000\001>\000\230\000\238\001\006\001\014\001\022\001\030\000\000\000M\000M\000M\000\000\000\000\000\000\001&\000M\000\000\001N\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001F\000\000\002\002\000\000\000\000\000\000\000\000\000\000\000\000\001.\000\246\0016\000\000\001\142"))
  
  and lhs =
    (8, "\000(('&&&&&&&&&&&&&&&&&&&&&&&%$#\"! \031\030\030\029\029\028\028\027\027\026\026\025\025\024\024\023\023\022\022\021\021\020\019\018\018\017\017\016\016\015\014\r\012\011\n\t\b\007\007\007\007\007\007\007\007\007\007\006\005\004\003\002\002\002\002\002\001")
  
  and goto =
    ((16, "\000\r\000\000\000\000\000\000\000\000\001\218\000\000\000\003\000\000\002 \000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000*\000\000\000\000\001R\000\000\000&\000\000\000\000\000\000\000\t\0004\000\000\000\000\002f\000&\000\t\000\000\000.\000\000\000\000\000\000\000\000\000\015\000\000\000\000\000t\000\000\000\186\000\000\000\000\000\000\001\000\000\000\001F\000\000\001\140\000\000\001\146\000\000\001\210\000\000\001\216\000\000\002\024\000\000\002\030\000\000\002^\000\000\002d\000\000\002~\000\000\002\136\000\000\002\142\000\000\002\152\000\000\002\168\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0008\000\000\000\000\000>\000\025\000\000\000\000\000\000\002\178\000\000\002\184\000\000\002\194\000H\000\000\000\000\000\000\000\132\000\000\000~\000\000\000\000\000\000\000\000\000\196\000\000\000\000\000\000\000\000\001\n\000\000\000\000\000\000\000\000\000,\000\000\000\202\002\210\000\000\001\016\000\000\000\000\000\000\001V\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\220\000\000\000\000\000\000\000\000\000\000\001\156\000\000\000\000\001\226\000\000\000\000\000.\000\000\000\000\000\000\000|\002(\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000h\000\000\000\136\002n\000\000\000\000\000\000\000\000\000p\000\000"), (8, "\130\131\132\133\134\135\136\137\138\139U\140_\004/1V\t\018/1\027/12\167a! 2XY\142\005\144\130\131\132\133\134\135\136\137\138\139[\140\153\158/1\174\169\180/1j/12\161\\\157\1572\164Y\142\173\144\130\131\132\133\134\135\136\137\138\139n\140\178\165/1\181\171\180/1\000/12\159S\000\0002\000Y\142\000\144\130\131\132\133\134\135\136\137\138\139s\140\000\000/1\000\000\000/1\000/12\1503\000\0002\000Y\142\000\144\130\131\132\133\134\135\136\137\138\139x\140\000\000/1\000\000\000/1\000/12\1485\000\0002\000Y\142\000\144\130\131\132\133\134\135\136\137\138\139\028\140\000\000/1\029\000\000\000\000\000/12\1417\000\170\171\000\000\142\000\144\130\131\132\133\134\135\136\137\138\139\000\140\000\000/1\000/1\000\000\000/12\15292\n;\000\000\142\000\144\130\131\132\133\134\135\136\137\138\139\011\140\000\000/1\000/1\000\021\000/12\155=2\n?\000\000\142\000\144\130\131\132\133\134\135\136\137\138\139\011\140\000\000/1\000/1\000\020\000/12\163A2\nC\000\000\142\000\144\130\131\132\133\134\135\136\137\138\139\011\140\000\000/1\000/1\000#\000/12\176E2\000G/1\142\000\144/1\000/12\000I/12\000K2\000M/12\000O/1\000/12\000Q/12\000c2\000e/12\000g/1\000\000\0002\000\128\000\0002\000\146"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = stms;
          MenhirLib.EngineTypes.startp = _startpos_stms_;
          MenhirLib.EngineTypes.endp = _endpos_stms_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = c;
            MenhirLib.EngineTypes.startp = _startpos_c_;
            MenhirLib.EngineTypes.endp = _endpos_c_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let stms : (Sast.expressao Ast.senao) = Obj.magic stms in
        let c : (char * Lexing.position) = Obj.magic c in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_stms_ in
        let _v : (Sast.expressao Ast.case) =                                     (CaseChar(c,stms)) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = stms;
          MenhirLib.EngineTypes.startp = _startpos_stms_;
          MenhirLib.EngineTypes.endp = _endpos_stms_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = i;
            MenhirLib.EngineTypes.startp = _startpos_i_;
            MenhirLib.EngineTypes.endp = _endpos_i_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let stms : (Sast.expressao Ast.senao) = Obj.magic stms in
        let i : (int * Lexing.position) = Obj.magic i in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_stms_ in
        let _v : (Sast.expressao Ast.case) =                                 (CaseInt(i,stms) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (string * Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Ast.declaracao_algoritmo) =                           ( DeclAlg ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                         ( (Soma, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                         ( (Subtracao, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                         ( (Multiplicacao, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                            ( (Divisao, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                             ( (Potencia, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                        ( (Modulo, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                          ( (Igual, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                              ( (Diferente, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                          ( (Menor, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                               ( (MenorIgual, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                          ( (Maior, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                               ( (MaiorIgual, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                      ( (ELogico, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                       ( (OuLogico, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let o =
          let pos = pos0 in
                        ( (XouLogico, pos) )
        in
                                  ( ExpOp(o,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = f;
          MenhirLib.EngineTypes.startp = _startpos_f_;
          MenhirLib.EngineTypes.endp = _endpos_f_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let f : (Sast.expressao) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sast.expressao) =              ( f ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = s;
          MenhirLib.EngineTypes.startp = _startpos_s_;
          MenhirLib.EngineTypes.endp = _endpos_s_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let s : (string * Lexing.position) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sast.expressao) =                  ( ExpString s) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let i : (int * Lexing.position) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sast.expressao) =            ( ExpInt i) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = f;
          MenhirLib.EngineTypes.startp = _startpos_f_;
          MenhirLib.EngineTypes.endp = _endpos_f_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let f : (float * Lexing.position) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sast.expressao) =              ( ExpFloat f) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (char * Lexing.position) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao) =                ( ExpChar c) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = l;
          MenhirLib.EngineTypes.startp = _startpos_l_;
          MenhirLib.EngineTypes.endp = _endpos_l_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let l : (bool Ast.pos) = Obj.magic l in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_l_ in
        let _endpos = _endpos_l_ in
        let _v : (Sast.expressao) =                     ( ExpBool l) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = lv;
          MenhirLib.EngineTypes.startp = _startpos_lv_;
          MenhirLib.EngineTypes.endp = _endpos_lv_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let lv : (Sast.expressao Ast.lvalue) = Obj.magic lv in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_lv_ in
        let _endpos = _endpos_lv_ in
        let _v : (Sast.expressao) =                ( ExpVar lv ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao) =                       ( e ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = exprs;
          MenhirLib.EngineTypes.startp = _startpos_exprs_;
          MenhirLib.EngineTypes.endp = _endpos_exprs_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let exprs : (Sast.expressao list) = Obj.magic exprs in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_exprs_ in
        let _endpos = _endpos_exprs_ in
        let _v : (Sast.expressao Ast.fargs) =                                                    (  List.map (fun expr -> expr) exprs) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = args;
            MenhirLib.EngineTypes.startp = _startpos_args_;
            MenhirLib.EngineTypes.endp = _endpos_args_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = id;
                MenhirLib.EngineTypes.startp = _startpos_id_;
                MenhirLib.EngineTypes.endp = _endpos_id_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let args : (Sast.expressao Ast.fargs option) = Obj.magic args in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let id : (string * Lexing.position) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao) =                                   ( ExpFunCall(id,(match args with
                                                  | None -> []
                                                  | Some fargs -> fargs )) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = id;
              MenhirLib.EngineTypes.startp = _startpos_id_;
              MenhirLib.EngineTypes.endp = _endpos_id_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let t : (Ast.functype) = Obj.magic t in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let id : (string * Lexing.position) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.identificador Ast.pos * Ast.functype) =                                    ((id,t)) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = fparam;
          MenhirLib.EngineTypes.startp = _startpos_fparam_;
          MenhirLib.EngineTypes.endp = _endpos_fparam_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let fparam : ((Ast.identificador Ast.pos * Ast.functype) list) = Obj.magic fparam in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_fparam_ in
        let _endpos = _endpos_fparam_ in
        let _v : ((Ast.identificador Ast.pos * Ast.functype) list) =                                                     ( fparam ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = stm;
            MenhirLib.EngineTypes.startp = _startpos_stm_;
            MenhirLib.EngineTypes.endp = _endpos_stm_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let stm : (Sast.expressao Ast.senao) = Obj.magic stm in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.funcbloc) =                                      ((stm)) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = fb;
          MenhirLib.EngineTypes.startp = _startpos_fb_;
          MenhirLib.EngineTypes.endp = _endpos_fb_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = fv;
            MenhirLib.EngineTypes.startp = _startpos_fv_;
            MenhirLib.EngineTypes.endp = _endpos_fv_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _7;
              MenhirLib.EngineTypes.startp = _startpos__7_;
              MenhirLib.EngineTypes.endp = _endpos__7_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = fy;
                MenhirLib.EngineTypes.startp = _startpos_fy_;
                MenhirLib.EngineTypes.endp = _endpos_fy_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _5;
                  MenhirLib.EngineTypes.startp = _startpos__5_;
                  MenhirLib.EngineTypes.endp = _endpos__5_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = fp;
                    MenhirLib.EngineTypes.startp = _startpos_fp_;
                    MenhirLib.EngineTypes.endp = _endpos_fp_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _3;
                      MenhirLib.EngineTypes.startp = _startpos__3_;
                      MenhirLib.EngineTypes.endp = _endpos__3_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = id;
                        MenhirLib.EngineTypes.startp = _startpos_id_;
                        MenhirLib.EngineTypes.endp = _endpos_id_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.state = _menhir_s;
                          MenhirLib.EngineTypes.semv = _1;
                          MenhirLib.EngineTypes.startp = _startpos__1_;
                          MenhirLib.EngineTypes.endp = _endpos__1_;
                          MenhirLib.EngineTypes.next = _menhir_stack;
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let fb : (Sast.expressao Ast.funcbloc) = Obj.magic fb in
        let fv : (Ast.vars list list) = Obj.magic fv in
        let _7 : (Lexing.position) = Obj.magic _7 in
        let fy : (Ast.functype) = Obj.magic fy in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let fp : ((Ast.identificador Ast.pos * Ast.functype) list option) = Obj.magic fp in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let id : (string * Lexing.position) = Obj.magic id in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_fb_ in
        let _v : (Sast.expressao Ast.func_decl) =                                                                                     ( FuncDecl {
                                                                                             fn_id = id; 
                                                                                             fn_params = (match fp with
                                                                                                  | None -> []
                                                                                                  | Some args -> args); 
                                                                                             fn_tiporet = fy;
                                                                                             fn_locais = List.flatten fv;
                                                                                             fn_corpo = fb }
                                                                                           ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let t : (Ast.functype) = Obj.magic t in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.functype) =                              ( (t) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.func_decl_list) =     ( [] ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.func_decl_list) = Obj.magic xs in
        let x : (Sast.expressao Ast.func_decl) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.func_decl_list) =     ( x :: xs ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.senao) =     ( [] ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.senao) = Obj.magic xs in
        let x : (Sast.expressao Ast.stm_list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.senao) =     ( x :: xs ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Ast.vars list list) =     ( [] ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.vars list list) = Obj.magic xs in
        let x : (Ast.vars list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.vars list list) =     ( x :: xs ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (bool Ast.pos) =                    ( (true,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (bool Ast.pos) =                ( (false,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = id;
          MenhirLib.EngineTypes.startp = _startpos_id_;
          MenhirLib.EngineTypes.endp = _endpos_id_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let id : (string * Lexing.position) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos_id_ in
        let _v : (Sast.expressao Ast.lvalue) =             ( Var(id) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = lv;
                MenhirLib.EngineTypes.startp = _startpos_lv_;
                MenhirLib.EngineTypes.endp = _endpos_lv_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let lv : (Sast.expressao Ast.lvalue) = Obj.magic lv in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_lv_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.lvalue) =                                  (VarElement(lv,e)) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.case) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.case list) =     ( [ x ] ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.case list) = Obj.magic xs in
        let x : (Sast.expressao Ast.case) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.case list) =     ( x :: xs ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao option) =     ( None ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao option) =     ( Some x ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.fargs option) =     ( None ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.fargs) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.fargs option) =     ( Some x ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : ((Ast.identificador Ast.pos * Ast.functype) list option) =     ( None ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : ((Ast.identificador Ast.pos * Ast.functype) list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.identificador Ast.pos * Ast.functype) list option) =     ( Some x ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.senao option) =     ( None ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.senao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.senao option) =     ( Some x ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let i : (int * Lexing.position) = Obj.magic i in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_i_ in
        let _v : (Sast.expressao) =                   (ExpInt i) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _6;
          MenhirLib.EngineTypes.startp = _startpos__6_;
          MenhirLib.EngineTypes.endp = _endpos__6_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = stmb;
            MenhirLib.EngineTypes.startp = _startpos_stmb_;
            MenhirLib.EngineTypes.endp = _endpos_stmb_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = fd;
              MenhirLib.EngineTypes.startp = _startpos_fd_;
              MenhirLib.EngineTypes.endp = _endpos_fd_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = vdb;
                MenhirLib.EngineTypes.startp = _startpos_vdb_;
                MenhirLib.EngineTypes.endp = _endpos_vdb_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _2;
                  MenhirLib.EngineTypes.startp = _startpos__2_;
                  MenhirLib.EngineTypes.endp = _endpos__2_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = da;
                    MenhirLib.EngineTypes.startp = _startpos_da_;
                    MenhirLib.EngineTypes.endp = _endpos_da_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _6 : unit = Obj.magic _6 in
        let stmb : (Sast.expressao Ast.senao) = Obj.magic stmb in
        let fd : (Sast.expressao Ast.func_decl_list) = Obj.magic fd in
        let vdb : (Ast.vars list list) = Obj.magic vdb in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let da : (Ast.declaracao_algoritmo) = Obj.magic da in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_da_ in
        let _endpos = _endpos__6_ in
        let _v : (Sast.expressao Ast.prog) =                                                                                   ( Prog (List.flatten vdb,fd,stmb) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (string * Lexing.position) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.identificador Ast.pos list) =     ( [ x ] ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Ast.identificador Ast.pos list) = Obj.magic xs in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let x : (string * Lexing.position) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.identificador Ast.pos list) =     ( x :: xs ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao list) =     ( [ x ] ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Sast.expressao list) = Obj.magic xs in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao list) =     ( x :: xs ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Ast.identificador Ast.pos * Ast.functype) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.identificador Ast.pos * Ast.functype) list) =     ( [ x ] ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : ((Ast.identificador Ast.pos * Ast.functype) list) = Obj.magic xs in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let x : (Ast.identificador Ast.pos * Ast.functype) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((Ast.identificador Ast.pos * Ast.functype) list) =     ( x :: xs ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = v;
                MenhirLib.EngineTypes.startp = _startpos_v_;
                MenhirLib.EngineTypes.endp = _endpos_v_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let v : (Sast.expressao) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.stm_list) =                               ( Attrib(v,e) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = stms;
            MenhirLib.EngineTypes.startp = _startpos_stms_;
            MenhirLib.EngineTypes.endp = _endpos_stms_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let stms : (Sast.expressao Ast.senao) = Obj.magic stms in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.senao) =                                          ( (stms)) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = stm;
            MenhirLib.EngineTypes.startp = _startpos_stm_;
            MenhirLib.EngineTypes.endp = _endpos_stm_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = e;
                MenhirLib.EngineTypes.startp = _startpos_e_;
                MenhirLib.EngineTypes.endp = _endpos_e_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let stm : (Sast.expressao Ast.senao) = Obj.magic stm in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.stm_list) =                                                      ( Enquanto (e,stm) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _6;
          MenhirLib.EngineTypes.startp = _startpos__6_;
          MenhirLib.EngineTypes.endp = _endpos__6_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = stms;
            MenhirLib.EngineTypes.startp = _startpos_stms_;
            MenhirLib.EngineTypes.endp = _endpos_stms_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _4;
              MenhirLib.EngineTypes.startp = _startpos__4_;
              MenhirLib.EngineTypes.endp = _endpos__4_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = c;
                MenhirLib.EngineTypes.startp = _startpos_c_;
                MenhirLib.EngineTypes.endp = _endpos_c_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = id;
                  MenhirLib.EngineTypes.startp = _startpos_id_;
                  MenhirLib.EngineTypes.endp = _endpos_id_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = _1;
                    MenhirLib.EngineTypes.startp = _startpos__1_;
                    MenhirLib.EngineTypes.endp = _endpos__1_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _6 : (Lexing.position) = Obj.magic _6 in
        let stms : (Sast.expressao Ast.senao) = Obj.magic stms in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let c : (Sast.expressao Ast.case list) = Obj.magic c in
        let id : (string * Lexing.position) = Obj.magic id in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__6_ in
        let _v : (Sast.expressao Ast.stm_list) =                                                                 (Escolha(id,c,stms) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _4;
            MenhirLib.EngineTypes.startp = _startpos__4_;
            MenhirLib.EngineTypes.endp = _endpos__4_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = stm;
              MenhirLib.EngineTypes.startp = _startpos_stm_;
              MenhirLib.EngineTypes.endp = _endpos_stm_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let stm : (Sast.expressao list) = Obj.magic stm in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.stm_list) =                                                                        (Escreva stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _4;
            MenhirLib.EngineTypes.startp = _startpos__4_;
            MenhirLib.EngineTypes.endp = _endpos__4_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = stm;
              MenhirLib.EngineTypes.startp = _startpos_stm_;
              MenhirLib.EngineTypes.endp = _endpos_stm_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let stm : (Sast.expressao list) = Obj.magic stm in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.stm_list) =                                                                         (Escreval stm ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = exp;
            MenhirLib.EngineTypes.startp = _startpos_exp_;
            MenhirLib.EngineTypes.endp = _endpos_exp_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_exp_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.stm_list) =                     (Chamada exp) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _4;
            MenhirLib.EngineTypes.startp = _startpos__4_;
            MenhirLib.EngineTypes.endp = _endpos__4_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = stm;
              MenhirLib.EngineTypes.startp = _startpos_stm_;
              MenhirLib.EngineTypes.endp = _endpos_stm_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let stm : (Sast.expressao list) = Obj.magic stm in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.stm_list) =                                                                     (Leia stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.stm_list) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.stm_list) =                    (stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.stm_list) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.stm_list) =                     (stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.stm_list) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.stm_list) =                   (stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.stm_list) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.stm_list) =                  (stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.stm_list) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.stm_list) =                        (stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.stm_list) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.stm_list) =                    (stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.stm_list) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.stm_list) =                    (stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.stm_list) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.stm_list) =                       (stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.stm_list) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.stm_list) =                        (stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.stm_list) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.stm_list) =                       (stm) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _10;
          MenhirLib.EngineTypes.startp = _startpos__10_;
          MenhirLib.EngineTypes.endp = _endpos__10_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = stm;
            MenhirLib.EngineTypes.startp = _startpos_stm_;
            MenhirLib.EngineTypes.endp = _endpos_stm_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _8;
              MenhirLib.EngineTypes.startp = _startpos__8_;
              MenhirLib.EngineTypes.endp = _endpos__8_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = p;
                MenhirLib.EngineTypes.startp = _startpos_p_;
                MenhirLib.EngineTypes.endp = _endpos_p_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = e2;
                  MenhirLib.EngineTypes.startp = _startpos_e2_;
                  MenhirLib.EngineTypes.endp = _endpos_e2_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _5;
                    MenhirLib.EngineTypes.startp = _startpos__5_;
                    MenhirLib.EngineTypes.endp = _endpos__5_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = e1;
                      MenhirLib.EngineTypes.startp = _startpos_e1_;
                      MenhirLib.EngineTypes.endp = _endpos_e1_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = _3;
                        MenhirLib.EngineTypes.startp = _startpos__3_;
                        MenhirLib.EngineTypes.endp = _endpos__3_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.semv = lv;
                          MenhirLib.EngineTypes.startp = _startpos_lv_;
                          MenhirLib.EngineTypes.endp = _endpos_lv_;
                          MenhirLib.EngineTypes.next = {
                            MenhirLib.EngineTypes.state = _menhir_s;
                            MenhirLib.EngineTypes.semv = _1;
                            MenhirLib.EngineTypes.startp = _startpos__1_;
                            MenhirLib.EngineTypes.endp = _endpos__1_;
                            MenhirLib.EngineTypes.next = _menhir_stack;
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _10 : (Lexing.position) = Obj.magic _10 in
        let stm : (Sast.expressao Ast.senao) = Obj.magic stm in
        let _8 : (Lexing.position) = Obj.magic _8 in
        let p : (Sast.expressao) = Obj.magic p in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let lv : (Sast.expressao) = Obj.magic lv in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__10_ in
        let _v : (Sast.expressao Ast.stm_list) =                                                                              (Para (lv,e1,e2,p,stm) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = expr;
            MenhirLib.EngineTypes.startp = _startpos_expr_;
            MenhirLib.EngineTypes.endp = _endpos_expr_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let expr : (Sast.expressao option) = Obj.magic expr in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.stm_list) =                              ( Retorne(expr)) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _6;
          MenhirLib.EngineTypes.startp = _startpos__6_;
          MenhirLib.EngineTypes.endp = _endpos__6_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = senao;
            MenhirLib.EngineTypes.startp = _startpos_senao_;
            MenhirLib.EngineTypes.endp = _endpos_senao_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = stms;
              MenhirLib.EngineTypes.startp = _startpos_stms_;
              MenhirLib.EngineTypes.endp = _endpos_stms_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _3;
                MenhirLib.EngineTypes.startp = _startpos__3_;
                MenhirLib.EngineTypes.endp = _endpos__3_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = e;
                  MenhirLib.EngineTypes.startp = _startpos_e_;
                  MenhirLib.EngineTypes.endp = _endpos_e_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = _1;
                    MenhirLib.EngineTypes.startp = _startpos__1_;
                    MenhirLib.EngineTypes.endp = _endpos__1_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _6 : (Lexing.position) = Obj.magic _6 in
        let senao : (Sast.expressao Ast.senao option) = Obj.magic senao in
        let stms : (Sast.expressao Ast.senao) = Obj.magic stms in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__6_ in
        let _v : (Sast.expressao Ast.stm_list) =                                                             ( Se(e,stms,senao)) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.senao) = Obj.magic stm in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.senao) =                           ( stm ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.functype) =               ( TipoInteiro ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.functype) =            ( TipoReal ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.functype) =                ( TipoCaractere ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.functype) =              ( TipoBooleano ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.functype) =            ( TipoVoid ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = t;
            MenhirLib.EngineTypes.startp = _startpos_t_;
            MenhirLib.EngineTypes.endp = _endpos_t_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = ids;
                MenhirLib.EngineTypes.startp = _startpos_ids_;
                MenhirLib.EngineTypes.endp = _endpos_ids_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let t : (Ast.functype) = Obj.magic t in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let ids : (Ast.identificador Ast.pos list) = Obj.magic ids in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ids_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.vars list) =                                                                             (  List.map (fun id -> DecVar(id,t)) ids ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
    |]
  
  and trace =
    None
  
end

module MenhirInterpreter = struct
  
  module TI = MenhirLib.TableInterpreter.Make (Tables)
  
  include TI
  
end

let prog =
  fun lexer lexbuf ->
    (Obj.magic (MenhirInterpreter.entry 0 lexer lexbuf) : (Sast.expressao Ast.prog))

module Incremental = struct
  
  let prog =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (Sast.expressao Ast.prog) MenhirInterpreter.checkpoint)
  
end
  

