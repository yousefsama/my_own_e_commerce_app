part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductSuccess extends ProductState {
  final List<ProductModel> products;

  ProductSuccess({required this.products});
}

final class ProductFailure extends ProductState {
  final String errorMessage;

  ProductFailure({required this.errorMessage});
}
