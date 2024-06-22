import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/category_model.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/category_card_item.dart';
import 'package:my_own_e_commerce_app/constance.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({
    super.key,
  });

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference category =
      FirebaseFirestore.instance.collection(CategoryConstance.kcategory);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
        future: category.get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Categorymodel> categorymodelList = [];
            for (var i = 0; i < snapshot.data!.docs.length; i++) {
              categorymodelList.add(
                Categorymodel.fromJson(snapshot.data!.docs[i]),
              );
            }

            return SizedBox(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categorymodelList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                          onTap: () {
                            currentIndex = index;
                            setState(() {});
                          },
                          child: CategoryCardItem(
                            isActive: index == currentIndex,
                            categorymodel: categorymodelList[index],
                          )),
                    );
                  }),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
