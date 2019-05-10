import 'package:flutter/material.dart';
import 'package:instagrems/insta_story.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  static const double AVATAR_DIMENSION = 35;

  final title = new Padding(
    padding: const EdgeInsets.fromLTRB(10, 16, 8, 8),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            new Container(
              height: AVATAR_DIMENSION,
              width: AVATAR_DIMENSION,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/profile_avatar2.png"))),
            ),
            new SizedBox(
              width: 10.0,
            ),
            new Text("Kwithoul", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        new IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
        )
      ],
    ),
  );

  final image = new Flexible(
    fit: FlexFit.loose,
    child: new Image.asset(
      "assets/images/ig_post.jpg",
      fit: BoxFit.cover,
    ),
  );

  final icon = new Padding(
    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Icon(
              FontAwesomeIcons.heart,
            ),
            new SizedBox(
              width: 16.0,
            ),
            new Icon(
              FontAwesomeIcons.comment,
            ),
            new SizedBox(
              width: 16.0,
            ),
            new Icon(
              FontAwesomeIcons.paperPlane,
            ),
          ],
        ),
        new Icon(FontAwesomeIcons.bookmark)
      ],
    ),
  );

  final liked = new Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Container(
          height: 20.0,
          width: 20.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/profile_avatar.png"))),
        ),
        new SizedBox(
          width: 5,
        ),
        new Expanded(
            child: Text(
          "Liked by kwol, stev and 42 others",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ],
    ),
  );

  final caption = new Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
    child: Row(
      children: <Widget>[
        Text("Kwithoul ", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("What a lovely day! :)")
      ],
    ),
  );

  final comment = new Padding(
    padding: EdgeInsets.fromLTRB(16, 5, 0, 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: AVATAR_DIMENSION,
          width: AVATAR_DIMENSION,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/profile_avatar2.png"))),
        ),
        new SizedBox(
          width: 16,
        ),
        Expanded(
          child: new TextField(
            decoration: new InputDecoration(
                border: InputBorder.none, hintText: "Add a comment ..."),
          ),
        ),
      ],
    ),
  );

  final lastView = new Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Text(
      "4 hours Ago",
      style: TextStyle(color: Colors.grey),
    ),
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new Scrollbar(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? new SizedBox(
                child: new InstaStory(),
                height: deviceSize.height * 0.15,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  title,
                  image,
                  icon,
                  liked,
                  caption,
                  comment,
                  lastView,
                ],
              ),
      ),
    );
  }
}
