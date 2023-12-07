import "package:flutter/material.dart";
import "package:my_api_hitting_app/state_management/list_provider.dart";
import "package:my_api_hitting_app/state_management/second.dart";
import "package:provider/provider.dart";

class HomeScreenState extends StatefulWidget {
  const HomeScreenState({super.key});

  @override
  State<HomeScreenState> createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<HomeScreenState> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, numbersProviderModel, child) =>  
        Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersProviderModel.add();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(),
        body: SizedBox(
          child: Column(children: [
            Text(
              numbersProviderModel.numbers.last.toString(),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: numbersProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbersProviderModel.numbers[index].toString(),
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    );
                  }),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Second()));
                },
                child: const Text("Second")),
          ]),
        ),
      ),
    );
  }
}
