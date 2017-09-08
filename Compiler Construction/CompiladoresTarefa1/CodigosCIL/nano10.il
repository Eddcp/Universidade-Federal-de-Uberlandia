.assembly extern mscorlib {}
.assembly nano10 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 2
  .locals init (int32, int32)
  ldc.i4 1
  stloc.0
  ldc.i4 2
  stloc.1
  ldloc.0
  ldloc.1
  
  beq IGUAL
  	ldc.i4 0
        call void [mscorlib]System.Console::WriteLine(int32)
	br FIM	
IGUAL:
	ldloc 0
	call void [mscorlib]System.Console::WriteLine(int32)
  FIM:  
        ret

}
