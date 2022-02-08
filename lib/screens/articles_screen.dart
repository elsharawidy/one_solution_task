import 'package:flutter/material.dart';
import 'package:one_solution_task/networking/network.dart';
import 'package:one_solution_task/widgets/articles_widget.dart';
import 'package:provider/provider.dart';

class ArticlesScreen extends StatefulWidget {
  static String id = '/articles_screen';
  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
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
    return ArticlesWidget(data: data); //the widget of articles.
  }
}
