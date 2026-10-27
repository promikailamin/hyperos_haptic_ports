.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/media/MediaSessionRecordImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field private static final ALWAYS_PRIORITY_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ART_URIS:[Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionRecord"

.field private static final TRANSITION_PRIORITY_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field private final mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVolume:I

.field private mDestroyed:Z

.field private mDuration:J

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:J

.field private final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field private mIsActive:Z

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private mMaxVolume:I

.field private mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mMetadataDescription:Ljava/lang/String;

.field private mOptimisticVolume:I

.field private final mOwnerPid:I

.field private final mOwnerUid:I

.field private final mPackageName:Ljava/lang/String;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mPolicies:I

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field private final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field private final mSessionInfo:Landroid/os/Bundle;

.field private final mSessionToken:Landroid/media/session/MediaSession$Token;

.field private final mTag:Ljava/lang/String;

.field private final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private final mUserId:I

.field private final mVolumeAdjustmentForRemoteGroupSessions:Z

.field private mVolumeControlId:Ljava/lang/String;

.field private mVolumeControlType:I

.field private mVolumeType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmController(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControllerCallbackHolders(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentVolume(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDestroyed(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtras(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlags(Lcom/android/server/media/MediaSessionRecord;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLaunchIntent(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMetadata(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOptimisticVolume(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOwnerPid(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOwnerUid(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlaybackState(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicies(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueue(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueueTitle(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRatingType(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionInfo(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUgmInternal(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/uri/UriGrantsManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolumeType(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAudioAttrs(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentVolume(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDuration(Lcom/android/server/media/MediaSessionRecord;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmExtras(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFlags(Lcom/android/server/media/MediaSessionRecord;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsActive(Lcom/android/server/media/MediaSessionRecord;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLaunchIntent(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxVolume(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaButtonReceiverHolder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMetadata(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMetadataDescription(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOptimisticVolume(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPlaybackState(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQueue(Lcom/android/server/media/MediaSessionRecord;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQueueTitle(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRatingType(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVolumeControlId(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVolumeControlType(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVolumeType(Lcom/android/server/media/MediaSessionRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetControllerHolderIndexForCb(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetStateWithUpdatedPosition(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVolumeAttributes(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/MediaController$PlaybackInfo;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpushEvent(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpushExtrasUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpushMetadataUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpushPlaybackStateUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpushQueueTitleUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpushQueueUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpushSessionDestroyed(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpushVolumeUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVolumeTo(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetALWAYS_PRIORITY_STATES()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/server/media/MediaSessionRecord;->ALWAYS_PRIORITY_STATES:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetART_URIS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/media/MediaSessionRecord;->ART_URIS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTRANSITION_PRIORITY_STATES()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/server/media/MediaSessionRecord;->TRANSITION_PRIORITY_STATES:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcomponentNameExists(Landroid/content/ComponentName;Landroid/content/Context;I)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->componentNameExists(Landroid/content/ComponentName;Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 89
    const-string v0, "android.media.metadata.ALBUM_ART_URI"

    const-string v1, "android.media.metadata.ART_URI"

    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->ART_URIS:[Ljava/lang/String;

    .line 93
    const-string v0, "MediaSessionRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    .line 105
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Integer;

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 107
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 108
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v2, v5

    .line 109
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 105
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->ALWAYS_PRIORITY_STATES:Ljava/util/List;

    .line 114
    new-array v0, v1, [Ljava/lang/Integer;

    .line 115
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 116
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 114
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->TRANSITION_PRIORITY_STATES:Ljava/util/List;

    .line 119
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 120
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 119
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;I)V
    .registers 15
    .param p1, "ownerPid"    # I
    .param p2, "ownerUid"    # I
    .param p3, "userId"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "sessionInfo"    # Landroid/os/Bundle;
    .param p8, "service"    # Lcom/android/server/media/MediaSessionService;
    .param p9, "handlerLooper"    # Landroid/os/Looper;
    .param p10, "policies"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 173
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 175
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 176
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 180
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 181
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 183
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 896
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$3;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$3;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    .line 192
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    .line 193
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 194
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 195
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 196
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 197
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    .line 198
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 199
    new-instance v2, Landroid/media/session/MediaSession$Token;

    invoke-direct {v2, p2, v1}, Landroid/media/session/MediaSession$Token;-><init>(ILandroid/media/session/ISessionController;)V

    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 200
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$SessionStub-IA;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 201
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {v1, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 202
    iput-object p8, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 203
    invoke-virtual {p8}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 204
    new-instance v3, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-direct {v3, p0, p9}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 205
    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 206
    sget-object v3, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    iput-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 207
    iput p10, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    .line 208
    const-class v3, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 209
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeAdjustmentForRemoteGroupSessions:Z

    .line 213
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->-$$Nest$fgetmCb(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 214
    return-void
.end method

.method private static componentNameExists(Landroid/content/ComponentName;Landroid/content/Context;I)Z
    .registers 8
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 910
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 912
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 914
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 915
    .local v1, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 917
    .local v2, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 918
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 920
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .registers 5
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .line 868
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 869
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_28

    .line 870
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 871
    return v1

    .line 869
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 874
    .end local v1    # "i":I
    :cond_28
    const/4 v1, -0x1

    return v1
.end method

.method private getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .registers 19

    .line 835
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 836
    :try_start_5
    iget-boolean v0, v1, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v0, :cond_c

    .line 837
    const/4 v0, 0x0

    monitor-exit v2

    return-object v0

    .line 839
    :cond_c
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 840
    .local v0, "state":Landroid/media/session/PlaybackState;
    iget-wide v3, v1, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 841
    .local v3, "duration":J
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_79

    .line 842
    const/4 v2, 0x0

    .line 843
    .local v2, "result":Landroid/media/session/PlaybackState;
    if-eqz v0, :cond_73

    .line 844
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_29

    .line 845
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_29

    .line 846
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_73

    .line 847
    :cond_29
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v5

    .line 848
    .local v5, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 849
    .local v14, "currentTime":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_73

    .line 850
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v9

    sub-long v10, v14, v5

    long-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-long v9, v9

    .line 851
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 852
    .local v9, "position":J
    cmp-long v11, v3, v7

    if-ltz v11, :cond_51

    cmp-long v11, v9, v3

    if-lez v11, :cond_51

    .line 853
    move-wide v9, v3

    move-wide/from16 v16, v9

    goto :goto_5c

    .line 854
    :cond_51
    cmp-long v7, v9, v7

    if-gez v7, :cond_5a

    .line 855
    const-wide/16 v9, 0x0

    move-wide/from16 v16, v9

    goto :goto_5c

    .line 854
    :cond_5a
    move-wide/from16 v16, v9

    .line 857
    .end local v9    # "position":J
    .local v16, "position":J
    :goto_5c
    new-instance v7, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v7, v0}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 858
    .local v7, "builder":Landroid/media/session/PlaybackState$Builder;
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v8

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v11

    move-wide/from16 v9, v16

    move-wide v12, v14

    invoke-virtual/range {v7 .. v13}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 860
    invoke-virtual {v7}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 864
    .end local v5    # "updateTime":J
    .end local v7    # "builder":Landroid/media/session/PlaybackState$Builder;
    .end local v14    # "currentTime":J
    .end local v16    # "position":J
    :cond_73
    if-nez v2, :cond_77

    move-object v5, v0

    goto :goto_78

    :cond_77
    move-object v5, v2

    :goto_78
    return-object v5

    .line 841
    .end local v0    # "state":Landroid/media/session/PlaybackState;
    .end local v2    # "result":Landroid/media/session/PlaybackState;
    .end local v3    # "duration":J
    :catchall_79
    move-exception v0

    :try_start_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v0
.end method

.method private getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .registers 12

    .line 880
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_3
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x2

    if-ne v2, v1, :cond_23

    .line 882
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    goto :goto_10

    :cond_e
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    :goto_10
    move v6, v1

    .line 883
    .local v6, "current":I
    new-instance v1, Landroid/media/session/MediaController$PlaybackInfo;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    .line 886
    .end local v6    # "current":I
    :cond_23
    nop

    .line 887
    .local v2, "volumeType":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 888
    .local v6, "attributes":Landroid/media/AudioAttributes;
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_42

    .line 889
    invoke-static {v6}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 890
    .local v0, "stream":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    .line 891
    .local v8, "max":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 892
    .local v9, "current":I
    new-instance v10, Landroid/media/session/MediaController$PlaybackInfo;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v1, v10

    move v4, v8

    move v5, v9

    invoke-direct/range {v1 .. v7}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    return-object v10

    .line 888
    .end local v0    # "stream":I
    .end local v2    # "volumeType":I
    .end local v6    # "attributes":Landroid/media/AudioAttributes;
    .end local v8    # "max":I
    .end local v9    # "current":I
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private static getVolumeStream(Landroid/media/AudioAttributes;)I
    .registers 3
    .param p0, "attr"    # Landroid/media/AudioAttributes;

    .line 123
    if-nez p0, :cond_9

    .line 124
    sget-object v0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v0

    return v0

    .line 126
    :cond_9
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v0

    .line 127
    .local v0, "stream":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_18

    .line 128
    sget-object v1, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v1

    return v1

    .line 130
    :cond_18
    return v0
.end method

.method private logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "holder"    # Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void
.end method

.method private postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V
    .registers 28
    .param p1, "stream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingOpPackageName"    # Ljava/lang/String;
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "asSystemService"    # Z
    .param p8, "useSuggested"    # Z
    .param p9, "previousFlagPlaySound"    # I

    .line 559
    move-object/from16 v10, p0

    move/from16 v11, p7

    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v0, :cond_45

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjusting local volume, stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", asSystemService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useSuggested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p8

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 559
    :cond_45
    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p8

    .line 567
    :goto_4b
    if-eqz v11, :cond_5f

    .line 568
    iget-object v0, v10, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "opPackageName":Ljava/lang/String;
    const/16 v1, 0x3e8

    .line 570
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    move-object v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    .local v2, "pid":I
    goto :goto_6a

    .line 572
    .end local v0    # "opPackageName":Ljava/lang/String;
    .end local v1    # "uid":I
    .end local v2    # "pid":I
    :cond_5f
    move-object/from16 v0, p4

    .line 573
    .restart local v0    # "opPackageName":Ljava/lang/String;
    move/from16 v1, p6

    .line 574
    .restart local v1    # "uid":I
    move/from16 v2, p5

    move-object v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    .line 576
    .end local v0    # "opPackageName":Ljava/lang/String;
    .end local v1    # "uid":I
    .local v15, "opPackageName":Ljava/lang/String;
    .local v16, "uid":I
    .local v17, "pid":I
    :goto_6a
    iget-object v9, v10, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v8, Lcom/android/server/media/MediaSessionRecord$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p8

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v15

    move/from16 v7, v16

    move-object v10, v8

    move/from16 v8, v17

    move-object v11, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord$2;-><init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;III)V

    invoke-virtual {v11, v10}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 604
    return-void
.end method

.method private pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 784
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 786
    monitor-exit v0

    return-void

    .line 788
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_48

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 792
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1d
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_1d .. :try_end_24} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_3e

    .line 799
    :catch_25
    move-exception v3

    .line 800
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "unexpected exception in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_3f

    .line 793
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_2d
    move-exception v3

    .line 794
    .local v3, "e":Landroid/os/DeadObjectException;
    if-nez v0, :cond_36

    .line 795
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 797
    :cond_36
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 798
    const-string v4, "Removing dead callback in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 801
    .end local v3    # "e":Landroid/os/DeadObjectException;
    :goto_3e
    nop

    .line 802
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_3f
    goto :goto_11

    .line 803
    :cond_40
    if-eqz v0, :cond_47

    .line 804
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 806
    :cond_47
    return-void

    .line 788
    .end local v0    # "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private pushExtrasUpdate()V
    .registers 7

    .line 731
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 733
    monitor-exit v0

    return-void

    .line 735
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    .line 736
    .local v1, "extras":Landroid/os/Bundle;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_4a

    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 740
    .local v3, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1f
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_26
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_26} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_40

    .line 747
    :catch_27
    move-exception v4

    .line 748
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "unexpected exception in pushExtrasUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_41

    .line 741
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2f
    move-exception v4

    .line 742
    .local v4, "e":Landroid/os/DeadObjectException;
    if-nez v0, :cond_38

    .line 743
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 745
    :cond_38
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 746
    const-string v5, "Removing dead callback in pushExtrasUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 749
    .end local v4    # "e":Landroid/os/DeadObjectException;
    :goto_40
    nop

    .line 750
    .end local v3    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_41
    goto :goto_13

    .line 751
    :cond_42
    if-eqz v0, :cond_49

    .line 752
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 754
    :cond_49
    return-void

    .line 736
    .end local v0    # "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    .end local v1    # "extras":Landroid/os/Bundle;
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private pushMetadataUpdate()V
    .registers 7

    .line 642
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 644
    monitor-exit v0

    return-void

    .line 646
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 647
    .local v1, "metadata":Landroid/media/MediaMetadata;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_4a

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 651
    .local v3, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1f
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_26
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_26} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_40

    .line 658
    :catch_27
    move-exception v4

    .line 659
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "unexpected exception in pushMetadataUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_41

    .line 652
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2f
    move-exception v4

    .line 653
    .local v4, "e":Landroid/os/DeadObjectException;
    if-nez v0, :cond_38

    .line 654
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 656
    :cond_38
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 657
    const-string v5, "Removing dead callback in pushMetadataUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 660
    .end local v4    # "e":Landroid/os/DeadObjectException;
    :goto_40
    nop

    .line 661
    .end local v3    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_41
    goto :goto_13

    .line 662
    :cond_42
    if-eqz v0, :cond_49

    .line 663
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 665
    :cond_49
    return-void

    .line 647
    .end local v0    # "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    .end local v1    # "metadata":Landroid/media/MediaMetadata;
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private pushPlaybackStateUpdate()V
    .registers 7

    .line 614
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 616
    monitor-exit v0

    return-void

    .line 618
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 619
    .local v1, "playbackState":Landroid/media/session/PlaybackState;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_4a

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 623
    .local v3, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1f
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_26
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_26} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_40

    .line 631
    :catch_27
    move-exception v4

    .line 632
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "unexpected exception in pushPlaybackStateUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_41

    .line 624
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2f
    move-exception v4

    .line 625
    .local v4, "e":Landroid/os/DeadObjectException;
    if-nez v0, :cond_38

    .line 626
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 628
    :cond_38
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v5, "Removing dead callback in pushPlaybackStateUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 633
    .end local v4    # "e":Landroid/os/DeadObjectException;
    :goto_40
    nop

    .line 634
    .end local v3    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_41
    goto :goto_13

    .line 635
    :cond_42
    if-eqz v0, :cond_49

    .line 636
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 638
    :cond_49
    return-void

    .line 619
    .end local v0    # "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    .end local v1    # "playbackState":Landroid/media/session/PlaybackState;
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private pushQueueTitleUpdate()V
    .registers 7

    .line 704
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 706
    monitor-exit v0

    return-void

    .line 708
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    .line 709
    .local v1, "queueTitle":Ljava/lang/CharSequence;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_4a

    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 713
    .local v3, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1f
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_26
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_26} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_40

    .line 720
    :catch_27
    move-exception v4

    .line 721
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "unexpected exception in pushQueueTitleUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_41

    .line 714
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2f
    move-exception v4

    .line 715
    .local v4, "e":Landroid/os/DeadObjectException;
    if-nez v0, :cond_38

    .line 716
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 718
    :cond_38
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 719
    const-string v5, "Removing dead callback in pushQueueTitleUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 722
    .end local v4    # "e":Landroid/os/DeadObjectException;
    :goto_40
    nop

    .line 723
    .end local v3    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_41
    goto :goto_13

    .line 724
    :cond_42
    if-eqz v0, :cond_49

    .line 725
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 727
    :cond_49
    return-void

    .line 709
    .end local v0    # "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    .end local v1    # "queueTitle":Ljava/lang/CharSequence;
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private pushQueueUpdate()V
    .registers 8

    .line 669
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 671
    monitor-exit v0

    return-void

    .line 673
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_16

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 674
    .local v1, "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_62

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 677
    .local v3, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    const/4 v4, 0x0

    .line 678
    .local v4, "parcelableQueue":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/session/MediaSession$QueueItem;>;"
    if-eqz v1, :cond_37

    .line 679
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    move-object v4, v5

    .line 682
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    .line 686
    :cond_37
    :try_start_37
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_3e
    .catch Landroid/os/DeadObjectException; {:try_start_37 .. :try_end_3e} :catch_47
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f

    goto :goto_58

    .line 693
    :catch_3f
    move-exception v5

    .line 694
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "unexpected exception in pushQueueUpdate"

    invoke-direct {p0, v6, v3, v5}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_59

    .line 687
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_47
    move-exception v5

    .line 688
    .local v5, "e":Landroid/os/DeadObjectException;
    if-nez v0, :cond_50

    .line 689
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 691
    :cond_50
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 692
    const-string v6, "Removing dead callback in pushQueueUpdate"

    invoke-direct {p0, v6, v3, v5}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 695
    .end local v5    # "e":Landroid/os/DeadObjectException;
    :goto_58
    nop

    .line 696
    .end local v3    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .end local v4    # "parcelableQueue":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/session/MediaSession$QueueItem;>;"
    :goto_59
    goto :goto_1e

    .line 697
    :cond_5a
    if-eqz v0, :cond_61

    .line 698
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 700
    :cond_61
    return-void

    .line 674
    .end local v0    # "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    .end local v1    # "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1
.end method

.method private pushSessionDestroyed()V
    .registers 6

    .line 809
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v1, :cond_9

    .line 813
    monitor-exit v0

    return-void

    .line 815
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_51

    .line 816
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 818
    .local v1, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1c
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmDeathMonitor(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 819
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_33
    .catch Ljava/util/NoSuchElementException; {:try_start_1c .. :try_end_33} :catch_43
    .catch Landroid/os/DeadObjectException; {:try_start_1c .. :try_end_33} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_33} :catch_34

    goto :goto_49

    .line 824
    :catch_34
    move-exception v2

    .line 825
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "unexpected exception in pushSessionDestroyed"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_4a

    .line 822
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_3c
    move-exception v2

    .line 823
    .local v2, "e":Landroid/os/DeadObjectException;
    const-string v3, "Removing dead callback in pushSessionDestroyed"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_49

    .line 820
    :catch_43
    move-exception v2

    .line 821
    .local v2, "e":Ljava/util/NoSuchElementException;
    const-string v3, "error unlinking to binder death"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 826
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :goto_49
    nop

    .line 827
    .end local v1    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_4a
    goto :goto_10

    .line 829
    :cond_4b
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 830
    return-void

    .line 815
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1
.end method

.method private pushVolumeUpdate()V
    .registers 7

    .line 758
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 760
    monitor-exit v0

    return-void

    .line 762
    :cond_9
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    .line 763
    .local v1, "info":Landroid/media/session/MediaController$PlaybackInfo;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_4c

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 767
    .local v3, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_21
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_21 .. :try_end_28} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_42

    .line 774
    :catch_29
    move-exception v4

    .line 775
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "unexpected exception in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_43

    .line 768
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_31
    move-exception v4

    .line 769
    .local v4, "e":Landroid/os/DeadObjectException;
    if-nez v0, :cond_3a

    .line 770
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 772
    :cond_3a
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 773
    const-string v5, "Removing dead callback in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 776
    .end local v4    # "e":Landroid/os/DeadObjectException;
    :goto_42
    nop

    .line 777
    .end local v3    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_43
    goto :goto_15

    .line 778
    :cond_44
    if-eqz v0, :cond_4b

    .line 779
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 781
    :cond_4b
    return-void

    .line 763
    .end local v0    # "deadCallbackHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;>;"
    .end local v1    # "info":Landroid/media/session/MediaController$PlaybackInfo;
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private setVolumeTo(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "value"    # I
    .param p6, "flags"    # I

    .line 354
    move-object v8, p0

    iget v0, v8, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 355
    iget-object v0, v8, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v9

    .line 356
    .local v9, "stream":I
    move/from16 v3, p5

    .line 357
    .local v3, "volumeValue":I
    iget-object v10, v8, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v11, Lcom/android/server/media/MediaSessionRecord$1;

    move-object v0, v11

    move-object v1, p0

    move v2, v9

    move/from16 v4, p6

    move-object v5, p2

    move/from16 v6, p4

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;IIILjava/lang/String;II)V

    invoke-virtual {v10, v11}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 370
    .end local v3    # "volumeValue":I
    .end local v9    # "stream":I
    move-object v4, p1

    move v5, p3

    move/from16 v0, p5

    move/from16 v2, p6

    goto/16 :goto_ae

    .line 371
    :cond_29
    iget v0, v8, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v1, 0x2

    const-string v2, "MediaSessionRecord"

    if-eq v0, v1, :cond_40

    .line 372
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v0, :cond_39

    .line 373
    const-string v0, "Session does not support setting volume"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_39
    move-object v4, p1

    move v5, p3

    move/from16 v6, p4

    move/from16 v0, p5

    goto :goto_a7

    .line 376
    :cond_40
    iget v0, v8, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    move/from16 v1, p5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 377
    .end local p5    # "value":I
    .local v0, "value":I
    iget-object v1, v8, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v4, p1

    move v5, p3

    move/from16 v6, p4

    invoke-virtual {v1, p1, p3, v6, v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(Ljava/lang/String;III)V

    .line 379
    iget v1, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v1, :cond_5c

    iget v1, v8, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 380
    .local v1, "volumeBefore":I
    :cond_5c
    iget v7, v8, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 381
    iget-object v3, v8, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v7, v8, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v7}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    iget-object v3, v8, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v7, v8, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v3, v7, v9, v10}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    iget v3, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v1, v3, :cond_7f

    .line 384
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 387
    :cond_7f
    sget-boolean v3, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v3, :cond_a7

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set optimistic volume to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " max is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v8, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v1    # "volumeBefore":I
    :cond_a7
    :goto_a7
    iget-object v1, v8, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    move/from16 v2, p6

    invoke-virtual {v1, v2, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 395
    :goto_ae
    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "asSystemService"    # Z
    .param p6, "direction"    # I
    .param p7, "flags"    # I
    .param p8, "useSuggested"    # Z

    .line 305
    move-object v10, p0

    move/from16 v11, p6

    and-int/lit8 v12, p7, 0x4

    .line 306
    .local v12, "previousFlagPlaySound":I
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isSystemPriority()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_16

    :cond_13
    move/from16 v13, p7

    goto :goto_19

    .line 307
    :cond_16
    :goto_16
    and-int/lit8 v1, p7, -0x5

    move v13, v1

    .line 309
    .end local p7    # "flags":I
    .local v13, "flags":I
    :goto_19
    iget v1, v10, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    if-ne v1, v0, :cond_3c

    .line 311
    iget-object v0, v10, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v14

    .line 312
    .local v14, "stream":I
    move-object v0, p0

    move v1, v14

    move/from16 v2, p6

    move v3, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p8

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V

    .line 314
    .end local v14    # "stream":I
    move-object/from16 v8, p1

    move/from16 v9, p5

    goto/16 :goto_112

    .line 315
    :cond_3c
    iget v0, v10, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const-string v6, "MediaSessionRecord"

    if-nez v0, :cond_57

    .line 316
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v0, :cond_51

    .line 317
    const-string v0, "Session does not support volume adjustment"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, p1

    move/from16 v9, p5

    goto/16 :goto_10d

    .line 316
    :cond_51
    move-object/from16 v8, p1

    move/from16 v9, p5

    goto/16 :goto_10d

    .line 319
    :cond_57
    const/16 v0, 0x65

    if-eq v11, v0, :cond_104

    const/16 v0, -0x64

    if-eq v11, v0, :cond_104

    const/16 v0, 0x64

    if-ne v11, v0, :cond_69

    move-object/from16 v8, p1

    move/from16 v9, p5

    goto/16 :goto_108

    .line 324
    :cond_69
    sget-boolean v7, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v7, :cond_9c

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjusting volume, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", asSystemService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 324
    :cond_9c
    move-object/from16 v8, p1

    move/from16 v9, p5

    .line 328
    :goto_a0
    iget-object v0, v10, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(Ljava/lang/String;IIZI)V

    .line 330
    iget v0, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_b5

    iget v0, v10, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 331
    .local v0, "volumeBefore":I
    :cond_b5
    add-int v1, v0, v11

    iput v1, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 332
    const/4 v2, 0x0

    iget v3, v10, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 333
    iget-object v1, v10, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, v10, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    iget-object v1, v10, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, v10, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    iget v1, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v0, v1, :cond_dd

    .line 336
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 339
    :cond_dd
    if-eqz v7, :cond_10d

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusted optimistic volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .line 319
    .end local v0    # "volumeBefore":I
    :cond_104
    move-object/from16 v8, p1

    move/from16 v9, p5

    .line 322
    :goto_108
    const-string v0, "Muting remote playback is not supported"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_10d
    :goto_10d
    iget-object v0, v10, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v13, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 350
    :goto_112
    return-void
.end method

.method public binderDied()V
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 439
    return-void
.end method

.method public canHandleVolumeKey()Z
    .registers 9

    .line 488
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackTypeLocal()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5f

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeAdjustmentForRemoteGroupSessions:Z

    if-eqz v0, :cond_c

    goto :goto_5f

    .line 491
    :cond_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object v0

    .line 492
    .local v0, "mRouter2Manager":Landroid/media/MediaRouter2Manager;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 493
    invoke-virtual {v0, v2}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 494
    .local v2, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    const/4 v3, 0x0

    .line 495
    .local v3, "foundNonSystemSession":Z
    const/4 v4, 0x0

    .line 496
    .local v4, "isGroup":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/RoutingSessionInfo;

    .line 497
    .local v6, "session":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v7

    if-nez v7, :cond_3d

    .line 498
    const/4 v3, 0x1

    .line 499
    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 500
    .local v7, "selectedRouteCount":I
    if-le v7, v1, :cond_3d

    .line 501
    const/4 v4, 0x1

    .line 502
    goto :goto_3e

    .line 505
    .end local v6    # "session":Landroid/media/RoutingSessionInfo;
    .end local v7    # "selectedRouteCount":I
    :cond_3d
    goto :goto_1e

    .line 506
    :cond_3e
    :goto_3e
    if-nez v3, :cond_5c

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No routing session for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "MediaSessionRecord"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v1, 0x0

    return v1

    .line 510
    :cond_5c
    xor-int/lit8 v1, v4, 0x1

    return v1

    .line 489
    .end local v0    # "mRouter2Manager":Landroid/media/MediaRouter2Manager;
    .end local v2    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    .end local v3    # "foundNonSystemSession":Z
    .end local v4    # "isGroup":Z
    :cond_5f
    :goto_5f
    return v1
.end method

.method public checkPlaybackActiveState(Z)Z
    .registers 4
    .param p1, "expected"    # Z

    .line 420
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 421
    return v1

    .line 423
    :cond_6
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->isActive()Z

    move-result v0

    if-ne v0, p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public close()V
    .registers 4

    .line 447
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 449
    monitor-exit v0

    return-void

    .line 451
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->-$$Nest$fgetmCb(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 452
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 454
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 455
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ownerPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ownerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "launchIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mediaButtonReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "rating type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "controllers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v2, :cond_149

    const/4 v2, 0x0

    goto :goto_14d

    :cond_149
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_14d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "audioAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "volumeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controlType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "metadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "queueTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 547
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez v2, :cond_1f4

    const/4 v2, 0x0

    goto :goto_1f8

    :cond_1f4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public getMediaButtonReceiver()Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object v0
.end method

.method public getSessionPolicies()I
    .registers 3

    .line 515
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_3
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    monitor-exit v0

    return v1

    .line 517
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 260
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .line 270
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 407
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isClosed()Z
    .registers 3

    .line 460
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 462
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isPlaybackTypeLocal()Z
    .registers 3

    .line 433
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isSystemPriority()Z
    .registers 5

    .line 281
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "ke"    # Landroid/view/KeyEvent;
    .param p6, "sequenceId"    # I
    .param p7, "cb"    # Landroid/os/ResultReceiver;

    .line 482
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public setSessionPolicies(I)V
    .registers 4
    .param p1, "policies"    # I

    .line 522
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_3
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    .line 524
    monitor-exit v0

    .line 525
    return-void

    .line 524
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
