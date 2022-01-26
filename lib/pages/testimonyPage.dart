// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:scoped_model/scoped_model.dart';
// import 'package:stea/Services/send_receive_testimonies.dart';
// import 'package:stea/models/testimonyModel.dart';
// import 'package:stea/pages/AddTestimonyPage.dart';
// import 'package:stea/widgets/const.dart';
// import 'package:stea/widgets/testimonyItem.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stea/Services/testimony_services.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:stea/veiw_models/testimony_view_model.dart';
import 'package:stea/widgets/const.dart';
import 'package:stea/widgets/testimonyItem.dart';

import 'AddTestimonyPage.dart';

class TestimonyPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    TestimonyVeiwModel testimonyVeiwModel = context.watch<TestimonyVeiwModel>();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: KdarkBlueColour,
          title: Title(
            color: Colors.white,
            child: Text("Testimony"),
          ),
        ),
        body: Container(

          child:_ui(testimonyVeiwModel),
        ),
          );
  }

  _ui(TestimonyVeiwModel testimonyVeiwModel){
    if(testimonyVeiwModel.loading){
      return Container();
    }if(testimonyVeiwModel.testimonyError != null){
      return Container();
    }
    return Stack( children: [

      Padding(
        padding: EdgeInsets.only(
            left: 5.0.w, right: 5.0.w, top: 10.0.h),
        child:
        ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: testimonyVeiwModel.testimonyModel.length ,
            itemBuilder: (context, index) {
              TestimonyModel testimonyModel = testimonyVeiwModel.testimonyModel[index];
              return Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        testimonyItem(
                          testifyerName: testimonyModel.id.name,
                          testifyerText: testimonyModel.id.details,
                        ),
                        SizedBox(height: 10.0.h),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
      Positioned(
        right: 20.0,
        bottom: 20.0,
        child: FloatingActionButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (BuildContext context) => AddTestimony()));
          },
          backgroundColor: Colors.white,
          child: Icon(
            FontAwesomeIcons.plus,
            color: KdarkBlueColour,
          ),
        ),
      ),
    ]
    );
  }
}

































// class TestimonyPage extends StatefulWidget {
//   TestimonyScopedModel testimonyScopedModel;
//      TestimonyPage({Key key}) : super(key: key);
//
//   @override
//   _TestimonyPageState createState() => _TestimonyPageState();
// }
//
// class _TestimonyPageState extends State<TestimonyPage> {
//
//     @override
//     Widget build(BuildContext context) {
//
//     //  widget.testimonyScopedModel.fetchTestimonies();
//       //List<TestimonyModel> testi = widget.testimonyScopedModel.testimonis;
//
//        return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: KdarkBlueColour,
//           title: Title(
//             color: Colors.white,
//             child: Text("Testimony"),
//           ),
//         ),
//         body:  Stack( children: [
//           Padding(
//             padding: EdgeInsets.only(
//                 left: 5.0.w, right: 5.0.w, top: 10.0.h),
//             child:
//             ListView.builder(
//                 scrollDirection: Axis.vertical,
//                 itemCount: widget.testimonyScopedModel.testimonyLenght,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       Container(
//                         child: Column(
//                           children: [
//                             testimonyItem(
//                               testifyerName: widget.testimonyScopedModel.testimonys[index].name,
//                               testifyerText: widget.testimonyScopedModel.testimonys[index].details,
//                             ),
//                             SizedBox(height: 10.0.h),
//                           ],
//                         ),
//                       ),
//                     ],
//                   );
//                 }),
//           ),
//           Positioned(
//             right: 20.0,
//             bottom: 20.0,
//             child: FloatingActionButton(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (BuildContext context) => AddTestimony()));
//               },
//               backgroundColor: Colors.white,
//               child: Icon(
//                 FontAwesomeIcons.plus,
//                 color: KdarkBlueColour,
//               ),
//             ),
//           ),
//         ]),
//           );
//     }
//   }
