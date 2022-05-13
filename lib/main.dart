import 'package:flutter/material.dart';
import 'package:mad/data/repository/circle_repository.dart';
import 'package:mad/view/routes/router.dart';
import 'constants/enums.dart' as enums;
import 'data/model/circle.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
Future <List<Circle>> getDataReduser(List<Circle> state,enums.Actions action)async{
     CircleRepository().getAll();

   return await CircleRepository().getAll();
  }
  final store = Store<List<Circle>>(get, initialState: 0);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAD App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}
