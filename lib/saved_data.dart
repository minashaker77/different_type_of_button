import 'package:different_kind_of_button/methods.dart';
import 'package:flutter/material.dart';

class SavedData extends StatefulWidget {
  const SavedData({Key? key}) : super(key: key);

  @override
  State<SavedData> createState() => _SavedDataState();
}

class _SavedDataState extends State<SavedData> {
  int count = 0;

  @override
  void initState() {
    getData("count").then((value) {
      if (value != null) {
        setState(() {
          count = value;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 90),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            saveData("count", count);
          });
        },
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
