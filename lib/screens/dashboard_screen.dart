
import 'package:flutter/material.dart';
import 'package:flutter_project/models/user_model.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    String name = "Prashan";
    int age = 30;
    String description = "Adasd asdaasdada asdasda dasdasd sadsad asdasdas asd asdasdas dasdasda dasdas dasdas dsadasd ads asdad asdasdad asdadasda asdasd asdas asdasdas";
    UserModel user = UserModel(
        id: 1, firstName: "Prashan", lastName: "Silva", age: 30
    );

    String fullName = user.firstName + ' ' + user.lastName;

    return Scaffold(
      body: Center(
        child: Container(
          width:  200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Hello ${user.firstName} ${user.lastName}',
                 style: TextStyle(
                   fontSize: 24,
                   color: Colors.red,
                   fontStyle: FontStyle.italic,
                   decoration: TextDecoration.lineThrough,
                   letterSpacing: 1.5,
                   wordSpacing: 1.5
                 ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'He',
                      children: [
                        TextSpan(
                          text: 'll',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.orange,
                            )
                        ),
                        TextSpan(
                          text: 'o'
                        )
                      ],
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                      )
                    ),
                    TextSpan(
                        text: user.firstName,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.yellow,
                      )
                    ),
                    TextSpan(
                        text: user.lastName,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.red,
                        )
                    )
                  ]
                )
              ),
              Text('Your age is  ${user.age}'),
              Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Robot'
                  )
              ),

              Container(
                width:  200, height: 200,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular( 10 ),
                    border: Border.all( color: Colors.black, width: 2 )
                    // border: Border(
                    //   top: BorderSide(
                    //     color: Colors.black,
                    //     width: 10
                    //   ),
                    // )
                ),
              ),
              SizedBox( height: 10,),
              Container(
                width:  200, height: 200,
                child:  Text(
                  'Hello ${user.firstName} ${user.lastName}',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.lineThrough,
                      letterSpacing: 1.5,
                      wordSpacing: 1.5
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 2
                      ),
                      bottom: BorderSide(
                          color: Colors.black,
                          width: 2
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
