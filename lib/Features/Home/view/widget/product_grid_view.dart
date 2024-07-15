import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/product_model.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/item_details_view.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_item.dart';

class ProductSliverGridView extends StatefulWidget {
  const ProductSliverGridView({
    super.key, 
  });
  
  @override
  State<ProductSliverGridView> createState() => _ProductSliverGridViewState();
}

class _ProductSliverGridViewState extends State<ProductSliverGridView> {
  CollectionReference product = FirebaseFirestore.instance
      .collection('category')
      .doc('Fasion')
      .collection('products');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: product.get(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData) {
          List<ProductModel> productmodelList = [];
          for (var i = 0; i < snapshot.data!.docs.length; i++) {
            productmodelList.add(ProductModel.fromJson(snapshot.data!.docs[i]));
          }
          return GridView.builder(
              itemCount: productmodelList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.sizeOf(context).width < 800
                      ? 2
                      : MediaQuery.sizeOf(context).width < 1200
                          ? 4
                          : MediaQuery.sizeOf(context).width < 1400
                              ? 6
                              : 8,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.66),
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      // GoRouter.of(context).push(AppRouter.itemDetailsView);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ItemDetailsView(
                                    productModel: productmodelList[index],
                                  )));
                    },
                    child: ProductItem(
                      productModel: productmodelList[index],
                    ));
              });
        }

        return const  Center(child:  CircularProgressIndicator());
      },
    );
  }
}
