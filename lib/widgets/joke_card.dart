import 'package:flutter/material.dart';
import 'package:sara_lab2/theme.dart';
import '../screens/joke_type_screen.dart';
class JokeCard extends StatelessWidget {
  final String type;
  const JokeCard({super.key, required this.type});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12), // Поголемо растојание помеѓу картите
      elevation: 8, // Помала сенка
      color: AppTheme.cardBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Поголем радиус на картата
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => JokeTypeScreen(type: type),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Поголемо растојание во картата
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.star,
                size: 60, // Поголема иконка
                color: const Color.fromARGB(255, 232, 232, 53),
              ),
              const SizedBox(height: 12),
              Text(
                type,
                style: const TextStyle(
                  fontSize: 24, // Поголем текст
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





















