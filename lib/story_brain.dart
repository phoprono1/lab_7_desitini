// ... existing code ...
import 'story.dart'; // Thêm import cho story.dart

class StoryBrain {
  //TODO: Step 16 - Tạo một thuộc tính storyNumber bắt đầu với giá trị 0.
  int _storyNumber = 0; // Thay đổi dòng này

  //TODO: Step 6 - Tạo một danh sách storyData.
  List<Story> _storyData = [
    // Bỏ comment và thêm danh sách này
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  //TODO: Step 8 - Tạo phương thức getStory() để trả về tiêu đề câu chuyện.
  String getStory() {
    return _storyData[_storyNumber].storyTitle; // Thay đổi dòng này
  }

  //TODO: Step 11 - Tạo phương thức getChoice1() để trả về văn bản cho lựa chọn 1.
  String getChoice1() {
    return _storyData[_storyNumber].choice1; // Thay đổi dòng này
  }

  //TODO: Step 12 - Tạo phương thức getChoice2() để trả về văn bản cho lựa chọn 2.
  String getChoice2() {
    return _storyData[_storyNumber].choice2; // Thay đổi dòng này
  }

  //TODO: Step 17 - Tạo phương thức nextStory() để thay đổi storyNumber.
  void nextStory(int choiceNumber) {
    if (_storyNumber == 0 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 0 && choiceNumber == 2) {
      _storyNumber = 1;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      _storyNumber = 3;
    } else if (_storyNumber == 2 && choiceNumber == 1) {
      _storyNumber = 5;
    } else if (_storyNumber == 2 && choiceNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart(); // Gọi phương thức restart nếu đến cuối câu chuyện
    }
  }

  //TODO: Step 22 - Tạo phương thức restart() để đặt lại storyNumber.
  void restart() {
    _storyNumber = 0; // Đặt lại về 0
  }

  //TODO: Step 27 - Tạo phương thức buttonShouldBeVisible() để kiểm tra sự hiển thị của nút.
  bool buttonShouldBeVisible() {
    return _storyNumber < 3; // Hiển thị nút nếu storyNumber < 3
  }
}
// ... existing code ...