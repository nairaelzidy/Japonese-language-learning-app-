import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../component/customcard.dart';
import '../models/product_model.dart';
import '../secrvice/get_all_product_services.dart';
import 'UpdateProductPage.dart';

class HomePageStorApp extends StatefulWidget {
  const HomePageStorApp({Key? key}) : super(key: key);
  static String id = 'HomePAge';

  @override
  State<HomePageStorApp> createState() => _HomePageStorAppState();
}

class _HomePageStorAppState extends State<HomePageStorApp> {
  List<ProductModel> products = [];
  @override
  void initState() {
    super.initState();
    fetchProducts();
  }
  Future<void> fetchProducts() async {
    List<ProductModel> fetchedProducts =
    await AllProductsService().getAllProducts();
    setState(() {
      products = fetchedProducts;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 100,
                  ),
                  itemBuilder: (context, index) {
                    GestureDetector(
                      onTap: () async {
                        ProductModel? updatedProduct = await Navigator.pushNamed(
                          context,
                          UpdateProductPage.id,
                          arguments: products[index],
                        );
                        if (updatedProduct != null) {
                          // Update the product in the list
                          setState(() {
                            products[index] = updatedProduct;
                          });
                        }
                      },
                      child: CustomCard(
                        product: products[index],
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
