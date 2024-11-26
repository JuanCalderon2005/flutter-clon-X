import 'package:flutter/material.dart';
import 'package:twitter/widgets/AppBar.dart';
import 'package:twitter/widgets/ButtonBar.dart';

class Dashboard extends StatefulWidget {
  final Widget homeWidget;

  const Dashboard({super.key, required this.homeWidget});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      widget.homeWidget,
      Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
      Center(child: Text('Community Page', style: TextStyle(fontSize: 24))),
      Center(child: Text('Notifications Page', style: TextStyle(fontSize: 24))),
      Center(child: Text('Add Post Page', style: TextStyle(fontSize: 24))),
    ];
  }

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(),
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _currentIndex,
        onTap: _onTabSelected,
      ),
      floatingActionButton: SizedBox(
        width: 40,
        height: 40,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
