.assembly extern mscorlib {}
.assembly micro01 {}

.method static void Main() cil managed
{

  .entrypoint
  .maxstack 10
  .locals init (float32,float32)
  
  ldstr "Tabela de Conversao: Celsius -> Fahrenheit."
  call void [mscorlib]System.Console::WriteLine (string)
  ldstr "Escreva a temperatura em Celsius: "
  call void [mscorlib]System.Console::WriteLine (string)
  call string [mscorlib]System.Console::ReadLine ()
  call float32 [mscorlib]System.Single::Parse(string)
  stloc.0
  ldloc.0
  ldc.r4 9
  mul
  ldc.r4 160
  add
  ldc.r4 5
  div
  stloc.1
  ldstr "A nova temperatura eh: "
  call void [mscorlib]System.Console::WriteLine (string)
  ldloc.1
  call void [mscorlib]System.Console::WriteLine (float32)
  ret
}
