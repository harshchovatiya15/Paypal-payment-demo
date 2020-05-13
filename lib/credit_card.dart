// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/credit_card_model.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';
// import 'package:modal_progress_hud/modal_progress_hud.dart';
// import 'package:paypal_demo/welcomePage.dart';
// class CreditCardPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return CreditCardPageState();
//   }
// }

// class CreditCardPageState extends State<CreditCardPage> {
//   final amountController = TextEditingController();
//   bool isLoading = false;
//   String cardNumber = '';
//   String expiryDate = '';
//   String cardHolderName = '';
//   String cvvCode = '';
//   bool isCvvFocused = false;

//   @override
//   Widget build(BuildContext context) {
//     return ModalProgressHUD(
//       inAsyncCall: isLoading,
//       child: Scaffold(
//         resizeToAvoidBottomInset: true,
//         body: SafeArea(
//           child: Column(
//             children: <Widget>[
//               CreditCardWidget(
//                 cardNumber: cardNumber,
//                 expiryDate: expiryDate,
//                 cardHolderName: cardHolderName,
//                 cvvCode: cvvCode,
//                 showBackView: isCvvFocused,
//               ),
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: CreditCardForm(
//                     onCreditCardModelChange: onCreditCardModelChange,
//                   ),
//                 ),
//               ),
//               Container(
//                 child: TextField(
//                   decoration: InputDecoration(hintText: 'Enter amount in Rs.'),
//                   controller: amountController,
//                   keyboardType: TextInputType.number,
//                 ),
//               ),
//               Container(
//                 child: RaisedButton(
//                   onPressed: () async {
//                     setState(() {
//                       isLoading = true;
//                     });

//                     if (payResponse.statusCode == 200) {
//                       setState(() {
//                         isLoading = false;
//                       });
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => WelcomePage(),
//                         ),
//                       );
//                     } else {
//                       setState(() {
//                         isLoading = false;
//                       });
//                     }
//                     showAlertDialog(BuildContext context) {
//                       // set up the button
//                       Widget okButton = FlatButton(
//                         child: Text("OK"),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => CreditCardPage(),
//                             ),
//                           );
//                         },
//                       );

//                       // set up the AlertDialog
//                       AlertDialog alert = AlertDialog(
//                         title: Text('Alert!'),
//                         content: Text('Please fill correct detail'),
//                         actions: [
//                           okButton,
//                         ],
//                       );

//                       // show the dialog
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return alert;
//                         },
//                       );
//                     }
//                     // }
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) => CreditCardPage(),
//                     //   ),
//                     // );
//                   },
//                   child: Text('Pay'),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void onCreditCardModelChange(CreditCardModel creditCardModel) {
//     setState(() {
//       cardNumber = creditCardModel.cardNumber;
//       expiryDate = creditCardModel.expiryDate;
//       cardHolderName = creditCardModel.cardHolderName;
//       cvvCode = creditCardModel.cvvCode;
//       isCvvFocused = creditCardModel.isCvvFocused;
//     });
//   }
// }
import 'package:flutter/material.dart';

import 'bloc.dart';

class SongPlayScreen extends StatefulWidget {
  @override
  _SongPlayScreenState createState() => _SongPlayScreenState();
}

class _SongPlayScreenState extends State<SongPlayScreen> {
  List str = [];

  Map<String, dynamic> d = {
    'Results': [
      {
        'name': 'Song 1',
        'video_link':
            'https://cdn.shopify.com/s/files/1/1728/5303/articles/psychonaut-beats-square_1024x1024.png?v=1499281174'
      },
      {
        'name': 'Song 2',
        'video_link':
            'https://c.saavncdn.com/165/Meditative-Loops-Relaxation-English-2017-500x500.jpg'
      },
      {
        'name': 'Song 3',
        'video_link':
            'https://c.saavncdn.com/659/Natural-Noise-101-Sleep-Music-Lullabies-to-Help-you-Meditate-and-Heal-Best-Serenity-Spa-Sounds-English-2016-500x500.jpg'
      },
      {
        'name': 'Song 4',
        'video_link':
            'https://c.saavncdn.com/001/Sounds-of-the-Eternal-Meditative-Chants-and-Prayers-English-2005-20180520153602-500x500.jpg'
      },
      {
        'name': 'Song 5',
        'video_link':
            'https://production-next-images-cdn.thumbtack.com/i/344821607728324611/desktop/standard/400square-legacy'
      },
      {
        'name': 'Song 4',
        'video_link':
            'https://c.saavncdn.com/001/Sounds-of-the-Eternal-Meditative-Chants-and-Prayers-English-2005-20180520153602-500x500.jpg'
      },
      {
        'name': 'Song 1',
        'video_link':
            'https://cdn.shopify.com/s/files/1/1728/5303/articles/psychonaut-beats-square_1024x1024.png?v=1499281174'
      },
      {
        'name': 'Song 2',
        'video_link':
            'https://c.saavncdn.com/165/Meditative-Loops-Relaxation-English-2017-500x500.jpg'
      },
      {
        'name': 'Song 3',
        'video_link':
            'https://c.saavncdn.com/659/Natural-Noise-101-Sleep-Music-Lullabies-to-Help-you-Meditate-and-Heal-Best-Serenity-Spa-Sounds-English-2016-500x500.jpg'
      },
      {
        'name': 'Song 4',
        'video_link':
            'https://c.saavncdn.com/001/Sounds-of-the-Eternal-Meditative-Chants-and-Prayers-English-2005-20180520153602-500x500.jpg'
      },
      {
        'name': 'Song 5',
        'video_link':
            'https://production-next-images-cdn.thumbtack.com/i/344821607728324611/desktop/standard/400square-legacy'
      },
      {
        'name': 'Song 4',
        'video_link':
            'https://c.saavncdn.com/001/Sounds-of-the-Eternal-Meditative-Chants-and-Prayers-English-2005-20180520153602-500x500.jpg'
      },
    ]
  };

  @override
  void initState() {
    str = d['Results'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        // bottomSheet: showMusicPlayBottoms(),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 58),
          child: playSong(),
        )
        // Stack(
        //   children: <Widget>[
        //     bodyContent,
        //     Positioned(
        //       left: 0,
        //       right: 0,
        //       bottom: 60,
        //       child: showMusicPlayBottoms(),
        //     ),
        //   ],
        // ),
        );

    // bottomSheet: Container(
    //   color: Colors.transparent,
    //   child: ,
    // ),
  }

  Widget get bodyContent {
    return Container(
      child: playSong(),
    );
  }

  Widget playSong() {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 00.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: const Color(0xFF454545).withOpacity(0.3),
                      blurRadius: 5.0,
                      spreadRadius: 2,
                      offset: const Offset(0.0, 2.5),
                    )
                  ],
                ),
                height: MediaQuery.of(context).size.height / 1.7,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // child: Image.asset(
                      //   'assets/images/album_Image.png',
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          // height: 45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  // bottomTabBloc.bottomTabStatus(5);
                                },
                                child: Container(
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 10),
                                    // child: SvgPicture.asset(
                                    //   'assets/images/back.svg',
                                    //   height: 25,
                                    //   width: 25,
                                    // ),
                                    child: Icon(
                                      Icons.chevron_left,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, right: 15),
                                child: Row(
                                  children: <Widget>[
                                    // SvgPicture.asset(
                                    //   'assets/images/notification.svg',
                                    //   height: 25,
                                    //   width: 25,
                                    // ),
                                    Icon(
                                      Icons.chevron_left,
                                    ),

                                    Container(width: 10),
                                    // SvgPicture.asset(
                                    //   'assets/images/search.svg',
                                    //   height: 30,
                                    //   width: 30,
                                    // ),
                                    Icon(
                                      Icons.chevron_left,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.black.withOpacity(0.5),
                              // decoration: const BoxDecoration(
                              // ),
                              height: 50,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 9),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      // child: SvgPicture.asset(
                                      //   'assets/images/favourite.svg',
                                      //   fit: BoxFit.cover,
                                      //   color: Colors.white,
                                      //   height: 30,
                                      // ),
                                      child: Icon(
                                        Icons.favorite_border,
                                      ),
                                    ),
                                    GestureDetector(
                                      // onTap: () => Navigator.of(context).push(
                                      //   subscriptionRoute(),
                                      // ),
                                      child: Container(
                                        //   child: SvgPicture.asset(
                                        //     'assets/images/play.svg',
                                        //     fit: BoxFit.cover,
                                        //     color: Colors.white,
                                        //     height: 30,
                                        //   ),
                                        // ),
                                        child: Icon(
                                          Icons.play_arrow,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // child: SvgPicture.asset(
                                      //   'assets/images/shuffle.svg',
                                      //   fit: BoxFit.cover,
                                      //   color: Colors.white,
                                      //   height: 30,
                                      // ),
                                      child: Icon(
                                        Icons.favorite_border,
                                      ),
                                    ),
                                    GestureDetector(
                                      // onTap: () => Navigator.of(context).push(
                                      //   subscriptionRoute(),
                                      // ),
                                      child: Container(
                                        // child: SvgPicture.asset(
                                        //   'assets/images/download.svg',
                                        //   fit: BoxFit.cover,
                                        //   color: Colors.white,
                                        //   height: 30,
                                        // ),
                                        child: Icon(
                                          Icons.favorite_border,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: albumSongList(),
              ),
              SizedBox(
                height: 5,
              ),
              // showMusicPlayBottoms()
            ],
          ),
        ),
        Positioned(bottom: 0, child: showMusicPlayBottoms())
      ],
    );
  }

  Widget albumSongList() {
    return StreamBuilder(
        stream: songPopupBloc.songPopupStream,
        builder: (context, snapshot) {
          return Container(
            color: Colors.red,
            margin: EdgeInsets.only(
                top: 5, bottom: snapshot.data == true ? 100 : 0),
            child: ListView.builder(
              itemCount: str.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    songPopupBloc.songPopup(true);
                  },
                  child: Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: 24, right: 21),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: const Color(0xFF454545)
                                          .withOpacity(0.6),
                                      blurRadius: 3.5,
                                      spreadRadius: 1,
                                      offset: const Offset(0.0, 0.5),
                                    )
                                  ],
                                ),
                                padding: const EdgeInsets.all(1),
                                height: 41,
                                width: 33,
                                child: Image.network(
                                  str[index]['video_link'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(width: 10),
                              Container(
                                // width: MediaQuery.of(context).size.width - 75,
                                child: GestureDetector(
                                  onTap: () async {
                                    songPopupBloc.songPopup(true);
                                    // showMusicPlayBottom();
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        str[index]['name'],
                                        style: const TextStyle(
                                            fontFamily: 'roboto',
                                            fontSize: 18,
                                            // fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      const Text(
                                        'Test Song',
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            fontSize: 12,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            // child: (
                            //   'assets/images/more.png',
                            //   fit: BoxFit.cover,
                            color: Colors.grey[800],
                            height: 18,
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        });
  }

  Widget showMusicPlayBottoms() {
    return StreamBuilder<bool>(
      stream: songPopupBloc.songPopupStream,
      initialData: false,
      builder: (context, AsyncSnapshot<bool> songPopSnapshot) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 24, right: 21),
          child: songPopSnapshot.data == true
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    color: const Color(0xFF363584),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomLeft: Radius.circular(25.0),
                            ),
                            child: Image.network(
                              str[4]['video_link'],
                              width: 65,
                              height: 66,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(width: 10),
                          Container(
                            height: 65,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          190,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            str[0]['name'],
                                            style: TextStyle(
                                                fontFamily: 'roboto',
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            'Maharshri Saurav',
                                            style: TextStyle(
                                                fontFamily: 'AvenirNext',
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      // onTap: () => Navigator.of(context).push(
                                      //   createRoute(),
                                      // ),
                                      // child: SvgPicture.asset(
                                      //   'assets/images/slide_up.svg',
                                      //   height: 20,
                                      //   color: Colors.white,
                                      // ),
                                      child: Icon(Icons.pause),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 20,
                                  child: Row(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceBetween,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              '-09:34',
                                              style: TextStyle(
                                                  fontFamily: 'AvenirNext',
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Container(
                                            width: 200,
                                            child: LinearProgressIndicator(
                                              value: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 70,
                                        child: Row(
                                          children: <Widget>[
                                            // SvgPicture.asset(
                                            //   'assets/images/pause.svg',
                                            //   height: 22,
                                            //   color: Colors.white,
                                            // ),
                                            Icon(Icons.play_circle_filled),
                                            Container(width: 5),
                                            // SvgPicture.asset(
                                            //   'assets/images/song_forward.svg',
                                            //   height: 22,
                                            //   color: Colors.white,
                                            // ),
                                            Icon(Icons.play_circle_filled)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              : Container(height: 0),
        );
      },
    );
  }
}

//   Route createRoute() {
//     return PageRouteBuilder(
//       pageBuilder: (context, animation, secondaryAnimation) =>
//           SingleSongPlayScreen(),
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         const begin = Offset(0.0, 1.0);
//         const end = Offset.zero;
//         const curve = Curves.ease;

//         final tween =
//             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//         return SlideTransition(
//           position: animation.drive(tween),
//           child: child,
//         );
//       },
//     );
//   }

//   Route subscriptionRoute() {
//     return PageRouteBuilder(
//       pageBuilder: (context, animation, secondaryAnimation) =>
//           SubcriptionPlan(),
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         const begin = Offset(0.0, 1.0);
//         const end = Offset.zero;
//         const curve = Curves.ease;

//         final tween =
//             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//         return SlideTransition(
//           position: animation.drive(tween),
//           child: child,
//         );
//       },
//     );
//   }
// }
