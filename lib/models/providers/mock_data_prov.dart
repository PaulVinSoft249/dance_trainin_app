import 'package:flutter/foundation.dart';
import '../explore_activity.dart';
import '../base_activity.dart';

class MockDataProv with ChangeNotifier {
  List<ExploreActivity> exploreVidList = [
    ExploreActivity(
      videoId: 'i0',
      videoTitle: 'Hiphop dance',
      videoDescription: 'the revelation dance crew!',
      videoUrl: 'https://youtu.be/vF1RPI6j7b0',
      videoType: ActivityType.EXPLORE_VIDEOS,
    ),
    ExploreActivity(
      videoId: 'i0',
      videoTitle: 'Animal life',
      videoDescription: 'the revelation dance crew!',
      videoUrl: 'https://youtu.be/vF1RPI6j7b0',
      videoType: ActivityType.EXPLORE_VIDEOS,
    ),
    ExploreActivity(
      videoId: 'i0',
      videoTitle: 'Dance challage',
      videoDescription: 'the revelation dance crew!',
      videoUrl: 'https://youtu.be/vF1RPI6j7b0',
      videoType: ActivityType.EXPLORE_VIDEOS,
    ),
  ];
}
