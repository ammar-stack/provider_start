import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_start/pages/second_screen.dart';
import 'package:provider_start/services/list_provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(
      builder:(context,numbersProviderModel,child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: (){
            numbersProviderModel.Add();
          },
          child:const Icon(Icons.add , color: Colors.white,),
        ),
        appBar: AppBar(
          title: const Text("Start Provider"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(numbersProviderModel.numbers.last.toString(),style:const TextStyle(fontSize: 30),)
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numbersProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(numbersProviderModel.numbers[index].toString(),style:const TextStyle(fontSize: 30),);
                  },
                )
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                }, 
                child:const Text("Move",style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      
    );
  }
}