import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Providers/HomePage_Provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

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
                Text(provider.eligibilitymessage.toString() ,style: TextStyle(
                  color: provider.isEligible == true? Colors.green : Colors.red
                ),),
              TextField(
              keyboardType:  TextInputType.number,
              decoration: const InputDecoration(
              hintText: 'Enter Your Age',
                ),
                onChanged: (val){
                provider.checkEligibility(int.parse(val));

                },
          ),
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
