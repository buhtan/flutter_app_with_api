// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_api_proje/business/manager.dart';
import 'package:flutter_api_proje/constants.dart';

class DetailPage extends StatelessWidget {
  late var user;

  DetailPage(
    @required this.user,
  );
//user.name.toString()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants().detailAppbar),
      ),
      body: ListView(
        children: [
          Padding(
            padding: Constants().cardPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Manager().avatar(user.avatar.toString()),
                Manager().myText(user.name.toString()),
                Manager().myText(user.surname.toString()),
                Text(
                  Constants.lormDetail,
                  style: Constants.myNewFontWhite,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Constants().myButtonText(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
