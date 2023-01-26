import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: const Center(child: Text('Upload Image & Data to MySql/Server\n                  (Multipart Request)'),
      ),
      backgroundColor: Colors.deepPurple,
      ),
      body: UploadImage(),
      )
    );
  }
}


class UploadImage extends StatefulWidget {
  UploadImage({Key? key}) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [

        const SizedBox(height: 100,),

        Container(
          padding: const EdgeInsets.all(8),
          height: 70,
          child: ElevatedButton.icon(onPressed: (){},
          icon: const Icon(Icons.add_a_photo_outlined),
          label: const Text('TAKE PICTURE')),
        ),


        Container(
          padding: const EdgeInsets.all(8),
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Title'
            ),
          ),
        ),


        Container(
          padding: const EdgeInsets.all(8),
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Description'
            ),
          ),
        ),


      Container(
        padding: const EdgeInsets.all(8),
        height: 70,
        child: ElevatedButton.icon(onPressed: (){},
        icon: const Icon(Icons.file_upload),
        label: const Text('Upload Image & Data')),
      )


      ]),
    );
  }
}
