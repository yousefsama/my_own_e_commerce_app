import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/product_model.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());
  CollectionReference product = FirebaseFirestore.instance
      .collection('category')
      .doc('Fasion')
      .collection('products');
  void getProduct() {
    emit(ProductLoading());
    product.snapshots().listen((event) {
      List<ProductModel> products = [];
      for (var doc in event.docs) {
        products.add(ProductModel.fromJson(doc));
      }

      emit(ProductSuccess(products: products));
    });
  }
}
