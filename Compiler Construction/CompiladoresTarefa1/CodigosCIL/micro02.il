.assembly extern mscorlib {}
.assembly micro02 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 2
  .locals init (int32,int32)
  ldstr "Escreva o primeiro numero: "
  call void [mscorlib]System.Console::WriteLine (string)
  call string [mscorlib]System.Console::ReadLine ()
  call int32 [mscorlib]System.Int32::Parse(string)
  stloc.0
  ldstr "Escreva o segundo numero: " 
  call void [mscorlib]System.Console::WriteLine (string)
  call string [mscorlib]System.Console::ReadLine ()
  call int32 [mscorlib]System.Int32::Parse(string)
  stloc.1
  ldloc.0
  ldloc.1
  bgt PRIMEIROMAIORSEGUNDO
    ldstr "Segundo numero eh maior que o primeiro!"
    call void [mscorlib]System.Console::WriteLine (string)
    ldstr "Primeiro numero: "
    call void [mscorlib]System.Console::WriteLine (string)
    ldloc.0
    call void [mscorlib]System.Console::WriteLine (int32)
    ldstr "Segundo numero: "
    call void [mscorlib]System.Console::WriteLine (string)
    ldloc.1
    call void [mscorlib]System.Console::WriteLine (int32)
    br FIM
  PRIMEIROMAIORSEGUNDO:
    ldstr "Primeiro numero eh maior que o segundo!"
    call void [mscorlib]System.Console::WriteLine (string)
    ldstr "Primeiro numero: "
    call void [mscorlib]System.Console::WriteLine (string)
    ldloc.0
    call void [mscorlib]System.Console::WriteLine (int32)
    ldstr "Segundo numero: "
    call void [mscorlib]System.Console::WriteLine (string)
    ldloc.1
    call void [mscorlib]System.Console::WriteLine (int32)
    FIM:
     ret
}
