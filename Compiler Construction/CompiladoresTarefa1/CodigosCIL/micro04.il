.assembly extern mscorlib{}
.assembly micro04 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 5
  .locals init (int32,int32,int32)
  ldc.i4 0
  stloc.2 //intervalo
  ldc.i4 1
  stloc.0 //variavel pro loop que comeca com x=1
  COMECALOOP:
   ldloc.0 //x
   ldc.i4.5
   bgt ESCREVEQUANTIDADE
   ldstr "Digite um numero: "
   call void [mscorlib]System.Console::WriteLine (string)
   call string [mscorlib]System.Console::ReadLine ()
   call int32 [mscorlib]System.Int32::Parse(string)
   stloc.1 //num 
   ldloc.0 //x
   ldc.i4.1
   add
   stloc.0
   ldloc.1  //num
   ldc.i4 10
   bge MAIORQUE10 
   br COMECALOOP
   
   MAIORQUE10:
    ldloc.1 //num
    ldc.i4 150
    ble MENORQUE150
    br COMECALOOP
    
   MENORQUE150:
     ldloc.2 //intervalo
     ldc.i4.1
     add
     stloc.2
     br COMECALOOP
    
   ESCREVEQUANTIDADE:
     ldstr "Quantidade de numeros digitados no intervalo entre 10 e 150: "
     call void [mscorlib]System.Console::WriteLine (string)
     ldloc.2
     call void [mscorlib]System.Console::WriteLine (int32)
     br FIM
   FIM:
     ret
}
