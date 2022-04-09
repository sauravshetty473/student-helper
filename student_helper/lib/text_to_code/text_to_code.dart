import 'package:flutter/material.dart';
import 'package:student_helper/shared/appbar.dart';



class TextToCode extends StatelessWidget {
  const TextToCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar,



      body: Container(
        width : double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 1000,

                  child: Center(
                    child: TextField(
                      maxLines: 10,

                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        border: InputBorder.none,
                        filled: true,



                      ),

                    ),
                  ),

            )),


            Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 1000,

                  child:  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      height: 408,
                      width: 652,
                      color: const Color(0xFF242424),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,

                        children: [
                          Container(
                            height: 39,
                            padding: const EdgeInsets.only(left: 11),
                            width: double.infinity,


                            color: Colors.black,

                            child: Row(
                              children: [
                                const SizedBox(height: double.infinity,),


                                Container(
                                  width: 11,
                                  height: 11,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(11)),
                                      color: Color(0xFFD6394A)
                                  ),
                                ),

                                const SizedBox(width: 7,),

                                Container(
                                  width: 11,
                                  height: 11,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(11)),
                                      color: Color(0xFFFFF736)
                                  ),
                                ),

                                const SizedBox(width: 7,),

                                Container(
                                  width: 11,
                                  height: 11,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(11)),
                                      color: Color(0xFF21B26D)
                                  ),
                                ),

                                const SizedBox(width: 7,),

                              ],
                            ),
                          ),


                          Scrollbar(
                            child: SingleChildScrollView(
                              child: Text(
                                "Code example"
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                )),


          ],
        ),
      ),



    );
  }
}
