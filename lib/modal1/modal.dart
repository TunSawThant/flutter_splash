import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  int id;
  DateTime date;
  DateTime dateGmt;
  Guid guid;
  DateTime modified;
  DateTime modifiedGmt;
  String slug;
  String status;
  String type;
  String link;
  Guid title;
  Content content;
  Content excerpt;
  int author;
  int featuredMedia;
  String commentStatus;
  String pingStatus;
  bool sticky;
  String template;
  String format;
  List<dynamic> meta;
  List<int> categories;
  List<dynamic> tags;
  PostLinks links;
  Embedded embedded;

  Post({
    this.id,
    this.date,
    this.dateGmt,
    this.guid,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.commentStatus,
    this.pingStatus,
    this.sticky,
    this.template,
    this.format,
    this.meta,
    this.categories,
    this.tags,
    this.links,
    this.embedded,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    id: json["id"] == null ? null : json["id"],
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
    dateGmt: json["date_gmt"] == null ? null : DateTime.parse(json["date_gmt"]),
    guid: json["guid"] == null ? null : Guid.fromJson(json["guid"]),
    modified: json["modified"] == null ? null : DateTime.parse(json["modified"]),
    modifiedGmt: json["modified_gmt"] == null ? null : DateTime.parse(json["modified_gmt"]),
    slug: json["slug"] == null ? null : json["slug"],
    status: json["status"] == null ? null : json["status"],
    type: json["type"] == null ? null : json["type"],
    link: json["link"] == null ? null : json["link"],
    title: json["title"] == null ? null : Guid.fromJson(json["title"]),
    content: json["content"] == null ? null : Content.fromJson(json["content"]),
    excerpt: json["excerpt"] == null ? null : Content.fromJson(json["excerpt"]),
    author: json["author"] == null ? null : json["author"],
    featuredMedia: json["featured_media"] == null ? null : json["featured_media"],
    commentStatus: json["comment_status"] == null ? null : json["comment_status"],
    pingStatus: json["ping_status"] == null ? null : json["ping_status"],
    sticky: json["sticky"] == null ? null : json["sticky"],
    template: json["template"] == null ? null : json["template"],
    format: json["format"] == null ? null : json["format"],
    meta: json["meta"] == null ? null : List<dynamic>.from(json["meta"].map((x) => x)),
    categories: json["categories"] == null ? null : List<int>.from(json["categories"].map((x) => x)),
    tags: json["tags"] == null ? null : List<dynamic>.from(json["tags"].map((x) => x)),
    links: json["_links"] == null ? null : PostLinks.fromJson(json["_links"]),
    embedded: json["_embedded"] == null ? null : Embedded.fromJson(json["_embedded"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "date": date == null ? null : date.toIso8601String(),
    "date_gmt": dateGmt == null ? null : dateGmt.toIso8601String(),
    "guid": guid == null ? null : guid.toJson(),
    "modified": modified == null ? null : modified.toIso8601String(),
    "modified_gmt": modifiedGmt == null ? null : modifiedGmt.toIso8601String(),
    "slug": slug == null ? null : slug,
    "status": status == null ? null : status,
    "type": type == null ? null : type,
    "link": link == null ? null : link,
    "title": title == null ? null : title.toJson(),
    "content": content == null ? null : content.toJson(),
    "excerpt": excerpt == null ? null : excerpt.toJson(),
    "author": author == null ? null : author,
    "featured_media": featuredMedia == null ? null : featuredMedia,
    "comment_status": commentStatus == null ? null : commentStatus,
    "ping_status": pingStatus == null ? null : pingStatus,
    "sticky": sticky == null ? null : sticky,
    "template": template == null ? null : template,
    "format": format == null ? null : format,
    "meta": meta == null ? null : List<dynamic>.from(meta.map((x) => x)),
    "categories": categories == null ? null : List<dynamic>.from(categories.map((x) => x)),
    "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x)),
    "_links": links == null ? null : links.toJson(),
    "_embedded": embedded == null ? null : embedded.toJson(),
  };
}

class Content {
  String rendered;
  bool protected;

  Content({
    this.rendered,
    this.protected,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    rendered: json["rendered"],
    protected: json["protected"],
  );

  Map<String, dynamic> toJson() => {
    "rendered": rendered,
    "protected": protected,
  };
}

class Embedded {
  List<EmbeddedAuthor> author;
  List<WpFeaturedmedia> wpFeaturedmedia;
  List<List<EmbeddedWpTerm>> wpTerm;

  Embedded({
    this.author,
    this.wpFeaturedmedia,
    this.wpTerm,
  });

  factory Embedded.fromJson(Map<String, dynamic> json) => Embedded(
    author: List<EmbeddedAuthor>.from(json["author"].map((x) => EmbeddedAuthor.fromJson(x))),
    wpFeaturedmedia: List<WpFeaturedmedia>.from(json["wp:featuredmedia"].map((x) => WpFeaturedmedia.fromJson(x))),
    wpTerm: List<List<EmbeddedWpTerm>>.from(json["wp:term"].map((x) => List<EmbeddedWpTerm>.from(x.map((x) => EmbeddedWpTerm.fromJson(x))))),
  );

  Map<String, dynamic> toJson() => {
    "author": List<dynamic>.from(author.map((x) => x.toJson())),
    "wp:featuredmedia": List<dynamic>.from(wpFeaturedmedia.map((x) => x.toJson())),
    "wp:term": List<dynamic>.from(wpTerm.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))),
  };
}

class EmbeddedAuthor {
  int id;
  String name;
  String url;
  String description;
  String link;
  String slug;
  Map<String, String> avatarUrls;
  AuthorLinks links;

  EmbeddedAuthor({
    this.id,
    this.name,
    this.url,
    this.description,
    this.link,
    this.slug,
    this.avatarUrls,
    this.links,
  });

  factory EmbeddedAuthor.fromJson(Map<String, dynamic> json) => EmbeddedAuthor(
    id: json["id"],
    name: json["name"],
    url: json["url"],
    description: json["description"],
    link: json["link"],
    slug: json["slug"],
    avatarUrls: Map.from(json["avatar_urls"]).map((k, v) => MapEntry<String, String>(k, v)),
    links: AuthorLinks.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "url": url,
    "description": description,
    "link": link,
    "slug": slug,
    "avatar_urls": Map.from(avatarUrls).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "_links": links.toJson(),
  };
}

class AuthorLinks {
  List<About> self;
  List<About> collection;

  AuthorLinks({
    this.self,
    this.collection,
  });

  factory AuthorLinks.fromJson(Map<String, dynamic> json) => AuthorLinks(
    self: List<About>.from(json["self"].map((x) => About.fromJson(x))),
    collection: List<About>.from(json["collection"].map((x) => About.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": List<dynamic>.from(self.map((x) => x.toJson())),
    "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
  };
}

class About {
  String href;

  About({
    this.href,
  });

  factory About.fromJson(Map<String, dynamic> json) => About(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

class WpFeaturedmedia {
  int id;
  DateTime date;
  String slug;
  String type;
  String link;
  Guid title;
  int author;
  Guid caption;
  String altText;
  String mediaType;
  MimeType mimeType;
  MediaDetails mediaDetails;
  String sourceUrl;
  WpFeaturedmediaLinks links;

  WpFeaturedmedia({
    this.id,
    this.date,
    this.slug,
    this.type,
    this.link,
    this.title,
    this.author,
    this.caption,
    this.altText,
    this.mediaType,
    this.mimeType,
    this.mediaDetails,
    this.sourceUrl,
    this.links,
  });

  factory WpFeaturedmedia.fromJson(Map<String, dynamic> json) => WpFeaturedmedia(
    id: json["id"],
    date: DateTime.parse(json["date"]),
    slug: json["slug"],
    type: json["type"],
    link: json["link"],
    title: Guid.fromJson(json["title"]),
    author: json["author"],
    caption: Guid.fromJson(json["caption"]),
    altText: json["alt_text"],
    mediaType: json["media_type"],
    mimeType: mimeTypeValues.map[json["mime_type"]],
    mediaDetails: MediaDetails.fromJson(json["media_details"]),
    sourceUrl: json["source_url"],
    links: WpFeaturedmediaLinks.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date": date.toIso8601String(),
    "slug": slug,
    "type": type,
    "link": link,
    "title": title.toJson(),
    "author": author,
    "caption": caption.toJson(),
    "alt_text": altText,
    "media_type": mediaType,
    "mime_type": mimeTypeValues.reverse[mimeType],
    "media_details": mediaDetails.toJson(),
    "source_url": sourceUrl,
    "_links": links.toJson(),
  };
}

class Guid {
  String rendered;

  Guid({
    this.rendered,
  });

  factory Guid.fromJson(Map<String, dynamic> json) => Guid(
    rendered: json["rendered"] == null ? null : json["rendered"],
  );

  Map<String, dynamic> toJson() => {
    "rendered": rendered == null ? null : rendered,
  };
}

class WpFeaturedmediaLinks {
  List<About> self;
  List<About> collection;
  List<About> about;
  List<ReplyElement> author;

  WpFeaturedmediaLinks({
    this.self,
    this.collection,
    this.about,
    this.author,
  });

  factory WpFeaturedmediaLinks.fromJson(Map<String, dynamic> json) => WpFeaturedmediaLinks(
    self: List<About>.from(json["self"].map((x) => About.fromJson(x))),
    collection: List<About>.from(json["collection"].map((x) => About.fromJson(x))),
    about: List<About>.from(json["about"].map((x) => About.fromJson(x))),
    author: List<ReplyElement>.from(json["author"].map((x) => ReplyElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": List<dynamic>.from(self.map((x) => x.toJson())),
    "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
    "about": List<dynamic>.from(about.map((x) => x.toJson())),
    "author": List<dynamic>.from(author.map((x) => x.toJson())),
  };
}

class ReplyElement {
  bool embeddable;
  String href;

  ReplyElement({
    this.embeddable,
    this.href,
  });

  factory ReplyElement.fromJson(Map<String, dynamic> json) => ReplyElement(
    embeddable: json["embeddable"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "embeddable": embeddable,
    "href": href,
  };
}

class MediaDetails {
  int width;
  int height;
  String file;
  Sizes sizes;
  ImageMeta imageMeta;

  MediaDetails({
    this.width,
    this.height,
    this.file,
    this.sizes,
    this.imageMeta,
  });

  factory MediaDetails.fromJson(Map<String, dynamic> json) => MediaDetails(
    width: json["width"],
    height: json["height"],
    file: json["file"],
    sizes: Sizes.fromJson(json["sizes"]),
    imageMeta: ImageMeta.fromJson(json["image_meta"]),
  );

  Map<String, dynamic> toJson() => {
    "width": width,
    "height": height,
    "file": file,
    "sizes": sizes.toJson(),
    "image_meta": imageMeta.toJson(),
  };
}

class ImageMeta {
  String aperture;
  String credit;
  String camera;
  String caption;
  String createdTimestamp;
  String copyright;
  String focalLength;
  String iso;
  String shutterSpeed;
  String title;
  String orientation;
  List<String> keywords;

  ImageMeta({
    this.aperture,
    this.credit,
    this.camera,
    this.caption,
    this.createdTimestamp,
    this.copyright,
    this.focalLength,
    this.iso,
    this.shutterSpeed,
    this.title,
    this.orientation,
    this.keywords,
  });

  factory ImageMeta.fromJson(Map<String, dynamic> json) => ImageMeta(
    aperture: json["aperture"],
    credit: json["credit"],
    camera: json["camera"],
    caption: json["caption"],
    createdTimestamp: json["created_timestamp"],
    copyright: json["copyright"],
    focalLength: json["focal_length"],
    iso: json["iso"],
    shutterSpeed: json["shutter_speed"],
    title: json["title"],
    orientation: json["orientation"],
    keywords: List<String>.from(json["keywords"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "aperture": aperture,
    "credit": credit,
    "camera": camera,
    "caption": caption,
    "created_timestamp": createdTimestamp,
    "copyright": copyright,
    "focal_length": focalLength,
    "iso": iso,
    "shutter_speed": shutterSpeed,
    "title": title,
    "orientation": orientation,
    "keywords": List<dynamic>.from(keywords.map((x) => x)),
  };
}

class Sizes {
  Full thumbnail;
  Full medium;
  Full mediumLarge;
  Full large;
  Full hitmagLandscape;
  Full hitmagFeatured;
  Full hitmagGrid;
  Full hitmagList;
  Full hitmagThumbnail;
  Full full;

  Sizes({
    this.thumbnail,
    this.medium,
    this.mediumLarge,
    this.large,
    this.hitmagLandscape,
    this.hitmagFeatured,
    this.hitmagGrid,
    this.hitmagList,
    this.hitmagThumbnail,
    this.full,
  });

  factory Sizes.fromJson(Map<String, dynamic> json) => Sizes(
    thumbnail: Full.fromJson(json["thumbnail"]),
    medium: Full.fromJson(json["medium"]),
    mediumLarge: json["medium_large"] == null ? null : Full.fromJson(json["medium_large"]),
    large: json["large"] == null ? null : Full.fromJson(json["large"]),
    hitmagLandscape: json["hitmag-landscape"] == null ? null : Full.fromJson(json["hitmag-landscape"]),
    hitmagFeatured: json["hitmag-featured"] == null ? null : Full.fromJson(json["hitmag-featured"]),
    hitmagGrid: Full.fromJson(json["hitmag-grid"]),
    hitmagList: Full.fromJson(json["hitmag-list"]),
    hitmagThumbnail: Full.fromJson(json["hitmag-thumbnail"]),
    full: Full.fromJson(json["full"]),
  );

  Map<String, dynamic> toJson() => {
    "thumbnail": thumbnail.toJson(),
    "medium": medium.toJson(),
    "medium_large": mediumLarge == null ? null : mediumLarge.toJson(),
    "large": large == null ? null : large.toJson(),
    "hitmag-landscape": hitmagLandscape == null ? null : hitmagLandscape.toJson(),
    "hitmag-featured": hitmagFeatured == null ? null : hitmagFeatured.toJson(),
    "hitmag-grid": hitmagGrid.toJson(),
    "hitmag-list": hitmagList.toJson(),
    "hitmag-thumbnail": hitmagThumbnail.toJson(),
    "full": full.toJson(),
  };
}

class Full {
  String file;
  int width;
  int height;
  MimeType mimeType;
  String sourceUrl;

  Full({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.sourceUrl,
  });

  factory Full.fromJson(Map<String, dynamic> json) => Full(
    file: json["file"],
    width: json["width"],
    height: json["height"],
    mimeType: mimeTypeValues.map[json["mime_type"]],
    sourceUrl: json["source_url"],
  );

  Map<String, dynamic> toJson() => {
    "file": file,
    "width": width,
    "height": height,
    "mime_type": mimeTypeValues.reverse[mimeType],
    "source_url": sourceUrl,
  };
}

enum MimeType { IMAGE_JPEG }

final mimeTypeValues = EnumValues({
  "image/jpeg": MimeType.IMAGE_JPEG
});

class EmbeddedWpTerm {
  int id;
  String link;
  String name;
  String slug;
  Taxonomy taxonomy;
  WpTermLinks links;

  EmbeddedWpTerm({
    this.id,
    this.link,
    this.name,
    this.slug,
    this.taxonomy,
    this.links,
  });

  factory EmbeddedWpTerm.fromJson(Map<String, dynamic> json) => EmbeddedWpTerm(
    id: json["id"],
    link: json["link"],
    name: json["name"],
    slug: json["slug"],
    taxonomy: taxonomyValues.map[json["taxonomy"]],
    links: WpTermLinks.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "link": link,
    "name": name,
    "slug": slug,
    "taxonomy": taxonomyValues.reverse[taxonomy],
    "_links": links.toJson(),
  };
}

class WpTermLinks {
  List<About> self;
  List<About> collection;
  List<About> about;
  List<About> wpPostType;
  List<Cury> curies;

  WpTermLinks({
    this.self,
    this.collection,
    this.about,
    this.wpPostType,
    this.curies,
  });

  factory WpTermLinks.fromJson(Map<String, dynamic> json) => WpTermLinks(
    self: List<About>.from(json["self"].map((x) => About.fromJson(x))),
    collection: List<About>.from(json["collection"].map((x) => About.fromJson(x))),
    about: List<About>.from(json["about"].map((x) => About.fromJson(x))),
    wpPostType: List<About>.from(json["wp:post_type"].map((x) => About.fromJson(x))),
    curies: List<Cury>.from(json["curies"].map((x) => Cury.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": List<dynamic>.from(self.map((x) => x.toJson())),
    "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
    "about": List<dynamic>.from(about.map((x) => x.toJson())),
    "wp:post_type": List<dynamic>.from(wpPostType.map((x) => x.toJson())),
    "curies": List<dynamic>.from(curies.map((x) => x.toJson())),
  };
}

class Cury {
  Name name;
  Href href;
  bool templated;

  Cury({
    this.name,
    this.href,
    this.templated,
  });

  factory Cury.fromJson(Map<String, dynamic> json) => Cury(
    name: nameValues.map[json["name"]],
    href: hrefValues.map[json["href"]],
    templated: json["templated"],
  );

  Map<String, dynamic> toJson() => {
    "name": nameValues.reverse[name],
    "href": hrefValues.reverse[href],
    "templated": templated,
  };
}

enum Href { HTTPS_API_W_ORG_REL }

final hrefValues = EnumValues({
  "https://api.w.org/{rel}": Href.HTTPS_API_W_ORG_REL
});

enum Name { WP }

final nameValues = EnumValues({
  "wp": Name.WP
});

enum Taxonomy { CATEGORY, POST_TAG }

final taxonomyValues = EnumValues({
  "category": Taxonomy.CATEGORY,
  "post_tag": Taxonomy.POST_TAG
});

class PostLinks {
  List<About> self;
  List<About> collection;
  List<About> about;
  List<ReplyElement> author;
  List<ReplyElement> replies;
  List<VersionHistory> versionHistory;
  List<PredecessorVersion> predecessorVersion;
  List<ReplyElement> wpFeaturedmedia;
  List<About> wpAttachment;
  List<LinksWpTerm> wpTerm;
  List<Cury> curies;

  PostLinks({
    this.self,
    this.collection,
    this.about,
    this.author,
    this.replies,
    this.versionHistory,
    this.predecessorVersion,
    this.wpFeaturedmedia,
    this.wpAttachment,
    this.wpTerm,
    this.curies,
  });

  factory PostLinks.fromJson(Map<String, dynamic> json) => PostLinks(
    self: List<About>.from(json["self"].map((x) => About.fromJson(x))),
    collection: List<About>.from(json["collection"].map((x) => About.fromJson(x))),
    about: List<About>.from(json["about"].map((x) => About.fromJson(x))),
    author: List<ReplyElement>.from(json["author"].map((x) => ReplyElement.fromJson(x))),
    replies: List<ReplyElement>.from(json["replies"].map((x) => ReplyElement.fromJson(x))),
    versionHistory: List<VersionHistory>.from(json["version-history"].map((x) => VersionHistory.fromJson(x))),
    predecessorVersion: List<PredecessorVersion>.from(json["predecessor-version"].map((x) => PredecessorVersion.fromJson(x))),
    wpFeaturedmedia: List<ReplyElement>.from(json["wp:featuredmedia"].map((x) => ReplyElement.fromJson(x))),
    wpAttachment: List<About>.from(json["wp:attachment"].map((x) => About.fromJson(x))),
    wpTerm: List<LinksWpTerm>.from(json["wp:term"].map((x) => LinksWpTerm.fromJson(x))),
    curies: List<Cury>.from(json["curies"].map((x) => Cury.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": List<dynamic>.from(self.map((x) => x.toJson())),
    "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
    "about": List<dynamic>.from(about.map((x) => x.toJson())),
    "author": List<dynamic>.from(author.map((x) => x.toJson())),
    "replies": List<dynamic>.from(replies.map((x) => x.toJson())),
    "version-history": List<dynamic>.from(versionHistory.map((x) => x.toJson())),
    "predecessor-version": List<dynamic>.from(predecessorVersion.map((x) => x.toJson())),
    "wp:featuredmedia": List<dynamic>.from(wpFeaturedmedia.map((x) => x.toJson())),
    "wp:attachment": List<dynamic>.from(wpAttachment.map((x) => x.toJson())),
    "wp:term": List<dynamic>.from(wpTerm.map((x) => x.toJson())),
    "curies": List<dynamic>.from(curies.map((x) => x.toJson())),
  };
}

class PredecessorVersion {
  int id;
  String href;

  PredecessorVersion({
    this.id,
    this.href,
  });

  factory PredecessorVersion.fromJson(Map<String, dynamic> json) => PredecessorVersion(
    id: json["id"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "href": href,
  };
}

class VersionHistory {
  int count;
  String href;

  VersionHistory({
    this.count,
    this.href,
  });

  factory VersionHistory.fromJson(Map<String, dynamic> json) => VersionHistory(
    count: json["count"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "href": href,
  };
}

class LinksWpTerm {
  Taxonomy taxonomy;
  bool embeddable;
  String href;

  LinksWpTerm({
    this.taxonomy,
    this.embeddable,
    this.href,
  });

  factory LinksWpTerm.fromJson(Map<String, dynamic> json) => LinksWpTerm(
    taxonomy: taxonomyValues.map[json["taxonomy"]],
    embeddable: json["embeddable"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "taxonomy": taxonomyValues.reverse[taxonomy],
    "embeddable": embeddable,
    "href": href,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
