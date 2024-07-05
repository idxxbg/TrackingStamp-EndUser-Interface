import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'videotest.dart';
// import 'package:rive/rive.dart'/;
// import 'package:video_player/video_player.dart';
// import 'package:gap/gap.dart';

class TrackingStamp extends StatelessWidget {
  const TrackingStamp({
    super.key,
  });
  // final VideoPlayerController controller;
  // late VideoPlayerController _controller;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    // final double appbarHeight = AppBar().preferredSize.height;

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          HapticFeedback.lightImpact();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const VideoPlayerTest(),
            ),
          );
        },
        backgroundColor: Colors.blue.shade200,
        tooltip: 'Quet Hanh trinh san pham',
        elevation: 6,
        label: Text(
          'QUÉT NFC',
          style: GoogleFonts.notoSans(
              textStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ),
        icon: const Icon(Icons.nfc),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Stack(
        children: [
          // xử lý background
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/back_ground.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child:
                // Column(
                //   children: [
                //     SizedBox(
                //       height: screenHeight / 2.2,
                //     ),
                //     SizedBox(
                //       width: screenWidth / 2,
                //       height: screenHeight / 3,
                //       child: Hero(
                //         tag: ,
                //         child: Image.asset('assets/images/ts9.gif', fit: BoxFit.fill)),
                //     ),
                //   ],
                // )

                Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.only(top: screenHeight / 6),
                    width: screenWidth / 2.4,
                    height: screenHeight / 2.5,
                    child:
                        // const RiveAnimation.asset(
                        //   'assets/video/location_animation.riv',
                        // )
                        Image.asset(
                      'assets/images/ts9.gif',
                      fit: BoxFit.fill,
                    )
                    //  Hero(tag: 'video', child: VideoPlayer(controller)),
                    ),
          ),
          // xử lý hình ảnh
          Positioned(
            top: 0,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              height: MediaQuery.of(context).size.height / 3,
              'assets/images/TrackingStamp.png',
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            // color: Colors.grey.shade100,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade100,
                            shape: const CircleBorder()),
                        child: Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.blue.shade400,
                        ),
                      ),
                      MenuAnchor(
                        builder: (context, controller, child) {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade100,
                              shape: const CircleBorder(),
                            ),
                            onPressed: () {
                              if (controller.isOpen) {
                                controller.close();
                              } else {
                                controller.open();
                              }
                              ;
                            },
                            child: Icon(
                              Icons.settings,
                              color: Colors.blue.shade400,
                            ),
                          );
                        },
                        menuChildren: [
                          MenuItemButton(
                              clipBehavior: Clip.hardEdge,
                              leadingIcon: Icon(
                                Icons.language,
                                color: Colors.blue.shade300,
                              ),
                              child: const Text(
                                'Language',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              )),
                          Divider(
                            color: Colors.grey.shade300,
                          ),
                          MenuItemButton(
                            leadingIcon: Icon(
                              Icons.notifications,
                              color: Colors.blue.shade300,
                            ),
                            child: const Text(
                              'Notification',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight / 6,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'TRACKING\nSTAMP',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              height: 1,
                              color: Color.fromARGB(197, 0, 37, 92),
                              fontSize: 40,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      const Gap(15),
                      Text(
                        textAlign: TextAlign.center,
                        'Mobile Services of\nTrueData',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.blue.shade600,
                              fontSize: 20,
                              height: 1,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Gap(screenHeight / 3),
                      Text(
                        textAlign: TextAlign.center,
                        'The path of product parallels\nthe path of data',
                        style: GoogleFonts.dmSans(
                          textStyle: TextStyle(
                              color: Colors.blue.shade600,
                              fontSize: 16,
                              height: 1,
                              letterSpacing: 3,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    // : const Scaffold(
    //     body: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           CircularProgressIndicator(),
    //           // LinearProgressIndicator(),
    //         ],
    //       ),
    //     ),
    //   );
  }
}
