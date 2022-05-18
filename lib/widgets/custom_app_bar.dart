import 'package:flutter/material.dart';
import 'package:pozotask/screens/tasks.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
      length: 3,
      child: new Scaffold(
        body: new NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          new SliverAppBar(
            brightness: Brightness.dark,
            elevation: 0.0,
            centerTitle: true,
            title: Text(widget.title),
            floating: true,
            pinned: true,
            snap: true,
            bottom: TabBar(
              indicatorWeight: 4,
               indicatorColor: Colors.black,
              tabs: [
                Tab(
                  child: Container(
                    child: Text('Pending'),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('Completed'),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('Overdue'),
                  ),
                 ),
              ],
            ),
          ),
        ];
      },
      body: TabBarView(
        physics: BouncingScrollPhysics(),
            children: [
              TaskScreen(status: "pending"),
              TaskScreen(status: "completed"),
              TaskScreen(status: "overdue"),
            ],
          ),
        ),
      ),
    );
  }
}
