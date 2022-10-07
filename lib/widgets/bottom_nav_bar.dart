import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedTab = 0;

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.bottomNavBarColor,
      child: SafeArea(
        top: false,
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavigationBarItem(
              index: 0,
              image: 'images/home.png',
              text: 'Головна',
              isSelected: (_selectedTab == 0),
              onTap: onSelectedTab,
            ),
            _NavigationBarItem(
              index: 1,
              image: 'images/history.png',
              text: 'Історія',
              isSelected: (_selectedTab == 1),
              onTap: onSelectedTab,
            ),
            _NavigationBarItem(
              index: 2,
              image: 'images/map.png',
              text: 'Карта',
              isSelected: (_selectedTab == 2),
              onTap: onSelectedTab,
            ),
            _NavigationBarItem(
              index: 3,
              image: 'images/more.png',
              text: 'Більше',
              isSelected: (_selectedTab == 3),
              onTap: onSelectedTab,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    Key? key,
    required this.index,
    required this.image,
    required this.onTap,
    this.isSelected = false,
    required this.text,
  }) : super(key: key);

  final ValueChanged<int> onTap;
  final bool isSelected;
  final int index;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        width: 50,
        child: SizedBox(
          height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(image),
                color: isSelected
                    ? AppColor.kPrimaryColor
                    : AppColor.unSelectedItemColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 11,
                    color: isSelected
                        ? AppColor.kPrimaryColor
                        : AppColor.unSelectedItemColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
