import 'package:flutter/material.dart';
import 'package:my_api_hitting_app/state_management/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({
    super.key,
  });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, value, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(),
        body: SizedBox(
          child: Column(children: [
            Text(
              value.numbers.last.toString(),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        value.numbers[index].toString(),
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      );
                    }),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
