import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyNetworkPage extends StatefulWidget {
  const MyNetworkPage({Key? key}) : super(key: key);

  @override
  State<MyNetworkPage> createState() => _MyNetworkPageState();
}

class _MyNetworkPageState extends State<MyNetworkPage> {
  List images = [
    "https://i0.wp.com/it-solutions.center/wp-content/uploads/2022/10/Do-professional-programmers-use-Google.webp?resize=1000%2C667&ssl=1",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIu14_FJ8J1N-Fz78jdqhusuqa2q3ke-D9xInYeHvxbWF4GeXutRo6iLH73c4fXN-FFvg&usqp=CAU",
    "https://4.bp.blogspot.com/-PexDNwjPniM/XApoLTj8dnI/AAAAAAAAAMA/vrkIh3nc1ogSZA1xUbD4b4yhQHFrer-FwCLcBGAs/s1600/programmer.jpg",
    "https://w7.pngwing.com/pngs/371/339/png-transparent-programmer-software-engineer-personal-computer-computer-software-technology-computer-furniture-computer-engineering.png",
    "https://ajbvlnrdxr.cloudimg.io/https://codedegree.com/wp-content/uploads/2022/04/computer-programming-web-development-coding-app-development-application-development-science-computer_t20_drBbzA.jpg?force_format=webp",
    "https://watermark.lovepik.com/photo/20211208/large/lovepik-programmer-working-overtime-picture_501625661.jpg",
    "https://img.lovepik.com/photo/20211201/small/lovepik-programmer-image-picture_501304310.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 50.w,
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
            "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=2000",
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            width: 258.w,
            height: 30.h,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Icon(
                    size: 30.sp,
                    Icons.search,
                    color: Colors.black.withOpacity(.5)),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                  ),
                )
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              "assets/images/Message.png",
              width: 40.w,
              height: 40.h,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Manage my network",
                  style: TextStyle(fontSize: 17.sp, color: Color(0xff008080)),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Invitations (4)",
                  style: TextStyle(fontSize: 17.sp, color: Color(0xff008080)),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 280,
            child: ListView.separated(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  height: 50.h,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(images[index]),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Text(
                                "Ail Coder",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                          Text("Ail Coder very best programer"),
                        ],
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 35.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              border: Border.all(
                                color: Colors.black,
                              ),
                              color: Colors.white.withOpacity(.01),
                            ),
                            child: SvgPicture.asset(
                              "assets/images/wrong.svg",
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 35.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              border: Border.all(
                                color: Color(0xff008080),
                              ),
                              color: Colors.white.withOpacity(.01),
                            ),
                            child: SvgPicture.asset(
                              "assets/images/true.svg",
                            ),
                          ),
                          // Text("all"),
                        ],
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              color: Colors.white,
              child: Text(
                "People you may know",
                style: TextStyle(color: Color(0xff008080), fontSize: 14),
              )),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 165/255,crossAxisSpacing: 16.h,),
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Container(

                    width: 165.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:Radius.circular(10) ),
                      border: Border.all(color: Color(0xff008080)),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.network(
                            images[index],
                            fit: BoxFit.cover,
                            width: 165.w,
                            height: 65.h,
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 35),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i0.wp.com/it-solutions.center/wp-content/uploads/2022/10/Do-professional-programmers-use-Google.webp?resize=1000%2C667&ssl=1",
                          ),
                          radius: 35,
                        ),
                        Text(
                          "Ali Coder",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("Ali very best coder"),
                        SizedBox(
                          height: 5,
                        ),
                        OutlinedButton(


                            style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Color(0xff008080), )
                            ),
                            onPressed: (){}, child: Text(
                          "Connect",
                          style: TextStyle(color: Color(0xff008080)),
                        )),
                      ],
                    ),
                  ),
                ],
              );
            },
            itemCount: 6,
          )
        ],
      ),
    );
  }
}
