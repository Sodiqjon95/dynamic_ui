import 'package:dynamic_ui/cubits/dynamic_views_cubit.dart';
import 'package:dynamic_ui/data/api_provider.dart';
import 'package:dynamic_ui/data/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dynamic_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => MyRepository(apiProvider: ApiProvider()),
      child: BlocProvider(
        create: (context) => DynamicViewsCubit(myRepository: context.read<MyRepository>()),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const DynamicView(),
        ),
      ),
    );
  }
}
