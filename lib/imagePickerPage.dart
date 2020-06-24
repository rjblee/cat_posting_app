import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatefulWidget {
  @override
  _ImagePickerPageState createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _descriptionController = TextEditingController();

  final _picker = ImagePicker();

  void open_camera() {
    PickedFile image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.grey[200],
              child: Image(
                height: 200,
                image: AssetImage('assets/placeholder-client.png'),
                color: Colors.grey[500],
              ),
            ),
            Container(
              color: Colors.grey[300],
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Form(
                child: TextFormField(
                  maxLines: 5,
                  controller: _descriptionController,
                  decoration: InputDecoration(hintText: "Description"),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                NeumorphicButton(
                  child: Text(
                    "Open Camera",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  onPressed: () {},
                  style:
                      NeumorphicStyle(depth: 9, shape: NeumorphicShape.concave),
                ),
                SizedBox(
                  width: 20,
                ),
                NeumorphicButton(
                  child: Text(
                    "Open Gallery",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  onPressed: () {},
                  style:
                      NeumorphicStyle(depth: 9, shape: NeumorphicShape.concave),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
