.assembly extern mscorlib {}
.assembly nano03 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 1
  .locals init ( int32 )
  ldc.i4 1 
  stloc.0
  ret
}
