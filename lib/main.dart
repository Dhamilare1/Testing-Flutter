import 'package:firstapp/practice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(name:'Damilare', age: 32,)
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String name;
  final int? age;

  const MyHomePage({super.key, required this.name, this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: Container(
        height: 200,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Text('Name: $name'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Text('Age: ${age != null ? age.toString() : 'Unknown'}'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.red,
        padding: const EdgeInsets.all(10),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('home', style:Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),
            Text('cart', style:Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),
            Text('about', style:Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),
          ],
        ),
      )),
    );
  }
}
