import 'package:call_api/bloc/home/home_bloc.dart';
import 'package:call_api/bloc/home/home_event.dart';
import 'package:call_api/bloc/home/home_state.dart';
import 'package:call_api/repo/home_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatefulWidget {
  final HomeRepository repository;
  HomeBody({this.repository});
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  HomeBloc homeBloc;

  @override
  void initState() {
    homeBloc = BlocProvider.of<HomeBloc>(context);
    homeBloc.add(GetShoesEvent(pageIndex: 1, pageSize: 10));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeInitState) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is HomeSuccess) {
                return Column(
                  children: <Widget>[
                    Container(
                      child: ListView.builder(
                        itemCount: state.productModel.content.items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Icon(Icons.list),
                            trailing: Text(state
                                .productModel.content.items[index].price
                                .toString()),
                            title: Text(state
                                .productModel.content.items[index].name
                                .toString()),
                          );
                        },
                      ),
                    ),
                  ],
                );
              }
              return Text("");
            },
          ),
        ),
      ),
    );
  }
}
