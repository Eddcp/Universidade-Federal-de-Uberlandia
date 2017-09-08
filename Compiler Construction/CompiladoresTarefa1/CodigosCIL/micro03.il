.assembly extern mscorlib{}
.assembly micro03 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 3
  .locals init (int32)
  ldstr "Escreva um numero: "
  call void [mscorlib]System.Console::WriteLine (string)
  call string [mscorlib]System.Console::ReadLine ()
  call int32 [mscorlib]System.Int32::Parse(string)
  stloc.0
  ldloc.0
  ldc.i4 100
  bge MAIORIGUALACEM
  br FORAINTERVALO
  MAIORIGUALACEM:
   ldloc.0
   ldc.i4 200
  ble DENTROINTERVALO
  br FORAINTERVALO
  DENTROINTERVALO:
   ldstr "O numero esta no intervalo entre 100 e 200"
   call void [mscorlib]System.Console::WriteLine (string)
   br FIM
  FORAINTERVALO:
   ldstr "O numero nao esta no intervalo entre 100 e 200"
   call void [mscorlib]System.Console::WriteLine (string)
   br FIM
  FIM:
   ret
}
