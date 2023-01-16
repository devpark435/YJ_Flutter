import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Container(
                    width: 175,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      // image: DecorationImage(
                      //   image: AssetImage('/assets/images/Logo.png'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    child: Text('예정교회 로고 공간'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
                    child: Container(
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        height: 60,
                        child: TextFormField(
                          cursorColor: Colors.green,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.grey)),
                              hintText: "아이디",
                              focusColor: Colors.grey,
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                icon: Icon(Icons.cancel),
                                onPressed: () {},
                                color: Colors.grey,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Container(
                          width: 300,
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(0, 152, 152, 152))),
                          child: TextFormField(
                            cursorColor: Colors.green,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.grey)),
                                hintText: "비밀번호",
                                focusColor: Colors.grey,
                                border: InputBorder.none,
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.cancel),
                                  onPressed: () {},
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Container(
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: Container(
                                  width: 120,
                                  height: 60,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Text('로그인'),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, '/classList');
                                },
                              ),
                              Container(
                                width: 120,
                                height: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Text('교사 등록'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
