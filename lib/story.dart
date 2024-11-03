class Story {
  //TODO: Step 2 - Tạo một lớp mới gọi là Story.
  final String storyTitle; // A. storyTitle để lưu trữ văn bản câu chuyện.
  final String choice1; // B. choice1 để lưu trữ văn bản cho lựa chọn 1.
  final String choice2; // C. choice2 để lưu trữ văn bản cho lựa chọn 2.

  //TODO: Step 4 - Tạo một Constructor cho lớp này.
  Story(
      {required this.storyTitle,
      required this.choice1,
      required this.choice2}); // Constructor
}
