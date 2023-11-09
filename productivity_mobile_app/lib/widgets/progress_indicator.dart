import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final double progress; // Valor de 0.0 a 1.0

  const CustomProgressIndicator({Key? key, this.progress = 0.5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Progresso Diário', style: Theme.of(context).textTheme.headline6),
        SizedBox(height: 10),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: Colors.grey[300],
          valueColor:
              AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
        ),
      ],
    );
  }
}
