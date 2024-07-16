import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/cart/data/cart_model.dart';
import 'package:my_own_e_commerce_app/Features/profile/View/widget/cart_item.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CartModel> cartModelList = [];
    CollectionReference cart = FirebaseFirestore.instance.collection('cart');
    return FutureBuilder<QuerySnapshot>(
      future: cart
          .where('id', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .get(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done) {
          for (var doc in snapshot.data!.docs) {
            cartModelList.add(CartModel.fromJson(doc));
          }

          return ListView.builder(
            itemCount: cartModelList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 15),
                child: CartItem(cartModel: cartModelList[index]),
              );
            },
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
