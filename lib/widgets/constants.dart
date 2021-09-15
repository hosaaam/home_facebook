import 'package:facebook/models/post_model.dart';
import 'package:facebook/models/story_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double hight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

Widget createStory({ @required hightt , @required wiidth })=> Container(
  width: wiidth*0.27,
  child: Stack(
    alignment: AlignmentDirectional.bottomCenter,
    children: [
      Container(
        height: hightt*0.33,
        width: wiidth*0.27,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:   DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/a.jpg'),
            )),
      ),
      Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xff18191a),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            )
        ),
        height: hightt*0.11,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0),
              child:  Text(
                'Create story',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: hightt*0.02,)
          ],
        ),
      ),
      Positioned(
        bottom: hightt*0.08,
        child: CircleAvatar(
          backgroundColor: Colors.blue,
          child: IconButton(
            icon: Icon(Icons.add),
            onPressed: (){},
          ),
        ),
      ),
    ],
  ),
);

 Widget storyBody({
  @required hightt ,
  @required wiidth ,
   required StoryModel model,
})=> Row(
  children: [
        Container(
      width: wiidth*0.27,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,

        children: [

          Container(

            height: hightt*0.33,

            width: wiidth*0.27,

            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(15),

                image:   DecorationImage(

                  fit: BoxFit.fill,

                  image: AssetImage(model.image),

                )),

          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children:  [

              Padding(

                padding:  EdgeInsets.symmetric(horizontal: 8.0),

                child: Text(

                  model.text,

                  maxLines: 2,

                  overflow: TextOverflow.ellipsis,

                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 13),

                  textAlign: TextAlign.center,

                ),

              ),

              SizedBox(height: hightt*0.02,)

            ],

          ),

          Positioned(

            top: hightt*0.02,

            left: wiidth*0.02,

            child: CircleAvatar(

              backgroundColor: Colors.blue,

              backgroundImage: AssetImage(model.pImage),

              ),

            ),

        ],

      ),

    ),
  ],
);

Widget postBody({
  @required hightt ,
  @required wiidth ,
  required PostModel model,
})=> Container(
  color: Colors.white,
  width: double.infinity,
  padding: EdgeInsets.all(15),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        textBaseline: TextBaseline.ideographic,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(model.pImage),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.name,maxLines: 1,overflow: TextOverflow.ellipsis,),
              Row(
                children: [
                  Text(model.time),
                  Icon(model.icon,size: 14,)
                ],
              ),
            ],
          ),
          Spacer(),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_horiz)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.close)
          ),
        ],
      ),
      SizedBox(height: hightt*0.01,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(model.text,),
      ),
      SizedBox(height: hightt*0.01,),
      if (model.image != null)
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
              scrollPhysics: BouncingScrollPhysics(),
              initialPage: 0,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal),
          items: model.image?.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Image(
                  image: AssetImage(i),
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 200,
                );
              },
            );
          }).toList(),
        ),
      SizedBox(height: hightt*0.01,),
      Row(
        children: [
          Text(model.likes,style: TextStyle(color: Colors.blue),),
          SizedBox(width: wiidth*0.01,),
          Icon(Icons.thumb_up_sharp,color: Colors.blue,size: 17,),
          Spacer(),
          Text('${model.comments} comments . ',style: TextStyle(color: Colors.grey),),
          Text('${model.shares} shares ',style: TextStyle(color: Colors.grey),),

        ],
      ),
      Divider(color: Colors.grey,),
      Row(
        children: [
          Row(children: [
            MaterialButton(
              onPressed: (){},
              child: Row(children: [
                Icon(Icons.thumb_up_alt_outlined,color: Colors.grey,),
                SizedBox(width: wiidth*0.01,),
                Text('Like',style: TextStyle(color: Colors.grey),),
              ],),
            ),
          ],),
          Spacer(),
          Row(children: [
            MaterialButton(
              onPressed: (){},
              child: Row(children: [
                Icon(Icons.textsms_outlined,color: Colors.grey,),
                SizedBox(width: wiidth*0.01,),
                Text('Comment',style: TextStyle(color: Colors.grey),),
              ],),
            ),
          ],),
          Spacer(),
          Row(children: [
            MaterialButton(
              onPressed: (){},
              child: Row(children: [
                Icon(Icons.share,color: Colors.grey,),
                SizedBox(width: wiidth*0.01,),
                Text('Share',style: TextStyle(color: Colors.grey),),
              ],),
            ),
          ],),
        ],
      ),
    ],
  ),
);




