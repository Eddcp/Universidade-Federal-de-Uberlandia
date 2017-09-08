.assembly extern mscorlib{}
.assembly micro09 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 3
  .locals init (float32 preco,float32 venda, float32 novo_preco)
  ldstr "Digite a preco: "
  call void [mscorlib]System.Console::WriteLine (string)
  call string [mscorlib]System.Console::ReadLine ()
  call float32 [mscorlib]System.Single::Parse(string)
  stloc preco
  ldstr "Digite a venda: "
  call void [mscorlib]System.Console::WriteLine (string)
  call string [mscorlib]System.Console::ReadLine ()
  call float32 [mscorlib]System.Single::Parse(string)
  stloc venda
  ldloc venda
  ldc.r4 500.0
  blt IF11
  ldloc preco
  ldc.r4 30.0
  blt IF11
  ldloc venda
  ldc.r4 500.0
  bge IF1200
  
 IF11:
  ldc.r4 1.1
  ldloc preco
  mul
  stloc novo_preco
  ldloc novo_preco
  call void [mscorlib]System.Console::WriteLine (float32)
  br FIM

 IF1200:
  ldloc venda
  ldc.r4 1200.0
  blt IF115
  br IF80

 IF80:
  ldloc preco
  ldc.r4 80.0
  blt IF115
  br IF08

 IF115:
  ldc.r4 1.15
  ldloc preco
  mul
  stloc novo_preco
  ldloc novo_preco
  call void [mscorlib]System.Console::WriteLine (float32)
  br FIM
 
 IF08:
  ldc.r4 0.8
  ldloc preco
  mul
  stloc novo_preco
  ldloc novo_preco
  call void [mscorlib]System.Console::WriteLine (float32)
  br FIM

 FIM:
  ret

}
