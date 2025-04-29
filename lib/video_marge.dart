

import 'package:mohan_new/servire.dart';

void mergeVideos() async {
  List<String> paths = [
    '/path/to/video1.mp4',
    '/path/to/video2.mp4',
  ];

  String? outputPath = await VideoMerger.mergeVideos(paths);
  if (outputPath != null) {
    print('Merged video at: $outputPath');
  } else {
    print('Failed to merge videos');
  }
}
