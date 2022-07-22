import 'package:flutter/material.dart';
import 'package:flutter17_project/views/player_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'package:flutter17_project/views/player_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_screen.dart';
import 'premium_screen.dart';
import 'search_screen.dart';
import 'library_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: Alignment.center,
        children: [
          _screen(index),
          Positioned(
            bottom: 0,
            child: _miniPlayerScreen(),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey.shade900,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          showSelectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (int i) {
            setState(() {
              index = i;
              // _screen(index);
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music), label: 'Library'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.spotify), label: 'Premium'),
          ],
        ),
      ),
    );
  }

  _screen(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
        break;
      case 1:
        return const SearchScreen();
        break;
      case 2:
        return const LibraryScreen();
        break;
      case 3:
        return const PremiumScreen();
        break;
    }
  }

  Widget _playerzone() {
    return isExpand ? _playerScreen() : _miniPlayerScreen();
  }

  Widget _playerScreen() {
    return Container();
  }

  Widget _miniPlayerScreen() {
    return InkWell(
      onTap: ()  {
         Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                PlayerScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var tween = Tween(begin: const Offset(0.0, 1), end: Offset.zero).chain(
                CurveTween(curve: Curves.ease),
              );
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
          // MaterialPageRoute(builder: (context)=>PlayerScreen(),)
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  'https://i1.sndcdn.com/artworks-oXVfDRaHFk1cE4Co-T4TZSA-t500x500.jpg',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            Positioned(
              left: 55,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.55,
                height: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'VÌ MẸ ANH BẮT CHIA TAY',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Miu Lê, Karik, Châu Đăng Khoa',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 50,
              child: SvgPicture.asset(
                'assets/images/open_in_desktop.svg',
                // width: 40,
                // height: 40,
                color: Colors.grey,
              ),
            ),
            Positioned(
              right: 0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
