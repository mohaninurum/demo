import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GradientBorderContainerScreen extends StatefulWidget {
  const GradientBorderContainerScreen({super.key});

  @override
  State<GradientBorderContainerScreen> createState() => _GradientBorderContainerScreenState();
}

class _GradientBorderContainerScreenState extends State<GradientBorderContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(

            child: AnimatedContainer(

              transform:Matrix4(
                  1, 0, 0, 1,
                  0, 1, 0, 0,
                  0, 0, 1, 5,
                  1, 0, 0, 1),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(2), // Add padding for the inner container
              duration: Duration(seconds: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black, // Inner container color
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Gradient Border',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          ElevatedButton(onPressed: (){
            setState(() {

            });
          }, child: Text("refresh"))
        ],
      ),
    );
  }
}