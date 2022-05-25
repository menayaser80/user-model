import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:UserScreen()));
}
class UserModel
{
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.phone,
    required  this.id,
    required this.name,
  });
}
class UserScreen extends StatelessWidget {
  List<UserModel>users=[
    UserModel(
      name: 'mena',
      id: 1,
      phone: '01030659884',
    ),
    UserModel(
      name: 'marina',
      id: 2,
      phone: '01040659884',
    ),
    UserModel(
      name: 'felo',
      id: 3,
      phone: '01040659774',
    ),
    UserModel(
      name: 'mena',
      id: 1,
      phone: '01030659884',
    ),
    UserModel(
      name: 'marina',
      id: 2,
      phone: '01040659884',
    ),
    UserModel(
      name: 'felo',
      id: 3,
      phone: '01040659774',
    ),
    UserModel(
      name: 'mena',
      id: 1,
      phone: '01030659884',
    ),
    UserModel(
      name: 'marina',
      id: 2,
      phone: '01040659884',
    ),
    UserModel(
      name: 'felo',
      id: 3,
      phone: '01040659774',
    ),
    UserModel(
      name: 'mena',
      id: 1,
      phone: '01030659884',
    ),
    UserModel(
      name: 'marina',
      id: 2,
      phone: '01040659884',
    ),
    UserModel(
      name: 'felo',
      id: 3,
      phone: '01040659774',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Users',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>buildUserItem(users[index]),
        separatorBuilder:(context,index)=>Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
          ),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),



    );

  }
  Widget buildUserItem(UserModel user)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text('${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),),
            Text('${user.phone}',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
            ),

          ],
        ),
      ],
    ),
  );


}