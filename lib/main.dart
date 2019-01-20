import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prod',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

var appBarColor = Color(0xFF17294b);

var bgColor = Color(0xFF0d193a);
var buttonColor = Color(0xFF1b335d);

var blueGradient1 = Color(0xff52b2f0);
var blueGradient2 = Color(0xff4968d3);

var pinkGradient1 = Color(0xfffc6d86);
var pinkGradient2 = Color(0xfffed0d1);

var profileImage =
    'http://profilepicturesdp.com/wp-content/uploads/2018/06/animated-profile-pictures-commercial.png';
var profileImage2 =
    'https://www.imaginetricks.com/wp-content/uploads/2017/08/beautiful-girl-profile.jpg';

var slack = 'https://cdn0.iconfinder.com/data/icons/tuts/256/slack_alt.png';
var sketch =
    'https://www.sketchapp.com/images/pages/press/sketch-press-kit/app-icons/sketch-mac-icon@2x.png';
var photoshop =
    'https://cdn.iconscout.com/icon/free/png-256/adobe-photoshop-4-569303.png';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: BottomAppBar(
        color: appBarColor,
        notchMargin: 12.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.home, color: blueGradient1, size: 32.0,),
                Icon(Icons.shuffle, color: Colors.grey, size: 32.0,),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Arc(
                height: 30.0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [blueGradient1, blueGradient2],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 32.0),
                    ProfileSection(),
                    SizedBox(height: 32.0),
                    HeaderText('Trending'),
                    SizedBox(height: 8.0),
                    MainListview(),
                    SizedBox(height: 16.0),
                    HeaderText('Featured'),
                    SizedBox(height: 8.0),
                    GradientListview(),
                    SizedBox(height: 16.0),
                    HeaderText('Recent Blogs'),
                    SizedBox(height: 8.0),
                    BlogSection()
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BlogSection extends StatelessWidget {
  const BlogSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: buttonColor.withOpacity(0.8),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text(
              '3 hr ago',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6)),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text(
              '3 hr ago',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6)),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text(
              '3 hr ago',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6)),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text(
              '3 hr ago',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6)),
            ),
          ),
        ],
      ),
    );
  }
}

class GradientListview extends StatelessWidget {
  const GradientListview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GradientCard('Productivity', '102 Products',
              [pinkGradient1, pinkGradient2]),
          GradientCard('Design', '82 Products',
              [blueGradient1, blueGradient2]),
          GradientCard('Productivity', '102 Products',
              [pinkGradient1, pinkGradient2]),
          GradientCard('Design', '82 Products',
              [blueGradient1, blueGradient2]),
        ],
      ),
    );
  }
}

class MainListview extends StatelessWidget {
  const MainListview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ItemCard('Slack', slack, 'Business', '1350'),
          ItemCard('Sketch', sketch, 'Design Tools', '1190'),
          ItemCard('PhotoShop', photoshop, 'Photoshop', '782'),
          ItemCard('Slack', slack, 'Business', '1350'),
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  final title;
  HeaderText(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Today.',
          style: TextStyle(
              color: Colors.white, fontSize: 38.0, fontWeight: FontWeight.w500),
        ),
        Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(50.0),
                  child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(50.0)),
            child: CircleAvatar(
              backgroundImage: NetworkImage(profileImage),
            ),
          ),
        )
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final name;
  final image;
  final subTitle;
  final upvotes;
  ItemCard(this.name, this.image, this.subTitle, this.upvotes);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 160.0,
        width: 140.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: buttonColor.withOpacity(0.8),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: 60.0,
              height: 60.0,
              child: Image.network(
                image,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              subTitle,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6), fontSize: 12.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: buttonColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.green,
                        size: 14.0,
                      ),
                      Text(
                        upvotes,
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GradientCard extends StatelessWidget {
  final title;
  final subTitle;
  final colors;
  GradientCard(this.title, this.subTitle, this.colors);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 100.0,
        width: 280.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          gradient: LinearGradient(
              colors: colors,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 2.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32.0)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Text(subTitle,
                    style:
                        TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
