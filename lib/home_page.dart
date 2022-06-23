
import 'package:flutter/material.dart';
import 'package:inherited/home_controller.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    var controller = context.dependOnInheritedWidgetOfExactType<HomeController>()!;

    return Scaffold(
      appBar: AppBar(title: const Text('Inherited-Widget')),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
           const Text('Usando o Inherite para atulizar estado do widget.'),
           Text('Incrementando widget statelles ${controller.value}'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.incremento();
        },
      ),
    );
  }
}