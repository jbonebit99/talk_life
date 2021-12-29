class UserEmail {
  String? accessToken;
  int? id;
  int? loginType;
  bool? turnOnChat;
  int? countComment;
  String? rankingHelp;
  int? totalPoint;
  bool? isPurchasedGift;
  bool? isNotificationMode;
  String? osVersion;
  String? appVersion;
  String? deviceId;
  String? email;
  String? displayName;
  String? firstName;
  String? lastName;
  String? username;
  int? age;
  String? password;
  String? dateOfBirth;
  String? avatarPath;
  String? bio;
  int? beFollowedCount;
  bool? isBlocked;
  int? suspendPeriod;
  int? createdQuestionCount;
  int? createdAnswerCount;
  int? followingCount;
  String? deviceToken;
  String? avatarAnonymous;
  bool? isVerified;
  bool? is16OrOverConfirmed;
  String? createdOn;
  int? surveyTimeId;
  bool? isSurveyOptIn;
  int? userType;
  int? helpType;
  int? usedHeart;
  bool? isSeniorLevel;
  bool? isChatDisabled;
  String? onAppTime;
  bool? hasAddHighlight;
  int? userRole;
  bool? hasReceivedSuperHeart;
  int? totalSuperHearts;
  ExtensionDTO? extensionDTO;
  bool? isTrusted;
  bool? isBirthday;
  bool? isHiddenBirthday;
  bool? isAdmin;
  bool? isBrandNewUser;
  bool? isTrialTime;
  bool? isABC;
  List? keywordIds;

  UserEmail(
      {this.accessToken,
      this.id,
      this.loginType,
      this.turnOnChat,
      this.countComment,
      this.rankingHelp,
      this.totalPoint,
      this.isPurchasedGift,
      this.isNotificationMode,
      this.osVersion,
      this.appVersion,
      this.deviceId,
      this.email,
      this.displayName,
      this.firstName,
      this.lastName,
      this.username,
      this.age,
      this.password,
      this.dateOfBirth,
      this.avatarPath,
      this.bio,
      this.beFollowedCount,
      this.isBlocked,
      this.suspendPeriod,
      this.createdQuestionCount,
      this.createdAnswerCount,
      this.followingCount,
      this.deviceToken,
      this.avatarAnonymous,
      this.isVerified,
      this.is16OrOverConfirmed,
      this.createdOn,
      this.surveyTimeId,
      this.isSurveyOptIn,
      this.userType,
      this.helpType,
      this.usedHeart,
      this.isSeniorLevel,
      this.isChatDisabled,
      this.onAppTime,
      this.hasAddHighlight,
      this.userRole,
      this.hasReceivedSuperHeart,
      this.totalSuperHearts,
      this.extensionDTO,
      this.isTrusted,
      this.isBirthday,
      this.isHiddenBirthday,
      this.isAdmin,
      this.isBrandNewUser,
      this.isTrialTime,
      this.isABC,
      this.keywordIds});

  UserEmail.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    id = json['id'];
    loginType = json['loginType'];
    turnOnChat = json['turnOnChat'];
    countComment = json['countComment'];
    rankingHelp = json['rankingHelp'];
    totalPoint = json['totalPoint'];
    isPurchasedGift = json['isPurchasedGift'];
    isNotificationMode = json['isNotificationMode'];
    osVersion = json['osVersion'];
    appVersion = json['appVersion'];
    deviceId = json['deviceId'];
    email = json['email'];
    displayName = json['displayName'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    username = json['username'];
    age = json['age'];
    password = json['password'];
    dateOfBirth = json['dateOfBirth'];
    avatarPath = json['avatarPath'];
    bio = json['bio'];
    beFollowedCount = json['beFollowedCount'];
    isBlocked = json['isBlocked'];
    suspendPeriod = json['suspendPeriod'];
    createdQuestionCount = json['createdQuestionCount'];
    createdAnswerCount = json['createdAnswerCount'];
    followingCount = json['followingCount'];
    deviceToken = json['deviceToken'];
    avatarAnonymous = json['avatarAnonymous'];
    isVerified = json['isVerified'];
    is16OrOverConfirmed = json['is16OrOverConfirmed'];
    createdOn = json['createdOn'];
    surveyTimeId = json['surveyTimeId'];
    isSurveyOptIn = json['isSurveyOptIn'];
    userType = json['userType'];
    helpType = json['helpType'];
    usedHeart = json['usedHeart'];
    isSeniorLevel = json['isSeniorLevel'];
    isChatDisabled = json['isChatDisabled'];
    onAppTime = json['onAppTime'];
    hasAddHighlight = json['hasAddHighlight'];
    userRole = json['userRole'];
    hasReceivedSuperHeart = json['hasReceivedSuperHeart'];
    totalSuperHearts = json['totalSuperHearts'];
    extensionDTO =
        json['extensionDTO'] != null ? ExtensionDTO?.fromJson(json['extensionDTO']) : null;
    isTrusted = json['isTrusted'];
    isBirthday = json['isBirthday'];
    isHiddenBirthday = json['isHiddenBirthday'];
    isAdmin = json['isAdmin'];
    isBrandNewUser = json['isBrandNewUser'];
    isTrialTime = json['isTrialTime'];
    isABC = json['isABC'];
    if (json['keywordIds'] != null) {
      keywordIds = [];
      json['keywordIds'].forEach((v) {
        keywordIds?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['accessToken'] = accessToken;
    data['id'] = id;
    data['loginType'] = loginType;
    data['turnOnChat'] = turnOnChat;
    data['countComment'] = countComment;
    data['rankingHelp'] = rankingHelp;
    data['totalPoint'] = totalPoint;
    data['isPurchasedGift'] = isPurchasedGift;
    data['isNotificationMode'] = isNotificationMode;
    data['osVersion'] = osVersion;
    data['appVersion'] = appVersion;
    data['deviceId'] = deviceId;
    data['email'] = email;
    data['displayName'] = displayName;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['username'] = username;
    data['age'] = age;
    data['password'] = password;
    data['dateOfBirth'] = dateOfBirth;
    data['avatarPath'] = avatarPath;
    data['bio'] = bio;
    data['beFollowedCount'] = beFollowedCount;
    data['isBlocked'] = isBlocked;
    data['suspendPeriod'] = suspendPeriod;
    data['createdQuestionCount'] = createdQuestionCount;
    data['createdAnswerCount'] = createdAnswerCount;
    data['followingCount'] = followingCount;
    data['deviceToken'] = deviceToken;
    data['avatarAnonymous'] = avatarAnonymous;
    data['isVerified'] = isVerified;
    data['is16OrOverConfirmed'] = is16OrOverConfirmed;
    data['createdOn'] = createdOn;
    data['surveyTimeId'] = surveyTimeId;
    data['isSurveyOptIn'] = isSurveyOptIn;
    data['userType'] = userType;
    data['helpType'] = helpType;
    data['usedHeart'] = usedHeart;
    data['isSeniorLevel'] = isSeniorLevel;
    data['isChatDisabled'] = isChatDisabled;
    data['onAppTime'] = onAppTime;
    data['hasAddHighlight'] = hasAddHighlight;
    data['userRole'] = userRole;
    data['hasReceivedSuperHeart'] = hasReceivedSuperHeart;
    data['totalSuperHearts'] = totalSuperHearts;
    if (extensionDTO != null) {
      data['extensionDTO'] = extensionDTO?.toJson();
    }
    data['isTrusted'] = isTrusted;
    data['isBirthday'] = isBirthday;
    data['isHiddenBirthday'] = isHiddenBirthday;
    data['isAdmin'] = isAdmin;
    data['isBrandNewUser'] = isBrandNewUser;
    data['isTrialTime'] = isTrialTime;
    data['isABC'] = isABC;
    if (keywordIds != null) {
      data['keywordIds'] = keywordIds?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ExtensionDTO {
  int? userId;
  bool? isRemoveTriggeringPosts;
  int? totalRemovals;
  int? totalRemovalsRestored;
  int? totalFlags;
  int? totalHearts;
  String? team;
  String? onUserTypeTime;
  int? totalAvailableSuperHearts;
  bool? isEnabledMessageFollowingMode;
  bool? isDisbaledNewConverstionMode;
  bool? isHideBoostedPostMode;
  bool? isEnabledEnterToSendMode;
  int? accuracycRatioRemovals;
  int? hasSubscription;
  bool? hasPatreon;
  bool? hasReceivedGiftSubscription;
  bool? hasFullImages;
  int? totalAvailableGiftSubscriptions;
  bool? hasCover;
  int? totalAvailableBoostTokens;
  bool? isShadowBanning;
  bool? isDisabledAchievement;

  ExtensionDTO(
      {this.userId,
      this.isRemoveTriggeringPosts,
      this.totalRemovals,
      this.totalRemovalsRestored,
      this.totalFlags,
      this.totalHearts,
      this.team,
      this.onUserTypeTime,
      this.totalAvailableSuperHearts,
      this.isEnabledMessageFollowingMode,
      this.isDisbaledNewConverstionMode,
      this.isHideBoostedPostMode,
      this.isEnabledEnterToSendMode,
      this.accuracycRatioRemovals,
      this.hasSubscription,
      this.hasPatreon,
      this.hasReceivedGiftSubscription,
      this.hasFullImages,
      this.totalAvailableGiftSubscriptions,
      this.hasCover,
      this.totalAvailableBoostTokens,
      this.isShadowBanning,
      this.isDisabledAchievement});

  ExtensionDTO.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    isRemoveTriggeringPosts = json['isRemoveTriggeringPosts'];
    totalRemovals = json['totalRemovals'];
    totalRemovalsRestored = json['totalRemovalsRestored'];
    totalFlags = json['totalFlags'];
    totalHearts = json['totalHearts'];
    team = json['team'];
    onUserTypeTime = json['onUserTypeTime'];
    totalAvailableSuperHearts = json['totalAvailableSuperHearts'];
    isEnabledMessageFollowingMode = json['isEnabledMessageFollowingMode'];
    isDisbaledNewConverstionMode = json['isDisbaledNewConverstionMode'];
    isHideBoostedPostMode = json['isHideBoostedPostMode'];
    isEnabledEnterToSendMode = json['isEnabledEnterToSendMode'];
    accuracycRatioRemovals = json['accuracycRatioRemovals'];
    hasSubscription = json['hasSubscription'];
    hasPatreon = json['hasPatreon'];
    hasReceivedGiftSubscription = json['hasReceivedGiftSubscription'];
    hasFullImages = json['hasFullImages'];
    totalAvailableGiftSubscriptions = json['totalAvailableGiftSubscriptions'];
    hasCover = json['hasCover'];
    totalAvailableBoostTokens = json['totalAvailableBoostTokens'];
    isShadowBanning = json['isShadowBanning'];
    isDisabledAchievement = json['isDisabledAchievement'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userId'] = userId;
    data['isRemoveTriggeringPosts'] = isRemoveTriggeringPosts;
    data['totalRemovals'] = totalRemovals;
    data['totalRemovalsRestored'] = totalRemovalsRestored;
    data['totalFlags'] = totalFlags;
    data['totalHearts'] = totalHearts;
    data['team'] = team;
    data['onUserTypeTime'] = onUserTypeTime;
    data['totalAvailableSuperHearts'] = totalAvailableSuperHearts;
    data['isEnabledMessageFollowingMode'] = isEnabledMessageFollowingMode;
    data['isDisbaledNewConverstionMode'] = isDisbaledNewConverstionMode;
    data['isHideBoostedPostMode'] = isHideBoostedPostMode;
    data['isEnabledEnterToSendMode'] = isEnabledEnterToSendMode;
    data['accuracycRatioRemovals'] = accuracycRatioRemovals;
    data['hasSubscription'] = hasSubscription;
    data['hasPatreon'] = hasPatreon;
    data['hasReceivedGiftSubscription'] = hasReceivedGiftSubscription;
    data['hasFullImages'] = hasFullImages;
    data['totalAvailableGiftSubscriptions'] = totalAvailableGiftSubscriptions;
    data['hasCover'] = hasCover;
    data['totalAvailableBoostTokens'] = totalAvailableBoostTokens;
    data['isShadowBanning'] = isShadowBanning;
    data['isDisabledAchievement'] = isDisabledAchievement;
    return data;
  }
}
