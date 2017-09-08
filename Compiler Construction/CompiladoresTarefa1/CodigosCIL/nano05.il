.assembly extern mscorlib {}
.assembly nano05 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 1
  .locals init (int32)
  ldc.i4 2
 
  call void [mscorlib]System.Console::WriteLine(int32)

  ret
}
