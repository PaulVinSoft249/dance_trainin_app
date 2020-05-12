import 'package:dance_trainin_app/view_models/app_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AppModel()),
      ],
      child: MaterialApp(
        title: 'Dance Training',
        theme: Provider.of<AppModel>(context, listen: false).themeData,
      ),
    );
  }
}
