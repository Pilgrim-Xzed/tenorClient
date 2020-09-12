import 'package:tenor_client/src/models/mediaobject.dart';

class TenorGif {
  final bool hasAudio;
  final String id;
  final List<MediaType> mediaTypes;
  final List<String> tags;
  final String title;
  final String itemUrl;
  final bool hasCaption;
  final String url;

  TenorGif({this.hasAudio, this.id, this.mediaTypes, this.tags, this.title, this.itemUrl, this.hasCaption, this.url});
  factory TenorGif.fromJson(Map<String, dynamic> json) => TenorGif(
      hasAudio: json["hasaudio"],
      id: json["id"],
      mediaTypes: [],
      tags: (json["tags"] as List),
      title: json["title"],
      itemUrl: json["itemurl"],
      hasCaption: json["hascaption"],
      url: json["ur;"]);

  @override
  String toString() {
    return 'TenorGif{hasAudio: $hasAudio, id: $id, mediaTypes: $mediaTypes, tags: $tags, title: $title, itemUrl: $itemUrl, hasCaption: $hasCaption, url: $url}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TenorGif &&
          runtimeType == other.runtimeType &&
          hasAudio == other.hasAudio &&
          id == other.id &&
          mediaTypes == other.mediaTypes &&
          tags == other.tags &&
          title == other.title &&
          itemUrl == other.itemUrl &&
          hasCaption == other.hasCaption &&
          url == other.url;

  @override
  int get hashCode =>
      hasAudio.hashCode ^
      id.hashCode ^
      mediaTypes.hashCode ^
      tags.hashCode ^
      title.hashCode ^
      itemUrl.hashCode ^
      hasCaption.hashCode ^
      url.hashCode;
}

class MediaType {
  final MediaObject gif;
  final MediaObject mediumGif;
  final MediaObject tinyGif;
  final MediaObject nanoGif;
  final MediaObject mp4;
  final MediaObject loopedMp4;

  MediaType({this.gif, this.mediumGif, this.tinyGif, this.nanoGif, this.mp4, this.loopedMp4});
}
