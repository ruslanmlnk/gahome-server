import * as migration_20260324_005528_optional_video_poster from './20260324_005528_optional_video_poster';

export const migrations = [
  {
    up: migration_20260324_005528_optional_video_poster.up,
    down: migration_20260324_005528_optional_video_poster.down,
    name: '20260324_005528_optional_video_poster'
  },
];
