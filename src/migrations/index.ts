import * as migration_20260327_235807_add_youtube_video_support from './20260327_235807_add_youtube_video_support';
import * as migration_20260328_071000_remove_video_block_title from './20260328_071000_remove_video_block_title';

export const migrations = [
  {
    up: migration_20260327_235807_add_youtube_video_support.up,
    down: migration_20260327_235807_add_youtube_video_support.down,
    name: '20260327_235807_add_youtube_video_support'
  },
  {
    up: migration_20260328_071000_remove_video_block_title.up,
    down: migration_20260328_071000_remove_video_block_title.down,
    name: '20260328_071000_remove_video_block_title'
  },
];
