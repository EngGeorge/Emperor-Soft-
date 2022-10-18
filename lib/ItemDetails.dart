// ignore_for_file: prefer_const_constructors

import 'package:emperorsoft/ModelArg.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final ModelArgs modelArgs;

  const ItemDetails({
    Key? key,
    required this.modelArgs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(child: Text('Details ${modelArgs.id}')),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'ID:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '${modelArgs.id}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'AlbumId:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '${modelArgs.albumId}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Title:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      modelArgs.title,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Thumbnail:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      modelArgs.thumbnailUrl,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      modelArgs.thumbnailUrl,
                      height: 70,
                      width: 70,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Image:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      modelArgs.url,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      modelArgs.url,
                      height: 140,
                      width: 140,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
