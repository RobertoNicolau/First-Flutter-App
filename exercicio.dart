//função soma
/* soma(int a, double b){
  return a+b;
}

//função sem retorno
void somar(int c, double d){
  print(c+d);
}

int exec(int e, int f, int Function(int, int) fn){
  return fn(e, f);
} */

class Produto{
 String nome;
 double preco;

  Produto({required this.nome, this.preco = 9.99});
}

main(){

  var p1 = Produto(nome: 'Caneta');
  var p2 = Produto(nome: 'Geladeira', preco: 1454.99);
  print("O ${p1.nome} custa R\$ ${p1.preco}");
  print("O ${p2.nome} custa R\$ ${p2.preco}");

/*   final r = exec(5, 3, (e, f){
    return e - f;
  });

  print(r); */
 /* print('o valor da soma é: ${soma(2, 2.5)}');
 somar(2,3.5); */


 /*  var a = 3;
  a = 4;

  final b = 3;

  const c = 5;
  c = 7;


  dynamic x = 'Teste';
  x = 123;
  x = falso;



  Map<String, double> notasDosAlunos = {
    'Ana': 9.7,
    'Bia': 9.2,
  };

  for(var chave in notasDosAlunos.keys){
    print('chave = $chave');
  }

  for(var valores in notasDosAlunos.values){
    print('valores = $valores');
  }

  for(var reg in notasDosAlunos.entries){
    print('${reg.key} = ${reg.value}');
  } */
}