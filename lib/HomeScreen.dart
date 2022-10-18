// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'ItemsData.dart';
import 'ModelArg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'georgealsher94@gmail.com',
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Items_Data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: MyItems(context)[index]),
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> MyItems(BuildContext context) {
    return Items_Data.map((Map element) {
      return MyItem(
        context,
        albumId: element['albumId'],
        id: element['id'],
        title: element['title'],
        url: element['url'],
        thumbnailUrl: element['thumbnailUrl'],
      );
    }).toList();
  }

  Widget MyItem(
    BuildContext context, {
    required int albumId,
    required int id,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) {
    return ListTile(
      subtitle: Text(title,style: TextStyle(color: Colors.redAccent),),
      leading: Text('$id'),
      trailing: Image.network(thumbnailUrl),
      onTap: () {
        Navigator.pushNamed(context, '/ItemDetails',
            arguments: ModelArgs(
              albumId,
              id,
              title,
              url,
              thumbnailUrl,
            ));
      },
    );
  }
}
