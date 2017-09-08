.assembly extern mscorlib {}
.assembly nano08 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 2
  .locals init (int32, int32)
  ldc.i4 1
  stloc.0
  ldloc.0

  ldc.i4 1
  beq IGUAL
  br NAOIGUAL
  IGUAL:
	ldloc.0
	call void [mscorlib]System.Console::WriteLine(int32)
	br FIM
  NAOIGUAL:
	ldc.i4 0
        call void [mscorlib]System.Console::WriteLine(intt32)
  FIM:  
        ret
}
