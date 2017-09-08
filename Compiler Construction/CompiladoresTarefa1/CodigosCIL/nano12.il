.assembly extern mscorlib {}
.assembly nano12 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 3
  .locals init (int32,int32,int32)
  ldc.i4 1
  stloc.0
  ldc.i4 2
  stloc.1
  ldc.i4 5
  stloc.2
  LOOP:
   ldloc.2
   ldloc.0
   ble FIM
   
   ldloc.0
   ldloc.1
   beq SE_N_IGUAL_M
     ldc.i4 0
     call void [mscorlib]System.Console::WriteLine (int32)
     br DECREMENTAR_X

   SE_N_IGUAL_M:
     ldloc.0
     call void [mscorlib]System.Console::WriteLine (int32)
     br DECREMENTAR_X
   
   DECREMENTAR_X:
     ldloc.2
     ldc.i4 1
     sub
     stloc.2
     br LOOP
   FIM:
     ret
}
