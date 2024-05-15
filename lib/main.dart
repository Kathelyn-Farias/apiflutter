import 'package:flutter/material.dart';
import 'package:apiflutter/user_list.dart';
import 'package:apiflutter/users_cad.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter User API Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(foregroundColor: Colors.white),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}

//BottomNavigatonBar
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getBodyWidget() {
    switch (_selectedIndex) {
      case 0:
        return const UserList();
      case 1:
        return const UserForm();
      default:
        return const UserList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 450,
          child: _getBodyWidget(),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 46, 125, 194),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 33, 89, 138),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_rounded),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_reaction_outlined),
            label: 'Cadastro',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
