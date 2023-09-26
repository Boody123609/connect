import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(""
            "PostPage"),

        /*children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.all(8),
            width: 375.w,
            height: 455.h,
            child: Column(
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=2000",
                    ),
                  ),
                  title: Text("ALi Coder"),
                  subtitle: Text("Flutter Developer"),
                  trailing: Icon(
                    size: 30,
                    Icons.list_rounded,
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
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image.network(
                      "https://images.pexels.com/photos/925786/pexels-photo-925786.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-925786.jpg&fm=jpg",
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
                              color: isLiked ? Colors.blue : Colors.black,
                              width: 20.w,
                              height: 20.h,
                            ),
                            Text(
                              "Like",
                              style: TextStyle(
                                  color: isLiked ? Colors.blue : Colors.black),
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
          SizedBox(
            height: 10.h,
          ),

        ],*/
      ),

    );
  }
}
