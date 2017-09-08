.assembly extern mscorlib{}
.assembly micro06 {}

.method static void Main() cil managed
{
  .entrypoint
  .maxstack 3
  .locals init (int32 numero)
  ldstr "Digite um numero de 1 a 5: "
  call void [mscorlib]System.Console::WriteLine (string)
  call string [mscorlib]System.Console::ReadLine ()
  call int32 [mscorlib]System.Int32::Parse(string)
  stloc numero
  ldloc numero
  ldc.i4.1 
  bne.un DOIS //Comparo se 1 é igual ao número digitado, se não for ramifica pq "bne"
  ldstr "Um" //Se for então printa 1
  call void [mscorlib]System.Console::WriteLine (string)
  br FIM
  
  DOIS:
   ldloc numero 
   ldc.i4.2   
   bne.un TRES  //Comparo se 2 é igual ao número digitado, se não for ramifica pq "bne"
   ldstr "Dois" //Se for então printa 2 e assim por diante...
   call void [mscorlib]System.Console::WriteLine (string)
   br FIM

  TRES:
   ldloc numero
   ldc.i4.3
   bne.un QUATRO
   ldstr "Tres"
   call void [mscorlib]System.Console::WriteLine (string)
   br FIM

  QUATRO:
   ldloc numero
   ldc.i4 4
   bne.un CINCO
   ldstr "Quatro"
   call void [mscorlib]System.Console::WriteLine (string)
   br FIM

  CINCO:
   ldloc numero
   ldc.i4 5
   bne.un OUTROCASO
   ldstr "Cinco"
   call void [mscorlib]System.Console::WriteLine (string)
   br FIM
  
  OUTROCASO:
   ldstr "Numero invalido!!!"
   call void [mscorlib]System.Console::WriteLine (string)
   br FIM

  FIM:
   ret
   
}
