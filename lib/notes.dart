import 'package:different_kind_of_button/methods.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List<String> notes = [];

  final TextEditingController textNote = TextEditingController();

  @override
  void initState() {
    getNotes([]).then((value) {
      if (value != null) {
        setState(() {
          notes = value;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: notes.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => Container(
                  padding: const EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 70,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          notes[index],
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        notes.add(textNote.text);
                        textNote.text = " ";
                        notess();
                      });
                    },
                    height: 60,
                    minWidth: 60,
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      'ثبت',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(50)),
                      child: TextFormField(
                        controller: textNote,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          isDense: true,
                          hintText: 'یادداشت خود را بنویسید.',
                          hintStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                          labelStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 20),
                          fillColor: Colors.pink[100],
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          filled: false,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
