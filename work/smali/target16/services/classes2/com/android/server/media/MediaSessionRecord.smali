.class public Lcom/android/server/media/MediaSessionRecord;
.super Lcom/android/server/media/MediaSessionRecordImpl;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final ALWAYS_PRIORITY_STATES:Ljava/util/List;

.field public static final ART_URIS:[Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final TRANSITION_PRIORITY_STATES:Ljava/util/List;


# instance fields
.field public mAudioAttrs:Landroid/media/AudioAttributes;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field public final mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mCurrentVolume:I

.field public mDestroyed:Z

.field public mDuration:J

.field public mExtras:Landroid/os/Bundle;

.field public mFlags:J

.field public final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field public mIsActive:Z

.field public mLaunchIntent:Landroid/app/PendingIntent;

.field public final mLock:Ljava/lang/Object;

.field public mMaxVolume:I

.field public mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

.field public mMetadata:Landroid/media/MediaMetadata;

.field public mMetadataDescription:Ljava/lang/String;

.field public mOptimisticVolume:I

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public mPlaybackState:Landroid/media/session/PlaybackState;

.field public mPolicies:I

.field public mQueue:Ljava/util/List;

.field public mQueueTitle:Ljava/lang/CharSequence;

.field public mRatingType:I

.field public final mService:Lcom/android/server/media/MediaSessionService;

.field public final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field public final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field public final mSessionInfo:Landroid/os/Bundle;

.field public final mSessionToken:Landroid/media/session/MediaSession$Token;

.field public final mTag:Ljava/lang/String;

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public mUserEngagementState:I

.field public final mUserEngagementTimeoutExpirationRunnable:Ljava/lang/Runnable;

.field public final mUserId:I

.field public mVolumeControlId:Ljava/lang/String;

.field public mVolumeControlType:I

.field public mVolumeType:I


# direct methods
.method public static synthetic $r8$lambda$47oJwH0p7AqnNmGFowQpIiJ8slc(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    .registers 4

    .line 956
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmDeathMonitor(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 957
    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V

    return-void
.end method

.method public static synthetic $r8$lambda$6Isz4GOGBTgFLCL3U7K7iZZrRlk(Landroid/media/MediaMetadata;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    .registers 2

    .line 873
    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D7evA-PTCTPm0ztNMTkfO3BVdsc(Landroid/media/session/PlaybackState;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    .registers 2

    .line 861
    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FpRn5npEM538XW1jN-be-k47-Oc(Lcom/android/server/media/MediaSessionRecord;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->lambda$getBinderForSetQueue$13(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GRXRz5VD8XkPV4qq_cvPCAcJoYQ(Lcom/android/server/media/MediaSessionRecord;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->lambda$onGlobalPrioritySessionActiveChanged$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$IpPQCgsxCUun7UF1LRvYoZGnPPc(Lcom/android/server/media/MediaSessionRecord;IIIZILjava/lang/String;II)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/media/MediaSessionRecord;->lambda$postAdjustLocalVolume$3(IIIZILjava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kf5gudr74o7QcD35njkfb1tkamg(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VU49M4OTtwkHcFe31AhA_0X4QMY(Ljava/util/ArrayList;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    .registers 3

    if-eqz p0, :cond_c

    .line 889
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 p0, 0x1

    .line 892
    invoke-virtual {v0, p0}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 894
    :goto_d
    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VktKdFFMGC6Bknb91uZjMW5ruSE(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->lambda$new$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$YoDrzDNGFNqeGJ0VAPn4bT2h5c4(Lcom/android/server/media/MediaSessionRecord;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->lambda$updateUserEngagedStateIfNeededLocked$15(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZP_wbjuG1dwBgRzvQ3Yf_pNbe54(Landroid/os/Bundle;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    .registers 2

    .line 919
    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zd9Nek1PcvQUz6T0eWaM2PKpG2U(Landroid/media/session/MediaController$PlaybackInfo;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    .registers 2

    .line 931
    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aR06ipXqvTJwQuSwJSP52jd0tIk(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->lambda$registerCallback$12(Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mKM7quAVJCR9tWJMNe4Ynghi-KU(Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    .registers 3

    .line 940
    invoke-static {p2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uJeIcYkgD12htfmQzj81cOGe654(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;IIIII)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/media/MediaSessionRecord;->lambda$setVolumeTo$1(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$vyrImbKm8-Vf6QceOR6zJ1rX-xY(Ljava/lang/CharSequence;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    .registers 2

    .line 907
    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$madjustVolume(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdestroySession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->destroySession()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfastForward(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->fastForward(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBinderForSetQueue(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/IBinder;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getBinderForSetQueue()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetController(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/ISessionController;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getController()Landroid/media/session/ISessionController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetExtras(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetFlags(Lcom/android/server/media/MediaSessionRecord;)J
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetLaunchPendingIntent(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMetadata(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPlaybackState(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetQueue(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetQueueTitle(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRatingType(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getRatingType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionInfo(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getSessionInfo()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTag(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetVolumeAttributes(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/MediaController$PlaybackInfo;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnext(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->next(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpause(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->pause(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mplay(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->play(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mplayFromMediaId(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mplayFromSearch(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mplayFromUri(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepare(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->prepare(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareFromMediaId(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareFromSearch(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareFromUri(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprevious(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->previous(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushEvent(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushExtrasUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushMetadataUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushPlaybackStateUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushQueueTitleUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushQueueUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushSessionDestroyed(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpushVolumeUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrate(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/media/Rating;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->rate(Ljava/lang/String;Landroid/media/Rating;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterCallback(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetQueue(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->resetQueue()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrewind(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->rewind(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mseekTo(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;J)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->seekTo(Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendCommand(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionRecord;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendCustomAction(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendEvent(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMediaButton(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/view/KeyEvent;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetActive(Lcom/android/server/media/MediaSessionRecord;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->setActive(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCurrentVolume(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->setCurrentVolume(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetExtras(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetFlags(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->setFlags(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLaunchPendingIntent(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMediaButtonBroadcastReceiver(Lcom/android/server/media/MediaSessionRecord;Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMediaButtonReceiver(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMetadata(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;JLjava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionRecord;->setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPlaybackSpeed(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;F)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->setPlaybackSpeed(Ljava/lang/String;F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPlaybackState(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPlaybackToLocal(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPlaybackToRemote(Lcom/android/server/media/MediaSessionRecord;IILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->setPlaybackToRemote(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetQueueTitle(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->setQueueTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRatingType(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->setRatingType(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVolumeTo(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mskipToQueueItem(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;J)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->skipToQueueItem(Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstop(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterCallback(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 129
    const-string v0, "android.media.metadata.ART_URI"

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v2, "android.media.metadata.ALBUM_ART_URI"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->ART_URIS:[Ljava/lang/String;

    .line 133
    const-string v0, "MediaSessionRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    const/4 v0, 0x4

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    .line 149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v0

    .line 145
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->ALWAYS_PRIORITY_STATES:Ljava/util/List;

    const/4 v0, 0x6

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x8

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/Integer;

    move-result-object v0

    .line 154
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->TRANSITION_PRIORITY_STATES:Ljava/util/List;

    .line 159
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;I)V
    .registers 15

    .line 296
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecordImpl;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    .line 217
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v0, 0x2

    .line 218
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v0, 0x0

    .line 219
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 220
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    const/4 v1, -0x1

    .line 221
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 225
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    const-wide/16 v2, -0x1

    .line 228
    iput-wide v2, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 233
    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementTimeoutExpirationRunnable:Ljava/lang/Runnable;

    .line 242
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementState:I

    .line 1564
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    .line 297
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    .line 298
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 299
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 300
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 301
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 302
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    .line 303
    new-instance p1, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {p1, p0, p4}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 304
    new-instance p3, Landroid/media/session/MediaSession$Token;

    invoke-direct {p3, p2, p1}, Landroid/media/session/MediaSession$Token;-><init>(ILandroid/media/session/ISessionController;)V

    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 305
    new-instance p1, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 306
    new-instance p1, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {p1, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 307
    iput-object p8, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 308
    invoke-virtual {p8}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 309
    new-instance p3, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-direct {p3, p0, p9}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 310
    const-string p3, "audio"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 311
    sget-object p2, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 312
    iput p10, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    .line 313
    const-class p2, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 316
    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->-$$Nest$fgetmCb(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public static componentNameExists(Landroid/content/ComponentName;Landroid/content/Context;I)Z
    .registers 6

    .line 1576
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1577
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1578
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1580
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 1581
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 1585
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object p2

    .line 1584
    invoke-virtual {p1, v0, p2, p0}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 1586
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getVolumeStream(Landroid/media/AudioAttributes;)I
    .registers 2

    if-nez p0, :cond_9

    .line 167
    sget-object p0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result p0

    return p0

    .line 169
    :cond_9
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result p0

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_17

    .line 171
    sget-object p0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result p0

    :cond_17
    return p0
.end method

.method public static toVolumeControlTypeString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    .line 730
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "unknown(%d)"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 729
    :cond_18
    const-string p0, "ABSOLUTE"

    return-object p0

    .line 728
    :cond_1b
    const-string p0, "RELATIVE"

    return-object p0

    .line 727
    :cond_1e
    const-string p0, "FIXED"

    return-object p0
.end method

.method public static toVolumeTypeString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    .line 738
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "unknown(%d)"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 737
    :cond_16
    const-string p0, "REMOTE"

    return-object p0

    .line 736
    :cond_19
    const-string p0, "LOCAL"

    return-object p0
.end method


# virtual methods
.method public final adjustSuggestedStreamVolumeForUid(IIIZILjava/lang/String;II)V
    .registers 19

    move v8, p5

    .line 794
    const-string v9, "MediaSessionRecord"

    invoke-static {v9, p2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->maybeHandleVolumeKeyEvent(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    if-eqz p4, :cond_47

    const/4 v3, 0x0

    .line 800
    :try_start_d
    invoke-static {p1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 801
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 808
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move v1, p1

    move v2, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object v0, v3

    move v3, p3

    .line 801
    invoke-virtual/range {v0 .. v7}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V

    return-void

    :catch_2b
    move-exception v0

    goto :goto_5f

    .line 810
    :cond_2d
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    or-int v3, p3, v8

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 817
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object v0, v1

    const/high16 v1, -0x80000000

    move v2, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 810
    invoke-virtual/range {v0 .. v7}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V

    return-void

    .line 820
    :cond_47
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 827
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move v2, p2

    move v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object v0, v1

    move v1, p1

    .line 820
    invoke-virtual/range {v0 .. v7}, Landroid/media/AudioManager;->adjustStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_5e} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_5e} :catch_2b

    return-void

    .line 830
    :goto_5f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot adjust volume: direction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stream="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", opPackageName="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p6

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useSuggested="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", previousFlagPlaySound="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 16

    .line 1124
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    .line 1128
    :try_start_13
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    .line 1138
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1139
    throw p0
.end method

.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    .registers 19

    and-int/lit8 v9, p7, 0x4

    const/4 v0, 0x1

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isSystemPriority()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_13

    :cond_10
    move/from16 v3, p7

    goto :goto_16

    :cond_13
    :goto_13
    and-int/lit8 v1, p7, -0x5

    move v3, v1

    .line 417
    :goto_16
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    if-ne v1, v0, :cond_2d

    .line 419
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v1

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v2, p6

    move/from16 v8, p8

    .line 420
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V

    return-void

    :cond_2d
    move/from16 v2, p6

    move v6, v3

    .line 423
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const-string v8, "MediaSessionRecord"

    if-nez v0, :cond_41

    .line 424
    sget-boolean p1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz p1, :cond_d7

    .line 425
    const-string p1, "Session does not support volume adjustment"

    invoke-static {v8, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d7

    :cond_41
    const/16 v0, 0x65

    if-eq v2, v0, :cond_d2

    const/16 v0, -0x64

    if-eq v2, v0, :cond_d2

    const/16 v0, 0x64

    if-ne v2, v0, :cond_4f

    goto/16 :goto_d2

    .line 432
    :cond_4f
    sget-boolean v9, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v9, :cond_77

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjusting volume, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", asSystemService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_77
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, v2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(Ljava/lang/String;IIZI)V

    .line 441
    iget p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez p1, :cond_87

    iget p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    :cond_87
    add-int p3, p1, p6

    .line 442
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 443
    iget p4, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 p4, 0x0

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 444
    iget-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    iget-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p3, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    iget p3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq p1, p3, :cond_af

    .line 447
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    :cond_af
    if-eqz v9, :cond_d7

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Adjusted optimistic volume to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " max is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 430
    :cond_d2
    :goto_d2
    const-string p1, "Muting remote playback is not supported"

    invoke-static {v8, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_d7
    :goto_d7
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1, v6, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method public binderDied()V
    .registers 2

    .line 565
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void
.end method

.method public canHandleVolumeKey()Z
    .registers 4

    .line 650
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackTypeLocal()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "MediaSessionRecord"

    if-eqz v0, :cond_13

    .line 651
    sget-boolean p0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz p0, :cond_12

    .line 652
    const-string p0, "Local MediaSessionRecord can handle volume key"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v1

    .line 656
    :cond_13
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    if-nez p0, :cond_22

    .line 657
    sget-boolean p0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz p0, :cond_20

    .line 658
    const-string p0, "Local MediaSessionRecord with FIXED volume control can\'t handle volume key"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0

    :cond_22
    return v1
.end method

.method public checkPlaybackActiveState(Z)Z
    .registers 3

    .line 547
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 550
    :cond_6
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->isActive()Z

    move-result p0

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v0
.end method

.method public close()V
    .registers 5

    .line 576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 577
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 578
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    const/4 v3, 0x4

    .line 579
    invoke-virtual {v2, v3, v0, v1}, Landroid/app/ActivityManagerInternal;->logFgsApiEnd(III)V

    .line 581
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_17
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_1f

    .line 583
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_50

    .line 585
    :cond_1f
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->-$$Nest$fgetmCb(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 586
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->release()V

    .line 587
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->release()V

    const/4 v1, 0x1

    .line 588
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    const/4 v1, 0x0

    .line 589
    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v1, 0x2

    .line 590
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementState:I

    .line 591
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementTimeoutExpirationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 592
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 593
    monitor-exit v0

    return-void

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_17 .. :try_end_51} :catchall_1d

    throw p0
.end method

.method public final destroySession()V
    .registers 4

    .line 1268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1270
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2, p0}, Lcom/android/server/media/MediaSessionService;->onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 1272
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ownerPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ownerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "launchIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mediaButtonReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rating type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "controllers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v1, :cond_125

    const/4 v1, 0x0

    goto :goto_129

    :cond_125
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audioAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "volumeType="

    .line 708
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 709
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->toVolumeTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ", controlType="

    .line 710
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 711
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->toVolumeControlTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ", max="

    .line 712
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 713
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ", current="

    .line 714
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 715
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ", volumeControlId="

    .line 716
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    .line 717
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "queueTitle="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", size="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez p0, :cond_1d8

    const/4 p0, 0x0

    goto :goto_1dc

    :cond_1d8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_1dc
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 720
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public expireTempEngaged()V
    .registers 2

    .line 605
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementTimeoutExpirationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final fastForward(Ljava/lang/String;)V
    .registers 4

    .line 1212
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->fastForward(Ljava/lang/String;II)V

    return-void
.end method

.method public final getBinderForSetQueue()Landroid/os/IBinder;
    .registers 4

    .line 1490
    new-instance v0, Landroid/media/session/ParcelableListBinder;

    const-class v1, Landroid/media/session/MediaSession$QueueItem;

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    invoke-direct {v0, v1, v2}, Landroid/media/session/ParcelableListBinder;-><init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final getController()Landroid/media/session/ISessionController;
    .registers 1

    .line 1281
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object p0
.end method

.method public final getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .registers 4

    .line 1022
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1023
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_28

    .line 1024
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    return v0

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_28
    const/4 p0, -0x1

    return p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1258
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1259
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1260
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getFlags()J
    .registers 3

    .line 1120
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method public final getLaunchPendingIntent()Landroid/app/PendingIntent;
    .registers 1

    .line 1116
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getMediaButtonReceiver()Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 1

    .line 353
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    return-object p0
.end method

.method public final getMetadata()Landroid/media/MediaMetadata;
    .registers 2

    .line 1238
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1239
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1240
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlaybackState()Landroid/media/session/PlaybackState;
    .registers 1

    .line 1244
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public final getQueue()Landroid/content/pm/ParceledListSlice;
    .registers 3

    .line 1248
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1249
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez v1, :cond_9

    const/4 p0, 0x0

    goto :goto_11

    :cond_9
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    invoke-direct {v1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    move-object p0, v1

    :goto_11
    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1250
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final getQueueTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 1254
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getRatingType()I
    .registers 1

    .line 1264
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .registers 1

    .line 325
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object p0
.end method

.method public final getSessionInfo()Landroid/os/Bundle;
    .registers 1

    .line 1112
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    return-object p0
.end method

.method public getSessionPolicies()I
    .registers 2

    .line 679
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    :try_start_3
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 681
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 1

    .line 334
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method public final getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .registers 15

    .line 989
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 990
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 991
    monitor-exit v1

    return-object v2

    :catchall_a
    move-exception v0

    move-object p0, v0

    goto :goto_6e

    .line 993
    :cond_d
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 994
    iget-wide v3, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 995
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_a

    if-eqz v0, :cond_6a

    .line 998
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_29

    .line 999
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_29

    .line 1000
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_6a

    .line 1001
    :cond_29
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v5

    .line 1002
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-lez p0, :cond_6a

    .line 1004
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result p0

    sub-long v1, v12, v5

    long-to-float v1, v1

    mul-float/2addr p0, v1

    float-to-long v1, p0

    .line 1005
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v5

    add-long/2addr v1, v5

    cmp-long p0, v3, v7

    if-ltz p0, :cond_4f

    cmp-long p0, v1, v3

    if-lez p0, :cond_4f

    move-wide v9, v3

    goto :goto_56

    :cond_4f
    cmp-long p0, v1, v7

    if-gez p0, :cond_55

    move-wide v9, v7

    goto :goto_56

    :cond_55
    move-wide v9, v1

    .line 1011
    :goto_56
    new-instance v7, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v7, v0}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 1012
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v8

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v11

    invoke-virtual/range {v7 .. v13}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 1014
    invoke-virtual {v7}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    :cond_6a
    if-nez v2, :cond_6d

    return-object v0

    :cond_6d
    return-object v2

    .line 995
    :goto_6e
    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_a

    throw p0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 1

    .line 1108
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 363
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    return p0
.end method

.method public getUserId()I
    .registers 1

    .line 373
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return p0
.end method

.method public final getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .registers 10

    .line 1035
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1036
    :try_start_3
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v0, 0x2

    if-ne v3, v0, :cond_26

    .line 1037
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    :goto_d
    move v6, v0

    goto :goto_12

    :cond_f
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    goto :goto_d

    .line 1038
    :goto_12
    new-instance v2, Landroid/media/session/MediaController$PlaybackInfo;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    :catchall_23
    move-exception v0

    move-object p0, v0

    goto :goto_41

    .line 1042
    :cond_26
    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 1043
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_23

    .line 1044
    invoke-static {v7}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 1045
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    .line 1046
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 1047
    new-instance v2, Landroid/media/session/MediaController$PlaybackInfo;

    const/4 v4, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    return-object v2

    .line 1043
    :goto_41
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_23

    throw p0
.end method

.method public hasLinkedNotificationSupport()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isActive()Z
    .registers 2

    .line 534
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isClosed()Z
    .registers 2

    .line 598
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 600
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isLinkedToNotification(Landroid/app/Notification;)Z
    .registers 4

    .line 670
    invoke-virtual {p1}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.mediaSession"

    const-class v1, Landroid/media/session/MediaSession$Token;

    .line 672
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 671
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isPlaybackTypeLocal()Z
    .registers 2

    .line 560
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isSystemPriority()Z
    .registers 5

    .line 389
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$getBinderForSetQueue$13(Ljava/util/List;)V
    .registers 3

    .line 1493
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1494
    :try_start_3
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    .line 1495
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_d

    .line 1496
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_d
    move-exception p0

    .line 1495
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final synthetic lambda$new$0()V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    :try_start_5
    invoke-virtual {p0, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->updateUserEngagedStateIfNeededLocked(ZZ)V

    .line 239
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$new$14()V
    .registers 3

    .line 1566
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, -0x1

    .line 1567
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eqz v0, :cond_11

    .line 1569
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    :cond_11
    return-void
.end method

.method public final synthetic lambda$onGlobalPrioritySessionActiveChanged$2(Z)V
    .registers 5

    .line 612
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_f

    .line 614
    :try_start_5
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementTimeoutExpirationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1f

    :catchall_d
    move-exception p0

    goto :goto_21

    .line 616
    :cond_f
    iget p1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementState:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1f

    .line 617
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementTimeoutExpirationRunnable:Ljava/lang/Runnable;

    .line 620
    invoke-static {}, Lcom/android/server/media/MediaSessionDeviceConfig;->getMediaSessionTempUserEngagedDurationMs()J

    move-result-wide v1

    .line 617
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 623
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_d

    throw p0
.end method

.method public final synthetic lambda$postAdjustLocalVolume$3(IIIZILjava/lang/String;II)V
    .registers 9

    .line 773
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/media/MediaSessionRecord;->adjustSuggestedStreamVolumeForUid(IIIZILjava/lang/String;II)V

    return-void
.end method

.method public final synthetic lambda$registerCallback$12(Landroid/media/session/ISessionControllerCallback;)V
    .registers 2

    .line 1066
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method

.method public final synthetic lambda$setVolumeTo$1(Ljava/lang/String;IIIII)V
    .registers 7

    .line 472
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/media/MediaSessionRecord;->setStreamVolumeForUid(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public final synthetic lambda$updateUserEngagedStateIfNeededLocked$15(Z)V
    .registers 3

    .line 1624
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/media/MediaSessionService;->onSessionUserEngagementStateChange(Lcom/android/server/media/MediaSessionRecordImpl;Z)V

    return-void
.end method

.method public final logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V
    .registers 5

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", callback package="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exception="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaSessionRecord"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final next(Ljava/lang/String;)V
    .registers 4

    .line 1204
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->next(Ljava/lang/String;II)V

    return-void
.end method

.method public onGlobalPrioritySessionActiveChanged(Z)V
    .registers 4

    .line 610
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaSessionRecord;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final pause(Ljava/lang/String;)V
    .registers 4

    .line 1196
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->pause(Ljava/lang/String;II)V

    return-void
.end method

.method public final performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V
    .registers 9

    .line 971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 972
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 974
    :try_start_17
    invoke-interface {p2, v2}, Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;->performOn(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catch Ljava/util/NoSuchElementException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_b

    :catch_1b
    move-exception v3

    .line 976
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while executing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_b

    .line 981
    :cond_34
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 982
    :try_start_37
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 983
    monitor-exit p1

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit p1
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public final play(Ljava/lang/String;)V
    .registers 4

    .line 1173
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->play(Ljava/lang/String;II)V

    return-void
.end method

.method public final playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1177
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 1178
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1177
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1182
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 1183
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1182
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 10

    .line 1187
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 1188
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1187
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public final postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V
    .registers 21

    move/from16 v0, p7

    .line 751
    sget-boolean v2, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v2, :cond_37

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjusting local volume, stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dir="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", asSystemService="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", useSuggested="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p8

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MediaSessionRecord"

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_37
    move/from16 v5, p8

    :goto_39
    if-eqz v0, :cond_4b

    .line 763
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/16 v6, 0x3e8

    move-object v7, v0

    move v9, v2

    move v8, v6

    goto :goto_50

    :cond_4b
    move-object v7, p4

    move/from16 v9, p5

    move/from16 v8, p6

    .line 771
    :goto_50
    iget-object v10, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v6, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/media/MediaSessionRecord;IIIZILjava/lang/String;II)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final prepare(Ljava/lang/String;)V
    .registers 4

    .line 1154
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepare(Ljava/lang/String;II)V

    return-void
.end method

.method public final prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1158
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 1159
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1158
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1163
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 1164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1163
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 10

    .line 1168
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 1169
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1168
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public final previous(Ljava/lang/String;)V
    .registers 4

    .line 1208
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->previous(Ljava/lang/String;II)V

    return-void
.end method

.method public final pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 935
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 936
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_b

    .line 937
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_18

    .line 939
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9

    .line 940
    const-string/jumbo v0, "pushEvent"

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    return-void

    .line 939
    :goto_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_9

    throw p0
.end method

.method public final pushExtrasUpdate()V
    .registers 4

    .line 912
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 913
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_b

    .line 914
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_1a

    .line 916
    :cond_b
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    .line 917
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_9

    .line 918
    const-string/jumbo v0, "pushExtrasUpdate"

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda14;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    return-void

    .line 917
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_9

    throw p0
.end method

.method public final pushMetadataUpdate()V
    .registers 4

    .line 866
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_b

    .line 868
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_1a

    .line 870
    :cond_b
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 871
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_9

    .line 872
    const-string/jumbo v0, "pushMetadataUpdate"

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda13;-><init>(Landroid/media/MediaMetadata;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    return-void

    .line 871
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_9

    throw p0
.end method

.method public final pushPlaybackStateUpdate()V
    .registers 4

    .line 853
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_b

    .line 855
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_1a

    .line 857
    :cond_b
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 858
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_9

    .line 859
    const-string/jumbo v0, "pushPlaybackStateUpdate"

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda10;-><init>(Landroid/media/session/PlaybackState;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    return-void

    .line 858
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_9

    throw p0
.end method

.method public final pushQueueTitleUpdate()V
    .registers 4

    .line 900
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 901
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_b

    .line 902
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_1a

    .line 904
    :cond_b
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    .line 905
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_9

    .line 906
    const-string/jumbo v0, "pushQueueTitleUpdate"

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda12;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    return-void

    .line 905
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_9

    throw p0
.end method

.method public final pushQueueUpdate()V
    .registers 4

    .line 878
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 879
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_b

    .line 880
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_25

    .line 882
    :cond_b
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_18

    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 883
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_9

    .line 884
    const-string/jumbo v0, "pushQueueUpdate"

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda15;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    return-void

    .line 883
    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_9

    throw p0
.end method

.method public final pushSessionDestroyed()V
    .registers 3

    .line 944
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 947
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v1, :cond_b

    .line 948
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_2a

    .line 950
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9

    .line 951
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/media/MediaSessionService;->onSessionUserEngagementStateChange(Lcom/android/server/media/MediaSessionRecordImpl;Z)V

    .line 953
    const-string/jumbo v0, "pushSessionDestroyed"

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    .line 960
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 961
    :try_start_20
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 962
    monitor-exit v1

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw p0

    .line 950
    :goto_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_9

    throw p0
.end method

.method public final pushVolumeUpdate()V
    .registers 4

    .line 924
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_b

    .line 926
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_1c

    .line 928
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    .line 929
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_9

    .line 930
    const-string/jumbo v0, "pushVolumeUpdate"

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;-><init>(Landroid/media/session/MediaController$PlaybackInfo;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    return-void

    .line 929
    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_9

    throw p0
.end method

.method public final rate(Ljava/lang/String;Landroid/media/Rating;)V
    .registers 5

    .line 1224
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rate(Ljava/lang/String;IILandroid/media/Rating;)V

    return-void
.end method

.method public final registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 8

    .line 1062
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1063
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result v1

    if-gez v1, :cond_57

    .line 1064
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p2}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)V

    invoke-direct {v1, p2, p1, v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;-><init>(Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/IBinder$DeathRecipient;)V

    .line 1067
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    sget-boolean v2, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v2, :cond_3e

    .line 1069
    const-string v2, "MediaSessionRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registering controller callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from controller"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3c

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_59

    .line 1080
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmDeathMonitor(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4a} :catch_4b
    .catchall {:try_start_3e .. :try_end_4a} :catchall_3c

    goto :goto_57

    :catch_4b
    move-exception p1

    .line 1082
    :try_start_4c
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionRecord;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    .line 1083
    const-string p0, "MediaSessionRecord"

    const-string/jumbo p2, "registerCallback failed to linkToDeath"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    :cond_57
    :goto_57
    monitor-exit v0

    return-void

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_3c

    throw p0
.end method

.method public final resetQueue()V
    .registers 3

    .line 1483
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1484
    :try_start_4
    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    .line 1485
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_e

    .line 1486
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_e
    move-exception p0

    .line 1485
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final rewind(Ljava/lang/String;)V
    .registers 4

    .line 1216
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rewind(Ljava/lang/String;II)V

    return-void
.end method

.method public final sanitizeMediaMetadata(Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .registers 18

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1418
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1419
    sget-object v3, Lcom/android/server/media/MediaSessionRecord;->ART_URIS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_10
    if-ge v6, v4, :cond_55

    aget-object v7, v3, v6

    .line 1420
    invoke-virtual {v0, v7}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1421
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_21

    :goto_1e
    move-object/from16 v9, p0

    goto :goto_52

    .line 1424
    :cond_21
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1425
    const-string v9, "content"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    goto :goto_1e

    :cond_32
    move-object/from16 v9, p0

    .line 1429
    :try_start_34
    iget-object v10, v9, Lcom/android/server/media/MediaSessionRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1430
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v11

    .line 1431
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1432
    invoke-static {v8}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v13

    .line 1434
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v14

    invoke-static {v8, v14}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v15

    const/4 v14, 0x1

    .line 1429
    invoke-interface/range {v10 .. v15}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_4e} :catch_4f

    goto :goto_52

    .line 1436
    :catch_4f
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 1442
    :cond_55
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5c

    return-object v0

    .line 1446
    :cond_5c
    new-instance v3, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v3, v0}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    .line 1447
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_65
    if-ge v5, v0, :cond_73

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Ljava/lang/String;

    .line 1448
    invoke-virtual {v3, v4, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    goto :goto_65

    .line 1450
    :cond_73
    invoke-virtual {v3}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    .line 1454
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->size()I

    return-object v0
.end method

.method public final seekTo(Ljava/lang/String;J)V
    .registers 10

    .line 1220
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->seekTo(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public final sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 12

    .line 1052
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 1053
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1052
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public final sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1233
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 1234
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1233
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1277
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    if-nez p2, :cond_6

    const/4 p2, 0x0

    goto :goto_c

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p2, v0

    :goto_c
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .registers 8

    .line 644
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public final sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z
    .registers 9

    .line 1057
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 1058
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    .line 1057
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final setActive(Z)V
    .registers 6

    .line 1287
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1288
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x4

    if-eqz p1, :cond_17

    .line 1290
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 1291
    invoke-virtual {v3, v2, v0, v1}, Landroid/app/ActivityManagerInternal;->logFgsApiBegin(III)V

    goto :goto_22

    .line 1296
    :cond_17
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 1297
    invoke-virtual {v3, v2, v0, v1}, Landroid/app/ActivityManagerInternal;->logFgsApiEnd(III)V

    .line 1302
    :goto_22
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1303
    :try_start_25
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 1304
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_42

    .line 1305
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1307
    :try_start_2c
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {p1, p0, v2}, Lcom/android/server/media/MediaSessionService;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Landroid/media/session/PlaybackState;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3d

    .line 1309
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1311
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_3d
    move-exception p0

    .line 1309
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1310
    throw p0

    :catchall_42
    move-exception p0

    .line 1304
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final setCurrentVolume(I)V
    .registers 2

    .line 1517
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 1518
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .registers 4

    .line 1506
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    .line 1507
    :cond_7
    :try_start_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v1

    :goto_d
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    .line 1508
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_17

    .line 1509
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_17
    move-exception p0

    .line 1508
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final setFlags(I)V
    .registers 6

    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_12

    .line 1316
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1318
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/media/MediaSessionService;->enforcePhoneStatePermission(II)V

    :cond_12
    int-to-long v1, p1

    .line 1320
    iput-wide v1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    if-eqz v0, :cond_29

    .line 1322
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1324
    :try_start_1b
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_24

    .line 1326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1327
    throw p0

    .line 1329
    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void
.end method

.method public final setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2

    .line 1400
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public final setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V
    .registers 7

    .line 1361
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz p1, :cond_52

    .line 1365
    :try_start_a
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_52

    .line 1366
    :cond_17
    const-string v0, "238177121"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ""

    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x534e4554

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receiver does not belong to package name provided to MediaSessionRecord. Pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Receiver Pkg = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_50
    move-exception p0

    goto :goto_b2

    .line 1374
    :cond_52
    :goto_52
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_50

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5c

    .line 1395
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1379
    :cond_5c
    :try_start_5c
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-static {p1, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->componentNameExists(Landroid/content/ComponentName;Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_a1

    const-wide/32 v3, 0x1018a063

    .line 1380
    invoke-static {v3, v4, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_8a

    .line 1383
    const-string p0, "MediaSessionRecord"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMediaButtonBroadcastReceiver(): Ignoring invalid component name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_5c .. :try_end_86} :catchall_50

    .line 1395
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1381
    :cond_8a
    :try_start_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid component name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1392
    :cond_a1
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-static {v0, p1}, Lcom/android/server/media/MediaButtonReceiverHolder;->create(ILandroid/content/ComponentName;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 1393
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    :try_end_ae
    .catchall {:try_start_8a .. :try_end_ae} :catchall_50

    .line 1395
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_b2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1396
    throw p0
.end method

.method public final setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 6

    .line 1333
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1336
    :try_start_8
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_2e

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_12

    .line 1355
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_12
    if-eqz p1, :cond_38

    .line 1341
    :try_start_14
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-eqz v3, :cond_38

    const-wide/32 p0, 0x1041a3ac

    .line 1342
    invoke-static {p0, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_30

    .line 1346
    const-string p0, "MediaSessionRecord"

    const-string p1, "Ignoring invalid media button receiver targeting an activity."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_2e

    .line 1355
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_4b

    .line 1343
    :cond_30
    :try_start_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The media button receiver cannot be set to an activity."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1351
    :cond_38
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 1352
    invoke-static {v0, p1, v3}, Lcom/android/server/media/MediaButtonReceiverHolder;->create(ILandroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 1353
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_2e

    .line 1355
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1356
    throw p0
.end method

.method public final setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V
    .registers 6

    .line 1404
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1405
    :try_start_3
    iput-wide p2, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 1406
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    .line 1407
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->sanitizeMediaMetadata(Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 1408
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_15

    .line 1409
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_15
    move-exception p0

    .line 1408
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final setPlaybackSpeed(Ljava/lang/String;F)V
    .registers 5

    .line 1228
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 1229
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1228
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setPlaybackSpeed(Ljava/lang/String;IIF)V

    return-void
.end method

.method public final setPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 7

    .line 1460
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    :goto_b
    if-nez p1, :cond_f

    move v2, v1

    goto :goto_13

    .line 1461
    :cond_f
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    .line 1462
    :goto_13
    sget-object v3, Lcom/android/server/media/MediaSessionRecord;->ALWAYS_PRIORITY_STATES:Ljava/util/List;

    .line 1463
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    sget-object v3, Lcom/android/server/media/MediaSessionRecord;->TRANSITION_PRIORITY_STATES:Ljava/util/List;

    .line 1464
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1465
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_38

    :cond_36
    move v0, v1

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v0, 0x1

    .line 1466
    :goto_39
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->isGlobalPrioritySessionActive()Z

    move-result v2

    .line 1467
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1468
    :try_start_42
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 1469
    invoke-virtual {p0, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->updateUserEngagedStateIfNeededLocked(ZZ)V

    .line 1471
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_62

    .line 1472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1474
    :try_start_4c
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {p1, p0, v0, v3}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;ZLandroid/media/session/PlaybackState;)V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_5d

    .line 1477
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1479
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_5d
    move-exception p0

    .line 1477
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1478
    throw p0

    :catchall_62
    move-exception p0

    .line 1471
    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public final setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .registers 6

    .line 1523
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1524
    :try_start_3
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_b

    move v1, v3

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 1525
    :goto_c
    iput v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x0

    .line 1526
    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    if-eqz p1, :cond_18

    .line 1528
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    goto :goto_1f

    :catchall_16
    move-exception p0

    goto :goto_3c

    .line 1530
    :cond_18
    const-string p1, "MediaSessionRecord"

    const-string v2, "Received null audio attributes, using existing attributes"

    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_16

    if-eqz v1, :cond_3b

    .line 1534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1536
    :try_start_26
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_36

    .line 1538
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1540
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_36
    move-exception p0

    .line 1538
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1539
    throw p0

    :cond_3b
    return-void

    .line 1532
    :goto_3c
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_16

    throw p0
.end method

.method public final setPlaybackToRemote(IILjava/lang/String;)V
    .registers 7

    .line 1546
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1547
    :try_start_3
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const/4 v1, 0x2

    .line 1548
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 1549
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 1550
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 1551
    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    .line 1552
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_30

    if-eqz v2, :cond_2f

    .line 1554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 1556
    :try_start_1a
    iget-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p3, p0}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2a

    .line 1558
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1560
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_2a
    move-exception p0

    .line 1558
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1559
    throw p0

    :cond_2f
    return-void

    :catchall_30
    move-exception p0

    .line 1552
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1501
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    .line 1502
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void
.end method

.method public final setRatingType(I)V
    .registers 2

    .line 1513
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return-void
.end method

.method public setSessionPolicies(I)V
    .registers 3

    .line 686
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_3
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    .line 688
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final setStreamVolumeForUid(Ljava/lang/String;IIIII)V
    .registers 15

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v7, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_a} :catch_17

    move-object v4, p1

    move v6, p2

    move v5, p3

    move v3, p4

    move v1, p5

    move v2, p6

    .line 506
    :try_start_10
    invoke-virtual/range {v0 .. v7}, Landroid/media/AudioManager;->setStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_14
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    :goto_15
    move-object p0, v0

    goto :goto_1c

    :catch_17
    move-exception v0

    move v3, p4

    move v1, p5

    move v2, p6

    goto :goto_15

    .line 515
    :goto_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot set volume: stream="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", value="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", flags="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionRecord"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14

    .line 1143
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    .line 1147
    :try_start_11
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18

    .line 1149
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    throw p0
.end method

.method public final setVolumeTo(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 15

    .line 467
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 468
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v6

    .line 470
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    move v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;IIIII)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1c
    move-object v1, p0

    move v3, p3

    move v4, p4

    move v7, p5

    move v5, p6

    .line 475
    iget p0, v1, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 p2, 0x2

    const-string p3, "MediaSessionRecord"

    if-eq p0, p2, :cond_32

    .line 476
    sget-boolean p0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz p0, :cond_8f

    .line 477
    const-string p0, "Session does not support setting volume"

    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 480
    :cond_32
    iget p0, v1, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v7, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 481
    iget-object p4, v1, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {p4, p1, v3, v4, p0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(Ljava/lang/String;III)V

    .line 483
    iget p1, v1, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez p1, :cond_48

    iget p1, v1, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 484
    :cond_48
    iget p4, v1, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v1, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 485
    iget-object p0, v1, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object p2, v1, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 486
    iget-object p0, v1, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object p2, v1, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 p4, 0x3e8

    invoke-virtual {p0, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 487
    iget p0, v1, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq p1, p0, :cond_6b

    .line 488
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 491
    :cond_6b
    sget-boolean p0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz p0, :cond_8f

    .line 492
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Set optimistic volume to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " max is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_8f
    :goto_8f
    iget-object p0, v1, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p0, v5, v1}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method public final skipToQueueItem(Ljava/lang/String;J)V
    .registers 10

    .line 1192
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->skipToTrack(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public final stop(Ljava/lang/String;)V
    .registers 4

    .line 1200
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->stop(Ljava/lang/String;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecordImpl;->getUniqueId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V
    .registers 7

    .line 1090
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_1f

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    .line 1094
    :try_start_a
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1095
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmDeathMonitor(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1e
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_1e} :catch_21
    .catchall {:try_start_a .. :try_end_1e} :catchall_1f

    goto :goto_29

    :catchall_1f
    move-exception p0

    goto :goto_4f

    :catch_21
    move-exception v2

    .line 1097
    :try_start_22
    const-string v3, "MediaSessionRecord"

    const-string v4, "error unlinking to binder death"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    :goto_29
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 1101
    :cond_2e
    sget-boolean p0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz p0, :cond_4d

    .line 1102
    const-string p0, "MediaSessionRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregistering callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_4d
    monitor-exit v0

    return-void

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_22 .. :try_end_50} :catchall_1f

    throw p0
.end method

.method public final updateUserEngagedStateIfNeededLocked(ZZ)V
    .registers 11

    .line 1595
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementState:I

    .line 1597
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->isActive()Z

    move-result v1

    if-eqz v1, :cond_12

    move p1, v4

    goto :goto_1e

    :cond_12
    if-eqz v0, :cond_1d

    if-eq v0, v2, :cond_1d

    if-ne v0, v5, :cond_1b

    if-nez p1, :cond_1b

    goto :goto_1d

    :cond_1b
    move p1, v3

    goto :goto_1e

    :cond_1d
    :goto_1d
    move p1, v5

    :goto_1e
    if-ne v0, p1, :cond_21

    goto :goto_47

    .line 1610
    :cond_21
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementState:I

    if-ne p1, v5, :cond_33

    if-nez p2, :cond_33

    .line 1612
    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementTimeoutExpirationRunnable:Ljava/lang/Runnable;

    .line 1614
    invoke-static {}, Lcom/android/server/media/MediaSessionDeviceConfig;->getMediaSessionTempUserEngagedDurationMs()J

    move-result-wide v6

    .line 1612
    invoke-virtual {p2, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3a

    .line 1616
    :cond_33
    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementTimeoutExpirationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_3a
    if-eq v0, v3, :cond_3e

    move p2, v5

    goto :goto_3f

    :cond_3e
    move p2, v4

    :goto_3f
    if-eq p1, v3, :cond_42

    move v4, v5

    :cond_42
    if-eq v0, v2, :cond_48

    if-eq p2, v4, :cond_47

    goto :goto_48

    :cond_47
    :goto_47
    return-void

    .line 1622
    :cond_48
    :goto_48
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance p2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, v4}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/media/MediaSessionRecord;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
