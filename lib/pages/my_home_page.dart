import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_proje/business/manager.dart';
import 'package:flutter_api_proje/constants.dart';
import 'package:flutter_api_proje/model/user_model.dart';


import 'detail_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<UserModel>> _getUserList() async {
    try {
      var response = await Dio().get(Constants().url);
      List<UserModel> _userList = [];
      if (response.statusCode == 200) {
        _userList =
            (response.data as List).map((e) => UserModel.fromMap(e)).toList();
      }
      return _userList;
    } on DioError catch (e) {
      return Future.error(e.message);
    }
  }

  late final Future<List<UserModel>> _userList;

  @override
  void initState() {
    super.initState();
    _userList = _getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants().homeAppbar),
      ),
      body: Center(
        child: FutureBuilder(
          future: _userList,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              var userList = snapshot.data;
              return ListView.builder(
                addAutomaticKeepAlives: true,
                itemCount: userList.length,
                itemBuilder: (context, index) {
                 

                  return Card(
                    color: Constants().cardColors,
                    child: Padding(
                      padding: Constants().cardPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Manager().avatar(userList[index].avatar.toString()),
                          Manager().myText(userList[index].name.toString()),
                          Manager().myText(userList[index].surname.toString()),
                          Manager().myText(userList[index].email.toString()),
                          Manager().myText(userList[index].phone.toString()),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(userList[index])));
                              },
                              child: Constants().myButtonText())
                        ],
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
