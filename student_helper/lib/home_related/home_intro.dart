import 'package:flutter/material.dart';



class HomeIntro extends StatelessWidget {
  const HomeIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1000,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255,4,13,33),
        // gradient: LinearGradient(
        //
        //   colors: [
        //     Color.fromARGB(255,4,45,107),
        //     Color.fromARGB(255,4,13,33),
        //     Color.fromARGB(255,70,32,74)
        //   ],
        //
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomRight,
        // )
      ),


      child: Stack(

        children: [
          Container(
            margin: EdgeInsets.only(left: 100, top: 200),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width : 600,
                  child: Text(
                    'One stop solution for all student needs',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 60
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 400,
                        height: 100,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),


                      Container(
                        height: 100,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                          child: Text(
                            'Sign Up',

                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),
                          ),


                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
