import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_post/features/post/presentation/bloc/add_update_delete_post/add_update_delete_post_bloc.dart';
import 'package:gestion_post/features/post/presentation/bloc/posts/posts_bloc.dart';
import 'package:gestion_post/features/post/presentation/pages/post_page.dart';


import 'core/app_theme.dart';

import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.sl<PostsBloc>()..add(GetAllPostsEvent())),
        BlocProvider(create: (_) => di.sl<AddUpdateDeletePostBloc>())
      ],
      child: MaterialApp(
        title: 'Bonjour',
        theme: appTheme,
        home: PostPage(),
      ),
    );
  }
}