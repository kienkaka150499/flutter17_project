import 'package:flutter/material.dart';
import 'package:flutter17_project/widgets/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        gradient: mainBackgroundGradient,
      ),
      child: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 50,
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 6,
                        child: Text(
                          'Recently',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.watch_later_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.settings_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.network(
                                    'https://i.scdn.co/image/ab67706f00000003c61f44e81529d986f2b3526d'),
                              ),
                              const SizedBox(
                                width: 100,
                                height: 10,
                                child: Text(
                                  'Hot Hits Vietnam',
                                  style: TextStyle(fontSize: 11),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    // separatorBuilder: (c, i) => Divider(),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'For You',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.network(
                                    'https://seed-mix-image.spotifycdn.com/v6/img/artist/6OzE2OdvV2tGAxSBsBuZ74/en/large'),
                              ),
                              const SizedBox(
                                width: 100,
                                height: 10,
                                child: Text(
                                  'Đức Phúc, Suni Hạ Linh, AMEE và nhiều người khác',
                                  style: TextStyle(fontSize: 11),
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    // separatorBuilder: (c, i) => Divider(),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Trending',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.network(
                                    'https://i.scdn.co/image/ab67706f000000037f8495e9ef2654d2d8d77f2b'),
                              ),
                              const SizedBox(
                                width: 100,
                                height: 20,
                                child: Text(
                                  'SEVENTEEN, TOMORROW X TOGETHER',
                                  style: TextStyle(fontSize: 10),
                                  // maxLines: 3,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    // separatorBuilder: (c, i) => Divider(),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Recommend Artist ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius:50,
                                backgroundImage: NetworkImage(
                                    'https://kenh14cdn.com/203336854389633024/2021/3/20/photo-1-16162497374871849229429-1616249942091160835903.jpg'),
                              ),
                              SizedBox(
                                width: 100,
                                height: 20,
                                child: Text(
                                  'Mỹ Tâm',
                                  style: TextStyle(fontSize: 11),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    // separatorBuilder: (c, i) => Divider(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
