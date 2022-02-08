import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:one_solution_task/screens/article_details_screen.dart';

import '../constants.dart';
class ArticlesWidget extends StatelessWidget {
dynamic data;
ArticlesWidget({required this.data});
  @override
  Widget build(BuildContext context) {
    return data != null
        ?Scaffold(
        appBar: AppBar(
          title: const Text('Best Articles'),
        ),
        body:  SafeArea(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(ArticleDetailsScreen.id, arguments: index);
                  },
                  child: Card(
                    elevation: 5,
                    child: buildContainer(
                      colour: Colors.grey,
                      width: double.infinity,
                      height: 750.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 1,
                            child: buildContainer(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                  data['results'][index]['multimedia'][0]
                                  ['url'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        buildContainer(
                                          colour: Colors.black45,
                                          child: Column(children: [
                                            const Text('Title',style: kTitle,),
                                            Text(
                                              '${data['results'][index]['title']}',
                                              style: kTextStyle,
                                            ),
                                          ]),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        buildContainer(
                                          colour: Colors.black45,
                                          child: Column(children: [
                                            const Text(
                                              'Abstract',
                                              style: kTitle,
                                            ),
                                            Text(
                                              '${data['results'][index]['abstract']}',
                                              style: kTextStyle,
                                            ),
                                          ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        buildContainer(
                                          colour: Colors.black45,
                                          child: Text(
                                            'PublishedDate:\n${data['results'][index]['published_date']}',
                                            style: kDateStyle,
                                          ),
                                        ),const SizedBox(height:30 ,),
                                        buildContainer(
                                          colour: Colors.black45,
                                          child: Text(
                                            'CreatedDate:\n${data['results'][index]['created_date']}',
                                            style: kDateStyle,
                                          ),
                                        ),const SizedBox(height:30 ,),
                                        buildContainer(
                                          colour: Colors.black45,
                                          child: Text(
                                            'UpdatedDate:\n${data['results'][index]['updated_date']}',
                                            style: kDateStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: data['results'].length,
            ))

    ): const Center(
        child:SpinKitSquareCircle(color: Colors.white, size: 50.0)
    );
  }
  }

