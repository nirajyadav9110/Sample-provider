import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Providers/HomePage_Provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
int num1 = 0;
int num2 = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child : ChangeNotifierProvider<HomePageProvider>(
            create: (context) => HomePageProvider(),
          child: Consumer<HomePageProvider>(
            builder: (context, provider, child){
              return Column (
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(width: 10,height: 10,),
              TextField(
              keyboardType:  TextInputType.number,
              decoration: const InputDecoration(
              hintText: 'Enter first number',

                ),
                onChanged: (val1){
                print(val1);
                num1 = int.parse(val1);


                },

          ),
                SizedBox(width: 10,height: 10,),
                TextField(
                  keyboardType:  TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Enter second number',
                  ),
                  onChanged: (val2){
                  num2 = int.parse(val2);
                  },
                ),
                SizedBox(width: 10,height: 10,),
                Text("Result"),Text(provider.Ans.toString()),
                SizedBox(width: 10,height: 10,),

              Row(children: [
                FloatingActionButton.extended(onPressed:(){
                  provider.addition(num1,num2);
                }, label: Text("Add")),
                SizedBox(width: 10),
                FloatingActionButton.extended(onPressed:(){
                  provider.substraction(num1,num2);
                }, label: Text("Sub")),
                SizedBox(width: 10),

                FloatingActionButton.extended(onPressed:(){
                  provider.multiplication(num1,num2);
                }, label: Text("Multi")),
                SizedBox(width: 10),

                FloatingActionButton.extended(onPressed:(){
                  provider.division(num1,num2);
                }, label: Text("Div")),

              ],),
          ],
          );
          }


          )



          )
        ),
      ),
    );
  }
}
