import 'package:flutter/material.dart';
import 'package:student_helper/home_related/home_intro.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeIntro(),

            Container(

              color: Colors.white,


              child: Container(

                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                margin: const EdgeInsets.symmetric( vertical: 100),
                color: const Color.fromARGB(255, 25, 25, 25),


                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 100,
                      child : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.code, size: 100, color: Colors.white,),
                          const SizedBox(height: 20,),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Avoid any hassle with our",
                                    style: TextStyle(
                                        color: Colors.white,

                                    )
                                ),

                                TextSpan(
                                  text: " quick code ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  )
                                ),

                                TextSpan(
                                    text: "solutions",
                                    style: TextStyle(
                                        color: Colors.white,

                                    )
                                ),
                              ]
                            )
                          ),
                        ],
                      )
                    ),

                    const SizedBox(width: 20,),

                    Container(
                        width: 100,
                        child : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.code, size: 100, color: Colors.white,),
                            const SizedBox(height: 20,),
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Avoid any hassle with our",
                                          style: TextStyle(
                                            color: Colors.white,

                                          )
                                      ),

                                      TextSpan(
                                          text: " quick code ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),

                                      TextSpan(
                                          text: "solutions",
                                          style: TextStyle(
                                            color: Colors.white,

                                          )
                                      ),
                                    ]
                                )
                            ),
                          ],
                        )
                    ),

                    const SizedBox(width: 20,),

                    Container(
                        width: 100,
                        child : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.code, size: 100, color: Colors.white,),
                            const SizedBox(height: 20,),
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Avoid any hassle with our",
                                          style: TextStyle(
                                            color: Colors.white,

                                          )
                                      ),

                                      TextSpan(
                                          text: " quick code ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),

                                      TextSpan(
                                          text: "solutions",
                                          style: TextStyle(
                                            color: Colors.white,

                                          )
                                      ),
                                    ]
                                )
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
