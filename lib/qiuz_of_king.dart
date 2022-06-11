import 'package:flutter/material.dart';

class QuizOfKing extends StatelessWidget {
  const QuizOfKing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List answer = [
      'Assassin s Creed',
      'Call of Duty',
      'For Honor',
      'Watch Dogs'
    ];

    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1c7db4),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: 48,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.grey[500]),
                            ),
                          )),
                ),
                const Spacer(),
                const Text(
                  'امتیاز شما',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                const SizedBox(width: 5),
                const Text(
                  '0-0',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                const SizedBox(width: 5),
                const Text('امتیاز حریف',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                      child: Text(
                        'بازی های ویدیوئی',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'کدام بازی از شرکت uniSoft نیست ؟',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 35,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  value: 0.7,
                  color: Colors.cyan,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Center(
                      child: Text(answer[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
