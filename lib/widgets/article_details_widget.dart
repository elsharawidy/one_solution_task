import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../constants.dart';

class ArticleDetailsWidget extends StatelessWidget {
dynamic data;
var index;
ArticleDetailsWidget({required this.data,required this.index});

  @override
  Widget build(BuildContext context) {
    return data != null
        ? Scaffold(
      appBar: AppBar(
        title: Text(data['results'][index]['title']),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Card(
              elevation: 10,
              child: buildContainerOfDetails(
                height: 1200,
                width: double.infinity,
                colour: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(data['results'][index]
                        ['multimedia'][0]['url'],fit: BoxFit.cover,),
                      ),
                    ),

                    Expanded(
                      flex: 3,
                      child: buildContainerOfDetails(
                          colour: Colors.black45,
                          child: Column(
                            children:[
                              const Text('*Title*',style: kTitle,),
                              const Divider(),
                              Text(
                                '${data['results'][index]['title']}',
                                style: kTextStyle2,
                              ),
                            ],)
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: buildContainerOfDetails(
                          colour: Colors.black45,
                          child: Column(
                            children:[
                              const Text('*Abstract*',style: kTitle,),
                              const Divider(),
                              Text(
                                '${data['results'][index]['abstract']}',
                                style: kTextStyle2,
                              ),
                            ],)
                      ),),
                    Expanded(
                      flex: 2,
                      child: buildContainerOfDate(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [const Text('*PublishedDate*',style: kTitle,),
                              const SizedBox(height: 20,),
                              Text(
                                '${data['results'][index]['published_date']}',
                                style: kDateStyle2,),
                            ],)
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: buildContainerOfDate(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [const Text('*CreatedDate*',style: kTitle,),
                              const SizedBox(height: 20,),
                              Text(
                                '${data['results'][index]['created_date']}',
                                style: kDateStyle2,),
                            ],)
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    )
        : const  Center(
        child:SpinKitSquareCircle(color: Colors.white, size: 50.0)
    );
  }
}
