// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:tagyourtaxi_driver/functions/functions.dart';
// import 'package:tagyourtaxi_driver/pages/NavigatorPages/about.dart';
// import 'package:tagyourtaxi_driver/pages/NavigatorPages/editprofile.dart';
// import 'package:tagyourtaxi_driver/pages/NavigatorPages/faq.dart';
// import 'package:tagyourtaxi_driver/pages/NavigatorPages/favourite.dart';
// import 'package:tagyourtaxi_driver/pages/NavigatorPages/history.dart';
// import 'package:tagyourtaxi_driver/pages/NavigatorPages/makecomplaint.dart';
// import 'package:tagyourtaxi_driver/pages/NavigatorPages/notification.dart';
// import 'package:tagyourtaxi_driver/pages/NavigatorPages/referral.dart';
// import 'package:tagyourtaxi_driver/pages/NavigatorPages/selectlanguage.dart';
// import 'package:tagyourtaxi_driver/pages/NavigatorPages/sos.dart';
// import 'package:tagyourtaxi_driver/pages/NavigatorPages/walletpage.dart';
// import 'package:tagyourtaxi_driver/pages/onTripPage/map_page.dart';
// import 'package:tagyourtaxi_driver/styles/styles.dart';
// import 'package:tagyourtaxi_driver/translations/translation.dart';

// class NavDrawer extends StatefulWidget {
//   const NavDrawer({Key? key}) : super(key: key);
//   @override
//   State<NavDrawer> createState() => _NavDrawerState();
// }

// class _NavDrawerState extends State<NavDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.of(context).size;
//     return Container(
//       color: page,
//       width: media.width * 0.8,
//       child: Directionality(
//         textDirection: (languageDirection == 'rtl')
//             ? TextDirection.rtl
//             : TextDirection.ltr,
//         child: Drawer(
//             child: SizedBox(
//           width: media.width * 0.7,
//           child: SingleChildScrollView(
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height:
//                         media.width * 0.05 + MediaQuery.of(context).padding.top,
//                   ),
//                   SizedBox(
//                     width: media.width * 0.7,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Container(
//                           height: media.width * 0.2,
//                           width: media.width * 0.2,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               image: DecorationImage(
//                                   image: NetworkImage(
//                                       userDetails['profile_picture']),
//                                   fit: BoxFit.cover)),
//                         ),
//                         SizedBox(
//                           width: media.width * 0.025,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(
//                               width: media.width * 0.45,
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   SizedBox(
//                                     width: media.width * 0.3,
//                                     child: Text(
//                                       userDetails['name'],
//                                       style: GoogleFonts.roboto(
//                                           fontSize: media.width * eighteen,
//                                           color: textColor,
//                                           fontWeight: FontWeight.w600),
//                                       maxLines: 1,
//                                     ),
//                                   ),
//                                   InkWell(
//                                     onTap: () async {
//                                       var val = await Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const EditProfile()));
//                                       if (val) {
//                                         setState(() {});
//                                       }
//                                     },
//                                     child: Icon(
//                                       Icons.edit,
//                                       size: media.width * eighteen,
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             SizedBox(
//                               height: media.width * 0.01,
//                             ),
//                             SizedBox(
//                               width: media.width * 0.45,
//                               child: Text(
//                                 userDetails['email'],
//                                 style: GoogleFonts.roboto(
//                                     fontSize: media.width * fourteen,
//                                     color: textColor),
//                                 maxLines: 1,
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(top: media.width * 0.02),
//                     width: media.width * 0.7,
//                     child: Column(
//                       children: [
//                         //notification
//                         ValueListenableBuilder(
//                             valueListenable: valueNotifierNotification.value,
//                             builder: (context, value, child) {
//                               return InkWell(
//                                 onTap: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) =>
//                                               const NotificationPage()));
//                                   setState(() {
//                                     userDetails['notifications_count'] = 0;
//                                   });
//                                 },
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       padding:
//                                           EdgeInsets.all(media.width * 0.025),
//                                       child: Row(
//                                         children: [
//                                           Image.asset(
//                                             'assets/images/notification.png',
//                                             fit: BoxFit.contain,
//                                             width: media.width * 0.075,
//                                           ),
//                                           SizedBox(
//                                             width: media.width * 0.025,
//                                           ),
//                                           SizedBox(
//                                             width: media.width * 0.49,
//                                             child: Text(
//                                               languages[choosenLanguage]
//                                                       ['text_notification']
//                                                   .toString(),
//                                               overflow: TextOverflow.ellipsis,
//                                               style: GoogleFonts.roboto(
//                                                   fontSize:
//                                                       media.width * sixteen,
//                                                   color: textColor),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     (userDetails['notifications_count'] == 0)
//                                         ? Container()
//                                         : Container(
//                                             height: 20,
//                                             width: 20,
//                                             alignment: Alignment.center,
//                                             decoration: BoxDecoration(
//                                               shape: BoxShape.circle,
//                                               color: buttonColor,
//                                             ),
//                                             child: Text(
//                                               userDetails['notifications_count']
//                                                   .toString(),
//                                               style: GoogleFonts.roboto(
//                                                   fontSize:
//                                                       media.width * fourteen,
//                                                   color: buttonText),
//                                             ),
//                                           )
//                                   ],
//                                 ),
//                               );
//                             }),
//                         //history
//                         InkWell(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const History()));
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(media.width * 0.025),
//                             child: Row(
//                               children: [
//                                 Image.asset(
//                                   'assets/images/history.png',
//                                   fit: BoxFit.contain,
//                                   width: media.width * 0.075,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.025,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.55,
//                                   child: Text(
//                                     languages[choosenLanguage]
//                                         ['text_enable_history'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: GoogleFonts.roboto(
//                                         fontSize: media.width * sixteen,
//                                         color: textColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),

//                         //wallet page
//                         InkWell(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const WalletPage()));
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(media.width * 0.025),
//                             child: Row(
//                               children: [
//                                 Image.asset(
//                                   'assets/images/walletIcon.png',
//                                   fit: BoxFit.contain,
//                                   width: media.width * 0.075,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.025,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.55,
//                                   child: Text(
//                                     languages[choosenLanguage]
//                                         ['text_enable_wallet'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: GoogleFonts.roboto(
//                                         fontSize: media.width * sixteen,
//                                         color: textColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),

//                         //referral page
//                         InkWell(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         const ReferralPage()));
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(media.width * 0.025),
//                             child: Row(
//                               children: [
//                                 Image.asset(
//                                   'assets/images/referral.png',
//                                   fit: BoxFit.contain,
//                                   width: media.width * 0.075,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.025,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.55,
//                                   child: Text(
//                                     languages[choosenLanguage]
//                                         ['text_enable_referal'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: GoogleFonts.roboto(
//                                         fontSize: media.width * sixteen,
//                                         color: textColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),

//                         //favorite
//                         InkWell(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const Favorite()));
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(media.width * 0.025),
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.favorite_border,
//                                   size: media.width * 0.075,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.025,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.55,
//                                   child: Text(
//                                     languages[choosenLanguage]
//                                         ['text_favourites'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: GoogleFonts.roboto(
//                                         fontSize: media.width * sixteen,
//                                         color: textColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),

//                         //faq
//                         InkWell(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const Faq()));
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(media.width * 0.025),
//                             child: Row(
//                               children: [
//                                 Image.asset(
//                                   'assets/images/faq.png',
//                                   fit: BoxFit.contain,
//                                   width: media.width * 0.075,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.025,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.55,
//                                   child: Text(
//                                     languages[choosenLanguage]['text_faq'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: GoogleFonts.roboto(
//                                         fontSize: media.width * sixteen,
//                                         color: textColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),

//                         //sos
//                         InkWell(
//                           onTap: () async {
//                             var nav = await Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const Sos()));
//                             if (nav) {
//                               setState(() {});
//                             }
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(media.width * 0.025),
//                             child: Row(
//                               children: [
//                                 Image.asset(
//                                   'assets/images/sos.png',
//                                   fit: BoxFit.contain,
//                                   width: media.width * 0.075,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.025,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.55,
//                                   child: Text(
//                                     languages[choosenLanguage]['text_sos'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: GoogleFonts.roboto(
//                                         fontSize: media.width * sixteen,
//                                         color: textColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),

//                         //select language
//                         InkWell(
//                           onTap: () async {
//                             var nav = await Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         const SelectLanguage()));
//                             if (nav) {
//                               setState(() {});
//                             }
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(media.width * 0.025),
//                             child: Row(
//                               children: [
//                                 Image.asset(
//                                   'assets/images/changeLanguage.png',
//                                   fit: BoxFit.contain,
//                                   width: media.width * 0.075,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.025,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.55,
//                                   child: Text(
//                                     languages[choosenLanguage]
//                                         ['text_change_language'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: GoogleFonts.roboto(
//                                         fontSize: media.width * sixteen,
//                                         color: textColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         //make complaints
//                         InkWell(
//                           onTap: () async {
//                             var nav = await Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => MakeComplaint(
//                                           fromPage: 0,
//                                         )));
//                             if (nav) {
//                               setState(() {});
//                             }
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(media.width * 0.025),
//                             child: Row(
//                               children: [
//                                 Image.asset(
//                                   'assets/images/makecomplaint.png',
//                                   fit: BoxFit.contain,
//                                   width: media.width * 0.075,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.025,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.55,
//                                   child: Text(
//                                     languages[choosenLanguage]
//                                         ['text_make_complaints'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: GoogleFonts.roboto(
//                                         fontSize: media.width * sixteen,
//                                         color: textColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         //about
//                         InkWell(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const About()));
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(media.width * 0.025),
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.info_outline,
//                                   size: media.width * 0.075,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.025,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.55,
//                                   child: Text(
//                                     languages[choosenLanguage]['text_about'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: GoogleFonts.roboto(
//                                         fontSize: media.width * sixteen,
//                                         color: textColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),

//                         //delete account
//                         InkWell(
//                           onTap: () {
//                             setState(() {
//                               deleteAccount = true;
//                             });
//                             valueNotifierHome.incrementNotifier();
//                             Navigator.pop(context);
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(media.width * 0.025),
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.delete_forever,
//                                   size: media.width * 0.075,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.025,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.55,
//                                   child: Text(
//                                     languages[choosenLanguage]
//                                         ['text_delete_account'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: GoogleFonts.roboto(
//                                         fontSize: media.width * sixteen,
//                                         color: textColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),

//                         //logout
//                         InkWell(
//                           onTap: () {
//                             setState(() {
//                               logout = true;
//                             });
//                             valueNotifierHome.incrementNotifier();
//                             Navigator.pop(context);
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(media.width * 0.025),
//                             child: Row(
//                               children: [
//                                 Image.asset(
//                                   'assets/images/logout.png',
//                                   fit: BoxFit.contain,
//                                   width: media.width * 0.075,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.025,
//                                 ),
//                                 SizedBox(
//                                   width: media.width * 0.55,
//                                   child: Text(
//                                     languages[choosenLanguage]['text_logout'],
//                                     overflow: TextOverflow.ellipsis,
//                                     style: GoogleFonts.roboto(
//                                         fontSize: media.width * sixteen,
//                                         color: textColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   )
//                 ]),
//           ),
//         )),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tagyourtaxi_driver/functions/functions.dart';
import 'package:tagyourtaxi_driver/pages/NavigatorPages/about.dart';
import 'package:tagyourtaxi_driver/pages/NavigatorPages/editprofile.dart';
import 'package:tagyourtaxi_driver/pages/NavigatorPages/history.dart';
import 'package:tagyourtaxi_driver/pages/NavigatorPages/makecomplaint.dart';
import 'package:tagyourtaxi_driver/pages/NavigatorPages/referral.dart';
import 'package:tagyourtaxi_driver/pages/NavigatorPages/selectlanguage.dart';

import 'package:tagyourtaxi_driver/pages/onTripPage/map_page.dart';
import 'package:tagyourtaxi_driver/styles/styles.dart';
import 'package:tagyourtaxi_driver/translations/translation.dart';

// class NavDrawer extends StatefulWidget {
//   const NavDrawer({Key? key}) : super(key: key);
//   @override
//   State<NavDrawer> createState() => _NavDrawerState();
// }

// class _NavDrawerState extends State<NavDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.of(context).size;
//     return Container(
//       color: buttonColor,
//       width: media.width * 0.8,
//       child: Directionality(
//         textDirection: (languageDirection == 'rtl')
//             ? TextDirection.rtl
//             : TextDirection.ltr,
//         child: Drawer(
//             backgroundColor: buttonColor,
//             child: SizedBox(
//               width: media.width * 0.7,
//               child: SingleChildScrollView(
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         height: media.width * 0.05 +
//                             MediaQuery.of(context).padding.top,
//                       ),

//                             //logout

//                           ],
//                         ),
//                       )
//                     ]),
//               ),
//             )),
//       ),
//     );
//   }
// }

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  // var data;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Drawer(
        child: Container(
            child: SingleChildScrollView(
      child: Column(children: [
        Container(
          width: double.infinity,
          child: DrawerHeader(
              child: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.fill,
            // height: 40,
            //  width: 100,
          )),
        ),
        Container(
          decoration: BoxDecoration(color: yellowcolor),
          width: media.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              userDetails['profile_picture'] != null
                  ? Container(
                      margin: EdgeInsets.all(5),
                      height: media.width * 0.2,
                      width: media.width * 0.2,
                      child: CircleAvatar(
                          backgroundColor: Colors.grey.shade400,
                          backgroundImage: NetworkImage(
                              userDetails['profile_picture'] ?? "")),
                    )
                  : Container(
                      margin: EdgeInsets.all(5),
                      height: media.width * 0.2,
                      width: media.width * 0.2,
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu3_qIHtXBZ7vZeMQhyD8qLC1VRB9ImHadL09KET_iSQEX6ags4ICknfmqEKz8Nf6IOsA&usqp=CAU')),
                    ),
              SizedBox(
                width: media.width * 0.025,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: media.width * 0.45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: media.width * 0.3,
                          child: Text(
                            // 'tester',
                            userDetails['name'] ?? "",
                            style: GoogleFonts.roboto(
                                fontSize: media.width * eighteen,
                                color: textColor,
                                fontWeight: FontWeight.w600),
                            maxLines: 1,
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            var val = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EditProfile()));
                            if (val) {
                              setState(() {});
                            }
                          },
                          child: Icon(
                            Icons.edit,
                            size: media.width * eighteen,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.01,
                  ),
                  SizedBox(
                    width: media.width * 0.45,
                    child: Text(
                      //'tester@gmail.com',
                      userDetails['email'] ?? "",
                      style: GoogleFonts.roboto(
                          fontSize: media.width * fourteen, color: textColor),
                      maxLines: 1,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          // padding: EdgeInsets.only(top: media.width * 0.1),
          width: media.width * 0.7,

          child: Column(
            children: [
              //wallet page
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const WalletPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(media.width * 0.025),
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Image.asset(
                        'assets/images/walletIcon.png',
                        fit: BoxFit.contain,
                        width: media.width * 0.075,
                      ),
                      SizedBox(
                        width: media.width * 0.020,
                      ),
                      Text(
                        ' Make A Booking',
                        // languages[choosenLanguage]
                        //     ['text_enable_wallet'],
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            fontSize: media.width * sixteen, color: textColor),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              //history
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const History()));
                },
                child: Container(
                  padding: EdgeInsets.all(media.width * 0.025),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/car1.png',
                        fit: BoxFit.contain,
                        width: media.width * 0.075,
                      ),
                      SizedBox(
                        width: media.width * 0.025,
                      ),
                      Text(
                        //  'My Trip',
                        languages[choosenLanguage]['text_enable_history'],
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            fontSize: media.width * sixteen, color: textColor),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),

              // // //referral page
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ReferralPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(media.width * 0.025),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/referral.png',
                        fit: BoxFit.contain,
                        width: media.width * 0.075,
                      ),
                      SizedBox(
                        width: media.width * 0.025,
                      ),
                      Text(
                        'Referal',
                        // languages[choosenLanguage]
                        //     ['text_enable_referal'],
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            fontSize: media.width * sixteen, color: textColor),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),

              // //favorite
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const Favorite()));
              //   },
              //   child: Container(
              //     padding: EdgeInsets.all(media.width * 0.025),
              //     child: Row(
              //       children: [
              //         Icon(
              //           Icons.favorite_border,
              //           size: media.width * 0.075,
              //         ),
              //         SizedBox(
              //           width: media.width * 0.025,
              //         ),
              //         Text(
              //           'favourites',
              //         //  languages[choosenLanguage]['text_favourites'],
              //           overflow: TextOverflow.ellipsis,
              //           style: GoogleFonts.roboto(
              //               fontSize: media.width * sixteen,
              //               color: textColor),
              //         ),
              //          Spacer(),
              //         Icon(Icons.arrow_forward_ios),
              //       ],
              //     ),
              //   ),
              // ),

              // //faq
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const Faq()));
              //   },
              //   child: Container(
              //     padding: EdgeInsets.all(media.width * 0.025),
              //     child: Row(
              //       children: [
              //         Image.asset(
              //           'assets/images/faq.png',
              //           fit: BoxFit.contain,
              //           width: media.width * 0.075,
              //         ),
              //         SizedBox(
              //           width: media.width * 0.025,
              //         ),
              //         Text(
              //           'fdfsdss',
              //          // languages[choosenLanguage]['text_faq'],
              //           overflow: TextOverflow.ellipsis,
              //           style: GoogleFonts.roboto(
              //               fontSize: media.width * sixteen,
              //               color: textColor),
              //         ),
              //          Spacer(),
              //         Icon(Icons.arrow_forward_ios),
              //       ],
              //     ),
              //   ),
              // ),

              // //sos
              // InkWell(
              //   onTap: () async {
              //     var nav = await Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const Sos()));
              //     if (nav) {
              //       setState(() {});
              //     }
              //   },
              //   child: Container(
              //     padding: EdgeInsets.all(media.width * 0.025),
              //     child: Row(
              //       children: [
              //         Image.asset(
              //           'assets/images/sos.png',
              //           fit: BoxFit.contain,
              //           width: media.width * 0.075,
              //         ),
              //         SizedBox(
              //           width: media.width * 0.025,
              //         ),
              //         Text(
              //           'Sos',
              //         //  languages[choosenLanguage]['text_sos'],
              //           overflow: TextOverflow.ellipsis,
              //           style: GoogleFonts.roboto(
              //               fontSize: media.width * sixteen,
              //               color: textColor),
              //         ),
              //          Spacer(),
              //         Icon(Icons.arrow_forward_ios),
              //       ],
              //     ),
              //   ),
              // ),

              // //select language
              InkWell(
                onTap: () async {
                  var nav = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SelectLanguage()));
                  if (nav) {
                    setState(() {});
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(media.width * 0.025),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/changeLanguage.png',
                        fit: BoxFit.contain,
                        width: media.width * 0.075,
                      ),
                      SizedBox(
                        width: media.width * 0.025,
                      ),
                      Text(
                        /// 'Language',
                        //'English',
                        languages[choosenLanguage]['text_change_language'],
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            fontSize: media.width * sixteen, color: textColor),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              // // //make complaints
              InkWell(
                onTap: () async {
                  var nav = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MakeComplaint(
                                fromPage: 0,
                              )));
                  if (nav) {
                    setState(() {});
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(media.width * 0.025),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/makecomplaint.png',
                        fit: BoxFit.contain,
                        width: media.width * 0.075,
                      ),
                      SizedBox(
                        width: media.width * 0.025,
                      ),
                      Text(
                        //'Make Complaints',
                        languages[choosenLanguage]['text_make_complaints'],
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            fontSize: media.width * sixteen, color: textColor),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              // //about
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
                child: Container(
                  padding: EdgeInsets.all(media.width * 0.025),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: media.width * 0.075,
                      ),
                      SizedBox(
                        width: media.width * 0.025,
                      ),
                      Text(
                        //'About',
                        languages[choosenLanguage]['text_about'],
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            fontSize: media.width * sixteen, color: textColor),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),

              // //delete account
              // InkWell(
              //   onTap: () {
              //     setState(() {
              //       deleteAccount = true;
              //     });
              //     valueNotifierHome.incrementNotifier();
              //     Navigator.pop(context);
              //   },
              //   child: Container(
              //     padding: EdgeInsets.all(media.width * 0.025),
              //     child: Row(
              //       children: [
              //         Icon(
              //           Icons.delete_forever,
              //           size: media.width * 0.075,
              //         ),
              //         SizedBox(
              //           width: media.width * 0.025,
              //         ),
              //         Text('Delete Account',
              //           // languages[choosenLanguage]
              //           //     ['text_delete_account'],
              //           overflow: TextOverflow.ellipsis,
              //           style: GoogleFonts.roboto(
              //               fontSize: media.width * sixteen,
              //               color: textColor),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              InkWell(
                onTap: () {
                  setState(() {
                    logout = true;
                  });
                  valueNotifierHome.incrementNotifier();
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(media.width * 0.025),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/logout.png',
                        fit: BoxFit.contain,
                        width: media.width * 0.075,
                      ),
                      SizedBox(
                        width: media.width * 0.025,
                      ),
                      SizedBox(
                        width: media.width * 0.55,
                        child: Text(
                          // 'Logout',
                          languages[choosenLanguage]['text_logout'],
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(
                              fontSize: media.width * sixteen,
                              color: textColor),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    )));
  }
}
