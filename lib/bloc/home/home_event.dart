import 'package:equatable/equatable.dart';

class HomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetShoesEvent extends HomeEvent {
  final int pageSize;
  final int pageIndex;
  GetShoesEvent({this.pageSize, this.pageIndex});
}
