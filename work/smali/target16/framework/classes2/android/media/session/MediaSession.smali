.class public final Landroid/media/session/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSession$CallbackStub;,
        Landroid/media/session/MediaSession$Token;,
        Landroid/media/session/MediaSession$Callback;,
        Landroid/media/session/MediaSession$CallbackMessageHandler;,
        Landroid/media/session/MediaSession$Command;,
        Landroid/media/session/MediaSession$QueueItem;,
        Landroid/media/session/MediaSession$SessionFlags;
    }
.end annotation


# static fields
.field public static final greylist-max-o FLAG_EXCLUSIVE_GLOBAL_PRIORITY:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o INVALID_PID:I = -0x1

.field public static final greylist-max-o INVALID_UID:I = -0x1

.field static final greylist-max-o TAG:Ljava/lang/String; = "MediaSession"


# instance fields
.field private greylist-max-o mActive:Z

.field private final greylist-max-o mBinder:Landroid/media/session/ISession;

.field private greylist mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private final greylist-max-o mCbStub:Landroid/media/session/MediaSession$CallbackStub;

.field private final blacklist mContext:Landroid/content/Context;

.field private final greylist-max-o mController:Landroid/media/session/MediaController;

.field private blacklist mIsReleased:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxBitmapSize:I

.field private greylist-max-o mPlaybackState:Landroid/media/session/PlaybackState;

.field private final greylist-max-o mSessionToken:Landroid/media/session/MediaSession$Token;

.field private greylist-max-o mVolumeProvider:Landroid/media/VolumeProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/media/session/MediaSession;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/session/MediaSession;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeProvider(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    .line 191
    if-eqz p1, :cond_77

    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 197
    invoke-static {p3}, Landroid/media/session/MediaSession;->hasCustomParcelable(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 202
    iput-object p1, p0, Landroid/media/session/MediaSession;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    .line 205
    new-instance v0, Landroid/media/session/MediaSession$CallbackStub;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSession$CallbackStub;-><init>(Landroid/media/session/MediaSession;)V

    iput-object v0, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    .line 206
    nop

    .line 207
    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 209
    :try_start_3a
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/session/MediaSessionManager;->createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/session/ISession;

    move-result-object p2

    iput-object p2, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 210
    new-instance p2, Landroid/media/session/MediaSession$Token;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p3

    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0}, Landroid/media/session/ISession;->getController()Landroid/media/session/ISessionController;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Landroid/media/session/MediaSession$Token;-><init>(ILandroid/media/session/ISessionController;)V

    iput-object p2, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 211
    new-instance p2, Landroid/media/session/MediaController;

    iget-object p3, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {p2, p1, p3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object p2, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_5c} :catch_5e

    .line 214
    nop

    .line 215
    return-void

    .line 212
    :catch_5e
    move-exception p1

    .line 213
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Remote error creating session."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 198
    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sessionInfo shouldn\'t contain any custom parcelables"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tag cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist hasCustomParcelable(Landroid/os/Bundle;)Z
    .registers 5

    .line 683
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 684
    return v0

    .line 688
    :cond_4
    nop

    .line 690
    const/4 v1, 0x0

    :try_start_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_a
    .catch Landroid/os/BadParcelableException; {:try_start_6 .. :try_end_a} :catch_3a
    .catchall {:try_start_6 .. :try_end_a} :catchall_38

    .line 691
    :try_start_a
    invoke-virtual {v2, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 692
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 693
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p0

    .line 695
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 696
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2b
    .catch Landroid/os/BadParcelableException; {:try_start_a .. :try_end_2b} :catch_35
    .catchall {:try_start_a .. :try_end_2b} :catchall_32

    .line 697
    goto :goto_1c

    .line 702
    :cond_2c
    if-eqz v2, :cond_31

    .line 703
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 706
    :cond_31
    return v0

    .line 702
    :catchall_32
    move-exception p0

    move-object v1, v2

    goto :goto_4a

    .line 698
    :catch_35
    move-exception p0

    move-object v1, v2

    goto :goto_3b

    .line 702
    :catchall_38
    move-exception p0

    goto :goto_4a

    .line 698
    :catch_3a
    move-exception p0

    .line 699
    :goto_3b
    :try_start_3b
    const-string v0, "MediaSession"

    const-string v2, "Custom parcelable in bundle."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_38

    .line 700
    nop

    .line 702
    if-eqz v1, :cond_48

    .line 703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 700
    :cond_48
    const/4 p0, 0x1

    return p0

    .line 702
    :goto_4a
    if-eqz v1, :cond_4f

    .line 703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 705
    :cond_4f
    throw p0
.end method


# virtual methods
.method greylist-max-o dispatchAdjustVolume(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V
    .registers 5

    .line 796
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 797
    return-void
.end method

.method greylist-max-o dispatchCommand(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 6

    .line 805
    new-instance v0, Landroid/media/session/MediaSession$Command;

    invoke-direct {v0, p2, p3, p4}, Landroid/media/session/MediaSession$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 806
    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 807
    return-void
.end method

.method greylist-max-o dispatchCustomAction(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 782
    const/16 v0, 0x15

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 783
    return-void
.end method

.method greylist-max-o dispatchFastForward(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4

    .line 762
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 763
    return-void
.end method

.method greylist-max-o dispatchMediaButton(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;)V
    .registers 5

    .line 786
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 787
    return-void
.end method

.method greylist-max-o dispatchMediaButtonDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V
    .registers 12

    .line 791
    const/16 v2, 0x18

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/MediaSession;->postToCallbackDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V

    .line 793
    return-void
.end method

.method greylist-max-o dispatchNext(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4

    .line 754
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 755
    return-void
.end method

.method greylist-max-o dispatchPause(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4

    .line 746
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 747
    return-void
.end method

.method greylist-max-o dispatchPlay(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4

    .line 726
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 727
    return-void
.end method

.method greylist-max-o dispatchPlayFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 730
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 731
    return-void
.end method

.method greylist-max-o dispatchPlayFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 734
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 735
    return-void
.end method

.method greylist-max-o dispatchPlayFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5

    .line 738
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 739
    return-void
.end method

.method greylist-max-o dispatchPrepare(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4

    .line 710
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 711
    return-void
.end method

.method greylist-max-o dispatchPrepareFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 714
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 715
    return-void
.end method

.method greylist-max-o dispatchPrepareFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 718
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 719
    return-void
.end method

.method greylist-max-o dispatchPrepareFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5

    .line 722
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 723
    return-void
.end method

.method greylist-max-o dispatchPrevious(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4

    .line 758
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 759
    return-void
.end method

.method greylist-max-o dispatchRate(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/media/Rating;)V
    .registers 5

    .line 774
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 775
    return-void
.end method

.method greylist-max-o dispatchRewind(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4

    .line 766
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 767
    return-void
.end method

.method greylist-max-o dispatchSeekTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V
    .registers 5

    .line 770
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    const/16 v0, 0x12

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 771
    return-void
.end method

.method blacklist dispatchSetPlaybackSpeed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;F)V
    .registers 5

    .line 778
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 779
    return-void
.end method

.method greylist-max-o dispatchSetVolumeTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V
    .registers 5

    .line 800
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x17

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 801
    return-void
.end method

.method greylist-max-o dispatchSkipToItem(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V
    .registers 5

    .line 742
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 743
    return-void
.end method

.method greylist-max-o dispatchStop(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 4

    .line 750
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 751
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 478
    :try_start_0
    invoke-virtual {p0}, Landroid/media/session/MediaSession;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 480
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 481
    nop

    .line 482
    return-void

    .line 480
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 481
    throw v0
.end method

.method public greylist getCallingPackage()Ljava/lang/String;
    .registers 2

    .line 673
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-$$Nest$fgetmCurrentControllerInfo(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 674
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-$$Nest$fgetmCurrentControllerInfo(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 676
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getController()Landroid/media/session/MediaController;
    .registers 2

    .line 503
    iget-object v0, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public final whitelist getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .registers 3

    .line 637
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-$$Nest$fgetmCurrentControllerInfo(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 641
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-$$Nest$fgetmCurrentControllerInfo(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    return-object v0

    .line 638
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of MediaSession.Callback methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 2

    .line 493
    iget-object v0, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public whitelist isActive()Z
    .registers 2

    .line 433
    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    return v0
.end method

.method public greylist-max-o notifyRemoteVolumeChanged(Landroid/media/VolumeProvider;)V
    .registers 4

    .line 651
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    if-eqz p1, :cond_1e

    :try_start_5
    iget-object v1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-eq p1, v1, :cond_a

    goto :goto_1e

    .line 656
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_27

    .line 658
    :try_start_b
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    .line 661
    goto :goto_1d

    .line 659
    :catch_15
    move-exception p1

    .line 660
    const-string v0, "MediaSession"

    const-string v1, "Error in notifyVolumeChanged"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    :goto_1d
    return-void

    .line 653
    :cond_1e
    :goto_1e
    :try_start_1e
    const-string p1, "MediaSession"

    const-string v1, "Received update from stale volume provider"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    monitor-exit v0

    return-void

    .line 656
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_27

    throw p1
.end method

.method greylist-max-o postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 12

    .line 810
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/MediaSession;->postToCallbackDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V

    .line 811
    return-void
.end method

.method greylist-max-o postToCallbackDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V
    .registers 9

    .line 815
    iget-object v1, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 816
    :try_start_3
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_d

    .line 817
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    move-object p0, v0

    invoke-virtual/range {p0 .. p6}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V

    .line 819
    :cond_d
    monitor-exit v1

    .line 820
    return-void

    .line 819
    :catchall_f
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_f

    throw p1
.end method

.method public whitelist release()V
    .registers 5

    .line 461
    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mIsReleased:Z

    if-eqz v0, :cond_5

    .line 462
    return-void

    .line 464
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 466
    const/4 v0, 0x1

    :try_start_a
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1}, Landroid/media/session/ISession;->destroySession()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_14
    .catchall {:try_start_a .. :try_end_f} :catchall_12

    .line 470
    :goto_f
    iput-boolean v0, p0, Landroid/media/session/MediaSession;->mIsReleased:Z

    .line 471
    goto :goto_1d

    .line 470
    :catchall_12
    move-exception v1

    goto :goto_1e

    .line 467
    :catch_14
    move-exception v1

    .line 468
    :try_start_15
    const-string v2, "MediaSession"

    const-string v3, "Error releasing session: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    goto :goto_f

    .line 472
    :goto_1d
    return-void

    .line 470
    :goto_1e
    iput-boolean v0, p0, Landroid/media/session/MediaSession;->mIsReleased:Z

    .line 471
    throw v1
.end method

.method public whitelist sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 449
    :try_start_6
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1, p2}, Landroid/media/session/ISession;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 452
    goto :goto_14

    .line 450
    :catch_c
    move-exception p1

    .line 451
    const-string p2, "MediaSession"

    const-string v0, "Error sending event"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    :goto_14
    return-void

    .line 446
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setActive(Z)V
    .registers 4

    .line 412
    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    if-ne v0, p1, :cond_5

    .line 413
    return-void

    .line 416
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setActive(Z)V

    .line 417
    iput-boolean p1, p0, Landroid/media/session/MediaSession;->mActive:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    .line 420
    goto :goto_15

    .line 418
    :catch_d
    move-exception p1

    .line 419
    const-string v0, "MediaSession"

    const-string v1, "Failure in setActive."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    :goto_15
    return-void
.end method

.method public whitelist setCallback(Landroid/media/session/MediaSession$Callback;)V
    .registers 3

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 228
    return-void
.end method

.method public whitelist setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V
    .registers 5

    .line 240
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v1, :cond_10

    .line 243
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v1}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-$$Nest$fgetmCallback(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSession$Callback;->-$$Nest$mclearSession(Landroid/media/session/MediaSession$Callback;)V

    .line 246
    :cond_10
    if-nez p1, :cond_17

    .line 247
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 248
    monitor-exit v0

    return-void

    .line 250
    :cond_17
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_22

    :cond_1e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    .line 251
    :goto_22
    invoke-static {p1, p0}, Landroid/media/session/MediaSession$Callback;->-$$Nest$msetSession(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)V

    .line 252
    new-instance v1, Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-direct {v1, p0, p2, p1}, Landroid/media/session/MediaSession$CallbackMessageHandler;-><init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V

    .line 253
    iput-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)V
    .registers 3

    .line 622
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setExtras(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 625
    goto :goto_c

    .line 623
    :catch_6
    move-exception p1

    .line 624
    const-string v0, "Dead object in setExtras."

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    :goto_c
    return-void
.end method

.method public whitelist setFlags(I)V
    .registers 4

    .line 340
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setFlags(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 343
    goto :goto_e

    .line 341
    :catch_6
    move-exception p1

    .line 342
    const-string v0, "MediaSession"

    const-string v1, "Failure in setFlags."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    :goto_e
    return-void
.end method

.method public whitelist setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V
    .registers 4

    .line 320
    if-eqz p1, :cond_1b

    .line 321
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaSession;->mContext:Landroid/content/Context;

    .line 322
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1b

    .line 323
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "broadcastReceiver should belong to the same package as the context given when creating MediaSession."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_1b
    :goto_1b
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_20} :catch_21

    .line 330
    goto :goto_25

    .line 328
    :catch_21
    move-exception p1

    .line 329
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 331
    :goto_25
    return-void
.end method

.method public whitelist setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 300
    goto :goto_a

    .line 298
    :catch_6
    move-exception p1

    .line 299
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 301
    :goto_a
    return-void
.end method

.method public whitelist setMetadata(Landroid/media/MediaMetadata;)V
    .registers 8

    .line 529
    nop

    .line 530
    nop

    .line 531
    nop

    .line 532
    const-wide/16 v0, -0x1

    if-eqz p1, :cond_2b

    .line 533
    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    iget p1, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    .line 534
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadata$Builder;->setBitmapDimensionLimit(I)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    .line 535
    invoke-virtual {p1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    .line 536
    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 537
    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 539
    :cond_22
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->size()I

    move-result v2

    .line 540
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescriptionString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 532
    :cond_2b
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 542
    :goto_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", description="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 545
    :try_start_4a
    iget-object v3, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v3, p1, v0, v1, v2}, Landroid/media/session/ISession;->setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4f} :catch_50

    .line 548
    goto :goto_58

    .line 546
    :catch_50
    move-exception p1

    .line 547
    const-string v0, "MediaSession"

    const-string v1, "Dead object in setPlaybackState."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    :goto_58
    return-void
.end method

.method public whitelist setPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 4

    .line 512
    iput-object p1, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 514
    :try_start_2
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    .line 517
    goto :goto_10

    .line 515
    :catch_8
    move-exception p1

    .line 516
    const-string v0, "MediaSession"

    const-string v1, "Dead object in setPlaybackState."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    :goto_10
    return-void
.end method

.method public whitelist setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .registers 4

    .line 358
    if-eqz p1, :cond_11

    .line 362
    :try_start_2
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    .line 365
    goto :goto_10

    .line 363
    :catch_8
    move-exception p1

    .line 364
    const-string v0, "MediaSession"

    const-string v1, "Failure in setPlaybackToLocal."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    :goto_10
    return-void

    .line 359
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attributes cannot be null for local playback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setPlaybackToRemote(Landroid/media/VolumeProvider;)V
    .registers 6

    .line 380
    if-eqz p1, :cond_37

    .line 383
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_5
    iput-object p1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    .line 385
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_34

    .line 386
    new-instance v0, Landroid/media/session/MediaSession$1;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSession$1;-><init>(Landroid/media/session/MediaSession;)V

    invoke-virtual {p1, v0}, Landroid/media/VolumeProvider;->setCallback(Landroid/media/VolumeProvider$Callback;)V

    .line 394
    :try_start_10
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getVolumeControl()I

    move-result v1

    .line 395
    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getMaxVolume()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getVolumeControlId()Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-interface {v0, v1, v2, v3}, Landroid/media/session/ISession;->setPlaybackToRemote(IILjava/lang/String;)V

    .line 396
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2a} :catch_2b

    .line 399
    goto :goto_33

    .line 397
    :catch_2b
    move-exception p1

    .line 398
    const-string v0, "MediaSession"

    const-string v1, "Failure in setPlaybackToRemote."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    :goto_33
    return-void

    .line 385
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1

    .line 381
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "volumeProvider may not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setQueue(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 564
    if-nez p1, :cond_8

    .line 565
    :try_start_2
    iget-object p1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {p1}, Landroid/media/session/ISession;->resetQueue()V

    goto :goto_13

    .line 567
    :cond_8
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0}, Landroid/media/session/ISession;->getBinderForSetQueue()Landroid/os/IBinder;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_13

    .line 569
    invoke-static {v0, p1}, Landroid/media/session/ParcelableListBinder;->send(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    .line 574
    :cond_13
    :goto_13
    goto :goto_1a

    .line 572
    :catch_14
    move-exception p1

    .line 573
    const-string v0, "Dead object in setQueue."

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    :goto_1a
    return-void
.end method

.method public whitelist setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 586
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 589
    goto :goto_c

    .line 587
    :catch_6
    move-exception p1

    .line 588
    const-string v0, "Dead object in setQueueTitle."

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    :goto_c
    return-void
.end method

.method public whitelist setRatingType(I)V
    .registers 4

    .line 607
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setRatingType(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 610
    goto :goto_e

    .line 608
    :catch_6
    move-exception p1

    .line 609
    const-string v0, "MediaSession"

    const-string v1, "Error in setRatingType."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    :goto_e
    return-void
.end method

.method public whitelist setSessionActivity(Landroid/app/PendingIntent;)V
    .registers 4

    .line 266
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 269
    goto :goto_e

    .line 267
    :catch_6
    move-exception p1

    .line 268
    const-string v0, "MediaSession"

    const-string v1, "Failure in setLaunchPendingIntent."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    :goto_e
    return-void
.end method
