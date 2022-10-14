import 'package:flutter/material.dart';
import 'package:prima_jaya/model/Product.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class DetailPage extends StatelessWidget {
  final Product prod;
  const DetailPage({Key? key, required this.prod}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // if (constraints.maxWidth > 800) {
        //   return DetailWebPage(product: product);
        // } else {
          return DetailMobilePage(product: prod);
        // }
      },
    );
  }
}


class DetailMobilePage extends StatelessWidget {
  final Product product;
  const DetailMobilePage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(product.images[0]),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        // const FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 16.0, left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Icon(Icons.monetization_on),
                          const SizedBox(height: 8.0),
                          Text(
                            'Rp ${product.price}',
                            style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, left: 20),
                      child: Text(
                        product.name,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                const FavoriteButton(),
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Deskripsi produk',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    product.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              )
            ),
            // SizedBox(
            //   height: 150,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: product.images.map((url) {
            //       return Padding(
            //         padding: const EdgeInsets.all(4.0),
            //         child: ClipRRect(
            //           borderRadius: BorderRadius.circular(10),
            //           child: Image.network(url),
            //         ),
            //       );
            //     }).toList(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
