import 'package:flutter/material.dart';
import 'package:day_2/data/repository.dart';
import 'package:day_2/views/common_page.dart';

class HomePage extends StatelessWidget {
  final _data = Dummy.buttons;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: ListView.builder(
        itemCount: _data.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (_, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CommonPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.deepOrange,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  child: Text(
                    _data[index].text,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
