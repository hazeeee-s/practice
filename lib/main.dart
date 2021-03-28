import 'package:flutter/material.dart';
import 'package:practice_app/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

　
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home:ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('練習'),
          ),
          body: Consumer<MainModel>(
            builder: (context, model,child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      model.Message,
                      style:TextStyle(
                        fontSize: 30,
                      )
                    ),
                    ElevatedButton(
                      child: Text('ボタン'),
                      onPressed: (){
                        model.changeMessage();
                      },
                    )
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
