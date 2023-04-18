import 'package:counter_app_using_provider/screen/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter_UI extends StatefulWidget {
  const Counter_UI({Key? key}) : super(key: key);

  @override
  State<Counter_UI> createState() => _Counter_UIState();
}

class _Counter_UIState extends State<Counter_UI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.teal,
          title: Text("Counter App",style: TextStyle(fontSize: 25,color: Colors.white),),
          centerTitle: true,
          elevation: 8,
          ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 160,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black),

                child: Consumer<CounterProvider>(
                    builder: (context, value, child) =>
                    Text("${value.no}",style: TextStyle(color: Colors.greenAccent,fontSize: 30),)),),
              SizedBox(height: 50),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  IconButton(onPressed: () {

                    Provider.of<CounterProvider>(context,listen: false).plus1();

                  }, icon: Icon(Icons.add,size: 30,)),
                  IconButton(onPressed: () {

                    Provider.of<CounterProvider>(context,listen: false).min1();

                  }, icon: Icon(Icons.remove,size: 30,)),
                  IconButton(onPressed: () {

                    Provider.of<CounterProvider>(context,listen: false).multi2();

                  }, icon: Icon(Icons.two_k_outlined,size: 30,)),
                  IconButton(onPressed: () {

                    Provider.of<CounterProvider>(context,listen: false).multi3();

                  }, icon: Icon(Icons.three_k_outlined,size: 30,)),
                  IconButton(onPressed: () {

                    Provider.of<CounterProvider>(context,listen: false).multi4();

                  }, icon: Icon(Icons.four_k_outlined,size: 30,)),
                  IconButton(onPressed: () {

                    Provider.of<CounterProvider>(context,listen: false).reset();

                  }, icon: Icon(Icons.looks_one,size: 30,)),


              ],)
            ],
          ),
        ),

        ),

    );
  }



}
