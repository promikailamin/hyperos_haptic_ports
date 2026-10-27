.class public final Landroid/media/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteController$OnClientUpdateListener;,
        Landroid/media/RemoteController$MediaControllerCallback;,
        Landroid/media/RemoteController$EventHandler;,
        Landroid/media/RemoteController$TopTransportSessionListener;,
        Landroid/media/RemoteController$MetadataEditor;,
        Landroid/media/RemoteController$PlaybackInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o MAX_BITMAP_DIMENSION:I = 0x200

.field private static final greylist-max-o MSG_CLIENT_CHANGE:I = 0x0

.field private static final greylist-max-o MSG_NEW_MEDIA_METADATA:I = 0x2

.field private static final greylist-max-o MSG_NEW_PLAYBACK_STATE:I = 0x1

.field public static final whitelist POSITION_SYNCHRONIZATION_CHECK:I = 0x1

.field public static final whitelist POSITION_SYNCHRONIZATION_NONE:I = 0x0

.field private static final greylist-max-o SENDMSG_NOOP:I = 0x1

.field private static final greylist-max-o SENDMSG_QUEUE:I = 0x2

.field private static final greylist-max-o SENDMSG_REPLACE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RemoteController"

.field private static final greylist-max-o mInfoLock:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mArtworkHeight:I

.field private greylist-max-o mArtworkWidth:I

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-r mCurrentSession:Landroid/media/session/MediaController;

.field private greylist-max-o mEnabled:Z

.field private final greylist-max-o mEventHandler:Landroid/media/RemoteController$EventHandler;

.field private greylist-max-o mIsRegistered:Z

.field private greylist-max-o mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

.field private final greylist-max-o mMaxBitmapDimension:I

.field private greylist-max-o mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private greylist-max-o mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private greylist-max-o mSessionCb:Landroid/media/session/MediaController$Callback;

.field private greylist-max-o mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private greylist-max-o mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentSession(Landroid/media/RemoteController;)Landroid/media/session/MediaController;
    .registers 1

    iget-object p0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monClientChange(Landroid/media/RemoteController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onClientChange(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNewMediaMetadata(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewMediaMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNewPlaybackState(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateController(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/RemoteController;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmInfoLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V

    .line 95
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/media/RemoteController$MediaControllerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController-IA;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 79
    iput v0, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    .line 108
    if-eqz p1, :cond_75

    .line 111
    if-eqz p2, :cond_6d

    .line 114
    if-eqz p3, :cond_24

    .line 115
    new-instance v0, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    goto :goto_31

    .line 117
    :cond_24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    .line 118
    if-eqz p3, :cond_65

    .line 119
    new-instance v0, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    .line 124
    :goto_31
    iput-object p2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 125
    iput-object p1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    .line 126
    nop

    .line 127
    const-string p2, "media_session"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/session/MediaSessionManager;

    iput-object p2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 128
    new-instance p2, Landroid/media/RemoteController$TopTransportSessionListener;

    invoke-direct {p2, p0, v1}, Landroid/media/RemoteController$TopTransportSessionListener;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController-IA;)V

    iput-object p2, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 130
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 131
    const/16 p1, 0x200

    iput p1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    goto :goto_64

    .line 133
    :cond_52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 134
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    .line 136
    :goto_64
    return-void

    .line 121
    :cond_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Calling thread not associated with a looper"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid null OnClientUpdateListener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid null Context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o onClientChange(Z)V
    .registers 5

    .line 573
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_3
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 575
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 576
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 577
    if-eqz v1, :cond_e

    .line 578
    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    .line 580
    :cond_e
    return-void

    .line 576
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private greylist-max-o onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    .registers 8

    .line 640
    if-nez p1, :cond_3

    .line 642
    return-void

    .line 647
    :cond_3
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_6
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 649
    iget-object v2, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v2, :cond_16

    iget-object v2, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 650
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 651
    :goto_17
    if-eqz v2, :cond_1d

    const-wide/32 v2, 0x10000001

    goto :goto_1f

    :cond_1d
    const-wide/16 v2, 0x0

    .line 652
    :goto_1f
    iget v4, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    iget v5, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    invoke-static {p1, v4, v5}, Landroid/media/session/MediaSessionLegacyHelper;->getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;

    move-result-object p1

    .line 654
    new-instance v4, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v4, p0, p1, v2, v3}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    iput-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 655
    iget-object p1, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 656
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_37

    .line 657
    if-eqz v1, :cond_36

    .line 658
    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    .line 660
    :cond_36
    return-void

    .line 656
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method private greylist-max-o onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 11

    .line 620
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    :try_start_3
    iget-object v2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 622
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_45

    .line 623
    if-eqz v2, :cond_44

    .line 624
    if-nez p1, :cond_d

    const/4 v0, 0x0

    move v3, v0

    goto :goto_16

    .line 625
    :cond_d
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/media/RemoteControlClient;->getRccStateFromState(I)I

    move-result v0

    move v3, v0

    .line 626
    :goto_16
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_23

    goto :goto_33

    .line 629
    :cond_23
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v4

    .line 630
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v8

    .line 629
    invoke-interface/range {v2 .. v8}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_36

    .line 627
    :cond_33
    :goto_33
    invoke-interface {v2, v3}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 632
    :goto_36
    if-eqz p1, :cond_44

    .line 633
    nop

    .line 634
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/media/RemoteControlClient;->getRccControlFlagsFromActions(J)I

    move-result p1

    .line 633
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    .line 637
    :cond_44
    return-void

    .line 622
    :catchall_45
    move-exception v0

    move-object p1, v0

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_45

    throw p1
.end method

.method private static greylist-max-o sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 8

    .line 559
    if-nez p0, :cond_1b

    .line 560
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "null event handler, will not deliver message "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 563
    :cond_1b
    if-nez p2, :cond_21

    .line 564
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2b

    .line 565
    :cond_21
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2b

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 566
    return-void

    .line 568
    :cond_2b
    :goto_2b
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p6

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 569
    return-void
.end method

.method private greylist-max-o updateController(Landroid/media/session/MediaController;)V
    .registers 22

    .line 587
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 588
    if-nez v1, :cond_23

    .line 589
    :try_start_9
    iget-object v1, v0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_77

    .line 590
    iget-object v1, v0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v3, v0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 591
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 592
    iget-object v3, v0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v3 .. v9}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_77

    .line 595
    :cond_23
    iget-object v3, v0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v3, :cond_37

    .line 596
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    iget-object v4, v0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 597
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 598
    :cond_37
    iget-object v3, v0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v3, :cond_42

    .line 599
    iget-object v3, v0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v4, v0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v3, v4}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 601
    :cond_42
    iget-object v3, v0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 603
    iput-object v1, v0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 604
    iget-object v3, v0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v4, v0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    iget-object v5, v0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 606
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v11

    .line 607
    iget-object v6, v0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 610
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v18

    .line 611
    iget-object v13, v0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v19}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 615
    :cond_77
    :goto_77
    monitor-exit v2

    .line 616
    return-void

    .line 615
    :catchall_79
    move-exception v0

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_9 .. :try_end_7b} :catchall_79

    throw v0
.end method


# virtual methods
.method public whitelist clearArtworkConfiguration()Z
    .registers 3

    .line 322
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public whitelist editMetadata()Landroid/media/RemoteController$MetadataEditor;
    .registers 4

    .line 371
    new-instance v0, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v0, p0}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;)V

    .line 372
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 373
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 374
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    .line 375
    iput-boolean v1, v0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    .line 376
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    .line 377
    return-object v0
.end method

.method public whitelist getEstimatedMediaPosition()J
    .registers 4

    .line 212
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_15

    .line 214
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_15

    .line 216
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 219
    :cond_15
    monitor-exit v0

    .line 220
    const-wide/16 v0, -0x1

    return-wide v0

    .line 219
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method greylist getUpdateListener()Landroid/media/RemoteController$OnClientUpdateListener;
    .registers 2

    .line 684
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    return-object v0
.end method

.method public whitelist seekTo(J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 260
    iget-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v0, :cond_d

    .line 261
    const-string p1, "RemoteController"

    const-string p2, "Cannot use seekTo() from a disabled RemoteController"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 p1, 0x0

    return p1

    .line 264
    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_29

    .line 267
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_16
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_23

    .line 269
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 271
    :cond_23
    monitor-exit v0

    .line 272
    const/4 p1, 0x1

    return p1

    .line 271
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_26

    throw p1

    .line 265
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal negative time value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist sendMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 240
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 243
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_d
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_19

    .line 245
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 247
    :cond_19
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 248
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw p1

    .line 241
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not a media key event"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setArtworkConfiguration(II)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result p1

    return p1
.end method

.method public greylist setArtworkConfiguration(ZII)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 287
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    if-eqz p1, :cond_22

    .line 289
    if-lez p2, :cond_1a

    if-lez p3, :cond_1a

    .line 290
    :try_start_9
    iget p1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p2, p1, :cond_f

    iget p2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    .line 291
    :cond_f
    iget p1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p3, p1, :cond_15

    iget p3, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    .line 292
    :cond_15
    iput p2, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 293
    iput p3, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    goto :goto_27

    .line 295
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid dimensions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 298
    :cond_22
    const/4 p1, -0x1

    iput p1, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 299
    iput p1, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    .line 301
    :goto_27
    monitor-exit v0

    .line 302
    const/4 p1, 0x1

    return p1

    .line 301
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public whitelist setSynchronizationMode(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 353
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown synchronization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1f
    :goto_1f
    iget-boolean p1, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    if-nez p1, :cond_2c

    .line 356
    const-string p1, "RemoteController"

    const-string v0, "Cannot set synchronization mode on an unregistered RemoteController"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 p1, 0x0

    return p1

    .line 360
    :cond_2c
    return v0
.end method

.method greylist-max-o startListeningToSessions()V
    .registers 5

    .line 523
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 524
    invoke-interface {v2}, Landroid/media/RemoteController$OnClientUpdateListener;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 525
    nop

    .line 526
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 527
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1f

    .line 526
    :cond_1e
    const/4 v1, 0x0

    .line 529
    :goto_1f
    iget-object v2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 531
    iget-object v1, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 532
    invoke-virtual {v2, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 531
    invoke-interface {v1, v0}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 537
    return-void
.end method

.method greylist-max-o stopListeningToSessions()V
    .registers 3

    .line 543
    iget-object v0, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 548
    return-void
.end method
