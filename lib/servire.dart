import 'package:flutter/services.dart';

class VideoMerger {
  static const MethodChannel _channel = MethodChannel('video_merger');

  static Future<String?> mergeVideos(List<String> paths) async {
    final result = await _channel.invokeMethod('mergeVideos', {
      'videoPaths': paths,
    });
    return result;
  }
}
