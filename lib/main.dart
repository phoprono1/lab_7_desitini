import 'package:flutter/material.dart';
import 'story_brain.dart'; // Thêm import cho StoryBrain

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  final StoryBrain storyBrain = StoryBrain(); // Tạo đối tượng storyBrain

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home:
          StoryPage(storyBrain: storyBrain), // Truyền storyBrain vào StoryPage
    );
  }
}

class StoryPage extends StatefulWidget {
  final StoryBrain storyBrain; // Thêm biến storyBrain
  StoryPage({required this.storyBrain}); // Thêm constructor
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    widget.storyBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      widget.storyBrain.nextStory(1);
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text(
                    widget.storyBrain.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: widget.storyBrain.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        widget.storyBrain.nextStory(2);
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Text(
                      widget.storyBrain.getChoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
