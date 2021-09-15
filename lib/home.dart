import 'package:facebook/cubit/cubit.dart';
import 'package:facebook/cubit/stats.dart';
import 'package:facebook/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hightt = MediaQuery.of(context).size.height;
    double wiidth = MediaQuery.of(context).size.width;
    return BlocProvider(
        create: (BuildContext context) => FaceBookCubit(),
        child: BlocConsumer<FaceBookCubit,FaceBookAppStates>(
          listener: (context,state){},
          builder: (context,states){
            var cubit = FaceBookCubit.get(context);
            return DefaultTabController(
              length: 6,
              child: Scaffold(
                  appBar: AppBar(
                    title:const Text('facebook'),
                    actions:  [
                     const CircleAvatar(radius: 14,
                          backgroundColor: Color(0xfff2f2f2),
                          child: Icon(Icons.search,
                            color: Colors.black,size: 18,)),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: wiidth*0.03),
                        child: const CircleAvatar(
                          radius: 14,
                            backgroundColor: Color(0xfff2f2f2),
                            child: Icon(Icons.message_outlined,color: Colors.black,size: 18,)),
                      ),
                    ],
                    bottom: cubit.tabs(),
                  ),
                  body: TabBarView(
                    children: [
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(top: hightt*0.02,right: wiidth*0.03,left: wiidth*0.03),
                                    child: Row(
                                      children:  [
                                        CircleAvatar(
                                            radius: hightt*0.03,
                                            backgroundImage: AssetImage("assets/images/a.jpg",),
                                        ),
                                        SizedBox(width: wiidth*0.02,),
                                        Expanded(
                                          child: TextFormField(
                                            cursorColor: Colors.grey,
                                            decoration: InputDecoration(
                                              hintText: 'What\'s on your mind?',
                                              contentPadding: const EdgeInsets.only(left: 20),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(50),
                                                borderSide: BorderSide(color: Colors.grey),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(50),
                                                borderSide: BorderSide(color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(color: Colors.grey,),
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TextButton(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.video_call,color: Colors.red,),
                                                SizedBox(width: wiidth*0.01,),
                                                Text('Live',
                                                  style: TextStyle(color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                            onPressed: (){},
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.symmetric(vertical: hightt*0.01),
                                          child: VerticalDivider(color: Colors.grey,),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.photo_sharp,color: Colors.lightGreenAccent,),
                                                SizedBox(width: wiidth*0.01,),
                                                Text('Live',
                                                  style: TextStyle(color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                            onPressed: (){},
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.symmetric(vertical: hightt*0.01),
                                          child: VerticalDivider(color: Colors.grey,),
                                        ),
                                        Expanded(
                                          child: TextButton(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.video_call,color: Colors.purple,),
                                                SizedBox(width: wiidth*0.01,),
                                                Text('Room',
                                                  style: TextStyle(color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                            onPressed: (){},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: hightt*0.01,),
                            Container(
                              height: hightt*0.27,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: ListView.separated(
                                  itemCount: cubit.stories.length,
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context,index)=> storyBody(
                                      wiidth: width(context),
                                      hightt: hight(context) ,
                                    model: cubit.stories[index],
                                  ),
                                  separatorBuilder: (context,index)=>SizedBox(width: wiidth*0.03,),
                                ),
                              ),
                            ),
                            SizedBox(height: hightt*0.01,),
                            ListView.separated(
                              shrinkWrap: true,
                                itemCount: cubit.posts.length,
                              physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context,index)=>postBody(
                                    hightt: hight(context),
                                    wiidth: width(context),
                                    model: cubit.posts[index]),
                                separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                                ),
                            // SizedBox(height: hightt*0.01,),
                          ],
                        ),
                      ),
                      Center(child: Text('1',),),
                      Center(child: Text('1',),),
                      Center(child: Text('1'),),
                      Center(child: Text('1'),),
                      Center(child: Text('1'),),

                    ],
                  )
              ),
            );
          },
        ),
    );
  }
}
