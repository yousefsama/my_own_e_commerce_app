import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/category_model.dart';
import 'package:my_own_e_commerce_app/constance.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());
  CollectionReference category =
      FirebaseFirestore.instance.collection(CategoryConstance.kcategory);
  getCategory() {
    emit(CategoryLoading());
    category.snapshots().listen((event) {
      List<Categorymodel> categories = [];
      for (var doc in event.docs) {
        categories.add(Categorymodel.fromJson(doc));
      }

      emit(CategorySuccess(categories: categories));
    });
  }
}
