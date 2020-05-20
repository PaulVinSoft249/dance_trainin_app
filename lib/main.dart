import 'package:dance_trainin_app/models/providers/mock_data_prov.dart';
import 'package:dance_trainin_app/pages/home_page.dart';
import 'package:dance_trainin_app/view_models/app_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ProviderInjector());

class ProviderInjector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppModel>.value(value: AppModel()),
        ChangeNotifierProvider<MockDataProv>.value(value: MockDataProv()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppModel>(context, listen: false);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stay At Home',
      theme: model.themeData,
      home: HomePage(),
    );
  }
}
