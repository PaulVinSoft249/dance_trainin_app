import 'package:dance_trainin_app/models/base_activity.dart';

class ExploreActivity implements BaseActivity {
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
  ExploreActivity({
    this.dateTime,
    this.uid,
    this.videoDescription,
    this.videoId,
    this.videoTitle,
    this.videoType,
    this.videoUrl,
  });
}
