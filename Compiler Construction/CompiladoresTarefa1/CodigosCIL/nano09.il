.assembly extern mscorlib {}
.assembly nano09 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 2
  .locals init (float32, float32)
  ldc.r4 1
  ldc.r4 2
  div
  ldc.r4 1
  add
  
  stloc.0
  ldloc.0

  ldc.r4 1
  beq IGUAL
  br NAOIGUAL
  IGUAL:
	ldloc.0
	call void [mscorlib]System.Console::WriteLine(float32)
	br FIM
  NAOIGUAL:
	ldc.r4 0
        call void [mscorlib]System.Console::WriteLine(float32)
  FIM:  
        ret

}
