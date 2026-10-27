.class Landroid/media/session/MediaSession$CallbackMessageHandler;
.super Landroid/os/Handler;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMessageHandler"
.end annotation


# static fields
.field private static final greylist-max-o MSG_ADJUST_VOLUME:I = 0x16

.field private static final greylist-max-o MSG_COMMAND:I = 0x1

.field private static final greylist-max-o MSG_CUSTOM_ACTION:I = 0x15

.field private static final greylist-max-o MSG_FAST_FORWARD:I = 0x10

.field private static final greylist-max-o MSG_MEDIA_BUTTON:I = 0x2

.field private static final greylist-max-o MSG_NEXT:I = 0xe

.field private static final greylist-max-o MSG_PAUSE:I = 0xc

.field private static final greylist-max-o MSG_PLAY:I = 0x7

.field private static final greylist-max-o MSG_PLAY_MEDIA_ID:I = 0x8

.field private static final greylist-max-o MSG_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT:I = 0x18

.field private static final greylist-max-o MSG_PLAY_SEARCH:I = 0x9

.field private static final greylist-max-o MSG_PLAY_URI:I = 0xa

.field private static final greylist-max-o MSG_PREPARE:I = 0x3

.field private static final greylist-max-o MSG_PREPARE_MEDIA_ID:I = 0x4

.field private static final greylist-max-o MSG_PREPARE_SEARCH:I = 0x5

.field private static final greylist-max-o MSG_PREPARE_URI:I = 0x6

.field private static final greylist-max-o MSG_PREVIOUS:I = 0xf

.field private static final greylist-max-o MSG_RATE:I = 0x13

.field private static final greylist-max-o MSG_REWIND:I = 0x11

.field private static final greylist-max-o MSG_SEEK_TO:I = 0x12

.field private static final blacklist MSG_SET_PLAYBACK_SPEED:I = 0x14

.field private static final greylist-max-o MSG_SET_VOLUME:I = 0x17

.field private static final greylist-max-o MSG_SKIP_TO_ITEM:I = 0xb

.field private static final greylist-max-o MSG_STOP:I = 0xd


# instance fields
.field private greylist-max-o mCallback:Landroid/media/session/MediaSession$Callback;

.field private greylist-max-o mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

.field final synthetic blacklist this$0:Landroid/media/session/MediaSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentControllerInfo(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1640
    iput-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    .line 1641
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1642
    iput-object p3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    .line 1643
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-static {p1, p0}, Landroid/media/session/MediaSession$Callback;->-$$Nest$fputmHandler(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)V

    .line 1644
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1660
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    iput-object v0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 1663
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1665
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_12e

    goto/16 :goto_12a

    .line 1747
    :pswitch_17
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-static {p1}, Landroid/media/session/MediaSession$Callback;->-$$Nest$mhandleMediaPlayPauseKeySingleTapIfPending(Landroid/media/session/MediaSession$Callback;)V

    goto/16 :goto_12a

    .line 1739
    :pswitch_1e
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {p1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmLock(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1740
    :try_start_25
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmVolumeProvider(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;

    move-result-object v1

    .line 1741
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_39

    .line 1742
    if-eqz v1, :cond_12a

    .line 1743
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/VolumeProvider;->onSetVolumeTo(I)V

    goto/16 :goto_12a

    .line 1741
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    .line 1731
    :pswitch_3c
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {p1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmLock(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1732
    :try_start_43
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {p1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmVolumeProvider(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;

    move-result-object p1

    .line 1733
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_57

    .line 1734
    if-eqz p1, :cond_12a

    .line 1735
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/VolumeProvider;->onAdjustVolume(I)V

    goto/16 :goto_12a

    .line 1733
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p1

    .line 1728
    :pswitch_5a
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/media/session/MediaSession$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1729
    goto/16 :goto_12a

    .line 1725
    :pswitch_67
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession$Callback;->onSetPlaybackSpeed(F)V

    .line 1726
    goto/16 :goto_12a

    .line 1722
    :pswitch_74
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Landroid/media/Rating;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    .line 1723
    goto/16 :goto_12a

    .line 1719
    :pswitch_7d
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaSession$Callback;->onSeekTo(J)V

    .line 1720
    goto/16 :goto_12a

    .line 1716
    :pswitch_8a
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    .line 1717
    goto/16 :goto_12a

    .line 1713
    :pswitch_91
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    .line 1714
    goto/16 :goto_12a

    .line 1710
    :pswitch_98
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    .line 1711
    goto/16 :goto_12a

    .line 1707
    :pswitch_9f
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 1708
    goto/16 :goto_12a

    .line 1704
    :pswitch_a6
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Callback;->onStop()V

    .line 1705
    goto/16 :goto_12a

    .line 1701
    :pswitch_ad
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 1702
    goto/16 :goto_12a

    .line 1698
    :pswitch_b4
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaSession$Callback;->onSkipToQueueItem(J)V

    .line 1699
    goto :goto_12a

    .line 1695
    :pswitch_c0
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/media/session/MediaSession$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1696
    goto :goto_12a

    .line 1692
    :pswitch_cc
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/media/session/MediaSession$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1693
    goto :goto_12a

    .line 1689
    :pswitch_d8
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/media/session/MediaSession$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1690
    goto :goto_12a

    .line 1686
    :pswitch_e4
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 1687
    goto :goto_12a

    .line 1683
    :pswitch_ea
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/media/session/MediaSession$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1684
    goto :goto_12a

    .line 1680
    :pswitch_f6
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/media/session/MediaSession$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1681
    goto :goto_12a

    .line 1677
    :pswitch_102
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/media/session/MediaSession$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1678
    goto :goto_12a

    .line 1674
    :pswitch_10e
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Callback;->onPrepare()V

    .line 1675
    goto :goto_12a

    .line 1671
    :pswitch_114
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    .line 1672
    goto :goto_12a

    .line 1667
    :pswitch_11c
    check-cast v0, Landroid/media/session/MediaSession$Command;

    .line 1668
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v1, v0, Landroid/media/session/MediaSession$Command;->command:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/session/MediaSession$Command;->extras:Landroid/os/Bundle;

    iget-object v0, v0, Landroid/media/session/MediaSession$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v1, v2, v0}, Landroid/media/session/MediaSession$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1669
    nop

    .line 1750
    :cond_12a
    :goto_12a
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 1751
    return-void

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_11c
        :pswitch_114
        :pswitch_10e
        :pswitch_102
        :pswitch_f6
        :pswitch_ea
        :pswitch_e4
        :pswitch_d8
        :pswitch_cc
        :pswitch_c0
        :pswitch_b4
        :pswitch_ad
        :pswitch_a6
        :pswitch_9f
        :pswitch_98
        :pswitch_91
        :pswitch_8a
        :pswitch_7d
        :pswitch_74
        :pswitch_67
        :pswitch_5a
        :pswitch_3c
        :pswitch_1e
        :pswitch_17
    .end packed-switch
.end method

.method greylist-max-o post(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V
    .registers 7

    .line 1647
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1648
    invoke-virtual {p0, p2, p1}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1649
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1650
    invoke-virtual {p1, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1651
    const-wide/16 p2, 0x0

    cmp-long p2, p5, p2

    if-lez p2, :cond_19

    .line 1652
    invoke-virtual {p0, p1, p5, p6}, Landroid/media/session/MediaSession$CallbackMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1c

    .line 1654
    :cond_19
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession$CallbackMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1656
    :goto_1c
    return-void
.end method
