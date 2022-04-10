import 'package:flutter/material.dart';

class CoverLetter extends StatefulWidget {
  const CoverLetter({Key? key}) : super(key: key);

  @override
  State<CoverLetter> createState() => _CoverLetterState();
}

class _CoverLetterState extends State<CoverLetter> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String _experience = " Experience ";
  String _name = " Name ";
  String _job = " Job ";
  String _company = " Company ";
  String _background = "Background";
  bool _focusNode1 = false;
  bool _focusNode2 = false;

  void _requestFocus1() {
    setState(() {
      _focusNode1 = true;
    });
  }

  void _requestFocus2() {
    setState(() {
      _focusNode2 = true;
    });
  }

  @override
  Widget _buildName() {
    return Container(
      child: Column(
        children: [
          TextFormField(
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              validator: (input) {
                if (input!.isEmpty) {
                  return "Please provide name";
                }
              },
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: new Color(0xff1D2033),
                  filled: true,
                  labelText: "Your Name",
                  labelStyle: TextStyle(color: Colors.white)),
              maxLines: 1,
              onSaved: (input) {
                _name = input!;
              }),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildjob() {
    return Container(
      child: Column(
        children: [
          TextFormField(
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              validator: (input) {
                if (input!.isEmpty) {
                  return "Please provide job";
                }
              },
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: new Color(0xff1D2033),
                  filled: true,
                  labelText: "Job",
                  labelStyle: TextStyle(color: Colors.white)),
              maxLines: 1,
              onSaved: (input) {
                _job = input!;
              }),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildcompany() {
    return Container(
      child: Column(
        children: [
          TextFormField(
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              validator: (input) {
                if (input!.isEmpty) {
                  return "Please provide company";
                }
              },
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: new Color(0xff1D2033),
                  filled: true,
                  labelText: "Company",
                  labelStyle: TextStyle(color: Colors.white)),
              maxLines: 1,
              onSaved: (input) {
                _company = input!;
              }),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildbackground() {
    return Container(
      child: Column(
        children: [
          TextFormField(
              onTap: _requestFocus1,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              validator: (input) {
                if (input!.isEmpty) {
                  return "Please provide background";
                }
              },
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: new Color(0xff1D2033),
                  filled: true,
                  labelText:
                      _focusNode1 ? "Background" : "Background\n\n\n\n\n",
                  labelStyle: TextStyle(color: Colors.white)),
              maxLines: 5,
              onSaved: (input) {
                _background = input!;
              }),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildexperience() {
    return Container(
      child: Column(
        children: [
          TextFormField(
              onTap: _requestFocus2,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              validator: (input) {
                if (input!.isEmpty) {
                  return "Please provide experience";
                }
              },
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: new Color(0xff1D2033),
                  filled: true,
                  labelText:
                      _focusNode2 ? "Experience" : "Experience\n\n\n\n\n",
                  labelStyle: TextStyle(color: Colors.white)),
              maxLines: 5,
              onSaved: (input) {
                _experience = input!;
              }),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color(0xff0B0C20),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/cover_letter_image.png',
                    height: 80,
                    width: 140,
                  ),
                  Text(
                    "Create your own cover letter",
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  children: [
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: 500,
                        width: 660,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Form(
                              key: _formkey,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(children: [
                                  _buildName(),
                                  _buildjob(),
                                  _buildcompany(),
                                  _buildbackground(),
                                  _buildexperience()
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          Container(
                            height: 420,
                            width: 800,
                            decoration: BoxDecoration(
                                color: new Color(0xff1D2033),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.white)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "This is sample cover letter",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (!_formkey.currentState!.validate()) {
                                return;
                              }

                              _formkey.currentState!.save();

                              print(_name);
                              print(_background);
                              print(_company);
                              print(_experience);
                              print(_job);
                            },
                            child: Container(
                              width: 200,
                              height: 50,
                              child: const Center(
                                child: Text(
                                  'Generate cover letter',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurple,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(flex: 1, child: Container()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
