import 'package:dance_trainin_app/models/base_activity.dart';

class TrainingActivity implements BaseActivity {
  @override
  DateTime dateTime;

  @override
  String uid;

  @override
  String videoDescription;

  @override
  String videoId;

  @override
  String videoTitle;

  @override
  ActivityType videoType;

  @override
  String videoUrl;

  TrainingActivity({
    this.dateTime,
    this.videoType,
    this.videoTitle,
    this.videoId,
    this.videoDescription,
    this.uid,
    this.videoUrl,
  });
}
