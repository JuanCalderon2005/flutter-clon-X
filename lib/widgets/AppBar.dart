import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(80.0),
        super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  int _selectedTabIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage:
                NetworkImage('https://randomuser.me/api/portraits/men/1.jpg'),
            radius: 16,
          ),
          Image.network(
            'https://cdn.prod.website-files.com/5d66bdc65e51a0d114d15891/64cebc6c19c2fe31de94c78e_X-vector-logo-download.png',
            width: 48,
            height: 48,
          ),
          const SizedBox(width: 32), // Espaciador
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(2.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _TabItem(
                title: 'For you',
                isSelected: _selectedTabIndex == 0,
                onTap: () => _onTabSelected(0),
              ),
              _TabItem(
                title: 'Following',
                isSelected: _selectedTabIndex == 1,
                onTap: () => _onTabSelected(1),
              ),
              _TabItem(
                title: 'Subscribed',
                isSelected: _selectedTabIndex == 2,
                onTap: () => _onTabSelected(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const _TabItem({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          if (isSelected)
            Container(
              margin: const EdgeInsets.only(top: 4.0),
              height: 2,
              width: 50,
              color: Colors.blue.shade400,
            ),
        ],
      ),
    );
  }
}
