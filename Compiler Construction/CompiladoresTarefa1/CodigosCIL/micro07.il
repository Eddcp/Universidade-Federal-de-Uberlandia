.assembly extern mscorlib{}
.assembly micro07 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 2
  .locals init (int32 programa,int32 numero,char opc)
  ldc.i4.1
  stloc programa
  LOOP:
    ldloc programa
    ldc.i4.1
    bne.un FIM
    ldstr "Digite um numero: "
    call void [mscorlib]System.Console::WriteLine (string)
    call string [mscorlib]System.Console::ReadLine ()
    call int32 [mscorlib]System.Int32::Parse(string)
    stloc numero
    ldloc numero
    ldc.i4.0
    bgt MAIORQUEZERO //verifico se é maior que 0
    ldloc numero
    ldc.i4.0
    beq IGUALAZERO   //verifico se é igual a 0
    ldloc numero
    ldc.i4.0
    blt MENORQUEZERO //verifico se é menor que 0
    
  MAIORQUEZERO:
    ldstr "Positivo"
    call void [mscorlib]System.Console::WriteLine (string)
    br VERIF

  IGUALAZERO:
    ldstr "O numero e igual a 0."
    call void [mscorlib]System.Console::WriteLine (string)
    br VERIF

  MENORQUEZERO:
    ldstr "Negativo."
    call void [mscorlib]System.Console::WriteLine (string)
    br VERIF
  
  VERIF:
    ldstr "Deseja finalizar? (S/N)"
    call void [mscorlib]System.Console::WriteLine (string)
    call string [mscorlib]System.Console::ReadLine ()
    call char [mscorlib]System.Char::Parse(string)
    stloc opc
    ldc.i4 83 //código ascii do char "S"
    ldloc opc
    beq FIM
    br LOOP

  FIM:
    ret
}
