.assembly extern mscorlib {}
.assembly nano06 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 3
  .locals init (int32, int32, int32)
  ldc.i4 1
  stloc.0
  ldc.i4 2
  stloc.1
  
  ldloc.0
  ldloc.1
  sub
  stloc.2

  ldloc.2
  call void [mscorlib]System.Console::WriteLine(int32)

  ret
}
