class Post {
  String? title;
  String? description;
  String? image;
  bool? isliked;
  String? avatarImage;
  String? name;

  Post(
      {this.title,
      this.image,
      this.description,
      this.isliked,
      this.avatarImage,
      this.name});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title'] ?? "",
      image: json['image'],
      description: json['description'],
      isliked: json['isLiked'],
      avatarImage: json['avatarImage'],
      name: json['name'],
    );
  }
}
