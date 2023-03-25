import 'package:flutter/material.dart';
import 'package:quiz_h_123200139/game_store.dart';

class DetilePage extends StatefulWidget {
  final GameStore detile;
  const DetilePage({Key? key, required this.detile}) : super(key: key);

  @override
  State<DetilePage> createState() => _DetilePageState();
}

class _DetilePageState extends State<DetilePage> {
  @override
  Widget build(BuildContext context) {
    bool check = false;
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            title: Text(widget.detile.name),
            actions: <Widget>[
              IconButton(
                  icon: new Icon(
                    Icons.favorite,
                    color: check ? Colors.white:Colors.red,
                  ),
                  onPressed: ()
                  {
                    setState(() {
                      check = true;
                    });
                  }
              ),
            ],
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Padding(padding: EdgeInsets.all(20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height/3,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index) {
                            return Image.network(widget.detile.imageUrls[index]);
                        })
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(widget.detile.name)
                      ],
                    ),
                  ],
                ),
                SizedBox(height:20.0),
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     children: [
                       Icon(Icons.watch_later),
                       Text(widget.detile.releaseDate)
                     ],
                   ),
                   Column(
                     children: [
                       Icon(Icons.favorite),
                       Text(widget.detile.reviewAverage)
                     ],
                   )
                 ],
                ),
                SizedBox(height:20.0),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('About : '),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text(widget.detile.about)
                    ],
                  ),
                ),
                SizedBox(height:20.0),
                // Container(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       Text('Genre : '),
                //       Padding(padding: EdgeInsets.only(top: 10.0)),
                //       ListView.builder(
                //         itemBuilder: (BuildContext context, int index) {
                //           return Text(widget.detile.tags[index]);
                //         },
                //         itemCount: widget.detile.tags.length,
                //       )
                //     ],
                //   ),
                // ),
                SizedBox(height: 100.0),
                Container(
                  child:ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('Buy'),

                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
