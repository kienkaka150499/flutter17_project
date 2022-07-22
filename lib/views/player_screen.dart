import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  double progressValue = 0;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.zero,
            width: _width,
            height: _height * 0.9,
            // color: Colors.green,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: _height * 0.1,
                  left: _width * 0.1,
                  child: Image.network(
                    'https://cdnmedia.thethaovanhoa.vn/Upload/3uPkfvAxvuOpUQrmKeiDaA/files/2022/06/B/36/vimebatchiaty2.jpg',
                    width: _width * 0.8,
                    height: _width * 0.8,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.keyboard_arrow_down),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 10,
                  child: InkWell(
                    // padding: EdgeInsets.zero,
                    onTap: () {
                      // Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/images/open_in_desktop.svg',
                      color: Colors.white,
                      fit: BoxFit.none,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: _width,
                    height: _height * 0.9 - _width * 0.8 - _height * 0.1,
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Vì Mẹ Anh Bắt Chia Tay',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text('Miu Lê, Karik, Châu Đăng Khoa'),
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text('${progressValue.toInt()}:${((progressValue*60)%60).toInt()}'),
                            Expanded(
                              child: SliderTheme(
                                data: const SliderThemeData(
                                  trackHeight: 2,
                                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)
                                ),
                                child: Slider(
                                  value: progressValue,
                                  min: 0,
                                  max: 5,
                                  activeColor: Colors.white,
                                  inactiveColor: Colors.grey,
                                  onChanged: (_value) {
                                    setState(() {
                                      progressValue = _value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Text('5:00')
                          ],
                        )
                      ],
                    ),
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
