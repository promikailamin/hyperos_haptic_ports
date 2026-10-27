.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Ringtone$MyOnCompletionListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOGD:Z = true

.field private static final greylist-max-o MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final greylist-max-o MEDIA_SELECTION:Ljava/lang/String; = "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Ringtone"

.field private static final blacklist VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final blacklist VIBRATION_LOOP_DELAY_MS:I = 0xc8

.field private static final greylist-max-o sActiveRingtones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/Ringtone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAllowRemote:Z

.field private greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field private final greylist-max-o mAudioManager:Landroid/media/AudioManager;

.field private final greylist-max-o mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

.field private blacklist mHapticGeneratorEnabled:Z

.field private greylist-max-o mIsLooping:Z

.field private blacklist mIsVibrating:Z

.field private greylist-max-r mLocalPlayer:Landroid/media/MediaPlayer;

.field private final greylist-max-o mPlaybackSettingsLock:Ljava/lang/Object;

.field private blacklist mPreferBuiltinDevice:Z

.field private final greylist-max-o mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final greylist-max-o mRemoteToken:Landroid/os/Binder;

.field private final blacklist mRingtoneVibrationSupported:Z

.field private greylist-max-o mTitle:Ljava/lang/String;

.field private greylist mUri:Landroid/net/Uri;

.field private blacklist mVibrationEffect:Landroid/os/VibrationEffect;

.field private final blacklist mVibrator:Landroid/os/Vibrator;

.field private greylist-max-o mVolume:F

.field private blacklist mVolumeShaper:Landroid/media/VolumeShaper;

.field private blacklist mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsActiveRingtones()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 63
    const-string v0, "_id"

    const-string v1, "title"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 75
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 74
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$MyOnCompletionListener;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    .line 102
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 103
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 104
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 109
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/Ringtone;->mVolume:F

    .line 110
    iput-boolean v0, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    .line 120
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 121
    iget-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 122
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 123
    const/4 p1, 0x0

    if-eqz p2, :cond_49

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    goto :goto_4a

    :cond_49
    move-object v0, p1

    :goto_4a
    iput-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 124
    if-eqz p2, :cond_53

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    :cond_53
    iput-object p1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 125
    iget-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/Vibrator;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Landroid/media/Ringtone;->mVibrator:Landroid/os/Vibrator;

    .line 126
    iget-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/media/Utils;->isRingtoneVibrationSettingsSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/Ringtone;->mRingtoneVibrationSupported:Z

    .line 127
    return-void
.end method

.method private greylist-max-o applyPlaybackProperties_sync()V
    .registers 7

    .line 375
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_32

    .line 376
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mVolume:F

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 377
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 378
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    if-eqz v0, :cond_26

    .line 379
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/HapticGenerator;->create(I)Landroid/media/audiofx/HapticGenerator;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    .line 381
    :cond_26
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    if-eqz v0, :cond_56

    .line 382
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    iget-boolean v1, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    invoke-virtual {v0, v1}, Landroid/media/audiofx/HapticGenerator;->setEnabled(Z)I

    goto :goto_56

    .line 384
    :cond_32
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    const-string v1, "Ringtone"

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_51

    .line 386
    :try_start_3c
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget v3, p0, Landroid/media/Ringtone;->mVolume:F

    iget-boolean v4, p0, Landroid/media/Ringtone;->mIsLooping:Z

    iget-boolean v5, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/media/IRingtonePlayer;->setPlaybackProperties(Landroid/os/IBinder;FZZ)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_49} :catch_4a

    goto :goto_50

    .line 388
    :catch_4a
    move-exception v0

    .line 389
    const-string v2, "Problem setting playback properties: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    :goto_50
    goto :goto_56

    .line 392
    :cond_51
    const-string v0, "Neither local nor remote player available when applying playback properties"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_56
    :goto_56
    return-void
.end method

.method private greylist-max-o destroyLocalPlayer()V
    .registers 3

    .line 617
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_30

    .line 618
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 619
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    invoke-virtual {v0}, Landroid/media/audiofx/HapticGenerator;->release()V

    .line 620
    iput-object v1, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    .line 622
    :cond_10
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 623
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 624
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 625
    iput-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 626
    iput-object v1, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    .line 627
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v0

    .line 628
    :try_start_26
    sget-object v1, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 629
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw v1

    .line 631
    :cond_30
    :goto_30
    return-void
.end method

.method private blacklist getBuiltinDevice(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;
    .registers 7

    .line 189
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p1

    .line 190
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, p1, v2

    .line 191
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    if-ne v4, v0, :cond_12

    .line 192
    return-object v3

    .line 190
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 195
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public static greylist-max-o getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;
    .registers 11

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 415
    nop

    .line 417
    if-eqz p1, :cond_a6

    .line 418
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    const-string v2, "settings"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_35

    .line 421
    if-eqz p2, :cond_a5

    .line 422
    nop

    .line 423
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result p1

    .line 422
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 424
    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 426
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 427
    const p2, 0x1040988

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 429
    goto/16 :goto_a5

    .line 431
    :cond_35
    nop

    .line 433
    :try_start_36
    const-string p2, "media"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_69

    .line 434
    if-eqz p3, :cond_42

    move-object v3, v6

    goto :goto_45

    :cond_42
    const-string p2, "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

    move-object v3, p2

    .line 435
    :goto_45
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_47} :catch_75
    .catchall {:try_start_36 .. :try_end_47} :catchall_72

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_4a
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_4e} :catch_67
    .catchall {:try_start_4a .. :try_end_4e} :catchall_72

    .line 436
    if-eqz p1, :cond_6b

    :try_start_50
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_6b

    .line 437
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 438
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_5e
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_5e} :catch_65
    .catchall {:try_start_50 .. :try_end_5e} :catchall_88

    .line 456
    if-eqz p1, :cond_63

    .line 457
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_63
    nop

    .line 438
    return-object p0

    .line 442
    :catch_65
    move-exception v0

    goto :goto_78

    :catch_67
    move-exception v0

    goto :goto_77

    .line 433
    :cond_69
    move-object v1, p1

    move-object p1, v6

    .line 456
    :cond_6b
    if-eqz p1, :cond_70

    .line 457
    :goto_6d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_70
    nop

    .line 460
    goto :goto_9f

    .line 456
    :catchall_72
    move-exception v0

    move-object p0, v0

    goto :goto_94

    .line 442
    :catch_75
    move-exception v0

    move-object v1, p1

    :goto_77
    move-object p1, v6

    .line 443
    :goto_78
    nop

    .line 444
    if-eqz p3, :cond_8c

    .line 445
    :try_start_7b
    const-string p2, "audio"

    .line 446
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 447
    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object p2
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_88

    goto :goto_8d

    .line 456
    :catchall_88
    move-exception v0

    move-object p0, v0

    move-object v6, p1

    goto :goto_94

    .line 444
    :cond_8c
    move-object p2, v6

    .line 449
    :goto_8d
    if-eqz p2, :cond_9c

    .line 451
    :try_start_8f
    invoke-interface {p2, v1}, Landroid/media/IRingtonePlayer;->getTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_93} :catch_9b
    .catchall {:try_start_8f .. :try_end_93} :catchall_88

    .line 453
    goto :goto_9c

    .line 456
    :goto_94
    if-eqz v6, :cond_99

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_99
    nop

    .line 460
    throw p0

    .line 452
    :catch_9b
    move-exception v0

    .line 456
    :cond_9c
    :goto_9c
    if-eqz p1, :cond_70

    .line 457
    goto :goto_6d

    .line 461
    :goto_9f
    if-nez v6, :cond_a5

    .line 462
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 465
    :cond_a5
    :goto_a5
    goto :goto_ad

    .line 466
    :cond_a6
    const p1, 0x104098c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 469
    :goto_ad
    if-nez v6, :cond_ba

    .line 470
    const p1, 0x104098d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 471
    if-nez v6, :cond_ba

    .line 472
    const-string v6, ""

    .line 476
    :cond_ba
    return-object v6
.end method

.method private greylist-max-o playFallbackRingtone()Z
    .registers 11

    .line 669
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 670
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 671
    return v1

    .line 673
    :cond_10
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 674
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3c

    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 675
    invoke-static {v2, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 676
    const-string v0, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not playing fallback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return v1

    .line 681
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1100006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 683
    if-nez v0, :cond_53

    .line 684
    const-string v0, "Ringtone"

    const-string v2, "Could not load fallback ringtone"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return v1

    .line 687
    :cond_53
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 688
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_6e

    .line 689
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_7f

    .line 691
    :cond_6e
    iget-object v4, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 692
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    .line 693
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v8

    .line 691
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 695
    :goto_7f
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 696
    iget-object v2, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_89} :catch_b5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_89} :catch_ac

    .line 697
    :try_start_89
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 698
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_a9

    .line 699
    :try_start_8d
    iget-object v2, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v2, :cond_9b

    .line 700
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;

    move-result-object v2

    iput-object v2, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    .line 702
    :cond_9b
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 703
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    .line 704
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_a6} :catch_b5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8d .. :try_end_a6} :catch_ac

    .line 712
    nop

    .line 713
    const/4 v0, 0x1

    return v0

    .line 698
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw v0
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ac} :catch_b5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_ab .. :try_end_ac} :catch_ac

    .line 709
    :catch_ac
    move-exception v0

    .line 710
    const-string v0, "Ringtone"

    const-string v2, "Fallback ringtone does not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return v1

    .line 705
    :catch_b5
    move-exception v0

    .line 706
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 707
    const-string v0, "Ringtone"

    const-string v2, "Failed to open fallback ringtone"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return v1
.end method

.method private blacklist playVibration()V
    .registers 4

    .line 589
    iget-object v0, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-nez v0, :cond_5

    .line 590
    return-void

    .line 592
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/Ringtone;->mIsVibrating:Z

    .line 593
    iget-object v0, p0, Landroid/media/Ringtone;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v2, Landroid/media/Ringtone;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 594
    return-void
.end method

.method private greylist-max-o startLocalPlayer()V
    .registers 3

    .line 634
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 635
    return-void

    .line 637
    :cond_5
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v0

    .line 638
    :try_start_8
    sget-object v1, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_26

    .line 640
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 641
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 642
    iget-object v0, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    if-eqz v0, :cond_25

    .line 643
    iget-object v0, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    sget-object v1, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper;->apply(Landroid/media/VolumeShaper$Operation;)V

    .line 645
    :cond_25
    return-void

    .line 639
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method


# virtual methods
.method public blacklist createLocalMediaPlayer()Z
    .registers 7

    .line 218
    const-string v0, "createLocalMediaPlayer"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    .line 220
    const-string v0, "Ringtone"

    const-string v3, "Could not create media player as no URI was provided."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    .line 223
    :cond_1d
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 225
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 227
    :try_start_27
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 228
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 229
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 230
    iget-boolean v3, p0, Landroid/media/Ringtone;->mPreferBuiltinDevice:Z

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v3}, Landroid/media/Ringtone;->getBuiltinDevice(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    .line 229
    :goto_45
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 231
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_4b} :catch_66
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_4b} :catch_66

    .line 232
    :try_start_4b
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 233
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_63

    .line 234
    :try_start_4f
    iget-object v0, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v0, :cond_5d

    .line 235
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    .line 237
    :cond_5d
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_62
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_62} :catch_66
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_62} :catch_66

    .line 244
    goto :goto_86

    .line 233
    :catchall_63
    move-exception v3

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw v3
    :try_end_66
    .catch Ljava/lang/SecurityException; {:try_start_65 .. :try_end_66} :catch_66
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_66} :catch_66

    .line 239
    :catch_66
    move-exception v0

    .line 240
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 241
    iget-boolean v3, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v3, :cond_86

    .line 242
    const-string v3, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote playback not allowed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_86
    :goto_86
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_92

    .line 248
    const-string v0, "Ringtone"

    const-string v3, "Successfully created local player"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 250
    :cond_92
    const-string v0, "Ringtone"

    const-string v3, "Problem opening; delegating to remote player"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_99
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 254
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_aa

    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_a9

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_a9

    goto :goto_aa

    :cond_a9
    move v1, v2

    :cond_aa
    :goto_aa
    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 722
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 723
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 725
    :cond_9
    return-void
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getStreamType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public whitelist getTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 404
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    return-object p1

    .line 405
    :cond_7
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    invoke-static {p1, v0, v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method public greylist getUri()Landroid/net/Uri;
    .registers 2

    .line 532
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getVibrationEffect()Landroid/os/VibrationEffect;
    .registers 2

    .line 526
    iget-object v0, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public blacklist getVibrationStatsWriter()Lcom/android/internal/util/VibrationStatsWriter;
    .registers 2

    .line 585
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/VibrationStatsWriter;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/VibrationStatsWriter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVolume()F
    .registers 3

    .line 338
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget v1, p0, Landroid/media/Ringtone;->mVolume:F

    monitor-exit v0

    return v1

    .line 340
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist hasHapticChannels()Z
    .registers 6

    .line 266
    :try_start_0
    const-string v0, "Ringtone.hasHapticChannels"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 268
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_25

    aget-object v4, v0, v3

    .line 269
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->hasHapticChannels()Z

    move-result v4
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_2a

    if-eqz v4, :cond_22

    .line 270
    nop

    .line 275
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 270
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 275
    :cond_25
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 276
    nop

    .line 277
    return v1

    .line 275
    :catchall_2a
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 276
    throw v0
.end method

.method public blacklist hasLocalPlayer()Z
    .registers 2

    .line 286
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isHapticGeneratorEnabled()Z
    .registers 3

    .line 366
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_3
    iget-boolean v1, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    monitor-exit v0

    return v1

    .line 368
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist isLooping()Z
    .registers 3

    .line 314
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-boolean v1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    monitor-exit v0

    return v1

    .line 316
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist isPlaying()Z
    .registers 6

    .line 653
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 654
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    .line 655
    :cond_b
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    const/4 v1, 0x0

    const-string v2, "Ringtone"

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_37

    .line 657
    :try_start_16
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v0, v3}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1f

    return v0

    .line 658
    :catch_1f
    move-exception v0

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem checking ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return v1

    .line 663
    :cond_37
    const-string v0, "Neither local nor remote playback available"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return v1
.end method

.method public whitelist play()V
    .registers 9

    .line 539
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_28

    .line 542
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_16

    .line 544
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    goto :goto_7e

    .line 545
    :cond_16
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {p0}, Landroid/media/Ringtone;->hasHapticChannels()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 547
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    goto :goto_7e

    .line 549
    :cond_28
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_71

    .line 550
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v3

    .line 553
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_3d
    iget-boolean v6, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 555
    iget v5, p0, Landroid/media/Ringtone;->mVolume:F

    .line 556
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_6e

    .line 558
    :try_start_42
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget-object v4, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget-object v7, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-interface/range {v1 .. v7}, Landroid/media/IRingtonePlayer;->playWithVolumeShaping(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZLandroid/media/VolumeShaper$Configuration;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4d} :catch_4e

    .line 564
    goto :goto_6d

    .line 560
    :catch_4e
    move-exception v0

    .line 561
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 562
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem playing ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_6d
    :goto_6d
    goto :goto_7e

    .line 556
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    .line 566
    :cond_71
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 567
    const-string v0, "Ringtone"

    const-string v1, "Neither local nor remote playback available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_7e
    :goto_7e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->enableRingtoneHapticsCustomization()Z

    move-result v0

    if-eqz v0, :cond_96

    iget-boolean v0, p0, Landroid/media/Ringtone;->mRingtoneVibrationSupported:Z

    if-eqz v0, :cond_96

    .line 571
    invoke-direct {p0}, Landroid/media/Ringtone;->playVibration()V

    .line 576
    invoke-virtual {p0}, Landroid/media/Ringtone;->getVibrationStatsWriter()Lcom/android/internal/util/VibrationStatsWriter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/util/VibrationStatsWriter;->logCustomVibrationPatternEventIfNeeded(IILandroid/net/Uri;)V

    .line 580
    :cond_96
    return-void
.end method

.method public blacklist preferBuiltinDevice(Z)Z
    .registers 3

    .line 204
    iput-boolean p1, p0, Landroid/media/Ringtone;->mPreferBuiltinDevice:Z

    .line 205
    iget-object p1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_8

    .line 206
    const/4 p1, 0x1

    return p1

    .line 208
    :cond_8
    iget-object p1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Landroid/media/Ringtone;->getBuiltinDevice(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    return p1
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Landroid/media/Ringtone;->setAudioAttributesField(Landroid/media/AudioAttributes;)V

    .line 164
    iget-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {p0, p1, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V

    .line 165
    invoke-virtual {p0}, Landroid/media/Ringtone;->createLocalMediaPlayer()Z

    .line 166
    return-void
.end method

.method public blacklist setAudioAttributesField(Landroid/media/AudioAttributes;)V
    .registers 3

    .line 174
    if-eqz p1, :cond_5

    .line 177
    iput-object p1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 178
    return-void

    .line 175
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid null AudioAttributes for Ringtone"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setHapticGeneratorEnabled(Z)Z
    .registers 3

    .line 351
    invoke-static {}, Landroid/media/audiofx/HapticGenerator;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 352
    const/4 p1, 0x0

    return p1

    .line 354
    :cond_8
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_b
    iput-boolean p1, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    .line 356
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 357
    monitor-exit v0

    .line 358
    const/4 p1, 0x1

    return p1

    .line 357
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p1
.end method

.method public whitelist setLooping(Z)V
    .registers 3

    .line 303
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_3
    iput-boolean p1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 305
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 306
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist setStreamType(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    const-string v0, "Ringtone"

    const-string v1, "setStreamType()"

    invoke-static {p1, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 139
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 141
    return-void
.end method

.method greylist-max-o setTitle(Ljava/lang/String;)V
    .registers 2

    .line 717
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 718
    return-void
.end method

.method public greylist setUri(Landroid/net/Uri;)V
    .registers 3

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V

    .line 488
    return-void
.end method

.method public blacklist setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V
    .registers 4

    .line 505
    iput-object p2, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    .line 506
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 507
    iget-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-nez p1, :cond_b

    .line 508
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 510
    :cond_b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->enableRingtoneHapticsCustomization()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-boolean p1, p0, Landroid/media/Ringtone;->mRingtoneVibrationSupported:Z

    if-eqz p1, :cond_36

    iget-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_36

    .line 512
    iget-object p1, p0, Landroid/media/Ringtone;->mVibrator:Landroid/os/Vibrator;

    iget-object p2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {p2}, Landroid/media/Utils;->getVibrationUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/media/Utils;->parseVibrationEffect(Landroid/os/Vibrator;Landroid/net/Uri;)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 513
    iget-object p1, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz p1, :cond_36

    .line 514
    iget-object p1, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 515
    const/4 p2, 0x1

    const/16 v0, 0xc8

    invoke-virtual {p1, p2, v0}, Landroid/os/VibrationEffect;->applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 518
    :cond_36
    return-void
.end method

.method public whitelist setVolume(F)V
    .registers 5

    .line 325
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_9

    move p1, v1

    .line 327
    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_10

    move p1, v1

    .line 328
    :cond_10
    :try_start_10
    iput p1, p0, Landroid/media/Ringtone;->mVolume:F

    .line 329
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public blacklist setVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)V
    .registers 2

    .line 494
    iput-object p1, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    .line 495
    return-void
.end method

.method public whitelist stop()V
    .registers 4

    .line 600
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    .line 601
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    goto :goto_31

    .line 602
    :cond_8
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_31

    .line 604
    :try_start_10
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_18

    .line 607
    goto :goto_31

    .line 605
    :catch_18
    move-exception v0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem stopping ringtone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ringtone"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_31
    :goto_31
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->enableRingtoneHapticsCustomization()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Landroid/media/Ringtone;->mRingtoneVibrationSupported:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Landroid/media/Ringtone;->mIsVibrating:Z

    if-eqz v0, :cond_47

    .line 611
    iget-object v0, p0, Landroid/media/Ringtone;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone;->mIsVibrating:Z

    .line 614
    :cond_47
    return-void
.end method
