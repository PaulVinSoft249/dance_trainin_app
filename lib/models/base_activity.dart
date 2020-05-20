enum ActivityType {
  EXPLORE_VIDEOS,
  TRAINING_VIDEOS,
}

abstract class BaseActivity {
  String videoId;
  String videoTitle;
  String videoDescription;
  String videoUrl;
  ActivityType videoType;
  DateTime dateTime;
  String uid;
}
