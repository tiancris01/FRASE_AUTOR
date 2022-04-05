import 'package:flutter/material.dart';
import 'frases.dart';

class tarjetaFrases extends StatelessWidget {
  final Frases frase1;
  final VoidCallback delete;
  tarjetaFrases({required this.frase1, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              frase1.frase,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(height: 8.0),
            Text(
              frase1.autor,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            SizedBox(height: 8.0),
            TextButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('Delete'),
            )
          ],
        ),
      ),
    );
  }
}
