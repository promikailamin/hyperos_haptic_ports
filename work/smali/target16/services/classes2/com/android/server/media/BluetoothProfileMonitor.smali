.class public Lcom/android/server/media/BluetoothProfileMonitor;
.super Ljava/lang/Object;
.source "BluetoothProfileMonitor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothProfileMonitor"


# instance fields
.field public mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

.field public mAssistantProfile:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

.field public final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mBroadcastAssistantCallback:Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;

.field public final mBroadcastCallback:Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;

.field public mBroadcastId:I

.field public mBroadcastProfile:Landroid/bluetooth/BluetoothLeBroadcast;

.field public final mContext:Landroid/content/Context;

.field public final mDevicesToAdd:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

.field public mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

.field public final mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

.field public mSinkChangedListener:Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;

.field public final mVolumeCallback:Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;

.field public final mVolumeMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mVolumeProfile:Landroid/bluetooth/BluetoothVolumeControl;


# direct methods
.method public static synthetic $r8$lambda$8QbUBpMlPffGgO6GqyeYcfknEXk(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->lambda$isDeviceInBroadcast$3(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BT1D0bKdYJbcuKQbIev0p2OTAo0()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$SCMV3bAgOuZ2Q2vU9OJ2m0dqYZw(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->lambda$getDevicesWithBroadcastSource$2(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$n1DfXOOOOP8xeEIl3IQwE0iya0M(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->lambda$getDevicesWithBroadcastSource$1(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAssistantProfile(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mAssistantProfile:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastAssistantCallback(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastAssistantCallback:Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastCallback(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastCallback:Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastProfile(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/bluetooth/BluetoothLeBroadcast;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastProfile:Landroid/bluetooth/BluetoothLeBroadcast;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevicesToAdd(Lcom/android/server/media/BluetoothProfileMonitor;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mDevicesToAdd:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSinkChangedListener(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mSinkChangedListener:Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeCallback(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mVolumeCallback:Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeMap(Lcom/android/server/media/BluetoothProfileMonitor;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mVolumeMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeProfile(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/bluetooth/BluetoothVolumeControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mVolumeProfile:Landroid/bluetooth/BluetoothVolumeControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmA2dpProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothA2dp;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAssistantProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeBroadcastAssistant;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mAssistantProfile:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBroadcastId(Lcom/android/server/media/BluetoothProfileMonitor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBroadcastProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeBroadcast;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastProfile:Landroid/bluetooth/BluetoothLeBroadcast;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHearingAidProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothHearingAid;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLeAudioProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeAudio;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVolumeProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothVolumeControl;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mVolumeProfile:Landroid/bluetooth/BluetoothVolumeControl;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddSourceToDevices(Lcom/android/server/media/BluetoothProfileMonitor;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->addSourceToDevices(Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 6

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothProfileMonitor-IA;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    .line 82
    new-instance v0, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothProfileMonitor-IA;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastCallback:Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;

    .line 83
    new-instance v0, Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothProfileMonitor-IA;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mVolumeCallback:Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;

    .line 85
    new-instance v0, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothProfileMonitor-IA;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastAssistantCallback:Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mDevicesToAdd:Ljava/util/List;

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastId:I

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mVolumeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    .line 120
    new-instance p1, Landroid/os/Handler;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Landroid/bluetooth/BluetoothAdapter;

    iput-object p3, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 123
    new-instance p1, Lcom/android/server/media/BluetoothProfileMonitor$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/media/BluetoothProfileMonitor$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mSinkChangedListener:Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;

    return-void
.end method

.method public static generateRandomPassword()Ljava/lang/String;
    .registers 6

    .line 400
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_21

    const/16 v4, 0x59

    .line 404
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    .line 405
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+[]{}|;:,.<>?/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 408
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addSourceToDevices(Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 6

    .line 325
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mAssistantProfile:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    if-nez v0, :cond_c

    .line 326
    sget-object p0, Lcom/android/server/media/BluetoothProfileMonitor;->TAG:Ljava/lang/String;

    const-string p1, "BroadcastAssistant is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-nez p2, :cond_16

    .line 331
    sget-object p0, Lcom/android/server/media/BluetoothProfileMonitor;->TAG:Ljava/lang/String;

    const-string p1, "BroadcastMetadata is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 335
    :cond_16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 336
    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mAssistantProfile:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    goto :goto_1a

    :cond_2d
    return-void
.end method

.method public final buildBroadcastSettings(Ljava/lang/String;[BLjava/util/List;)Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .registers 5

    .line 426
    new-instance p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;-><init>()V

    const/4 v0, 0x1

    .line 428
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setPublicBroadcast(Z)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object p0

    .line 431
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setBroadcastName(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object p0

    .line 432
    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object p0

    .line 433
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    .line 434
    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->addSubgroupSettings(Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    goto :goto_16

    .line 436
    :cond_26
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSettings;

    move-result-object p0

    return-object p0
.end method

.method public final buildBroadcastSubgroupSettings(Ljava/lang/String;Ljava/lang/String;Z)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
    .registers 4

    .line 441
    new-instance p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;-><init>()V

    .line 443
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setLanguage(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    move-result-object p0

    .line 444
    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setProgramInfo(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    move-result-object p0

    .line 445
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object p0

    .line 448
    new-instance p1, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    invoke-direct {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;-><init>()V

    xor-int/lit8 p2, p3, 0x1

    .line 449
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->setPreferredQuality(I)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    move-result-object p1

    .line 453
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    move-result-object p0

    .line 454
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    move-result-object p0

    return-object p0
.end method

.method public final getBroadcastCode()[B
    .registers 3

    .line 342
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 344
    const-string v0, "bluetooth_le_broadcast_code"

    .line 348
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 345
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1d

    .line 352
    invoke-static {}, Lcom/android/server/media/BluetoothProfileMonitor;->generateRandomPassword()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    goto :goto_23

    .line 353
    :cond_1d
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_23
    if-eqz p0, :cond_29

    .line 355
    array-length v0, p0

    if-lez v0, :cond_29

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBroadcastName()Ljava/lang/String;
    .registers 5

    .line 360
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 361
    const-string v0, "bluetooth_le_broadcast_name"

    .line 365
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 362
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 367
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    return-object p0

    .line 368
    :cond_1a
    :goto_1a
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    const/16 v0, 0x3e8

    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result p0

    .line 369
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 370
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 371
    :cond_36
    const-string v0, "Broadcast"

    .line 373
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1b

    if-ge v2, v3, :cond_46

    goto :goto_4b

    :cond_46
    const/4 v2, 0x0

    .line 375
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceVolume(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isDeviceInBroadcast(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_18

    .line 473
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mVolumeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_18
    return v1
.end method

.method public getDevicesWithBroadcastSource()Ljava/util/List;
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mAssistantProfile:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    if-nez v0, :cond_7

    .line 293
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 296
    :cond_7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/BluetoothProfileMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/media/BluetoothProfileMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;)V

    .line 297
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 302
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGroupId(ILandroid/bluetooth/BluetoothDevice;)J
    .registers 6

    .line 172
    monitor-enter p0

    const/4 v0, 0x2

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x15

    if-eq p1, v0, :cond_33

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1c

    .line 177
    :try_start_e
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    if-nez p1, :cond_13

    goto :goto_18

    :cond_13
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    int-to-long v1, p1

    :goto_18
    monitor-exit p0

    return-wide v1

    :catchall_1a
    move-exception p1

    goto :goto_40

    .line 183
    :cond_1c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported as Bluetooth profile"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 180
    :cond_33
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p1, :cond_38

    goto :goto_3c

    .line 181
    :cond_38
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v1

    :goto_3c
    monitor-exit p0

    return-wide v1

    .line 175
    :cond_3e
    monitor-exit p0

    return-wide v1

    .line 186
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_1a

    throw p1
.end method

.method public getMaximumNumberOfBroadcasts()I
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastProfile:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getMaximumNumberOfBroadcasts()I

    move-result p0

    return p0
.end method

.method public final getProgramInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 384
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 386
    const-string v0, "bluetooth_le_broadcast_program_info"

    .line 390
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 387
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 392
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    return-object p0

    :cond_1a
    :goto_1a
    return-object p1
.end method

.method public isDeviceInBroadcast(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    .line 458
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mAssistantProfile:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_1d

    iget v1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastId:I

    if-eqz v1, :cond_1d

    .line 460
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/media/BluetoothProfileMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/media/BluetoothProfileMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;)V

    .line 461
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public final isImproveQualityFlagEnabled()Z
    .registers 3

    .line 412
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 415
    const-string v0, "bluetooth_le_broadcast_improve_compatibility"

    .line 419
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 416
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 415
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isMediaOnlyDeviceInBroadcast(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    const/16 v0, 0x16

    .line 491
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->getGroupId(ILandroid/bluetooth/BluetoothDevice;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    const/4 v4, 0x0

    if-nez p1, :cond_15

    .line 493
    sget-object p0, Lcom/android/server/media/BluetoothProfileMonitor;->TAG:Ljava/lang/String;

    const-string p1, "isMediaOnlyDeviceInBroadcast, invalid group id"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 498
    :cond_15
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz p0, :cond_1e

    .line 499
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudio;->getBroadcastToUnicastFallbackGroup()I

    move-result p0

    int-to-long v2, p0

    :cond_1e
    cmp-long p0, v0, v2

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    return v4
.end method

.method public isProfileSupported(ILandroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    .line 147
    monitor-enter p0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x15

    if-eq p1, v0, :cond_28

    const/16 v0, 0x16

    if-ne p1, v0, :cond_11

    .line 153
    :try_start_c
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_2d

    :catchall_f
    move-exception p1

    goto :goto_3b

    .line 159
    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported as Bluetooth profile"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 156
    :cond_28
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_2d

    .line 150
    :cond_2b
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 162
    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_f

    if-nez p1, :cond_32

    const/4 p0, 0x0

    return p0

    .line 168
    :cond_32
    invoke-interface {p1}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 162
    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_f

    throw p1
.end method

.method public final synthetic lambda$getDevicesWithBroadcastSource$1(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .registers 2

    .line 301
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result p1

    iget p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastId:I

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$getDevicesWithBroadcastSource$2(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mAssistantProfile:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/media/BluetoothProfileMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/media/BluetoothProfileMonitor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;)V

    .line 300
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$isDeviceInBroadcast$3(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .registers 2

    .line 461
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result p1

    iget p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastId:I

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public setDeviceVolume(Landroid/bluetooth/BluetoothDevice;IZ)V
    .registers 4

    .line 466
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mVolumeProfile:Landroid/bluetooth/BluetoothVolumeControl;

    if-eqz p0, :cond_7

    .line 467
    invoke-virtual {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothVolumeControl;->setDeviceVolume(Landroid/bluetooth/BluetoothDevice;IZ)V

    :cond_7
    return-void
.end method

.method public start(Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;)V
    .registers 5

    .line 130
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mSinkChangedListener:Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;

    .line 131
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 132
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    const/16 v2, 0x15

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 133
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    const/16 v2, 0x16

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 135
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    const/16 v2, 0x1a

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 137
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    const/16 v2, 0x1d

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 139
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method public declared-synchronized startBroadcast(Ljava/util/List;)V
    .registers 6

    monitor-enter p0

    .line 195
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_26

    .line 196
    sget-object v0, Lcom/android/server/media/BluetoothProfileMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient number of device to start broadcast: need to have at least 2 device(s) to start broadcast, current no. of selected device(s) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 202
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    goto :goto_9d

    .line 205
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastProfile:Landroid/bluetooth/BluetoothLeBroadcast;

    if-nez v0, :cond_33

    .line 207
    sget-object p1, Lcom/android/server/media/BluetoothProfileMonitor;->TAG:Ljava/lang/String;

    const-string v0, "Fail to start broadcast, LeBroadcast is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_24

    .line 208
    monitor-exit p0

    return-void

    .line 211
    :cond_33
    :try_start_33
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->getMaximumNumberOfBroadcasts()I

    move-result v1

    if-lt v0, v1, :cond_6f

    .line 212
    sget-object p1, Lcom/android/server/media/BluetoothProfileMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to start broadcast, current number of broadcasting group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastProfile:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 215
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exceeds the maximum allowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->getMaximumNumberOfBroadcasts()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_33 .. :try_end_6d} :catchall_24

    .line 218
    monitor-exit p0

    return-void

    .line 223
    :cond_6f
    :try_start_6f
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->getBroadcastName()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/server/media/BluetoothProfileMonitor;->getProgramInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->isImproveQualityFlagEnabled()Z

    move-result v2

    const/4 v3, 0x0

    .line 227
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/media/BluetoothProfileMonitor;->buildBroadcastSubgroupSettings(Ljava/lang/String;Ljava/lang/String;Z)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->getBroadcastCode()[B

    move-result-object v2

    .line 235
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 232
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/media/BluetoothProfileMonitor;->buildBroadcastSettings(Ljava/lang/String;[BLjava/util/List;)Landroid/bluetooth/BluetoothLeBroadcastSettings;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mDevicesToAdd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 238
    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mDevicesToAdd:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastProfile:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcast;->startBroadcast(Landroid/bluetooth/BluetoothLeBroadcastSettings;)V
    :try_end_9b
    .catchall {:try_start_6f .. :try_end_9b} :catchall_24

    .line 240
    monitor-exit p0

    return-void

    :goto_9d
    :try_start_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_24

    throw p1
.end method

.method public declared-synchronized stopBroadcast()V
    .registers 3

    monitor-enter p0

    .line 244
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastProfile:Landroid/bluetooth/BluetoothLeBroadcast;

    if-nez v0, :cond_10

    .line 245
    sget-object v0, Lcom/android/server/media/BluetoothProfileMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Fail to stop broadcast, LeBroadcast is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 246
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    goto :goto_17

    .line 248
    :cond_10
    :try_start_10
    iget v1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastId:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcast;->stopBroadcast(I)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_e

    .line 249
    monitor-exit p0

    return-void

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_e

    throw v0
.end method

.method public declared-synchronized stopBroadcast(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    monitor-enter p0

    .line 261
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastProfile:Landroid/bluetooth/BluetoothLeBroadcast;

    if-nez v0, :cond_10

    .line 262
    sget-object p1, Lcom/android/server/media/BluetoothProfileMonitor;->TAG:Ljava/lang/String;

    const-string v0, "Fail to stop broadcast, LeBroadcast is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 263
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_79

    .line 265
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    if-nez v0, :cond_1c

    .line 266
    sget-object p1, Lcom/android/server/media/BluetoothProfileMonitor;->TAG:Ljava/lang/String;

    const-string v0, "Fail to set fall back group, LeProfile is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    :cond_1c
    const/4 v0, -0x1

    if-eqz p1, :cond_2e

    const/16 v1, 0x16

    .line 271
    invoke-virtual {p0, v1, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_2e

    .line 273
    :cond_28
    invoke-virtual {p0, v1, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->getGroupId(ILandroid/bluetooth/BluetoothDevice;)J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v1, v0

    :goto_2f
    if-eqz p1, :cond_54

    if-ne v1, v0, :cond_54

    .line 277
    sget-object v0, Lcom/android/server/media/BluetoothProfileMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopBroadcast: set active device to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 280
    :cond_54
    sget-object p1, Lcom/android/server/media/BluetoothProfileMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopBroadcast: set broadcast fallabck group to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothLeAudio;->setBroadcastToUnicastFallbackGroup(I)V

    .line 283
    :goto_70
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastProfile:Landroid/bluetooth/BluetoothLeBroadcast;

    iget v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBroadcastId:I

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcast;->stopBroadcast(I)V
    :try_end_77
    .catchall {:try_start_10 .. :try_end_77} :catchall_e

    .line 284
    monitor-exit p0

    return-void

    :goto_79
    :try_start_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_e

    throw p1
.end method
