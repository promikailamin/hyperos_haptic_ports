.class public final Landroid/media/AudioPlaybackConfiguration;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPlaybackConfiguration$IPlayerShell;,
        Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;,
        Landroid/media/AudioPlaybackConfiguration$FormatInfo;,
        Landroid/media/AudioPlaybackConfiguration$PlayerMuteEvent;,
        Landroid/media/AudioPlaybackConfiguration$PlayerState;,
        Landroid/media/AudioPlaybackConfiguration$PlayerType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist EXTRA_PLAYER_EVENT_CHANNEL_MASK:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_CHANNEL_MASK"

.field public static final blacklist EXTRA_PLAYER_EVENT_MUTE:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_MUTE"

.field public static final blacklist EXTRA_PLAYER_EVENT_SAMPLE_RATE:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_SAMPLE_RATE"

.field public static final blacklist EXTRA_PLAYER_EVENT_SPATIALIZED:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_SPATIALIZED"

.field public static final whitelist MUTED_BY_APP_OPS:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_CLIENT_VOLUME:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_MASTER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_OP_CONTROL_AUDIO:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_OP_PLAY_AUDIO:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_PORT_VOLUME:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_STREAM_MUTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_STREAM_VOLUME:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_VOLUME_SHAPER:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PLAYER_DEVICEIDS_INVALID:[I

.field public static final blacklist PLAYER_DEVICEID_INVALID:I = 0x0

.field public static final greylist-max-o PLAYER_PIID_INVALID:I = -0x1

.field public static final whitelist PLAYER_STATE_IDLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_PAUSED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_RELEASED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_STARTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_STOPPED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_AAUDIO:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o PLAYER_TYPE_EXTERNAL_PROXY:I = 0xf

.field public static final greylist-max-o PLAYER_TYPE_HW_SOURCE:I = 0xe

.field public static final whitelist PLAYER_TYPE_JAM_AUDIOTRACK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_JAM_MEDIAPLAYER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_JAM_SOUNDPOOL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_SLES_AUDIOPLAYER_BUFFERQUEUE:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_SLES_AUDIOPLAYER_URI_FD:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PLAYER_UPDATE_DEVICE_ID:I = 0x5

.field public static final blacklist PLAYER_UPDATE_FORMAT:I = 0x8

.field public static final blacklist PLAYER_UPDATE_MUTED:I = 0x7

.field public static final blacklist PLAYER_UPDATE_PORT_ID:I = 0x6

.field public static final greylist-max-o PLAYER_UPID_INVALID:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field public static greylist-max-o sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;


# instance fields
.field private greylist-max-o mClientPid:I

.field private greylist-max-o mClientUid:I

.field private blacklist mDeviceIds:[I

.field private blacklist mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

.field private greylist-max-o mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

.field private blacklist mMutedState:I

.field private greylist-max-o mPlayerAttr:Landroid/media/AudioAttributes;

.field private final greylist-max-o mPlayerIId:I

.field private greylist-max-o mPlayerState:I

.field private greylist-max-o mPlayerType:I

.field private blacklist mSessionId:I

.field private final blacklist mUpdateablePropLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPlayerIId(Landroid/media/AudioPlaybackConfiguration;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mplayerDied(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioPlaybackConfiguration;->playerDied()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Ljava/lang/String;

    const-string v1, "AudioPlaybackConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    .line 825
    new-instance v0, Landroid/media/AudioPlaybackConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioPlaybackConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 3

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    .line 360
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 373
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    .line 374
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 375
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/PlayerBase$PlayerIdCard;III)V
    .registers 6

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    .line 360
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 385
    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    .line 386
    iget p2, p1, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 387
    iput p3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    .line 388
    iput p4, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    .line 389
    const/4 p2, 0x0

    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    .line 390
    sget-object p2, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    iput-object p2, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 391
    const/4 p2, 0x1

    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 392
    iget-object p2, p1, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    iput-object p2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 393
    sget-object p2, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz p2, :cond_38

    iget-object p2, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    if-eqz p2, :cond_38

    .line 394
    new-instance p2, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    iget-object p3, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    invoke-direct {p2, p0, p3}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    iput-object p2, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    goto :goto_3b

    .line 396
    :cond_38
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 398
    :goto_3b
    iget p1, p1, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    .line 399
    sget-object p1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 400
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    .line 360
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 877
    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 878
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 880
    :cond_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    .line 881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    .line 884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 885
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 886
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;

    move-result-object v0

    .line 887
    const/4 v1, 0x0

    if-nez v0, :cond_61

    goto :goto_67

    :cond_61
    new-instance v2, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-direct {v2, v1, v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    move-object v1, v2

    :goto_67
    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 888
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    .line 889
    sget-object v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 890
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioPlaybackConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioPlaybackConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;
    .registers 7

    .line 433
    new-instance v0, Landroid/media/AudioPlaybackConfiguration;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-direct {v0, v1}, Landroid/media/AudioPlaybackConfiguration;-><init>(I)V

    .line 434
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    iput v1, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 436
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 437
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 438
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 440
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 441
    goto :goto_2f

    :cond_2e
    const/4 v3, 0x3

    .line 439
    :goto_2f
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 442
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 443
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setSystemUsage(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_52

    .line 445
    :cond_49
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 448
    :goto_52
    iget-object p0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getTestId()J

    move-result-wide v2

    .line 449
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p0, v2, v4

    if-eqz p0, :cond_61

    .line 450
    invoke-virtual {v1, v2, v3}, Landroid/media/AudioAttributes$Builder;->setTestId(J)Landroid/media/AudioAttributes$Builder;

    .line 452
    :cond_61
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    iput-object p0, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 454
    const/4 p0, -0x1

    iput p0, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 455
    iput p0, v0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    .line 456
    iput p0, v0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    .line 457
    const/4 p0, 0x0

    iput-object p0, v0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 458
    const/4 p0, 0x0

    new-array v1, p0, [I

    sget-object v2, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-direct {v0, v1, p0, p0, v2}, Landroid/media/AudioPlaybackConfiguration;->setUpdateableFields([IIILandroid/media/AudioPlaybackConfiguration$FormatInfo;)V

    .line 463
    return-object v0
.end method

.method private blacklist isMuteAffectingActiveState()Z
    .registers 2

    .line 787
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_21

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_21

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_21

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_21

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method private greylist-max-o playerDied()V
    .registers 3

    .line 781
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz v0, :cond_b

    .line 782
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-interface {v0, v1}, Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;->playerDeath(I)V

    .line 784
    :cond_b
    return-void
.end method

.method public static blacklist playerStateToString(I)Ljava/lang/String;
    .registers 3

    .line 215
    packed-switch p0, :pswitch_data_36

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 225
    :pswitch_17
    const-string p0, "PLAYER_UPDATE_FORMAT"

    return-object p0

    .line 224
    :pswitch_1a
    const-string p0, "PLAYER_UPDATE_MUTED"

    return-object p0

    .line 223
    :pswitch_1d
    const-string p0, "PLAYER_UPDATE_PORT_ID"

    return-object p0

    .line 222
    :pswitch_20
    const-string p0, "PLAYER_UPDATE_DEVICE_ID"

    return-object p0

    .line 221
    :pswitch_23
    const-string p0, "PLAYER_STATE_STOPPED"

    return-object p0

    .line 220
    :pswitch_26
    const-string p0, "PLAYER_STATE_PAUSED"

    return-object p0

    .line 219
    :pswitch_29
    const-string p0, "PLAYER_STATE_STARTED"

    return-object p0

    .line 218
    :pswitch_2c
    const-string p0, "PLAYER_STATE_IDLE"

    return-object p0

    .line 217
    :pswitch_2f
    const-string p0, "PLAYER_STATE_RELEASED"

    return-object p0

    .line 216
    :pswitch_32
    const-string p0, "PLAYER_STATE_UNKNOWN"

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch -0x1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist setUpdateableFields([IIILandroid/media/AudioPlaybackConfiguration$FormatInfo;)V
    .registers 6

    .line 417
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_3
    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 419
    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    .line 420
    iput p3, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    .line 421
    iput-object p4, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 422
    monitor-exit v0

    .line 423
    return-void

    .line 422
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public static greylist-max-o toLogFriendlyPlayerState(I)Ljava/lang/String;
    .registers 1

    .line 1098
    packed-switch p0, :pswitch_data_22

    .line 1109
    const-string p0, "unknown player state - FIXME"

    return-object p0

    .line 1107
    :pswitch_6
    const-string p0, "muted updated"

    return-object p0

    .line 1106
    :pswitch_9
    const-string p0, "port updated"

    return-object p0

    .line 1105
    :pswitch_c
    const-string p0, "device updated"

    return-object p0

    .line 1104
    :pswitch_f
    const-string p0, "stopped"

    return-object p0

    .line 1103
    :pswitch_12
    const-string p0, "paused"

    return-object p0

    .line 1102
    :pswitch_15
    const-string p0, "started"

    return-object p0

    .line 1101
    :pswitch_18
    const-string p0, "idle"

    return-object p0

    .line 1100
    :pswitch_1b
    const-string p0, "released"

    return-object p0

    .line 1099
    :pswitch_1e
    const-string p0, "unknown"

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch -0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o toLogFriendlyPlayerType(I)Ljava/lang/String;
    .registers 3

    .line 1079
    packed-switch p0, :pswitch_data_38

    .line 1092
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown player type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " - FIXME"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1090
    :pswitch_1d
    const-string p0, "external proxy"

    return-object p0

    .line 1089
    :pswitch_20
    const-string p0, "hardware source"

    return-object p0

    .line 1088
    :pswitch_23
    const-string p0, "AAudio"

    return-object p0

    .line 1087
    :pswitch_26
    const-string p0, "OpenSL ES AudioPlayer (URI/FD)"

    return-object p0

    .line 1085
    :pswitch_29
    const-string p0, "OpenSL ES AudioPlayer (Buffer Queue)"

    return-object p0

    .line 1083
    :pswitch_2c
    const-string p0, "android.media.SoundPool"

    return-object p0

    .line 1082
    :pswitch_2f
    const-string p0, "android.media.MediaPlayer"

    return-object p0

    .line 1081
    :pswitch_32
    const-string p0, "android.media.AudioTrack"

    return-object p0

    .line 1080
    :pswitch_35
    const-string p0, "unknown"

    return-object p0

    :pswitch_data_38
    .packed-switch -0x1
        :pswitch_35
        :pswitch_3
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 894
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 895
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    instance-of v2, p1, Landroid/media/AudioPlaybackConfiguration;

    if-nez v2, :cond_c

    goto :goto_3f

    .line 897
    :cond_c
    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    .line 899
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    iget v3, p1, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    if-ne v2, v3, :cond_3d

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    iget-object v3, p1, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 900
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    iget v3, p1, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-ne v2, v3, :cond_3d

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iget v3, p1, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    if-ne v2, v3, :cond_3d

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iget v3, p1, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    if-ne v2, v3, :cond_3d

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    iget v3, p1, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    if-ne v2, v3, :cond_3d

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    iget p1, p1, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    if-ne v2, p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    .line 899
    :goto_3e
    return v0

    .line 895
    :cond_3f
    :goto_3f
    return v1
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 471
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 504
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 506
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    .line 507
    array-length v0, v1

    if-nez v0, :cond_b

    .line 508
    const/4 v0, 0x0

    return-object v0

    .line 510
    :cond_b
    const/4 v0, 0x0

    aget v0, v1, v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0

    .line 506
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist getAudioDeviceInfos()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 526
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1f

    .line 528
    const/4 v1, 0x0

    :goto_c
    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 529
    aget v3, v2, v1

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 531
    if-eqz v3, :cond_1b

    .line 532
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 535
    :cond_1e
    return-object v0

    .line 526
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public whitelist getChannelMask()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 668
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iget v1, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    invoke-static {v1}, Landroid/media/AudioFormat;->convertNativeChannelMaskToOutMask(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 670
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist getClientPid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 491
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    return v0
.end method

.method public whitelist getClientUid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 481
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    return v0
.end method

.method greylist-max-o getIPlayer()Landroid/media/IPlayer;
    .registers 2

    .line 679
    monitor-enter p0

    .line 680
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 681
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    .line 682
    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v0

    :goto_c
    return-object v0

    .line 681
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public whitelist getMutedBy()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 575
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_3
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    monitor-exit v0

    return v1

    .line 577
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getPlayerInterfaceId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 618
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return v0
.end method

.method public whitelist getPlayerProxy()Landroid/media/PlayerProxy;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 629
    monitor-enter p0

    .line 630
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 631
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 632
    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_d

    :cond_8
    new-instance v0, Landroid/media/PlayerProxy;

    invoke-direct {v0, p0}, Landroid/media/PlayerProxy;-><init>(Landroid/media/AudioPlaybackConfiguration;)V

    :goto_d
    return-object v0

    .line 631
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public whitelist getPlayerState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 608
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    return v0
.end method

.method public whitelist getPlayerType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 589
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    packed-switch v0, :pswitch_data_a

    .line 594
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    return v0

    .line 592
    :pswitch_8
    const/4 v0, -0x1

    return v0

    :pswitch_data_a
    .packed-switch 0xe
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist getSampleRate()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 655
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iget v1, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    monitor-exit v0

    return v1

    .line 657
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist getSessionId()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 546
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_3
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    monitor-exit v0

    return v1

    .line 548
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist-max-o handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z
    .registers 3

    .line 691
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 692
    xor-int/lit8 v0, v0, 0x1

    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 693
    return v0
.end method

.method public blacklist handleFormatEvent(Landroid/media/AudioPlaybackConfiguration$FormatInfo;)Z
    .registers 4

    .line 730
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-virtual {v1, p1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 732
    :goto_e
    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 733
    monitor-exit v0

    return v1

    .line 734
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public blacklist handleMutedEvent(I)Z
    .registers 4

    .line 716
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 717
    :try_start_3
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-eq v1, p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 718
    :goto_a
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    .line 719
    monitor-exit v0

    return v1

    .line 720
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist handleSessionIdEvent(I)Z
    .registers 4

    .line 702
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_3
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    if-eq p1, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 704
    :goto_a
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    .line 705
    monitor-exit v0

    return v1

    .line 706
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist handleStateEvent(I[I)Z
    .registers 9

    .line 750
    nop

    .line 751
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq p1, v2, :cond_15

    .line 755
    :try_start_9
    iget v4, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    if-eq v4, p1, :cond_f

    move v4, v1

    goto :goto_10

    :cond_f
    move v4, v3

    .line 756
    :goto_10
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    goto :goto_16

    .line 768
    :catchall_13
    move-exception p1

    goto :goto_3c

    .line 754
    :cond_15
    move v4, v3

    .line 759
    :goto_16
    const/4 v5, 0x2

    if-eq p1, v5, :cond_1b

    if-ne p1, v2, :cond_2a

    .line 760
    :cond_1b
    if-nez v4, :cond_27

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_27

    :cond_26
    move v1, v3

    .line 761
    :cond_27
    :goto_27
    iput-object p2, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    move v4, v1

    .line 764
    :cond_2a
    if-eqz v4, :cond_3a

    if-nez p1, :cond_3a

    iget-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz p1, :cond_3a

    .line 765
    iget-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->release()V

    .line 766
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 768
    :cond_3a
    monitor-exit v0

    .line 769
    return v4

    .line 768
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_13

    throw p1
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 842
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v1

    .line 843
    :try_start_3
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    .line 844
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 843
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 845
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public greylist-max-o init()V
    .registers 2

    .line 406
    monitor-enter p0

    .line 407
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz v0, :cond_a

    .line 408
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->monitorDeath()V

    .line 410
    :cond_a
    monitor-exit p0

    .line 411
    return-void

    .line 410
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public whitelist isActive()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 803
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    packed-switch v0, :pswitch_data_e

    .line 812
    const/4 v0, 0x0

    return v0

    .line 805
    :pswitch_7
    invoke-direct {p0}, Landroid/media/AudioPlaybackConfiguration;->isMuteAffectingActiveState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist isMuted()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 561
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_3
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 563
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist isSpatialized()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 643
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iget-boolean v1, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    monitor-exit v0

    return v1

    .line 645
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 911
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v1

    .line 912
    :try_start_8
    const-string v2, "AudioPlaybackConfiguration piid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deviceIds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 913
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 914
    invoke-static {v3}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object v3

    .line 913
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " u/pid:"

    .line 914
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    .line 915
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    .line 916
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 917
    invoke-static {v3}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v3

    .line 916
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attr:"

    .line 917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sessionId:"

    .line 918
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    .line 919
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mutedState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-nez v2, :cond_83

    .line 921
    const-string v2, "none "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_db

    .line 923
    :cond_83
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8e

    .line 924
    const-string v2, "master "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :cond_8e
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_99

    .line 927
    const-string v2, "streamVolume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    :cond_99
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a4

    .line 930
    const-string v2, "streamMute "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    :cond_a4
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_af

    .line 933
    const-string v2, "opPlayAudio "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    :cond_af
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_ba

    .line 936
    const-string v2, "clientVolume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    :cond_ba
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_c5

    .line 939
    const-string v2, "volumeShaper "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    :cond_c5
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_d0

    .line 942
    const-string v2, "portVolume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    :cond_d0
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_db

    .line 945
    const-string v2, "opControlAudio "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    :cond_db
    :goto_db
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 949
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_8 .. :try_end_e7} :catchall_ec

    .line 950
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 949
    :catchall_ec
    move-exception v0

    :try_start_ed
    monitor-exit v1
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 855
    iget-object p2, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter p2

    .line 856
    :try_start_3
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 858
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 865
    monitor-enter p0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_4a

    .line 866
    :try_start_2d
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 867
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_47

    .line 868
    if-nez v0, :cond_34

    const/4 v0, 0x0

    goto :goto_38

    :cond_34
    :try_start_34
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v0

    :goto_38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 869
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 871
    monitor-exit p2
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_4a

    .line 872
    return-void

    .line 867
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw p1

    .line 871
    :catchall_4a
    move-exception p1

    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4a

    throw p1
.end method
