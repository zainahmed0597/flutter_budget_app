import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100.0,
            forceElevated: true,
            floating: true,
            pinned: true,
            leading: IconButton(
              icon: Icon(
                Icons.settings,
                size: 30.0,
              ),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.add,
                  size: 30.0,
                ),
                onPressed: () {},
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Simple Budget'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10.0),
                  height: 100.0,
                  color: Colors.red,
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
