enum ActivityType {
  EXPLORE_VIDEOS,
  TRAINING_VIDEOS,
}

abstract class BaseActivity {
  String videoId;
  String videoTitle;
  String videoDescription;
  ActivityType videoType;
  DateTime dateTime;
  String uid;
}
