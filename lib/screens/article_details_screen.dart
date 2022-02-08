import 'package:flutter/material.dart';
import 'package:one_solution_task/networking/network.dart';
import 'package:one_solution_task/widgets/article_details_widget.dart';

class ArticleDetailsScreen extends StatefulWidget {
  static String id = '/article_details';

  @override
  State<ArticleDetailsScreen> createState() => _ArticleDetailsScreenState();
}

class _ArticleDetailsScreenState extends State<ArticleDetailsScreen> {
  dynamic data;

  Future<dynamic> getInfo() async {
    Network network = Network();
    final dataInfo = await network.getInfo();
    //getting the info from api.
    setState(() {
      if (dataInfo != null) {
        data = dataInfo;
      }
    });
  }

  @override
  void initState() {
    getInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)
        ?.settings
        .arguments; //getting the index from the 1st screen.

    return ArticleDetailsWidget(
        data: data, index: index); //the widget of the article details.
  }
}
