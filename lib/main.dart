import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool flutterCourse = false;
  bool reactCourse = false;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Text(
                "Please selecet you Course!",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              Divider(height: 35),
              CheckboxListTile(
                  secondary: Icon(
                    Icons.book,
                    color: Colors.amber,
                  ),
                  subtitle: Text("based on dart programming",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          color: Colors.green[700])),
                  title: Text(
                    "Flutter",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  value: flutterCourse,
                  onChanged: ((val) {
                    setState(() {
                      flutterCourse = val!;
                    });
                  })),
              CheckboxListTile(
                secondary: Icon(
                  Icons.book,
                  color: Colors.amber,
                ),
                subtitle: Text(
                  "based on dart programming",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.green[700]),
                ),
                title: Text(
                  "React",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: reactCourse,
                onChanged: ((val) {
                  setState(() {
                    reactCourse = val!;
                  });
                }),
              ),
              SizedBox(height: 20),
              Container(
                width: 250,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      if(flutterCourse==true){
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVvp_qgjp403RMcOG_77YcVGu0FD_XYzQaQA&usqp=CAU'
                      }
                      elseif(reactCourse==true){
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj2jma2z7jmk1gd8J1Ty4W29QlPs_lc8w1aA&usqp=CAU'

                      }
                        ),
                  ),
                ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
