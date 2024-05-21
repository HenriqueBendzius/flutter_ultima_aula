import 'package:flutter/material.dart';

// Definição da classe modelo
class Item {
  String title;
  String description;
  String imageUrl;

  Item({required this.title, required this.description, required this.imageUrl});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Exemplo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListaItensScreen(),
    );
  }
}

// Tela de Listas
class ListaItensScreen extends StatelessWidget {
  // Lista de itens (pode ser substituída por uma lista dinâmica ou de API)
  final List<Item> itens = [
    Item(
      title: 'Redes Sociais',
      description: 'Explore e conecte-se com amigos em redes sociais',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/124/124010.png',

    ),
    Item(
      title: 'Música',
      description: 'Curta suas músicas favoritas e descubra novas',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/2965/2965908.png',
    ),
    Item(
      title: 'Esportes',
      description: 'Fique atualizado com os últimos resultados e notícias esportivas',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/124/124006.png',
    ),
    Item(
      title: 'Programação',
      description: 'Aprenda e desenvolva habilidades de programação',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/226/226777.png',
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Itens'),
      ),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(itens[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesItemScreen(item: itens[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Tela de Detalhes
class DetalhesItemScreen extends StatelessWidget {
  final Item item;

  DetalhesItemScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Item'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(item.imageUrl),
            SizedBox(height: 20),
            Text(item.title),
            SizedBox(height: 10),
            Text(item.description),
             SizedBox(height: 1),
          ],
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Social Commerce',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ProductListPage(),
//     );
//   }
// }

// class ProductListPage extends StatelessWidget {
//   // Aqui você pode definir uma lista de produtos (pode ser obtida de um serviço online, banco de dados, etc.)
//   final List<Product> products = [
//     Product(name: 'Produto 1', price: 20),
//     Product(name: 'Produto 2', price: 30),
//     Product(name: 'Produto 3', price: 25),
//     // Adicione mais produtos conforme necessário
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Produtos'),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(products[index].name),
//             subtitle: Text('Preço: \$${products[index].price.toString()}'),
//             onTap: () {
//               // Aqui você pode adicionar a lógica para quando um produto for selecionado
//               // Por exemplo, navegar para a página de detalhes do produto
//               // ou adicionar o produto ao carrinho
//               // Exemplo: Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(product: products[index])));
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class Product {
//   final String name;
//   final double price;

//   Product({required this.name, required this.price});
// }




