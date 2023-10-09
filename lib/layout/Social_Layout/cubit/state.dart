abstract class SocialStates{}
class SocialInitialState extends SocialStates{}

class SocialChangeNavBarState extends SocialStates{}

class GetUserSucceedState extends SocialStates{}
class GetUserLoadingState extends SocialStates{}
class GetUserErrorState extends SocialStates{}

class EditProfileSucceedState extends SocialStates{}
class EditProfileLoadingState extends SocialStates{}
class EditProfileErrorState extends SocialStates{}

class SocialProfileImagePickedErrorState extends SocialStates{}
class SocialProfileImagePickedSuccessState extends SocialStates{}

class SocialUploadProfileImageErrorState extends SocialStates{}

class SocialUploadCoverImageErrorState extends SocialStates{}

class SocialCreatePostLoadingState extends SocialStates{}
class SocialCreatePostSucceedState extends SocialStates{}
class SocialCreatePostErrorState extends SocialStates{}

class SocialUploadPostImageErrorState extends SocialStates{}

class SocialGetPostErrorState extends SocialStates{}
class SocialGetPostLoadingState extends SocialStates{}
class SocialGetPostSucceedState extends SocialStates{}

class SocialLikePostLoadingState extends SocialStates{}
class SocialLikePostSucceedState extends SocialStates{}
class SocialLikePostErrorState extends SocialStates{}

class SocialDisLikePostLoadingState extends SocialStates{}
class SocialDisLikePostSucceedState extends SocialStates{}
class SocialDisLikePostErrorState extends SocialStates{}

class SocialGetLikeErrorState extends SocialStates{}
class SocialGetLikeSucceedState extends SocialStates{}

class SocialSendMessageSuccessState extends SocialStates {}
class SocialSendMessageErrorState extends SocialStates {}
class SocialGetMessagesSuccessState extends SocialStates {}

class SocialGetAllUsersLoadingState extends SocialStates {}
class SocialGetAllUsersSuccessState extends SocialStates {}
class SocialGetAllUsersErrorState extends SocialStates
{
  final String error;

  SocialGetAllUsersErrorState(this.error);
}

class SocialGetAllChatsUsersLoadingState extends SocialStates {}
class SocialGetAllChatsUsersSuccessState extends SocialStates {}
class SocialGetAllChatsUsersErrorState extends SocialStates
{
  final String error;

  SocialGetAllChatsUsersErrorState(this.error);
}

class ChangeLikeIconState extends SocialStates {}