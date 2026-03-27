import * as migration_20260324_005528_optional_video_poster from './20260324_005528_optional_video_poster';
import * as migration_20260327_235807_add_youtube_video_support from './20260327_235807_add_youtube_video_support';

export const migrations = [
  {
    up: migration_20260324_005528_optional_video_poster.up,
    down: migration_20260324_005528_optional_video_poster.down,
    name: '20260324_005528_optional_video_poster',
  },
  {
    up: migration_20260327_235807_add_youtube_video_support.up,
    down: migration_20260327_235807_add_youtube_video_support.down,
    name: '20260327_235807_add_youtube_video_support'
  },
];
