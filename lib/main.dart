import 'package:dev_api/api_feature/data/dataprovider/api_provider.dart';
import 'package:dev_api/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'api_feature/data/repositories/api_repository.dart';
import 'api_feature/presentation/home_page.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: RepositoryProvider(
            create: (context) => ApiRepository(ApiProvider()),
            child: const HomePage(),
          ),
        );
      },
    );
  }
}
