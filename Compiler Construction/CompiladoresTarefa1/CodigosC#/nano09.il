.assembly extern mscorlib
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly 'nano09'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .hash algorithm 0x00008004
  .ver  0:0:0:0
}
.module nano09.exe // GUID = {B11A0372-0BF1-40E0-B512-30D05E235D9B}


  .class private auto ansi beforefieldinit nano09
  	extends [mscorlib]System.Object
  {

    // method line 1
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2050
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method nano09::.ctor

    // method line 2
    .method public static hidebysig 
           default void Main ()  cil managed 
    {
        // Method begins at RVA 0x2058
	.entrypoint
	// Code size 27 (0x1b)
	.maxstack 2
	.locals init (
		int32	V_0)
	IL_0000:  ldc.i4.1 
	IL_0001:  stloc.0 
	IL_0002:  ldloc.0 
	IL_0003:  ldc.i4.1 
	IL_0004:  bne.un IL_0014

	IL_0009:  ldloc.0 
	IL_000a:  call void class [mscorlib]System.Console::WriteLine(int32)
	IL_000f:  br IL_001a

	IL_0014:  ldc.i4.0 
	IL_0015:  call void class [mscorlib]System.Console::WriteLine(int32)
	IL_001a:  ret 
    } // end of method nano09::Main

  } // end of class nano09

