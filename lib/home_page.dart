import 'package:flutter/material.dart';
import 'package:prima_jaya/detail_page.dart';
import 'package:prima_jaya/model/Product.dart';

class HomePage extends StatefulWidget {
  final int gridCount;
  const HomePage({Key? key, required this.gridCount}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState(gridCount: gridCount);
}

class _HomePageState extends State<HomePage> {
  int gridCount;
  String selectedCategory = "all";
  _HomePageState({required this.gridCount});
  List<Product> productList = products;

  void updateProduct() {
    setState(() {
      if (selectedCategory != "all") {
        productList = products
            .where((element) => element.category == selectedCategory)
            .toList();
      } else {
        productList = products;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        selectedCategory = categories[index];
                        updateProduct();
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: selectedCategory == categories[index]
                            ? Colors.red
                            : Colors.black,
                      ),
                      child: Text(
                        categories[index],
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ));
              },
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: gridCount,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              children: productList.map((product) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPage(prod: product);
                    }));
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Image.asset(
                            product.images[0],
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Rp ${product.price.toString()}',
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 8.0, bottom: 8.0),
                          child: Text(
                            product.name,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

