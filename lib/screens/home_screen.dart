import 'package:flutter/material.dart';
import 'package:sara_lab2/theme.dart'; // Осигурувај се дека ја импортираш темата
import '../services/api_services.dart';
import '../widgets/joke_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  late Future<List<String>> jokeTypes;
  @override
  void initState() {
    super.initState();
    jokeTypes = ApiServices().fetchJokeTypes();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Funny Jokes'),
        backgroundColor: AppTheme.primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.shuffle),
            onPressed: () {
              Navigator.pushNamed(context, '/random_joke');
            },
            color: Colors.white,
          ),
        ],
      ),
      body: FutureBuilder<List<String>>(
        future: jokeTypes,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No joke types available'));
          } else {
            return GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Картите да бидат во две колони
                crossAxisSpacing: 15, // Простор помеѓу картите
                mainAxisSpacing: 15, // Простор помеѓу редовите
                childAspectRatio: 1, // Пропорции на картите
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                String type = snapshot.data![index];
                return JokeCard(type: type);
              },
            );
          }
        },
      ),
    );
  }
}













