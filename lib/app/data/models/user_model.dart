class User {
  // late String accessToken;
  late int id;
  // late int loginType;
  // late String answerLikeCount;
  // late bool turnOnChat;
  // late int countComment;
  // late int countGift;
  // late int countFlag;
  // late String rankingHelp;
  // late double totalPoint;
  // late bool isSuperUser;
  // late bool isFollowing;
  // late bool isPurchasedGift;
  // late bool isNotificationMode;
  // late String oSVersion;
  // late String appVersion;
  // late String deviceId;
  // late String email;
  // late String displayName;
  // late String firstName;
  // late String lastName;
  // late String username;
  // late String oldPassword;
  // late int age;
  // late String password;
  // late String dateOfBirth;
  // late String avatarPath;
  // late String coverPhoto;
  // late String bio;
  // late int beFollowedCount;
  // late String isBlocked;
  // late int suspendPeriod;
  // late int createdQuestionCount;
  // late int createdAnswerCount;
  // late int followingCount;
  // late String deviceToken;
  // late String xmppID;
  // late String xmppPassword;
  // late String followedTime;
  // late String avatarAnonymous;
  // late String avatarVideo;
  // late bool isVerified;
  // late bool is16OrOverConfirmed;
  // late String latestBadge;
  // late String keywords;
  // late String keywordIdList;
  // late int keywordId;
  // late String createdOn;
  // late String surveyTimeId;
  // late bool isSurveyOptIn;
  // late String surveyWelcomeSubject;
  // late String surveyWelcomeDesc;
  // late int userType;
  // late bool isMarketingPermission;
  // late bool isHideTrigger;
  // late bool isAdsRemoved;
  // late int helpType;
  // late int usedHeart;
  // late bool isSeniorLevel;
  // late bool isChatDisabled;
  // late bool timeStampOfBirth;
  // late String coverPhotoId;
  // late String onAppTime;
  // late bool hasAddHighlight;
  // late String coverUrl;
  // late int userRole;
  // late bool hasReceivedSuperHeart;
  // late int totalSuperHearts;
  // late String extensionDTO;
  // late bool isTrusted;
  // late bool isBirthday;
  // late bool isHiddenBirthday;
  // late String firebaseAccount;
  // late bool isBrandNewUser;
  // late bool isTrialTime;

  User({
      // required this.accessToken,
      required this.id,
      // required this.loginType,
      // required this.answerLikeCount,
      // required this.turnOnChat,
      // required this.countComment,
      // required this.countGift,
      // required this.countFlag,
      // required this.rankingHelp,
      // required this.totalPoint,
      // required this.isSuperUser,
      // required this.isFollowing,
      // required this.isPurchasedGift,
      // required this.isNotificationMode,
      // required this.oSVersion,
      // required this.appVersion,
      // required this.deviceId,
      // required this.email,
      // required this.displayName,
      // required this.firstName,
      // required this.lastName,
      // required this.username,
      // required this.oldPassword,
      // required this.age,
      // required this.password,
      // required this.dateOfBirth,
      // required this.avatarPath,
      // required this.coverPhoto,
      // required this.bio,
      // required this.beFollowedCount,
      // required this.isBlocked,
      // required this.suspendPeriod,
      // required this.createdQuestionCount,
      // required this.createdAnswerCount,
      // required this.followingCount,
      // required this.deviceToken,
      // required this.xmppID,
      // required this.xmppPassword,
      // required this.followedTime,
      // required this.avatarAnonymous,
      // required this.avatarVideo,
      // required this.isVerified,
      // required this.is16OrOverConfirmed,
      // required this.latestBadge,
      // required this.keywords,
      // required this.keywordIdList,
      // required this.keywordId,
      // required this.createdOn,
      // required this.surveyTimeId,
      // required this.isSurveyOptIn,
      // required this.surveyWelcomeSubject,
      // required this.surveyWelcomeDesc,
      // required this.userType,
      // required this.isMarketingPermission,
      // required this.isHideTrigger,
      // required this.isAdsRemoved,
      // required this.helpType,
      // required this.usedHeart,
      // required this.isSeniorLevel,
      // required this.isChatDisabled,
      // required this.timeStampOfBirth,
      // required this.coverPhotoId,
      // required this.onAppTime,
      // required this.hasAddHighlight,
      // required this.coverUrl,
      // required this.userRole,
      // required this.hasReceivedSuperHeart,
      // required this.totalSuperHearts,
      // required this.extensionDTO,
      // required this.isTrusted,
      // required this.isBirthday,
      // required this.isHiddenBirthday,
      // required this.firebaseAccount,
      // required this.isBrandNewUser,
      // required this.isTrialTime,
  });

  User.fromJson(Map<String, dynamic> json) {
    // accessToken = json['accessToken'];
    id = json['id'];
    // loginType = json['loginType'];
    // answerLikeCount = json['answerLikeCount'];
    // turnOnChat = json['turnOnChat'];
    // countComment = json['countComment'];
    // countGift = json['countGift '];
    // countFlag = json['countFlag'];
    // rankingHelp = json['rankingHelp'];
    // totalPoint = json['totalPoint'];
    // isSuperUser = json['isSuperUser'];
    // isFollowing = json['isFollowing'];
    // isPurchasedGift = json['isPurchasedGift'];
    // isNotificationMode = json['isNotificationMode'];
    // oSVersion = json['oSVersion'];
    // appVersion = json['appVersion'];
    // deviceId = json['deviceId'];
    // email = json['email'];
    // displayName = json['displayName'];
    // firstName = json['firstName'];
    // lastName = json['lastName'];
    // username = json['username'];
    // oldPassword = json['oldPassword'];
    // age = json['age'];
    // password = json['password'];
    // dateOfBirth = json['dateOfBirth'];
    // avatarPath = json['avatarPath'];
    // coverPhoto = json['coverPhoto'];
    // bio = json['bio'];
    // beFollowedCount = json['beFollowedCount'];
    // isBlocked = json['isBlocked'];
    // suspendPeriod = json['suspendPeriod'];
    // createdQuestionCount = json['createdQuestionCount'];
    // createdAnswerCount = json['createdAnswerCount'];
    // followingCount = json['followingCount'];
    // deviceToken = json['deviceToken'];
    // xmppID = json['xmppID'];
    // xmppPassword = json['xmppPassword'];
    // followedTime = json['followedTime'];
    // avatarAnonymous = json['avatarAnonymous'];
    // avatarVideo = json['avatarVideo'];
    // isVerified = json['isVerified'];
    // is16OrOverConfirmed = json['is16OrOverConfirmed'];
    // latestBadge = json['latestBadge'];
    // keywords = json['keywords'];
    // keywordIdList = json['keywordIdList'];
    // keywordId = json['keywordId'];
    // createdOn = json['createdOn'];
    // surveyTimeId = json['surveyTimeId'];
    // isSurveyOptIn = json['isSurveyOptIn'];
    // surveyWelcomeSubject = json['surveyWelcomeSubject'];
    // surveyWelcomeDesc = json['surveyWelcomeDesc'];
    // userType = json['userType'];
    // isMarketingPermission = json['isMarketingPermission'];
    // isHideTrigger = json['isHideTrigger'];
    // isAdsRemoved = json['isAdsRemoved'];
    // helpType = json['helpType'];
    // usedHeart = json['usedHeart'];
    // isSeniorLevel = json['isSeniorLevel'];
    // isChatDisabled = json['isChatDisabled'];
    // timeStampOfBirth = json['timeStampOfBirth'];
    // coverPhotoId = json['coverPhotoId'];
    // onAppTime = json['onAppTime'];
    // hasAddHighlight = json['hasAddHighlight'];
    // coverUrl = json['coverUrl'];
    // userRole = json['userRole'];
    // hasReceivedSuperHeart = json['hasReceivedSuperHeart'];
    // totalSuperHearts = json['totalSuperHearts'];
    // extensionDTO = json['extensionDTO'];
    // isTrusted = json['isTrusted'];
    // isBirthday = json['isBirthday'];
    // isHiddenBirthday = json['isHiddenBirthday'];
    // firebaseAccount = json['firebaseAccount'];
    // isBrandNewUser = json['isBrandNewUser'];
    // isTrialTime = json['isTrialTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    // data['accessToken'] = this.accessToken;
    data['id'] = this.id;
    // data['loginType'] = this.loginType;
    // data['answerLikeCount'] = this.answerLikeCount;
    // data['turnOnChat'] = this.turnOnChat;
    // data['countComment'] = this.countComment;
    // data['countGift '] = this.countGift;
    // data['countFlag'] = this.countFlag;
    // data['rankingHelp'] = this.rankingHelp;
    // data['totalPoint'] = this.totalPoint;
    // data['isSuperUser'] = this.isSuperUser;
    // data['isFollowing'] = this.isFollowing;
    // data['isPurchasedGift'] = this.isPurchasedGift;
    // data['isNotificationMode'] = this.isNotificationMode;
    // data['oSVersion'] = this.oSVersion;
    // data['appVersion'] = this.appVersion;
    // data['deviceId'] = this.deviceId;
    // data['email'] = this.email;
    // data['displayName'] = this.displayName;
    // data['firstName'] = this.firstName;
    // data['lastName'] = this.lastName;
    // data['username'] = this.username;
    // data['oldPassword'] = this.oldPassword;
    // data['age'] = this.age;
    // data['password'] = this.password;
    // data['dateOfBirth'] = this.dateOfBirth;
    // data['avatarPath'] = this.avatarPath;
    // data['coverPhoto'] = this.coverPhoto;
    // data['bio'] = this.bio;
    // data['beFollowedCount'] = this.beFollowedCount;
    // data['isBlocked'] = this.isBlocked;
    // data['suspendPeriod'] = this.suspendPeriod;
    // data['createdQuestionCount'] = this.createdQuestionCount;
    // data['createdAnswerCount'] = this.createdAnswerCount;
    // data['followingCount'] = this.followingCount;
    // data['deviceToken'] = this.deviceToken;
    // data['xmppID'] = this.xmppID;
    // data['xmppPassword'] = this.xmppPassword;
    // data['followedTime'] = this.followedTime;
    // data['avatarAnonymous'] = this.avatarAnonymous;
    // data['avatarVideo'] = this.avatarVideo;
    // data['isVerified'] = this.isVerified;
    // data['is16OrOverConfirmed'] = this.is16OrOverConfirmed;
    // data['latestBadge'] = this.latestBadge;
    // data['keywords'] = this.keywords;
    // data['keywordIdList'] = this.keywordIdList;
    // data['keywordId'] = this.keywordId;
    // data['createdOn'] = this.createdOn;
    // data['surveyTimeId'] = this.surveyTimeId;
    // data['isSurveyOptIn'] = this.isSurveyOptIn;
    // data['surveyWelcomeSubject'] = this.surveyWelcomeSubject;
    // data['surveyWelcomeDesc'] = this.surveyWelcomeDesc;
    // data['userType'] = this.userType;
    // data['isMarketingPermission'] = this.isMarketingPermission;
    // data['isHideTrigger'] = this.isHideTrigger;
    // data['isAdsRemoved'] = this.isAdsRemoved;
    // data['helpType'] = this.helpType;
    // data['usedHeart'] = this.usedHeart;
    // data['isSeniorLevel'] = this.isSeniorLevel;
    // data['isChatDisabled'] = this.isChatDisabled;
    // data['timeStampOfBirth'] = this.timeStampOfBirth;
    // data['coverPhotoId'] = this.coverPhotoId;
    // data['onAppTime'] = this.onAppTime;
    // data['hasAddHighlight'] = this.hasAddHighlight;
    // data['coverUrl'] = this.coverUrl;
    // data['userRole'] = this.userRole;
    // data['hasReceivedSuperHeart'] = this.hasReceivedSuperHeart;
    // data['totalSuperHearts'] = this.totalSuperHearts;
    // data['extensionDTO'] = this.extensionDTO;
    // data['isTrusted'] = this.isTrusted;
    // data['isBirthday'] = this.isBirthday;
    // data['isHiddenBirthday'] = this.isHiddenBirthday;
    // data['firebaseAccount'] = this.firebaseAccount;
    // data['isBrandNewUser'] = this.isBrandNewUser;
    // data['isTrialTime'] = this.isTrialTime;
    return data;
  }
}
