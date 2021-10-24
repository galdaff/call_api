import 'package:call_api/bloc/home/home_event.dart';
import 'package:call_api/bloc/home/home_state.dart';
import 'package:call_api/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository repository;
  HomeBloc(this.repository, HomeState initialState)
      : assert(repository != null),
        super(initialState);
  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetShoesEvent) {
      try {
        var data =
            await repository.fetchProduct(event.pageSize, event.pageIndex);
        yield HomeSuccess(productModel: data);
      } catch (e) {
        yield HomeErrorState();
      }
    }
  }
}
