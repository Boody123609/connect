import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "https://i0.wp.com/it-solutions.center/wp-content/uploads/2022/10/Do-professional-programmers-use-Google.webp?resize=1000%2C667&ssl=1",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIu14_FJ8J1N-Fz78jdqhusuqa2q3ke-D9xInYeHvxbWF4GeXutRo6iLH73c4fXN-FFvg&usqp=CAU",
    "https://4.bp.blogspot.com/-PexDNwjPniM/XApoLTj8dnI/AAAAAAAAAMA/vrkIh3nc1ogSZA1xUbD4b4yhQHFrer-FwCLcBGAs/s1600/programmer.jpg",
    "https://w7.pngwing.com/pngs/371/339/png-transparent-programmer-software-engineer-personal-computer-computer-software-technology-computer-furniture-computer-engineering.png",
    "https://ajbvlnrdxr.cloudimg.io/https://codedegree.com/wp-content/uploads/2022/04/computer-programming-web-development-coding-app-development-application-development-science-computer_t20_drBbzA.jpg?force_format=webp",
    "https://watermark.lovepik.com/photo/20211208/large/lovepik-programmer-working-overtime-picture_501625661.jpg",
    "https://img.lovepik.com/photo/20211201/small/lovepik-programmer-image-picture_501304310.jpg",
  ];
  bool isLiked = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        isLoading = !isLoading;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F4E8),
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
      body: isLoading
          ? ListView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.all(8),
                    width: 375.w,
                    height: 455.h,
                    child: Column(
                      children: [
                         ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              images[index]

                            ),
                          ),
                          title: Text("ALi Coder"),
                          subtitle: Text("Flutter Developer"),
                          trailing: Icon(
                            size: 30,
                            Icons.more_vert,
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Personalized Fitness and Nutrition App :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Create a mobile app that offers personalized fitness and nutrition plans based on users' goals, preferences, and health conditions. Incorporate features like workout videos, meal plans, progress tracking, and direct communication with fitness coaches.",
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Image.network(images[index],
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "20 Like",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Spacer(
                                flex: 20,
                              ),
                              Text(
                                "8 comments",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Text(
                                " .",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                "2 repost",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  isLiked = !isLiked;
                                  setState(() {});
                                },
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/like.svg",
                                      color:
                                          isLiked ? Colors.blue : Colors.black,
                                      width: 20.w,
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Like",
                                      style: TextStyle(
                                          color: isLiked
                                              ? Colors.blue
                                              : Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/comment.svg",
                                    color: Colors.black,
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                                  Text("Comment"),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/Repost.svg",
                                    color: Colors.black,
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                                  Text("Repost"),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/share.svg",
                                    color: Colors.black,
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                                  Text("Share"),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          : getShimmerLoading(),
    );
  }

  Shimmer getShimmerLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500]!,
      highlightColor: Colors.grey[300]!,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 10, right: 20, left: 20),
        color: Colors.white24,
        height: 500.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 30.0,
                              left: 10.0,
                              top: 30.0,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(200)),
                              width: 50.w,
                              height: 50.h,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, right: 45),
                      child: Container(
                        color: Colors.white,
                        width: 80.w,
                        height: 15.h,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      color: Colors.white,
                      width: 120.w,
                      height: 15.h,
                    ),
                  ],
                ),
                SizedBox(
                  width: 80.w,
                ),
                Container(
                  color: Colors.white,
                  width: 20.w,
                  height: 20.h,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150.0),
              child: Container(
                color: Colors.white,
                width: 200.w,
                height: 20.h,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                height: 20.h,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                height: 20.h,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 8),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                height: 20.h,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 8),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                height: 20.h,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150, left: 8),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                height: 20.h,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              color: Colors.white,
              width: 300.w,
              height: 150.h,
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  color: Colors.white,
                  width: 50.w,
                  height: 15.h,
                ),
                Spacer(
                  flex: 20,
                ),
                Container(
                  color: Colors.white,
                  width: 50.w,
                  height: 15.h,
                ),
                Text(
                  " .",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  color: Colors.white,
                  width: 50.w,
                  height: 15.h,
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
