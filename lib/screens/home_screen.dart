import 'package:call_api/bloc/home/home_bloc.dart';
import 'package:call_api/bloc/home/home_state.dart';
import 'package:call_api/repo/home_repo.dart';
import 'package:call_api/screens/components/home_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeBloc(HomeRepository(), HomeState()),
        child: HomeBody(),
      ),
    );
  }
}
