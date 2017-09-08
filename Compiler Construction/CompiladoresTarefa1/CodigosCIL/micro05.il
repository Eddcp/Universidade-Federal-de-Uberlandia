.assembly extern mscorlib{}
.assembly micro05{}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 10
  .locals init (int32 x,int32 h,int32 m,char sexo,string nome)
  ldc.i4.1
  stloc.0 //x
  ldc.i4.0
  stloc.1  //h
  ldc.i4.0
  stloc.2  //m
  
  LOOP:
    ldloc.0
    ldc.i4.5
    bgt IMPRIME
    ldstr "Digite o nome: "
    call void [mscorlib]System.Console::WriteLine (string)
    call string [mscorlib]System.Console::ReadLine ()
    stloc nome  //nome
    ldstr "H - Homem ou M - Mulher: "
    call void [mscorlib]System.Console::WriteLine (string)
    call string [mscorlib]System.Console::ReadLine ()
    call char [mscorlib]System.Char::Parse(string)
    stloc sexo
    ldloc sexo
    ldc.i4 72
    bne.un VERIFMULHER
    ldloc.1  //h
    ldc.i4.1
    add
    stloc.1  //h
    br INCRX
    

INCRX:
     ldloc.0 //x
     ldc.i4.1
     add
     stloc.0
     br LOOP

VERIFMULHER:
   ldloc sexo
   ldc.i4 77
   bne.un OUTROCASO
   ldloc.2 //m
   ldc.i4.1
   add
   stloc.2 //m
   br INCRX

OUTROCASO:
   ldstr "Sexo so pode ser H ou M!"
   call void [mscorlib]System.Console::WriteLine (string)
   br LOOP

IMPRIME:
  ldstr "Foram inseridos "
  call void [mscorlib]System.Console::Write(string)
  ldloc.1 //h
  call void [mscorlib]System.Console::Write(int32)
  ldstr " homens"
  call void [mscorlib]System.Console::WriteLine (string)  
  ldstr "Foram inseridas "
  call void [mscorlib]System.Console::Write(string)
  ldloc.2 //m
  call void [mscorlib]System.Console::Write(int32)
  ldstr " mulheres"
  call void [mscorlib]System.Console::WriteLine(string)
 
FIM:
  ret
}
