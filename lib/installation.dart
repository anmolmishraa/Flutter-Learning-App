import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/sdk.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'CONST/color.dart';

class Installation extends StatefulWidget {
  const Installation({Key? key}) : super(key: key);

  @override
  _InstallationState createState() => _InstallationState();
}

class _InstallationState extends State<Installation> {
  List win = [
    {
      "requirement": "System requirements",
      "answer":
          "To install and run Flutter, your development environment must meet these minimum requirements:",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "Operating Systems: ",
      "answer": " Windows 7 SP1 or later (64-bit), x86-64 based",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "Disk Space:",
      "answer": " 1.64 GB (does not include disk space for IDE/tools).",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "Tools:",
      "answer":
          " Flutter depends on these tools being available in your environment. Windows PowerShell 5.0 or newer (this is pre-installed with Windows 10) Git for Windows 2.x, with the Use Git from the Windows Command Prompt option.  If Git for Windows is already installed, make sure you can run git commands from the command prompt or PowerShell.",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "Get the Flutter SDK",
      "answer":
          "Download the following installation bundle to get the latest stable release of the Flutter SDK:",
      "sho": true,
      "image": "assets/win-sdk.png",
      "answer1": "",
      "imagebool": true,
    },
    {
      "requirement": "",
      "answer":
          "For other release channels, and older builds, see the SDK releases page.  Extract the zip file and place the contained flutter in the desired installation location for the Flutter SDK (for example, C:\\Users\\<your-user-name>\\Documents).",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "",
      "answer":
          "If you don’t want to install a fixed version of the installation bundle, you can skip steps 1 and 2. Instead, get the source code from the Flutter repo on GitHub, and change branches or tags as needed. For example:",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement":
          "git clone https://github.com/flutter/flutter.git -b stable",
      "answer": "",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    }
  ];
  List mac_req = [
    {
      "requirement": "System requirements",
      "answer":
          "To install and run Flutter, your development environment must meet these minimum requirements:",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "Operating Systems: ",
      "answer": "macOS",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "Disk Space:",
      "answer": "2.8 GB (does not include disk space for IDE/tools).",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "Tools:",
      "answer":
          "Flutter uses git for installation and upgrade. We recommend installing Xcode, which includes git, but you can also install git separately.",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "Get the Flutter SDK",
      "answer":
          "Download the following installation bundle to get the latest stable release of the Flutter SDK:",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "",
      "answer":
          "For other release channels, and older builds, see the SDK releases page.",
      "sho": true,
      "image": "assets/mac-sdk.png",
      "answer1": "",
      "imagebool": true,
    },
    {
      "requirement": "",
      "answer":
          " Unzip the zip archive in a folder, say /path/to/flutter\n Update the system path to include flutter bin directory (in ~/.bashrc file).\n",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "> export PATH = \"PATH:/path/to/flutter/bin\"",
      "answer":
          "Enable the updated path in the current session using below command and then verify it as well.",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "source ~/.bashrc\nsource HOME/.bash_profile\necho PATH",
      "answer":
          "Flutter provides a tool, flutter doctor to check that all the requirement of flutter development is met. It is similar to the Windows counterpart.",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
      "": ""
    },
    {
      "requirement": "",
      "answer":
          "Install latest XCode, if reported by flutter doctor\nInstall latest Android SDK, if reported by flutter doctor\nInstall latest Android Studio, if reported by flutter doctor\nStart an android emulator or connect a real android device to the system to develop android application.\nOpen iOS simulator or connect a real iPhone device to the system to develop iOS application.\nInstall Flutter and Dart plugin for Android Studio. It provides the startup template to create a new Flutter application, option to run and debug Flutter application in the Android studio itself, etc.,\n                Open Android Studio\n                Click Preferences → Plugins\n                Select the Flutter plugin and click Install\n                Click Yes when prompted to install the              \nDart plugin.\n                Restart Android studio.      ",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    }
  ];
  List linux=[
    {
    "requirement": "System requirements",
    "answer": "To install and run Flutter, your development environment must meet these minimum requirements:",
    "sho": true,
    "image": "",
    "answer1": "",
    "imagebool": false,

  },
    {
      "requirement": "Operating Systems:",
      "answer": " Linux (64-bit)",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,

    },
    {
      "requirement": "Disk Space: ",
      "answer": " 600 MB (does not include disk space for IDE/tools).",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,

    },
    {
      "requirement": "Tools:",
      "answer": "Flutter depends on these command-line tools being available in your environment.\nbash\ncurl\nfile\ngit2.x\nmkdir\nrm\nunzip\nwhich\nxz-utils\nzip",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,

    },
    {
      "requirement": "Shared libraries: ",
      "answer": "Flutter test command depends on this library being available in your environment. libGLU.so.1 - provided by mesa packages such as libglu1-mesa on Ubuntu/Debian and mesa-libGLU on Fedora.",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,
    },
    {
      "requirement": "Get the Flutter SDK",
      "answer": "On Linux, you have two ways you can install Flutter.",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,

    },
    {
      "requirement": "Install Flutter using snapd",
      "answer": "The easiest way to install Flutter on Linux is by using snapd. For more information, see Installing snapd.\\nOnce you have snapd, you can install Flutter using the Snap Store, or at the command line:",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,

    },
    {
      "requirement": "",
      "answer": "sudo snap install flutter --classic\nflutter sdk-path",
      "sho": true,
      "image": "",
      "answer1": "",

    },
    {
      "requirement": "Install Flutter manually",
      "answer": "If you don’t have snapd, or can’t use it, you can install Flutter using the following steps.\\nDownload the following installation bundle to get the latest stable release of the Flutter SDK:",
      "sho": true,
      "image": "assets/linux-sdk.png",
      "answer1": "For other release channels, and older builds, see the SDK releases page.\nExtract the file in the desired location, for example:",
      "imagebool": true,

    },
    {
      "requirement": "cd ~/development\\ntar xf ~/Downloads/flutter_linux_2.5.2-stable.tar.xz",
      "answer": "If you don’t want to install a fixed version of the installation bundle, you can skip steps 1 and 2. Instead, get the source code from the Flutter repo on GitHub with the following command:",
      "sho": true,
      "image": "",
      "answer1": "",

    },
    {
      "requirement": "git clone https://github.com/flutter/flutter.git",
      "answer": "You can also change branches or tags as needed. For example, to get just the stable version:",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,

    },
    {
      "requirement": "git clone https://github.com/flutter/flutter.git -b stable\\nexport PATH=\"PATH:`pwd`/flutter/bin\"",
      "answer": "",
      "sho": true,
      "image": "",
      "answer1": "This command sets your PATH variable for the current terminal window only. To permanently add Flutter to your path, see Update your path.\n \nOptionally, pre-download development binaries:  The flutter tool downloads platform-specific development binaries as needed. For scenarios where pre-downloading these artifacts is preferable (for example, in hermetic build environments, or with intermittent network availability), iOS and Android binaries can be downloaded ahead of time by running:",
      "imagebool": false,

    },
    {
      "requirement": "flutter precache",
      "answer": "",
      "sho": true,
      "image": "",
      "answer1": "",
      "imagebool": false,

    }

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(

            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                  child: Image.asset(
                "assets/windows8.png",
                color: MyColor.TheamColor,
              )),
              Tab(
                  child:
                      Image.asset("assets/mac.png", color: MyColor.TheamColor)),
              Tab(
                  child: Image.asset("assets/linux.png",
                      color: MyColor.TheamColor)),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(onTap: (){
            Navigator.pop(context);
          },child: Icon(CupertinoIcons.backward, color: MyColor.TheamColor)),
          title: Shimmer.fromColors(
            baseColor: MyColor.TheamColor,
            highlightColor: Color(0XFF91a0b8),
            child: Text(
              'Installation',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SDK()),
                );
              },
                child: Icon(
                  CupertinoIcons.forward,
                  color: MyColor.TheamColor,
                ),
              ),
            )
          ],
        ),
        body: TabBarView(
          children: [
            ///Windows
            Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * .70,
                    child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: win.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    win[index]["requirement"],
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    win[index]["answer"],
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  win[index]["imagebool"] == true
                                      ? Container(
                                          width: 200,
                                          height: 50,
                                          child: InteractiveViewer(
                                            maxScale: 2.5,
                                            minScale: .5,
                                            child: Image.asset(
                                                win[index]["image"]),
                                          ),
                                        )
                                      : Container(),
                                ],
                              ),
                            );
                          }),
                    )),
                Container(
                  height: 30,
                  child: InkWell(
                      onTap: () => _launchURLwin(),
                      child: Image.asset("assets/win-link.gif")),
                )
              ],
            ),

            ///Mac
            Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * .70,
                    child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: mac_req.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    mac_req[index]["requirement"],
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    mac_req[index]["answer"],
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  mac_req[index]["imagebool"] == true
                                      ? Container(
                                          width: 200,
                                          height: 50,
                                          child: InteractiveViewer(
                                            maxScale: 2.5,
                                            minScale: .5,
                                            child: Image.asset(
                                                mac_req[index]["image"]),
                                          ),
                                        )
                                      : Container(),
                                ],
                              ),
                            );
                          }),
                    )),
                Container(
                  height: 30,
                  child: InkWell(
                      onTap: () => _launchURLmac(),
                      child: Image.asset("assets/win-link.gif")),
                )
              ],
            ),

            ///Linux
            Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * .70,
                    child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: linux.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    linux[index]["requirement"],
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    linux[index]["answer"],
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  linux[index]["imagebool"] == true
                                      ? Container(
                                          width: 200,
                                          height: 50,
                                          child: InteractiveViewer(
                                            maxScale: 2.5,
                                            minScale: .5,
                                            child: Image.asset(
                                                linux[index]["image"]),
                                          ),
                                        )
                                      : Container(),
                                  Text(
                                    linux[index]["answer1"],
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )),
                Container(
                  height: 30,
                  child: InkWell(
                      onTap: () => _launchURLLinux(),
                      child: Image.asset("assets/win-link.gif")),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

_launchURLwin() async {
  const url = 'https://flutter.dev/docs/get-started/install/windows';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLmac() async {
  const url = 'https://flutter.dev/docs/get-started/install/macos';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLLinux() async {
  const url = 'https://flutter.dev/docs/get-started/install/linux#agree-to-android-licenses';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
