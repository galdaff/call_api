import 'package:call_api/model/api_model.dart';
import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomeInitState extends HomeState {}

class HomeSuccess extends HomeState {
  final ProductModel productModel;
  HomeSuccess({this.productModel});
}

class HomeEmptyState extends HomeState {}

class HomeErrorState extends HomeState {
  final String message;
  HomeErrorState({this.message});
}
