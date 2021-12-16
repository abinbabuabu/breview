class BlogDetails {
  String id;
  String blogDesc;
  String blogImageUrl;

  BlogDetails(this.id, this.blogDesc, this.createdAt);
  String createdAt;

  Map<String, dynamic> toMap() {
    return {
      "user_id": id,
      "image_url": blogImageUrl,
      "Blog_text": blogDesc,
    };
  }
}
