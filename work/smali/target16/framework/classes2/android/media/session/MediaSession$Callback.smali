.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private greylist-max-o mMediaPlayPauseKeyPending:Z

.field private greylist-max-o mSession:Landroid/media/session/MediaSession;

.field private final blacklist mSessionLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$6OYmw69Ggyui8kC_bmz2U3WjIkY(Landroid/media/session/MediaSession$Callback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHandler(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)V
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearSession(Landroid/media/session/MediaSession$Callback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->clearSession()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMediaPlayPauseKeySingleTapIfPending(Landroid/media/session/MediaSession$Callback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSession(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/session/MediaSession$Callback;->setSession(Landroid/media/session/MediaSession;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSessionLock:Ljava/lang/Object;

    .line 925
    return-void
.end method

.method private blacklist clearSession()V
    .registers 4

    .line 934
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    .line 936
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 937
    iget-object v2, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {v2, v1}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 938
    monitor-exit v0

    .line 939
    return-void

    .line 938
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private greylist-max-o handleMediaPlayPauseKeySingleTapIfPending()V
    .registers 11

    .line 1077
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_3
    iget-boolean v1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-eqz v1, :cond_56

    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    if-nez v1, :cond_c

    goto :goto_56

    .line 1081
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 1082
    iget-object v2, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 1084
    iget-object v2, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 1085
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_58

    .line 1086
    const-wide/16 v3, 0x0

    if-nez v2, :cond_23

    move-wide v5, v3

    goto :goto_27

    :cond_23
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    .line 1087
    :goto_27
    const/4 v0, 0x1

    if-eqz v2, :cond_33

    .line 1088
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_33

    move v2, v0

    goto :goto_34

    :cond_33
    move v2, v1

    .line 1089
    :goto_34
    const-wide/16 v7, 0x204

    and-long/2addr v7, v5

    cmp-long v7, v7, v3

    if-eqz v7, :cond_3d

    move v7, v0

    goto :goto_3e

    :cond_3d
    move v7, v1

    .line 1091
    :goto_3e
    const-wide/16 v8, 0x202

    and-long/2addr v5, v8

    cmp-long v3, v5, v3

    if-eqz v3, :cond_46

    move v1, v0

    .line 1093
    :cond_46
    if-eqz v2, :cond_4e

    if-eqz v1, :cond_4e

    .line 1094
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    goto :goto_55

    .line 1095
    :cond_4e
    if-nez v2, :cond_55

    if-eqz v7, :cond_55

    .line 1096
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 1098
    :cond_55
    :goto_55
    return-void

    .line 1079
    :cond_56
    :goto_56
    :try_start_56
    monitor-exit v0

    return-void

    .line 1085
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private blacklist setSession(Landroid/media/session/MediaSession;)V
    .registers 3

    .line 928
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 929
    :try_start_3
    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    .line 930
    monitor-exit v0

    .line 931
    return-void

    .line 930
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method


# virtual methods
.method public whitelist onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 4

    .line 952
    return-void
.end method

.method public whitelist onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 1257
    return-void
.end method

.method public whitelist onFastForward()V
    .registers 1

    .line 1202
    return-void
.end method

.method public whitelist onMediaButtonEvent(Landroid/content/Intent;)Z
    .registers 16

    .line 968
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_105

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 969
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_105

    .line 972
    :cond_13
    const-string v0, "android.intent.extra.KEY_EVENT"

    const-class v2, Landroid/view/KeyEvent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 974
    if-eqz v0, :cond_104

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_27

    goto/16 :goto_104

    .line 981
    :cond_27
    nop

    .line 982
    iget-object v2, p0, Landroid/media/session/MediaSession$Callback;->mSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 983
    :try_start_2b
    iget-object v3, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    if-nez v3, :cond_31

    .line 984
    monitor-exit v2

    return v1

    .line 986
    :cond_31
    iget-object v3, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v3}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v3

    .line 987
    const-wide/16 v4, 0x0

    if-nez v3, :cond_3d

    move-wide v6, v4

    goto :goto_41

    :cond_3d
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v6

    .line 988
    :goto_41
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const-wide/16 v8, 0x20

    const/4 v10, 0x1

    sparse-switch v3, :sswitch_data_106

    .line 1017
    new-instance p1, Landroid/media/session/MediaSession$Callback$$ExternalSyntheticLambda0;

    goto :goto_9f

    .line 990
    :sswitch_4e
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_5a

    .line 992
    new-instance p1, Landroid/media/session/MediaSession$Callback$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/media/session/MediaSession$Callback$$ExternalSyntheticLambda0;-><init>(Landroid/media/session/MediaSession$Callback;)V

    goto :goto_9c

    .line 994
    :cond_5a
    iget-boolean v3, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-eqz v3, :cond_73

    .line 996
    iget-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v3, 0x18

    invoke-virtual {p1, v3}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 998
    iput-boolean v1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 999
    and-long v11, v6, v8

    cmp-long p1, v11, v4

    if-eqz p1, :cond_9b

    .line 1000
    new-instance p1, Landroid/media/session/MediaSession$Callback$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroid/media/session/MediaSession$Callback$$ExternalSyntheticLambda1;-><init>(Landroid/media/session/MediaSession$Callback;)V

    goto :goto_9c

    .line 1003
    :cond_73
    iput-boolean v10, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 1004
    iget-object v3, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    iget-object v11, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    .line 1005
    invoke-virtual {v11}, Landroid/media/session/MediaSession;->getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v11

    .line 1007
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v12

    if-eqz v12, :cond_93

    .line 1009
    iget-object v12, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v12}, Landroid/media/session/MediaSession;->-$$Nest$fgetmContext(Landroid/media/session/MediaSession;)Landroid/content/Context;

    move-result-object v12

    .line 1008
    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    .line 1009
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getDoubleTapTimeoutMillis()I

    move-result v12

    int-to-long v12, v12

    goto :goto_98

    .line 1010
    :cond_93
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v12

    int-to-long v12, v12

    .line 1004
    :goto_98
    invoke-virtual {v3, v11, p1, v12, v13}, Landroid/media/session/MediaSession;->dispatchMediaButtonDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V

    .line 1012
    :cond_9b
    const/4 p1, 0x0

    :goto_9c
    nop

    .line 1013
    move v3, v10

    goto :goto_a3

    .line 1017
    :goto_9f
    invoke-direct {p1, p0}, Landroid/media/session/MediaSession$Callback$$ExternalSyntheticLambda0;-><init>(Landroid/media/session/MediaSession$Callback;)V

    .line 1018
    move v3, v1

    .line 1021
    :goto_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_2b .. :try_end_a4} :catchall_101

    .line 1022
    if-eqz p1, :cond_a9

    .line 1023
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1025
    :cond_a9
    if-eqz v3, :cond_ac

    .line 1026
    return v10

    .line 1028
    :cond_ac
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_110

    goto :goto_100

    .line 1036
    :sswitch_b4
    const-wide/16 v2, 0x2

    and-long/2addr v2, v6

    cmp-long p1, v2, v4

    if-eqz p1, :cond_100

    .line 1037
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 1038
    return v10

    .line 1030
    :sswitch_bf
    const-wide/16 v2, 0x4

    and-long/2addr v2, v6

    cmp-long p1, v2, v4

    if-eqz p1, :cond_100

    .line 1031
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 1032
    return v10

    .line 1060
    :sswitch_ca
    const-wide/16 v2, 0x40

    and-long/2addr v2, v6

    cmp-long p1, v2, v4

    if-eqz p1, :cond_100

    .line 1061
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    .line 1062
    return v10

    .line 1066
    :sswitch_d5
    const-wide/16 v2, 0x8

    and-long/2addr v2, v6

    cmp-long p1, v2, v4

    if-eqz p1, :cond_100

    .line 1067
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    .line 1068
    return v10

    .line 1048
    :sswitch_e0
    const-wide/16 v2, 0x10

    and-long/2addr v2, v6

    cmp-long p1, v2, v4

    if-eqz p1, :cond_100

    .line 1049
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    .line 1050
    return v10

    .line 1042
    :sswitch_eb
    and-long v2, v6, v8

    cmp-long p1, v2, v4

    if-eqz p1, :cond_100

    .line 1043
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 1044
    return v10

    .line 1054
    :sswitch_f5
    const-wide/16 v2, 0x1

    and-long/2addr v2, v6

    cmp-long p1, v2, v4

    if-eqz p1, :cond_100

    .line 1055
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    .line 1056
    return v10

    .line 1072
    :cond_100
    :goto_100
    return v1

    .line 1021
    :catchall_101
    move-exception p1

    :try_start_102
    monitor-exit v2
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw p1

    .line 975
    :cond_104
    :goto_104
    return v1

    .line 970
    :cond_105
    :goto_105
    return v1

    :sswitch_data_106
    .sparse-switch
        0x4f -> :sswitch_4e
        0x55 -> :sswitch_4e
    .end sparse-switch

    :sswitch_data_110
    .sparse-switch
        0x56 -> :sswitch_f5
        0x57 -> :sswitch_eb
        0x58 -> :sswitch_e0
        0x59 -> :sswitch_d5
        0x5a -> :sswitch_ca
        0x7e -> :sswitch_bf
        0x7f -> :sswitch_b4
    .end sparse-switch
.end method

.method public whitelist onPause()V
    .registers 1

    .line 1184
    return-void
.end method

.method public whitelist onPlay()V
    .registers 1

    .line 1149
    return-void
.end method

.method public whitelist onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 1165
    return-void
.end method

.method public whitelist onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 1158
    return-void
.end method

.method public whitelist onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    .line 1171
    return-void
.end method

.method public whitelist onPrepare()V
    .registers 1

    .line 1107
    return-void
.end method

.method public whitelist onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 1119
    return-void
.end method

.method public whitelist onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 1131
    return-void
.end method

.method public whitelist onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    .line 1143
    return-void
.end method

.method public whitelist onRewind()V
    .registers 1

    .line 1208
    return-void
.end method

.method public whitelist onSeekTo(J)V
    .registers 3

    .line 1222
    return-void
.end method

.method public whitelist onSetPlaybackSpeed(F)V
    .registers 2

    .line 1246
    return-void
.end method

.method public whitelist onSetRating(Landroid/media/Rating;)V
    .registers 2

    .line 1230
    return-void
.end method

.method public whitelist onSkipToNext()V
    .registers 1

    .line 1190
    return-void
.end method

.method public whitelist onSkipToPrevious()V
    .registers 1

    .line 1196
    return-void
.end method

.method public whitelist onSkipToQueueItem(J)V
    .registers 3

    .line 1178
    return-void
.end method

.method public whitelist onStop()V
    .registers 1

    .line 1214
    return-void
.end method
