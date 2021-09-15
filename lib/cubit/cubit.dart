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
        Tab(icon:Icon(Icons.live_tv_outlined),),
        Tab(icon:Icon(Icons.groups_rounded),),
        Tab(icon:Icon(Icons.photo_album_outlined),),
        Tab(icon:Icon(Icons.notifications_none_outlined),),
        Tab(icon:Icon(Icons.menu),),
      ],
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.grey,
    );
  }

  List<StoryModel> stories= [
    StoryModel(
      pImage: 'assets/images/a.jpg',
        text:  'Hosam Elhadedy',
    image: 'assets/images/coffe.jpg',),
    StoryModel(
        pImage: 'assets/images/b.jpg',
        text:  'max',
        image: 'assets/images/boat.jpg'
    ),
    StoryModel(
        pImage: 'assets/images/h.jpg',
        text:  'Hadeer',
        image: 'assets/images/sea.jpg'),
    StoryModel(
        pImage: 'assets/images/c.jpg',
        text:  'Kareem',
        image: 'assets/images/sun.jpg'),
    StoryModel(
        pImage: 'assets/images/sea2.jpg',
        text:  'Ahmed',
        image: 'assets/images/street.jpg'),
  ];

  List<PostModel> posts = [
    PostModel(
      text: 'Once you have read a book you care about, some part of it is always with you , There is more treasure in books than in all the pirate\'s loot on Treasure Island.',
      image: ['assets/images/coffe.jpg'],
      pImage: 'assets/images/c.jpg',
      name: 'Kareem ',
      time: '2 weeks ago',
      icon: Icons.public,
      comments: '456',
      likes: '854',
      shares: '123'
    ),
    PostModel(
        text: 'Once you have read a book you care about, some part of it is always with you , There is more treasure in books than in all the pirate\'s loot on Treasure Island.',
        pImage: 'assets/images/b.jpg',
        name: 'Max',
        time: '1 year ago',
        icon: Icons.settings,
        comments: '700',
        likes: '753',
        shares: '987'
    ),
    PostModel(
        text: 'Creat your own world ,do whatever you love , and stay away from the disadvantage of life ❤️',
        image: ['assets/images/sea.jpg','assets/images/sea2.jpg','assets/images/street.jpg'],
        pImage: 'assets/images/h.jpg',
        name: 'Hadeer',
        time: 'yesterday',
        icon: Icons.public,
        comments: '17k',
        likes: '70k',
        shares: '5k'
    ),
    PostModel(
      text: 'Creat your own world ,do whatever you love , and stay away from the disadvantage of life ❤️',
      pImage: 'assets/images/h.jpg',
      image: ['assets/images/boat.jpg'],
      name: 'Hadeer Hamza',
        time: '5 hour ago',
      icon: Icons.lock,
        comments: '0',
        likes: '0',
        shares: '0'
    ),
    PostModel(
      text: 'Thank you for your time. I look forward to speaking with you about my experience and passion for all aspects of mobile development. You can reach me at mobile: 01067400877, email: elhadedy636@gmail.com.',
      pImage: 'assets/images/a.jpg',
      name: 'Hosam Elhadedy',
      time: '1 hour ago',
      icon: Icons.public,
        comments: '1k',
        likes: '3k',
        shares: '500'
    ),
  ];
}