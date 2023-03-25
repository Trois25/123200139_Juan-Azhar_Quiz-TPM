import 'package:flutter/material.dart';
import 'package:quiz_h_123200139/detile_page.dart';
import 'package:quiz_h_123200139/game_store.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Popular Game List"),
          ),
          body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                final GameStore list = gameList[index];
                return Card(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> DetilePage(detile:list)
                              ));
                        },
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(list.imageUrls[0]),
                              ),
                              SizedBox(height:40.0),
                              Column(
                                children: [
                                  Text(list.name),
                                  SizedBox(height:20.0),
                                  Text('Price : ' + list.price)
                                ],
                              )
                            ],
                          )
                      ),
                    ],
                  ),
                );
              },
              itemCount: gameList.length,
          ),
    ));
  }
}
