import 'package:flutter/material.dart';
import 'package:one_solution_task/screens/article_details_screen.dart';
import 'package:one_solution_task/screens/articles_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Best Articles'),
          ),
        ),
        initialRoute: ArticlesScreen.id,
        routes: {
          ArticlesScreen.id: (context) => ArticlesScreen(), //ArticlesScreen route
          ArticleDetailsScreen.id: (context) => ArticleDetailsScreen(), //The ArticleDetails route
        },

    );
  }
}
