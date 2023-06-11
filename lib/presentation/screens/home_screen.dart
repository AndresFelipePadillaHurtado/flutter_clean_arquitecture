import 'package:clean_arquitecture/presentation/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = context.watch<UserProvider>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (userProvider.isLoading)
              const CircularProgressIndicator()
            else
              Column(
                children: [
                  Text('Name: ${userProvider.user?.name}'),
                  Text('Email: ${userProvider.user?.email}'),
                  Text('Last Name: ${userProvider.user?.lastName}'),
                ],
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userProvider.fetchUser();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
