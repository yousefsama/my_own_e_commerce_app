part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}

final class CategorySuccess extends CategoryState {
  List<Categorymodel> categories;

  CategorySuccess({required this.categories});
}

final class CategoryFailure extends CategoryState {
  final String errorMessage;

  CategoryFailure({required this.errorMessage});
}

final class CategoryLoading extends CategoryState {}
