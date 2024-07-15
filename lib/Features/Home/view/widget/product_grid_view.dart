import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/product_model.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/item_details_view.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/manager/product/product_cubit.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_item.dart';

class ProductSliverGridView extends StatefulWidget {
  const ProductSliverGridView({
    super.key,
  });

  @override
  State<ProductSliverGridView> createState() => _ProductSliverGridViewState();
}

class _ProductSliverGridViewState extends State<ProductSliverGridView> {
  List<ProductModel> productmodelList = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is ProductSuccess) {
          productmodelList = state.products;
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
            },
          );
        }
        if (state is ProductFailure) {
          return Text(state.errorMessage);
        } else {
          return const Text('there was an error');
        }
      },
    );
  }
}
