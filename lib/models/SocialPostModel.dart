class SocialPostModel{
  late String text;
  late String name;
  late String dateTime;
  late String profileImage;
  late String uId;
  late String postImage;
  late int count;

  SocialPostModel({required this.text, required this.name, required this.dateTime, required this.profileImage,
      required this.uId, required this.postImage, required this.count});

  SocialPostModel.fromJson(Map<String, dynamic> json)
  {
    uId = json['uId'];
    name = json['name'];
    postImage = json['postImage']??"empty";
    dateTime = json['dateTime'];
    text = json['text'];
  }

  Map<String, dynamic> toMap()
  {
    return{
      'postImage' : postImage,
      'name' : name,
      'text' : text,
      'uId' : uId,
      'dateTime' : dateTime,
    };
  }
}