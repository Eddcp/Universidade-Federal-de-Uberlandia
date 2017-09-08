.assembly extern mscorlib {}
.assembly nano11 {}

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
     add
     stloc.0
     ldloc.0
     call void [mscorlib]System.Console::WriteLine (int32)
     br LOOP
   FIM:
     ret
}
