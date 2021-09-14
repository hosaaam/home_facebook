import 'package:facebook/cubit/stats.dart';
import 'package:facebook/models/post_model.dart';
import 'package:facebook/models/story_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FaceBookCubit extends Cubit<FaceBookAppStates>{

  FaceBookCubit() : super(InitialStates());

  static FaceBookCubit get(context)=>BlocProvider.of(context);


  PreferredSizeWidget tabs(){
    return const TabBar(
      tabs:    [
        Tab(icon:Icon(Icons.home),),
        Tab(icon:Icon(Icons.play_circle_fill_outlined),),
        Tab(icon:Icon(Icons.business),),
        Tab(icon:Icon(Icons.photo_album_outlined),),
        Tab(icon:Icon(Icons.notification_important_outlined),),
        Tab(icon:Icon(Icons.menu),),
      ],
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.grey,
    );
  }

  List<StoryModel> stories= [
    StoryModel(pImage: 'assets/images/adel.jpg',
        text:  'ali',
    image: 'assets/images/boat.jpg',),
    StoryModel(pImage: 'assets/images/a.jpg',
        text:  'Hosam Elhadedy',
        image: 'assets/images/coffe.jpg'
    ),
    StoryModel(pImage: 'assets/images/h.jpg',
        text:  'Hadeer Hamza',
        image: 'assets/images/sea.jpg'),
    StoryModel(pImage: 'assets/images/b.jpg',
        text:  'Kareem Ali',
        image: 'assets/images/sea2.jpg'),
    StoryModel(pImage: 'assets/images/k.jpg',
        text:  'Max',
        image: 'assets/images/sun.jpg'),
    StoryModel(pImage: 'assets/images/pizza.jpg',
        text:  'Ahmed',
        image: 'assets/images/street.jpg'),
  ];

  List<PostModel> posts = [
    PostModel(
        text: 'Once you have read a book you care about, some part of it is always with you , There is more treasure in books than in all the pirate\'s loot on Treasure Island.',
        image: 'assets/images/coffe.jpg',
        pImage: 'assets/images/a.jpg',
        name: 'Hosam Elhadedy',
        time: '4:5 pm',
        icon: Icons.public
    ),
    PostModel(
        text: 'Creat your own world ,do whatever you love , and stay away from the disadvantage of life ❤️',
        image: 'assets/images/sea.jpg',
        pImage: 'assets/images/h.jpg',
        name: 'Hadeer Hamza',
        time: '12:5 am',
        icon: Icons.public
    ),

  ];
}