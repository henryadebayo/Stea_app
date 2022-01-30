// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:scoped_model/scoped_model.dart';
// import 'package:stea/models/testimonyModel.dart';
// import 'package:http/http.dart'as http;
// import 'package:stea/pages/AddTestimonyPage.dart';
// import 'package:stea/widgets/const.dart';
// import 'package:stea/widgets/testimonyItem.dart';
//
// class TestimonyScopedModel extends Model{
//   String url = "https://stea-880c0-default-rtdb.firebaseio.com/testimonies.json";
//
//
//   List<TestimonyModel> _testimonyItems = [];
//
//   bool _isloading = true;
//
//   bool get isLoading{
//     return _isloading;
//   }
//
//
//   List<TestimonyModel> get testimonys{
//     return List.from(_testimonyItems);
//   }
//
//   int get testimonyLenght {
//     return _testimonyItems.length;
//   }
//
//
// //Sending Testimonies to DataBase
//
//     Future<bool> sendTes(TestimonyModel testimony) async {
//      _isloading = true;
//      notifyListeners();
//       try {
//
//         final Map<String, dynamic> tdata = {
//           "name": testimony.name,
//           "details": testimony.details,
//         };
//         http.Response response = await http.post(Uri.parse(url),
//             body: json.encode(tdata));
//         fetchTestimonies();
//
//         print(response.statusCode);
//         print(response.body);
//         print("this are $testimonys");
//         _isloading = false;
//         notifyListeners();
//         return Future.value(true);
//       } catch (e) {
//         _isloading=false;
//         notifyListeners();
//         print("connection error $e");
//         return Future.value(false);
//
//       }
//     }
//
//     // Receiveing testimonies from database
//
//     Future<bool> fetchTestimonies() async {
//     _isloading = true;
//     notifyListeners();
//       try {
//         final http.Response response = await http.get(Uri.parse(url));
//
//         final Map<String, dynamic> responseData = json.decode(response.body);
// List<TestimonyModel>test =[];
//                                               responseData.forEach((String id, dynamic tdata) {
//                                                 //TestimonyModel theTestimony = getFoodTestimonyWithId(tdata);
//
//                                                 TestimonyModel testimoniess = TestimonyModel(
//                                                   id: id,
//                                                   name: tdata["name"],
//                                                   details: tdata["details"],
//                                                 );
//                                                 test.add(testimoniess);
//                                               });
//         _testimonyItems = test;
//         // _isloading = false;
//         // notifyListeners();
//         // print(_testimonyItems);
//         // return Future.value(true);
//
//       } catch (e) {
//         print(e);
//       }
//     return Future.value(false);
//     }
//
//     TestimonyModel getFoodTestimonyWithId(String tdata) {
//       TestimonyModel testimonyModel;
//       for (int i = 0; i < _testimonyItems.length; i++) {
//         if (_testimonyItems[i].id == tdata) {
//           testimonyModel = _testimonyItems[i];
//           break;
//         }
//         return testimonyModel;
//       }
//     }
//   }
//
//
//
//
//
// class TestimonyPage extends StatefulWidget {
//   TestimonyScopedModel testimonyScopedModel;
//   TestimonyPage({Key key}) : super(key: key);
//
//   @override
//   _TestimonyPageState createState() => _TestimonyPageState();
// }
//
// class _TestimonyPageState extends State<TestimonyPage> {
//
//   @override
//   Widget build(BuildContext context) {
//
//     //  widget.testimonyScopedModel.fetchTestimonies();
//     //List<TestimonyModel> testi = widget.testimonyScopedModel.testimonis;
//
//     var testimonyScopedModel = TestimonyScopedModel();
//
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: KdarkBlueColour,
//         title: Title(
//           color: Colors.white,
//           child: Text("Testimony"),
//         ),
//       ),
//       body:  Stack( children: [
//         Padding(
//           padding: EdgeInsets.only(
//               left: 5.0.w, right: 5.0.w, top: 10.0.h),
//           child:
//           RefreshIndicator(
//             onRefresh: testimonyScopedModel.fetchTestimonies,
//             child: ListView.builder(
//                 scrollDirection: Axis.vertical,
//                 itemCount: 5,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       Container(
//                         child: Column(
//                           children: [
//                             testimonyItem(
//                               testifyerName: testimonyScopedModel.testimonys[index].name,
//                               testifyerText: testimonyScopedModel.testimonys[index].details,
//                             ),
//                             SizedBox(height: 10.0.h),
//                           ],
//                         ),
//                       ),
//                     ],
//                   );
//                 }),
//           ),
//         ),
//         Positioned(
//           right: 20.0,
//           bottom: 20.0,
//           child: FloatingActionButton(
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                   builder: (BuildContext context) => AddTestimony()));
//             },
//             backgroundColor: Colors.white,
//             child: Icon(
//               FontAwesomeIcons.plus,
//               color: KdarkBlueColour,
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }
