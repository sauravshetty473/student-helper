import 'package:flutter/material.dart';
import 'package:student_helper/shared/appbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class TextToCode extends StatefulWidget {
  const TextToCode({Key? key}) : super(key: key);

  @override
  State<TextToCode> createState() => _TextToCodeState();
}

class _TextToCodeState extends State<TextToCode> {
  late TextEditingController _textEditingController;



  @override
  void initState() {
    _textEditingController = new TextEditingController();
    super.initState();
  }


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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 1000,

                  child:  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,


                      children: [
                        TextField(
                          controller: _textEditingController,
                          maxLines: 10,

                          decoration: const InputDecoration(
                            fillColor: Colors.grey,
                            border: InputBorder.none,
                            filled: true,



                          ),

                        ),


                        TextButton(onPressed: (){
                          setState(() {

                          });
                        }, child: Text(
                          "Convert"
                        ))
                      ],
                    )
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


                          FutureBuilder(
                            future: registerAPI(_textEditingController.text),
                            builder: (context, snapshot){
                              if(snapshot.data == null){
                                return const CircularProgressIndicator();
                              }


                              return Scrollbar(
                                child: Text(
                                  snapshot.data as String,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              );
                            },
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


 Future registerAPI(String val) async {
const uri = 'http://127.0.0.1:8000/';

var added = "check if palindrome";


print("started");


String modified = uri + "code/" + val.trim().replaceAll(" ", "%20");
print(modified);


var mid = Uri.parse(modified);
http.Response response = await http.get(
    mid,
    headers: {

    }
).onError((error, stackTrace){
  print(error);
  return Future.delayed(Duration.zero);
});

print("hello");

print(response.body);
// ignore: avoid_print

return (json.decode(response.body)["code"] as String).replaceAll("\t", "    ");
}

