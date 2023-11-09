import 'package:flutter/material.dart';
import '../models/user.dart';

class ProfileScreen extends StatelessWidget {
  final User user;

  ProfileScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(user.profileImageUrl), // Exemplo
            ),
            SizedBox(height: 20),
            Text(user.name, style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 10),
            Text('Email: ${user.email}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implemente a lógica para editar o perfil
              },
              child: Text('Editar Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
