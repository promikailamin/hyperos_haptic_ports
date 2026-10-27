.class public Lcom/android/server/audio/AudioDeviceBroker;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# static fields
.field public static final MESSAGES_MUTE_MUSIC:Ljava/util/Set;

.field public static final VALID_COMMUNICATION_DEVICE_TYPES:[I

.field public static sLastDeviceConnectMsgTime:J

.field public static final sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;


# instance fields
.field public mAccessibilityStrategyId:I

.field public mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

.field public mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mBluetoothA2dpSuspendedApplied:Z

.field public mBluetoothA2dpSuspendedExt:Z

.field public mBluetoothA2dpSuspendedInt:Z

.field public final mBluetoothAudioStateLock:Ljava/lang/Object;

.field public mBluetoothLeSuspendedApplied:Z

.field public mBluetoothLeSuspendedExt:Z

.field public mBluetoothLeSuspendedInt:Z

.field public mBluetoothScoOn:Z

.field public mBluetoothScoOnApplied:Z

.field public mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

.field public mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

.field public final mBtHelper:Lcom/android/server/audio/BtHelper;

.field public final mCommDevDispatchers:Landroid/os/RemoteCallbackList;

.field public final mCommunicationDeviceLock:Ljava/lang/Object;

.field public mCommunicationDeviceUpdateCount:I

.field public final mCommunicationRouteClients:Ljava/util/LinkedList;

.field public mCommunicationStrategyId:I

.field public final mContext:Landroid/content/Context;

.field public mCurCommunicationPortId:I

.field public final mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field public final mDeviceStateLock:Ljava/lang/Object;

.field public final mDuplexCommunicationDevices:Ljava/util/HashMap;

.field public mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

.field public final mScoManagedByAudio:Z

.field public final mSetModeLock:Ljava/lang/Object;

.field public final mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

.field public final mWaitingForDeviceRestore:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$Mhz9wX4TTVdS-Wfjo1oeBfvAOK0(ILandroid/media/AudioDeviceInfo;)Z
    .registers 2

    .line 728
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$X02IwuAmL0AVt9W3Ugb4HyTl8gc(Landroid/media/AudioDeviceInfo;)Z
    .registers 2

    .line 719
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$x8Y0AYcLJDKQixmBkRT1Cg_BgRg(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 5

    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioModeOwner(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothA2dpEnabled(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothAudioStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrokerEventWakeLock(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCommunicationDeviceLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCommunicationDeviceUpdateCount(Lcom/android/server/audio/AudioDeviceBroker;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScoManagedByAudio(Lcom/android/server/audio/AudioDeviceBroker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAudioModeOwner(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBrokerHandler(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCommunicationDeviceUpdateCount(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCommunicationRouteClientsDevices(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->checkCommunicationRouteClientsDevices()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckMessagesMuteMusic(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitRoutingStrategyIds(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monReceiveBtEvent(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onReceiveBtEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSendBecomingNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSetForceUse(Lcom/android/server/audio/AudioDeviceBroker;IIZLjava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/AttributionSource;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreapplyAudioHalBluetoothState(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->reapplyAudioHalBluetoothState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMsg(Lcom/android/server/audio/AudioDeviceBroker;III)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCommunicationRoute(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetMESSAGES_MUTE_MUSIC()Ljava/util/Set;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisMessageHandledUnderWakelock(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    const/16 v0, 0xe

    .line 621
    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    .line 2485
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    const/16 v1, 0x2d

    .line 2486
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 2487
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xb

    .line 2488
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    .line 2489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :array_3a
    .array-data 4
        0x2
        0x7
        0x3
        0x16
        0x1
        0x4
        0x17
        0x1a
        0xb
        0x1b
        0x5
        0x9
        0x13
        0x15
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 224
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    .line 142
    iput v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 145
    iput v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 168
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 170
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mWaitingForDeviceRestore:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 177
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 203
    new-instance v4, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    invoke-direct {v4, v5, v5, v5}, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;-><init>(III)V

    iput-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 409
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    .line 410
    iput v5, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    .line 1143
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    .line 1494
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 1499
    iput v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 2492
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2538
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 2740
    new-instance v3, Ljava/util/HashMap;

    const/high16 v4, 0x20000000

    .line 2741
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/high16 v4, -0x60000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v4, 0x4

    .line 2742
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v4, -0x7ffffff0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/high16 v4, 0x4000000

    .line 2743
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/high16 v4, -0x7e000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v4, 0x10

    .line 2744
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v4, -0x7ffffff8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v4, 0x20

    .line 2745
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v4, 0x40

    .line 2746
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v15, v13

    move-object/from16 v17, v13

    .line 2741
    invoke-static/range {v6 .. v17}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    .line 225
    iput-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    .line 226
    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 227
    new-instance v3, Lcom/android/server/audio/BtHelper;

    invoke-direct {v3, v0, v1}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 228
    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory;

    const/4 v4, 0x1

    .line 229
    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioSystemAdapter;->getAudioProductStrategies(Z)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Ljava/util/List;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 230
    invoke-static {v1}, Lcom/android/server/audio/SystemServerAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 231
    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 233
    iput-boolean v5, v0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    .line 234
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    return-void
.end method

.method public static createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    .registers 11

    .line 1100
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 1101
    invoke-virtual {v0}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v1}, Landroid/media/BluetoothProfileConnectionInfo;->isLeOutput()Z

    move-result v1

    .line 1100
    invoke-static {v0, v1, p1}, Lcom/android/server/audio/BtHelper;->getTypeFromProfile(IZLandroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 1102
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;III)V

    return-object v2
.end method

.method public static getAvailableCommunicationDevices()Ljava/util/List;
    .registers 6

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 712
    invoke-static {v1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 713
    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 714
    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 715
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 719
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 720
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_46

    .line 721
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string v3, "getAvailableCommunicationDevices: no EARPIECE!"

    invoke-direct {v2, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "AS.AudioDeviceBroker"

    .line 722
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 721
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_46
    return-object v0
.end method

.method public static hasIntersection(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 3

    .line 2495
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2496
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isMessageHandledUnderWakelock(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x31

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1f

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1f

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1f

    const/4 p0, 0x0

    return p0

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 2

    .line 639
    const-string v0, "device must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 640
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDeviceType(I)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidCommunicationDeviceType(I)Z
    .registers 6

    .line 645
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget v4, v0, v3

    if-ne p0, v4, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    return v2
.end method

.method public static safeUidFromAttributionSource(Landroid/content/AttributionSource;)I
    .registers 1

    if-eqz p0, :cond_7

    .line 899
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addAudioDeviceWithCategoryInInventoryIfNeeded(Ljava/lang/String;I)V
    .registers 3

    .line 3135
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceWithCategoryInInventoryIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method public final addCommunicationRouteClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 12

    const/4 v0, 0x1

    .line 2885
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2886
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)V

    .line 2888
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->registerDeathRecipient()Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 2889
    iget-object p0, v2, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 2890
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result p0

    if-nez p0, :cond_39

    .line 2892
    iget-object p0, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2894
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result p0

    xor-int/2addr p0, v0

    iget-object p1, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2895
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService;->isRecordingActiveForUid(I)Z

    move-result p1

    xor-int/2addr p1, v0

    .line 2892
    invoke-virtual {v2, v1, p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V

    :cond_39
    return-object v1

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V
    .registers 3

    .line 3110
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    return-void
.end method

.method public anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 1480
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;
    .registers 3

    .line 888
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 891
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v1

    .line 895
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p0

    return-object p0
.end method

.method public broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V
    .registers 2

    .line 1839
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SystemServerAdapter;->broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V

    return-void
.end method

.method public final btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .registers 5

    .line 1107
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1108
    new-instance p1, Landroid/media/MediaMetrics$Item;

    const-string v0, "audio.device.queueOnBluetoothActiveDeviceChanged"

    invoke-direct {p1, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 1110
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget-object p3, p3, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 1111
    invoke-virtual {p3}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 1112
    invoke-virtual {p1, p2, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 1113
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public final checkCommunicationRouteClientsDevices()V
    .registers 9

    .line 2755
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2756
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/high16 v4, 0x1000000

    if-ne v2, v4, :cond_25

    goto :goto_6

    .line 2769
    :cond_25
    invoke-static {v2}, Landroid/media/AudioSystem;->isBluetoothScoOutDevice(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_31

    .line 2770
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 2771
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    goto :goto_62

    .line 2773
    :cond_31
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2774
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2775
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 2776
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2777
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    move-object v4, v6

    goto :goto_62

    :cond_60
    move-object v2, v4

    move-object v4, v5

    .line 2781
    :goto_62
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 2782
    invoke-virtual {v6, v2}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceAttributesOfTypes(Ljava/util/Set;)Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    if-nez v4, :cond_6b

    goto :goto_71

    .line 2784
    :cond_6b
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v5, v4}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceAttributesOfTypes(Ljava/util/Set;)Landroid/media/AudioDeviceAttributes;

    move-result-object v5

    .line 2788
    :goto_71
    const-string v6, "AS.AudioDeviceBroker"

    if-eqz v2, :cond_ae

    if-eqz v4, :cond_87

    if-eqz v5, :cond_ae

    .line 2789
    invoke-virtual {v5}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 2792
    :cond_87
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 2793
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    .line 2794
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setDisabled(Z)V

    .line 2795
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v2, :cond_6

    .line 2796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCommunicationRouteClientsDevices, enabling client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2800
    :cond_ae
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2801
    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setDisabled(Z)V

    .line 2802
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v2, :cond_6

    .line 2803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCommunicationRouteClientsDevices, disabling client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_d1
    return-void
.end method

.method public final checkMessagesMuteMusic(I)V
    .registers 5

    .line 2520
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 2522
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2523
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2524
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p1, 0x1

    .line 2532
    :cond_2b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eq p1, v0, :cond_38

    .line 2533
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setMusicMute(Z)V

    :cond_38
    return-void
.end method

.method public checkMusicActive(ILjava/lang/String;)V
    .registers 3

    .line 1586
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkMusicActive(ILjava/lang/String;)V

    return-void
.end method

.method public checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .registers 3

    .line 1591
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    return-void
.end method

.method public clearA2dpSuspended(Z)V
    .registers 5

    .line 1309
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_1a

    .line 1310
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearA2dpSuspended, internalOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_1a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1313
    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    if-nez p1, :cond_27

    .line 1315
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_2c

    .line 1317
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 1318
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_25

    throw p0
.end method

.method public clearAvrcpAbsoluteVolumeSupported(Landroid/media/AudioDeviceAttributes;)V
    .registers 4

    const/4 v0, 0x0

    .line 1818
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1819
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1822
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->unregisterAbsoluteVolumeDevice(Landroid/media/AudioDeviceAttributes;)V

    return-void
.end method

.method public clearLeAudioSuspended(Z)V
    .registers 5

    .line 1339
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_1a

    .line 1340
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearLeAudioSuspended, internalOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_1a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1343
    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    if-nez p1, :cond_27

    .line 1345
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_2c

    .line 1347
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 1348
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_25

    throw p0
.end method

.method public clearPreferredDevicesForCapturePresetSync(I)I
    .registers 2

    .line 1465
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->clearPreferredDevicesForCapturePresetAndSave(I)I

    move-result p0

    return p0
.end method

.method public final communnicationDeviceHaCompatOn()Z
    .registers 3

    .line 2930
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final communnicationDeviceLeAudioCompatOn()Z
    .registers 4

    .line 2918
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v1, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1c

    const-wide/32 v1, 0xe888487

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    .line 2919
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final dispatchCommunicationDevice()V
    .registers 7

    .line 1504
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1505
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    .line 1506
    :goto_d
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    if-ne v0, v2, :cond_12

    return-void

    .line 1509
    :cond_12
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 1513
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_36

    .line 1515
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothBleHeadsetActive()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x2

    goto :goto_36

    .line 1517
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothBleSpeakerActive()Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x4

    goto :goto_36

    .line 1519
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothHaActive()Z

    move-result v2

    if-eqz v2, :cond_35

    const/16 v2, 0x8

    goto :goto_36

    :cond_35
    move v2, v1

    .line 1522
    :goto_36
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService;->updateBtCommDeviceActive(I)V

    .line 1528
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :goto_41
    if-ge v1, v2, :cond_5a

    .line 1531
    :try_start_43
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/ICommunicationDeviceDispatcher;

    .line 1532
    invoke-interface {v3, v0}, Landroid/media/ICommunicationDeviceDispatcher;->dispatchCommunicationDeviceChanged(I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4e} :catch_4f

    goto :goto_57

    :catch_4f
    move-exception v3

    .line 1534
    const-string v4, "AS.AudioDeviceBroker"

    const-string v5, "dispatchCommunicationDevice error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 1537
    :cond_5a
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dispatchPreferredMixerAttributesChangedCausedByDeviceRemoved(Landroid/media/AudioDeviceInfo;)V
    .registers 4

    .line 3002
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 3004
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 3005
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result p1

    const/4 v1, 0x0

    .line 3002
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/audio/AudioService;->dispatchPreferredMixerAttributesChanged(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 1843
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    if-eqz v0, :cond_34

    .line 1844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler (watch for unhandled messages):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_39

    .line 1847
    :cond_34
    const-string v0, "Message handler is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1850
    :goto_39
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Communication route clients:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1853
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->forEach(Ljava/util/function/Consumer;)V

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Computed Preferred communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1856
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Applied Preferred communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Active communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-nez v2, :cond_af

    const-string v2, "None"

    goto :goto_b6

    .line 1862
    :cond_af
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_b6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1860
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mCommunicationStrategyId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAccessibilityStrategyId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAudioModeOwner: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mScoManagedByAudio: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Bluetooth SCO on, requested: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", applied: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Bluetooth A2DP suspended, requested ext: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", requested int: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", applied "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Bluetooth LE Audio suspended, requested ext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1886
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;I)Lcom/android/server/audio/AdiDeviceState;
    .registers 3

    .line 3121
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object p0

    return-object p0
.end method

.method public getAndUpdateBtAdiDeviceStateCategoryForAddress(Ljava/lang/String;)I
    .registers 2

    .line 3141
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getAndUpdateBtAdiDeviceStateCategoryForAddress(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getBluetoothA2dpEnabled()Z
    .registers 1

    .line 1827
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public getCommunicationDevice()Landroid/media/AudioDeviceInfo;
    .registers 9

    .line 737
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 740
    :cond_9
    iget v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_17

    if-lez v5, :cond_33

    const-wide/16 v5, 0xbb8

    .line 742
    :try_start_f
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    sub-long v3, v5, v3

    invoke-virtual {v7, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_16} :catch_19
    .catchall {:try_start_f .. :try_end_16} :catchall_17

    goto :goto_20

    :catchall_17
    move-exception p0

    goto :goto_40

    .line 745
    :catch_19
    :try_start_19
    const-string v3, "AS.AudioDeviceBroker"

    const-string v4, "Interrupted while waiting for communication device update."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long v5, v3, v5

    if-ltz v5, :cond_9

    .line 749
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "Timeout waiting for communication device update."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 751
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    .line 755
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_17

    .line 756
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 757
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_3d
    move-exception p0

    .line 758
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_3d

    throw p0

    .line 755
    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_17

    throw p0
.end method

.method public final getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;
    .registers 4

    .line 763
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 764
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_14

    .line 770
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_14

    const/4 v0, 0x2

    .line 771
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    :cond_14
    if-eqz v0, :cond_1e

    .line 777
    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_1e

    :cond_1d
    return-object v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    .line 778
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;

    move-result-object p0

    if-nez p0, :cond_36

    .line 780
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->getAvailableCommunicationDevices()Ljava/util/List;

    move-result-object v0

    .line 781
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    const/4 p0, 0x0

    .line 782
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceInfo;

    :cond_36
    return-object p0
.end method

.method public final getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 728
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->getAvailableCommunicationDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 729
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceInfo;

    return-object p0
.end method

.method public final getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 4

    .line 2904
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2905
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v1

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 1

    .line 1582
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 328
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .registers 2

    .line 1358
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1359
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 1360
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getDefaultCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .registers 3

    .line 2939
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->communnicationDeviceHaCompatOn()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2940
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceOfType(I)Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_21

    .line 2942
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->communnicationDeviceLeAudioCompatOn()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2943
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceOfType(I)Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    return-object p0

    :cond_21
    return-object v0
.end method

.method public getDeviceForStream(I)I
    .registers 2

    .line 1557
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p0

    return p0
.end method

.method public getDeviceIdentityAddresses(Landroid/media/AudioDeviceAttributes;)Ljava/util/List;
    .registers 3

    .line 2995
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2996
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceIdentityAddresses(Landroid/media/AudioDeviceAttributes;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 2997
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getImmutableDeviceInventory()Ljava/util/Collection;
    .registers 1

    .line 3106
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->getImmutableDeviceInventory()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getLeAudioDeviceGroupId(Landroid/bluetooth/BluetoothDevice;I)I
    .registers 3

    .line 1831
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->getLeAudioDeviceGroupId(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    return p0
.end method

.method public getLeAudioGroupAddresses(II)Ljava/util/List;
    .registers 3

    .line 1835
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->getLeAudioGroupAddresses(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMaxVssVolumeForStream(I)I
    .registers 2

    .line 1553
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getMaxVssVolumeForStream(I)I

    move-result p0

    return p0
.end method

.method public getPreferredDevicesForStrategy(I)Ljava/util/List;
    .registers 2

    .line 1422
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVolumeForDeviceIgnoreMute(II)I
    .registers 3

    .line 1549
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->getVolumeForDevice(II)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public handleCancelFailureToConnectToBtHeadsetService()V
    .registers 2

    .line 1786
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;Z)Z
    .registers 13

    .line 1765
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1766
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result p1

    .line 1768
    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDeviceType(I)Z

    move-result p2

    if-nez p2, :cond_2c

    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    .line 1769
    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    goto :goto_2c

    :catchall_29
    move-exception v0

    move-object p0, v0

    goto :goto_3e

    .line 1770
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->checkCommunicationRouteClientsDevices()V

    if-nez v4, :cond_33

    if-nez v7, :cond_3c

    .line 1773
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object p2

    const-string p3, "handleDeviceConnection"

    .line 1772
    invoke-virtual {p0, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    .line 1777
    :cond_3c
    monitor-exit v1

    return p1

    .line 1778
    :goto_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_29

    throw p0
.end method

.method public handleFailureToConnectToBtHeadsetService(I)V
    .registers 4

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 1782
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method public hasAudioFocusUsers()Z
    .registers 1

    .line 1595
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->hasAudioFocusUsers()Z

    move-result p0

    return p0
.end method

.method public hasMediaDynamicPolicy()Z
    .registers 1

    .line 1578
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result p0

    return p0
.end method

.method public hasScheduledA2dpConnection(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4

    .line 1795
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1796
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final init()V
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setupMessaging(Landroid/content/Context;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initAudioHalBluetoothState()V

    .line 319
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 321
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 322
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 324
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/SystemServerAdapter;->registerUserStartedReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public final initAudioHalBluetoothState()V
    .registers 3

    .line 1174
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1175
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    .line 1176
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 1177
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 1178
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->reapplyAudioHalBluetoothState()V

    .line 1179
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final initRoutingStrategyIds()V
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v1, 0x1

    .line 298
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->getAudioProductStrategies(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    .line 299
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 300
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 302
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    if-ne v3, v1, :cond_2d

    const/4 v3, 0x0

    .line 303
    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 305
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 307
    :cond_2d
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    if-ne v3, v1, :cond_10

    const/16 v3, 0xa

    .line 308
    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 310
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    goto :goto_10

    :cond_40
    return-void
.end method

.method public isBluetoothA2dpOn()Z
    .registers 1

    .line 1364
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z
    .registers 2

    .line 3145
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isBluetoothBleHeadsetActive()Z
    .registers 2

    const/16 v0, 0x1a

    .line 925
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public final isBluetoothBleSpeakerActive()Z
    .registers 2

    const/16 v0, 0x1b

    .line 929
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public final isBluetoothHaActive()Z
    .registers 2

    const/16 v0, 0x17

    .line 933
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isBluetoothLeAudioRequested()Z
    .registers 2

    const/16 v0, 0x1a

    .line 908
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x1b

    .line 909
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public final isBluetoothScoActive()Z
    .registers 2

    const/4 v0, 0x7

    .line 921
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isBluetoothScoOn()Z
    .registers 2

    const/4 v0, 0x7

    .line 917
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceOnForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isBluetoothScoRequested()Z
    .registers 2

    const/4 v0, 0x7

    .line 878
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public final isDeviceActiveForCommunication(I)Z
    .registers 3

    .line 854
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_16

    .line 855
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    if-ne v0, p1, :cond_16

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz p0, :cond_16

    .line 857
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z
    .registers 3

    .line 937
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 938
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 939
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isDeviceOnForCommunication(I)Z
    .registers 3

    .line 839
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 841
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    if-ne p0, p1, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    .line 842
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public final isDeviceRequestedForCommunication(I)Z
    .registers 3

    .line 824
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 825
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 826
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    if-ne p0, p1, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    .line 827
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public isInCommunication()Z
    .registers 1

    .line 1574
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result p0

    return p0
.end method

.method public isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z
    .registers 2

    .line 3149
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result p0

    return p0
.end method

.method public isScoManagedByAudio()Z
    .registers 1

    .line 219
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    return p0
.end method

.method public final isSpeakerphoneActive()Z
    .registers 2

    const/4 v0, 0x2

    .line 869
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isSpeakerphoneOn()Z
    .registers 2

    const/4 v0, 0x2

    .line 865
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceOnForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isWaitingForDeviceRestore()Z
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mWaitingForDeviceRestore:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public messageMutesMusic(I)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x7

    if-eq p1, v1, :cond_b

    const/16 v1, 0xb

    if-ne p1, v1, :cond_38

    :cond_b
    const/4 p1, 0x3

    .line 2508
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_38

    sget-object v1, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2510
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceSetForStream(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2512
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    .line 2511
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 2509
    invoke-static {v1, p0}, Lcom/android/server/audio/AudioDeviceBroker;->hasIntersection(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_38

    return v0

    :cond_38
    const/4 p0, 0x1

    return p0
.end method

.method public onAudioServerDied()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public onCheckCommunicationRouteClientState(IZ)V
    .registers 3

    .line 672
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 676
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V

    return-void
.end method

.method public final onCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 2646
    :cond_3
    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "Communication client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 2648
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isPrivileged()Z

    move-result v7

    const-string/jumbo v8, "onCommunicationRouteClientDied"

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p0

    .line 2647
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    return-void
.end method

.method public onPersistAudioDeviceSettings()V
    .registers 7

    .line 3022
    const-string v0, "error saving AdiDeviceState: "

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceSettings()Ljava/lang/String;

    move-result-object v1

    .line 3023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPersistAudioDeviceSettings AdiDeviceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioDeviceBroker"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->readDeviceSettings()Ljava/lang/String;

    move-result-object v2

    .line 3025
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_6b

    .line 3028
    :cond_2a
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getSettings()Lcom/android/server/audio/SettingsAdapter;

    move-result-object v2

    if-nez v2, :cond_47

    .line 3030
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No settings adapter when saving AdiDeviceState: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3034
    :cond_47
    :try_start_47
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "audio_device_inventory"

    const/4 v5, -0x2

    invoke-virtual {v2, p0, v4, v1, v5}, Lcom/android/server/audio/SettingsAdapter;->putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_6b

    .line 3038
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_68} :catch_69

    return-void

    :catch_69
    move-exception p0

    goto :goto_6c

    :cond_6b
    :goto_6b
    return-void

    .line 3041
    :goto_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onReadAudioDeviceSettings()V
    .registers 9

    .line 3059
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getSettings()Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    .line 3060
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3061
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->readDeviceSettings()Ljava/lang/String;

    move-result-object v2

    .line 3062
    const-string v3, ""

    if-nez v2, :cond_4c

    .line 3063
    const-string/jumbo v2, "reading AdiDeviceState from legacy keyspatial_audio_enabled"

    const-string v4, "AS.AudioDeviceBroker"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    const-string/jumbo v2, "spatial_audio_enabled"

    const/4 v5, -0x2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/audio/SettingsAdapter;->getSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2d

    .line 3071
    const-string/jumbo v0, "no AdiDeviceState stored with legacy key"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 3072
    :cond_2d
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4b

    .line 3074
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/audio/SettingsAdapter;->putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 3078
    const-string v2, "cannot erase the legacy AdiDeviceState with key spatial_audio_enabled"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_3e
    const-string v2, "audio_device_inventory"

    invoke-virtual {v0, v1, v2, v6, v5}, Lcom/android/server/audio/SettingsAdapter;->putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 3085
    const-string v0, "error updating the new AdiDeviceState with key audio_device_inventory"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    move-object v2, v6

    :cond_4c
    if-eqz v2, :cond_57

    .line 3091
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 3092
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setDeviceSettings(Ljava/lang/String;)V

    :cond_57
    return-void
.end method

.method public final onReceiveBtEvent(Landroid/content/Intent;)V
    .registers 2

    .line 367
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->onReceiveBtEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onSendBecomingNoisyIntent()V
    .registers 4

    .line 1916
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string v2, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioDeviceBroker"

    .line 1917
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 1916
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1918
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/SystemServerAdapter;->sendDeviceBecomingNoisyIntent()V

    return-void
.end method

.method public onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 7

    const/16 v0, 0x3e

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 372
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 373
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->setCallMute(Z)V

    const/16 v2, 0x7d0

    .line 374
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsg(IIII)V

    goto :goto_1c

    :cond_17
    if-nez p1, :cond_1c

    .line 377
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsg(IIII)V

    .line 380
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public onSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V
    .registers 10

    .line 448
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_1b

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSetCommunicationDeviceForClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1b
    iget-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    if-nez v0, :cond_3a

    .line 452
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mAttributionSource:Landroid/content/AttributionSource;

    .line 453
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 454
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v1, :cond_3a

    .line 455
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/AudioDeviceAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_39
    return-void

    .line 460
    :cond_3a
    iget-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    if-eqz v0, :cond_42

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    :goto_40
    move-object v4, v0

    goto :goto_44

    :cond_42
    const/4 v0, 0x0

    goto :goto_40

    .line 461
    :goto_44
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mAttributionSource:Landroid/content/AttributionSource;

    iget v5, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mScoAudioMode:I

    iget-boolean v6, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mIsPrivileged:Z

    iget-object v7, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mEventSource:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    return-void
.end method

.method public final onSetForceUse(IIZLjava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1896
    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 1898
    :cond_6
    sget-object v0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1900
    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.forceUse."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    invoke-static {p1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "onSetForceUse"

    .line 1902
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 1903
    invoke-virtual {v0, v1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 1905
    invoke-static {p2}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1904
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1906
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1908
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_7e

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSetForceUse(useCase<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">, config<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">, fromA2dp<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ">, eventSource<"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ">)"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "AS.AudioDeviceBroker"

    invoke-static {p4, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :cond_7e
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)I

    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_16

    .line 340
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getAudioModeOwner()Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 341
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->onSystemReady()V

    .line 342
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_18

    .line 343
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception p0

    goto :goto_1b

    :catchall_18
    move-exception p0

    .line 342
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw p0

    .line 343
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_16

    throw p0
.end method

.method public final onUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V
    .registers 13

    .line 2818
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    .line 2819
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_33

    .line 2820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateCommunicationRouteClient, crc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " previous BT SCO Requester UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->safeUidFromAttributionSource(Landroid/content/AttributionSource;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " eventSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2820
    const-string v2, "AS.AudioDeviceBroker"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    if-eqz v0, :cond_4c

    .line 2826
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    .line 2827
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isPrivileged()Z

    move-result v8

    move-object v3, p0

    move-object v9, p2

    .line 2826
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    return-void

    :cond_4c
    move-object v3, p0

    move-object v9, p2

    const/4 p0, 0x0

    if-eqz p1, :cond_53

    const/4 p2, 0x1

    goto :goto_54

    :cond_53
    move p2, p0

    .line 2830
    :goto_54
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v0

    if-nez v0, :cond_74

    if-eqz p2, :cond_74

    .line 2831
    iget-boolean p2, v3, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    if-eqz p2, :cond_6f

    .line 2832
    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->shouldStartScoForAttributionSource(Landroid/content/AttributionSource;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 2833
    iget-object p1, v3, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p1, v9}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)Z

    .line 2835
    :cond_6b
    invoke-virtual {v3, p0, v9}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    goto :goto_74

    .line 2837
    :cond_6f
    iget-object p0, v3, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, v9}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)Z

    .line 2840
    :cond_74
    :goto_74
    invoke-virtual {v3, v9}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpdatePhoneStrategyDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 4

    .line 2847
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneActive()Z

    move-result v0

    .line 2848
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 2849
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 2850
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneActive()Z

    move-result p1

    if-eq v0, p1, :cond_3b

    .line 2852
    :try_start_f
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.SPEAKERPHONE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 2854
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2852
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_24

    goto :goto_3b

    :catch_24
    move-exception p1

    .line 2857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to broadcast ACTION_SPEAKERPHONE_STATE_CHANGED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioDeviceBroker"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->dispatchCommunicationDevice()V

    .line 2861
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeMutedStreams()V

    return-void
.end method

.method public postAccessoryPlugMediaUnmute(I)V
    .registers 2

    .line 1545
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    return-void
.end method

.method public postApplyVolumeOnDevice(IILjava/lang/String;)V
    .registers 4

    .line 1561
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    return-void
.end method

.method public postBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V
    .registers 7

    .line 1614
    iget v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const/16 v1, 0x16

    const/4 v2, 0x2

    if-ne v0, v1, :cond_21

    iget v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-nez v0, :cond_21

    iget-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    if-eqz v0, :cond_21

    .line 1617
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothLeAudioRequested()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    const/16 v1, 0x3e

    const/4 v3, 0x0

    .line 1618
    invoke-virtual {p0, v1, v3, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsg(IIII)V

    add-int/lit16 v0, p2, 0x7d0

    .line 1620
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsg(IIII)V

    :cond_21
    const/4 v0, 0x7

    .line 1623
    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    return-void
.end method

.method public postBluetoothDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .registers 4

    const/16 v0, 0xb

    const/4 v1, 0x2

    .line 1386
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postBluetoothDeviceConnectionChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .registers 4

    const/16 v0, 0x2d

    const/4 v1, 0x2

    .line 1390
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postBroadcastBecomingNoisy()V
    .registers 3

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 1610
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public postBroadcastScoConnectionState(I)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1606
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5

    const/16 v0, 0x17

    const/4 v1, 0x2

    .line 1636
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    return-void
.end method

.method public postBtProfileDisconnected(I)V
    .registers 4

    const/16 v0, 0x16

    const/4 v1, 0x2

    .line 1632
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postCheckCommunicationRouteClientState(IZI)V
    .registers 11

    .line 659
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v5

    if-eqz v5, :cond_10

    const/16 v1, 0x38

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v6, p3

    .line 661
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgForCheckClientState(IIIILjava/lang/Object;I)V

    :cond_10
    return-void
.end method

.method public postCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 4

    const/16 v0, 0x22

    const/4 v1, 0x2

    .line 1640
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postNotifyPreferredAudioProfileApplied(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    const/16 v0, 0x34

    const/4 v1, 0x2

    .line 1665
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postObserveDevicesForAllStreams()V
    .registers 1

    .line 1570
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams()V

    return-void
.end method

.method public postPersistAudioDeviceSettings()V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const/16 v2, 0x36

    .line 3018
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method public postReceiveBtEvent(Landroid/content/Intent;)V
    .registers 4

    const/16 v0, 0x37

    const/4 v1, 0x2

    .line 1669
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postReportNewRoutes(Z)V
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x24

    goto :goto_7

    :cond_5
    const/16 p1, 0xd

    :goto_7
    const/4 v0, 0x1

    .line 1790
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public postSetAvrcpAbsoluteVolumeIndex(I)V
    .registers 4

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 1368
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V
    .registers 4

    const/16 v0, 0x2a

    const/4 v1, 0x2

    .line 1661
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postSetHearingAidVolumeIndex(II)V
    .registers 5

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 1372
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    return-void
.end method

.method public postSetLeAudioVolumeIndex(III)V
    .registers 5

    .line 1376
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;-><init>(III)V

    const/16 p1, 0x2e

    const/4 p2, 0x0

    .line 1377
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postSetModeOwner(IIIZ)V
    .registers 6

    if-eqz p4, :cond_5

    const/16 p4, 0x11

    goto :goto_7

    :cond_5
    const/16 p4, 0x10

    .line 1381
    :goto_7
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;-><init>(III)V

    const/4 p1, 0x0

    invoke-virtual {p0, p4, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .registers 5

    .line 1566
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    return-void
.end method

.method public postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V
    .registers 4

    const/4 v0, 0x2

    .line 1628
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    return-void
.end method

.method public postSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V
    .registers 4

    const/16 v0, 0x3a

    const/4 v1, 0x2

    .line 1678
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V
    .registers 4

    .line 1656
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;-><init>(Landroid/content/AttributionSource;Ljava/lang/String;)V

    const/16 p1, 0x2b

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postUpdateLeAudioGroupAddresses(I)V
    .registers 4

    const/16 v0, 0x39

    const/4 v1, 0x2

    .line 1673
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V
    .registers 5

    const/16 v0, 0x3b

    const/4 v1, 0x2

    .line 1682
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    return-void
.end method

.method public final preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .registers 3

    .line 2661
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v0

    .line 2662
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_12

    .line 2663
    :try_start_b
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    if-eqz v0, :cond_18

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_36

    :cond_12
    :goto_12
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2664
    :goto_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_10

    if-eqz v0, :cond_25

    .line 2671
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->getHeadsetAudioDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    if-eqz v0, :cond_25

    return-object v0

    .line 2676
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 2677
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_33

    goto :goto_34

    :cond_33
    return-object p0

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return-object p0

    .line 2664
    :goto_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_10

    throw p0
.end method

.method public queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .registers 5

    .line 1122
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3a

    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1123
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1124
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.queueOnBluetoothActiveDeviceChanged_update"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 1127
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 1128
    invoke-virtual {v2}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1130
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    return-void

    .line 1132
    :cond_3a
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_43

    .line 1133
    const-string v1, "disconnected"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 1135
    :cond_43
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4c

    .line 1136
    const-string v1, "connected"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 1138
    :cond_4c
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothDeviceConnectionChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    return-void
.end method

.method public final readDeviceSettings()Ljava/lang/String;
    .registers 4

    .line 3046
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getSettings()Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    .line 3047
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_19

    if-nez p0, :cond_11

    goto :goto_19

    .line 3054
    :cond_11
    const-string v1, "audio_device_inventory"

    const/4 v2, -0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/audio/SettingsAdapter;->getSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3050
    :cond_19
    :goto_19
    new-instance p0, Ljava/lang/Exception;

    const-string/jumbo v0, "readDeviceSettings_NPE"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "No settings adapter or content resolver to read device settings"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3052
    const-string p0, ""

    return-object p0
.end method

.method public final reapplyAudioHalBluetoothState()V
    .registers 4

    .line 1243
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_31

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reapplyAudioHalBluetoothState() mBluetoothScoOnApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBluetoothA2dpSuspendedApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBluetoothLeSuspendedApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_31
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    const-string v1, "LeAudioSuspended=true"

    const-string v2, "A2dpSuspended=true"

    if-eqz v0, :cond_4a

    .line 1251
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1252
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1253
    const-string v0, "BT_SCO=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1254
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 1255
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    return-void

    .line 1257
    :cond_4a
    const-string v0, "BT_SCO=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1258
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-eqz v0, :cond_57

    .line 1259
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_5c

    .line 1261
    :cond_57
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1263
    :goto_5c
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-eqz p0, :cond_64

    .line 1264
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    .line 1266
    :cond_64
    const-string p0, "LeAudioSuspended=false"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;Z)V
    .registers 3

    .line 1470
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;Z)V

    return-void
.end method

.method public registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .registers 2

    .line 1485
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;Z)V
    .registers 3

    .line 1451
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;Z)V

    return-void
.end method

.method public registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;Z)V
    .registers 3

    .line 1441
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;Z)V

    return-void
.end method

.method public final removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 6

    .line 2867
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2868
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_6

    if-eqz p2, :cond_1d

    .line 2870
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    .line 2872
    :cond_1d
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeMsgForCheckClientState(I)V

    .line 2873
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-object v1

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeDeviceAsNonDefaultForStrategySync(ILandroid/media/AudioDeviceAttributes;)I
    .registers 3

    .line 1436
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->removeDeviceAsNonDefaultForStrategyAndSave(ILandroid/media/AudioDeviceAttributes;)I

    move-result p0

    return p0
.end method

.method public final removeMsgForCheckClientState(I)V
    .registers 3

    .line 2466
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2468
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public removePreferredDevicesForStrategySync(I)I
    .registers 2

    .line 1426
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDevicesForStrategyAndSave(I)I

    move-result p0

    return p0
.end method

.method public final requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .registers 4

    .line 612
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 613
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 614
    :goto_c
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_35

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestedCommunicationDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mAudioModeOwner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 616
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 615
    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-object v0
.end method

.method public final sendIILMsg(IIIILjava/lang/Object;I)V
    .registers 11

    if-nez p2, :cond_8

    .line 2421
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_14

    :cond_8
    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    .line 2422
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_7c

    .line 2426
    :cond_14
    :goto_14
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 2427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2429
    :try_start_1e
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {p2, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_2b
    .catchall {:try_start_1e .. :try_end_25} :catchall_29

    .line 2433
    :goto_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    :catchall_29
    move-exception p0

    goto :goto_34

    :catch_2b
    move-exception p2

    .line 2431
    :try_start_2c
    const-string v2, "AS.AudioDeviceBroker"

    const-string v3, "Exception acquiring wakelock"

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    goto :goto_25

    .line 2433
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2434
    throw p0

    .line 2437
    :cond_38
    :goto_38
    sget-object p2, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 2438
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    .line 2441
    :cond_47
    sget-object p2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2442
    :try_start_4a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    const/4 p6, 0x2

    if-eq p1, p6, :cond_67

    const/4 p6, 0x7

    if-eq p1, p6, :cond_67

    const/16 p6, 0x31

    if-eq p1, p6, :cond_67

    const/16 p6, 0x3d

    if-eq p1, p6, :cond_67

    const/16 p6, 0xa

    if-eq p1, p6, :cond_67

    const/16 p6, 0xb

    if-eq p1, p6, :cond_67

    goto :goto_72

    .line 2451
    :cond_67
    sget-wide v2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    cmp-long p6, v2, v0

    if-ltz p6, :cond_70

    const-wide/16 v0, 0x1e

    add-long/2addr v0, v2

    .line 2455
    :cond_70
    sput-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 2460
    :goto_72
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2462
    monitor-exit p2

    :goto_7c
    return-void

    :catchall_7d
    move-exception p0

    monitor-exit p2
    :try_end_7f
    .catchall {:try_start_4a .. :try_end_7f} :catchall_7d

    throw p0
.end method

.method public final sendIILMsgNoDelay(IIIILjava/lang/Object;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2415
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendIIMsgNoDelay(IIII)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2403
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendILMsg(IIILjava/lang/Object;I)V
    .registers 13

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    .line 2387
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendILMsgNoDelay(IIILjava/lang/Object;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 2407
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendIMsg(IIII)V
    .registers 13

    const/4 v0, 0x0

    .line 2383
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendIMsgNoDelay(III)V
    .registers 11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 2399
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendLMsg(IILjava/lang/Object;I)V
    .registers 12

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    .line 2391
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendLMsgNoDelay(IILjava/lang/Object;)V
    .registers 11

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 2411
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendMsg(III)V
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p3

    .line 2379
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendMsgForCheckClientState(IIIILjava/lang/Object;I)V
    .registers 11

    if-nez p2, :cond_9

    if-eqz p5, :cond_9

    .line 2475
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1, p5}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 2478
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    .line 2479
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMsgNoDelay(II)V
    .registers 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 2395
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setA2dpSuspended(ZZLjava/lang/String;)V
    .registers 8

    .line 1292
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1293
    :try_start_3
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_45

    .line 1294
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setA2dpSuspended source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", enable: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", internal: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mBluetoothA2dpSuspendedInt: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mBluetoothA2dpSuspendedExt: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_51

    :cond_45
    :goto_45
    if-eqz p2, :cond_4a

    .line 1300
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    goto :goto_4c

    .line 1302
    :cond_4a
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    .line 1304
    :goto_4c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 1305
    monitor-exit v0

    return-void

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_43

    throw p0
.end method

.method public setA2dpTimeout(Ljava/lang/String;II)V
    .registers 10

    const/16 v1, 0xa

    const/4 v2, 0x2

    move-object v0, p0

    move-object v4, p1

    move v3, p2

    move v5, p3

    .line 1800
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    return-void
.end method

.method public setAvrcpAbsoluteVolumeSupported(Z)V
    .registers 3

    .line 1812
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1813
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1814
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setBluetoothA2dpOnInt(ZZLjava/lang/String;)V
    .registers 6

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1754
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_3b

    const/4 p1, 0x0

    goto :goto_3d

    :cond_3b
    const/16 p1, 0xa

    :goto_3d
    const/4 v0, 0x1

    .line 1755
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    return-void
.end method

.method public setBluetoothA2dpOn_Async(ZLjava/lang/String;)V
    .registers 4

    .line 384
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-ne v0, p1, :cond_b

    const/16 p1, 0x3c

    goto :goto_c

    :cond_b
    const/4 p1, 0x5

    :goto_c
    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public setBluetoothScoOn(ZLjava/lang/String;)V
    .registers 8

    .line 1273
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1274
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 1275
    const-string v2, "AS.AudioDeviceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothScoOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBluetoothScoOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", btScoRequesterUId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->safeUidFromAttributionSource(Landroid/content/AttributionSource;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1275
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 1281
    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    if-nez v2, :cond_4b

    .line 1282
    invoke-virtual {p0, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    goto :goto_4b

    :catchall_49
    move-exception p0

    goto :goto_55

    :cond_4b
    :goto_4b
    if-eqz p1, :cond_53

    const/16 p1, 0x3e

    const/4 p2, 0x0

    .line 1285
    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsg(IIII)V

    .line 1288
    :cond_53
    monitor-exit v0

    return-void

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_49

    throw p0
.end method

.method public setCommunicationDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceInfo;ZLjava/lang/String;)Z
    .registers 18

    .line 424
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_27

    .line 425
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCommunicationDevice, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_27
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_2a
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    if-eqz p3, :cond_3c

    .line 432
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v2, p3}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_37
    move-object v7, v2

    goto :goto_3e

    :catchall_39
    move-exception v0

    move-object p0, v0

    goto :goto_55

    :cond_3c
    const/4 v2, 0x0

    goto :goto_37

    .line 433
    :goto_3e
    new-instance v4, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    if-eqz p3, :cond_44

    move v8, v3

    goto :goto_46

    :cond_44
    const/4 v0, 0x0

    move v8, v0

    :goto_46
    const/4 v9, -0x1

    move-object v5, p1

    move-object v6, p2

    move/from16 v11, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v11}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    .line 436
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    .line 437
    monitor-exit v1

    return v3

    :goto_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_2a .. :try_end_56} :catchall_39

    throw p0
.end method

.method public setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 487
    sget-boolean v7, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    const-string v8, "AS.AudioDeviceBroker"

    if-eqz v7, :cond_31

    .line 488
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setCommunicationRouteForClient: device: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", eventSource: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_31
    sget-object v7, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v9, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setCommunicationRouteForClient for uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " device: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " isPrivileged: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " from API: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v9, v8}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v9

    .line 491
    invoke-virtual {v7, v9}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 498
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    .line 504
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v9

    if-eqz v9, :cond_84

    .line 506
    invoke-virtual {v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v11

    .line 507
    invoke-virtual {v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isPrivileged()Z

    move-result v9

    goto :goto_86

    :cond_84
    const/4 v11, 0x0

    const/4 v9, 0x0

    :goto_86
    const/4 v12, 0x1

    if-eqz v3, :cond_b1

    .line 511
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v5

    if-nez v5, :cond_b5

    .line 513
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCommunicationRouteForClient: could not add client for uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " and device: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 513
    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 517
    :cond_b1
    invoke-virtual {v0, v1, v12}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v5

    :cond_b5
    :goto_b5
    if-nez v5, :cond_b8

    return-void

    .line 522
    :cond_b8
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    if-eqz v3, :cond_c0

    move v5, v12

    goto :goto_c1

    :cond_c0
    const/4 v5, 0x0

    :goto_c1
    if-eqz v7, :cond_c5

    move v13, v12

    goto :goto_c6

    :cond_c5
    const/4 v13, 0x0

    .line 526
    :goto_c6
    iget-boolean v14, v0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    const-string/jumbo v15, "setCommunicationRouteForClient: failure to start BT SCO for uid: "

    if-eqz v14, :cond_130

    .line 527
    const-string/jumbo v14, "setCommunicationRouteForClient"

    if-eqz v5, :cond_11c

    if-eqz v13, :cond_e2

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v16

    if-eqz v16, :cond_e2

    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 528
    invoke-virtual {v10}, Lcom/android/server/audio/BtHelper;->isBluetoothScoRequestedInternally()Z

    move-result v10

    if-nez v10, :cond_11c

    .line 530
    :cond_e2
    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->shouldStartScoForAttributionSource(Landroid/content/AttributionSource;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 531
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/audio/BtHelper;->startBluetoothSco(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_116

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 533
    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_10d

    .line 537
    invoke-virtual {v0, v1, v2, v11, v9}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    :goto_10b
    const/4 v1, 0x0

    goto :goto_111

    .line 540
    :cond_10d
    invoke-virtual {v0, v1, v12}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    goto :goto_10b

    .line 542
    :goto_111
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    goto :goto_116

    :cond_115
    move v3, v12

    :cond_116
    :goto_116
    if-eqz v3, :cond_178

    .line 548
    invoke-virtual {v0, v12, v14}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    goto :goto_178

    :cond_11c
    if-nez v5, :cond_178

    if-eqz v13, :cond_178

    .line 551
    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioDeviceBroker;->shouldStartScoForAttributionSource(Landroid/content/AttributionSource;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 552
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, v6}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)Z

    :cond_12b
    const/4 v1, 0x0

    .line 554
    invoke-virtual {v0, v1, v14}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    goto :goto_178

    :cond_130
    if-eqz v5, :cond_16f

    if-eqz v13, :cond_142

    .line 557
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v3

    if-eqz v3, :cond_142

    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 558
    invoke-virtual {v3}, Lcom/android/server/audio/BtHelper;->isBluetoothScoRequestedInternally()Z

    move-result v3

    if-nez v3, :cond_16f

    .line 559
    :cond_142
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/audio/BtHelper;->startBluetoothSco(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_178

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_167

    .line 564
    invoke-virtual {v0, v1, v2, v11, v9}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    :goto_165
    const/4 v1, 0x0

    goto :goto_16b

    .line 567
    :cond_167
    invoke-virtual {v0, v1, v12}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    goto :goto_165

    .line 569
    :goto_16b
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    goto :goto_178

    :cond_16f
    if-nez v5, :cond_178

    if-eqz v13, :cond_178

    .line 572
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, v6}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)Z

    .line 578
    :cond_178
    :goto_178
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->postUpdateContextualVolumes()V

    .line 580
    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceAsNonDefaultForStrategySync(ILandroid/media/AudioDeviceAttributes;)I
    .registers 3

    .line 1431
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setDeviceAsNonDefaultForStrategyAndSave(ILandroid/media/AudioDeviceAttributes;)I

    move-result p0

    return p0
.end method

.method public setDeviceSettings(Ljava/lang/String;)V
    .registers 2

    .line 3097
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->setDeviceSettings(Ljava/lang/String;)V

    return-void
.end method

.method public setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    if-eqz p2, :cond_9

    .line 700
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setPlaybackActive(Z)V

    :cond_9
    if-eqz p3, :cond_e

    .line 703
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setRecordingActive(Z)V

    .line 706
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result p1

    const/16 p3, 0x1770

    .line 705
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postCheckCommunicationRouteClientState(IZI)V

    return-void
.end method

.method public setForceUse_Async(IILjava/lang/String;)V
    .registers 10

    const/4 v1, 0x4

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 352
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    return-void
.end method

.method public setHearingAidTimeout(Ljava/lang/String;I)V
    .registers 5

    const/16 v0, 0x3d

    const/4 v1, 0x2

    .line 1808
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    return-void
.end method

.method public setLeAudioSuspended(ZZLjava/lang/String;)V
    .registers 8

    .line 1322
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_3
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_45

    .line 1324
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLeAudioSuspended source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", enable: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", internal: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mBluetoothLeSuspendedInt: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mBluetoothLeSuspendedExt: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_51

    :cond_45
    :goto_45
    if-eqz p2, :cond_4a

    .line 1330
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    goto :goto_4c

    .line 1332
    :cond_4a
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    .line 1334
    :goto_4c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 1335
    monitor-exit v0

    return-void

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_43

    throw p0
.end method

.method public setLeAudioTimeout(Ljava/lang/String;III)V
    .registers 12

    const/16 v1, 0x31

    const/4 v2, 0x2

    move-object v0, p0

    move-object v5, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 1804
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setPreferredDevicesForCapturePresetSync(ILjava/util/List;)I
    .registers 3

    .line 1461
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForCapturePresetAndSave(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setPreferredDevicesForStrategySync(ILjava/util/List;)I
    .registers 3

    .line 1418
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategyAndSave(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setSpeakerphoneOn(Landroid/os/IBinder;Landroid/content/AttributionSource;ZZLjava/lang/String;)V
    .registers 16

    .line 398
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_27

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSpeakerphoneOn, on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_27
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/4 v0, 0x2

    const-string v1, ""

    invoke-direct {v5, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v7, -0x1

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move v9, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    return-void
.end method

.method public setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V
    .registers 4

    .line 952
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 953
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    .line 954
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setWaitingForDeviceRestore(Z)V
    .registers 5

    .line 263
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWaitingForDeviceRestore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_3b

    .line 268
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isHandlingAudioServerDeath()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 269
    const-string p0, "AS.AudioDeviceBroker"

    const-string/jumbo p1, "not ready to stop waiting for device restore"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_42

    .line 273
    :cond_30
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 274
    monitor-exit v0

    return-void

    .line 277
    :cond_3b
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mWaitingForDeviceRestore:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 278
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_1c .. :try_end_43} :catchall_2e

    throw p0
.end method

.method public setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 5

    .line 945
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 946
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)I

    .line 947
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final setupMessaging(Landroid/content/Context;)V
    .registers 4

    .line 1928
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 1929
    const-string v1, "handleAudioDeviceEvent"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1931
    new-instance p1, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    .line 1932
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1933
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->waitForBrokerHandlerCreation()V

    return-void
.end method

.method public final shouldStartScoForAttributionSource(Landroid/content/AttributionSource;)Z
    .registers 4

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    .line 476
    :cond_4
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    const/16 v1, 0x3ea

    .line 477
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_2d

    const/16 v1, 0x3e9

    .line 478
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_2d

    const/16 v1, 0x3e8

    .line 479
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "com.android.server.telecom"

    .line 480
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    :cond_2c
    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public startBluetoothScoForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;IZLjava/lang/String;)V
    .registers 16

    .line 1396
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_1f

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBluetoothScoForClient, uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_1f
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/16 v0, 0x10

    const-string v1, ""

    invoke-direct {v5, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    move v9, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 3

    .line 1352
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1353
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 1354
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public stopBluetoothScoForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;ZLjava/lang/String;)V
    .registers 15

    .line 1407
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_1f

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopBluetoothScoForClient, uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_1f
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/16 v0, 0x10

    const-string v1, ""

    invoke-direct {v5, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v3, p1

    move-object v4, p2

    move v9, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    return-void
.end method

.method public toggleHdmiIfConnected_Async()V
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x2

    .line 357
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public final topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 5

    .line 592
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 593
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v3, v3, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    if-ne v2, v3, :cond_6

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_6

    return-object v1

    .line 597
    :cond_23
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mPid:I

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 598
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 599
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    return-object p0

    :cond_49
    const/4 p0, 0x0

    return-object p0
.end method

.method public unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .registers 2

    .line 1475
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    return-void
.end method

.method public unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .registers 2

    .line 1490
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V
    .registers 2

    .line 1456
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    return-void
.end method

.method public unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .registers 2

    .line 1446
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    return-void
.end method

.method public updateActiveCommunicationDevice()V
    .registers 4

    .line 794
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    if-nez v0, :cond_38

    .line 796
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v1, 0x1

    .line 798
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->getAudioProductStrategies(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 797
    invoke-static {v0, v1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(Ljava/util/List;I)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 800
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 802
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 803
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isPlatformVoice()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 804
    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v1, "updateActiveCommunicationDevice(): no device for phone strategy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    .line 807
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    return-void

    .line 810
    :cond_32
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 813
    :cond_38
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-static {v1, v0}, Landroid/media/AudioManager;->getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    return-void
.end method

.method public final updateAudioHalBluetoothState()V
    .registers 8

    .line 1184
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    const-string v2, "LeAudioSuspended=true"

    const-string v3, "A2dpSuspended=true"

    const-string v4, "AS.AudioDeviceBroker"

    const/4 v5, 0x1

    if-eq v0, v1, :cond_57

    .line 1185
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_32

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAudioHalBluetoothState() mBluetoothScoOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBluetoothScoOnApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_32
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    if-eqz v0, :cond_4e

    .line 1190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-nez v0, :cond_3f

    .line 1191
    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1192
    iput-boolean v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 1194
    :cond_3f
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-nez v0, :cond_48

    .line 1195
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1196
    iput-boolean v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 1198
    :cond_48
    const-string v0, "BT_SCO=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_53

    .line 1200
    :cond_4e
    const-string v0, "BT_SCO=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1202
    :goto_53
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    .line 1204
    :cond_57
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    if-nez v0, :cond_10a

    .line 1205
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    const/4 v1, 0x0

    if-nez v0, :cond_67

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    if-eqz v0, :cond_65

    goto :goto_67

    :cond_65
    move v0, v1

    goto :goto_68

    :cond_67
    :goto_67
    move v0, v5

    :goto_68
    iget-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-eq v0, v6, :cond_b4

    .line 1207
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_9b

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAudioHalBluetoothState() mBluetoothA2dpSuspendedExt: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mBluetoothA2dpSuspendedInt: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mBluetoothA2dpSuspendedApplied: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_9b
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    if-nez v0, :cond_a6

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    if-eqz v0, :cond_a4

    goto :goto_a6

    :cond_a4
    move v0, v1

    goto :goto_a7

    :cond_a6
    :goto_a6
    move v0, v5

    :goto_a7
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-eqz v0, :cond_af

    .line 1217
    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_b4

    .line 1219
    :cond_af
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1222
    :cond_b4
    :goto_b4
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    if-nez v0, :cond_bf

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    if-eqz v0, :cond_bd

    goto :goto_bf

    :cond_bd
    move v0, v1

    goto :goto_c0

    :cond_bf
    :goto_bf
    move v0, v5

    :goto_c0
    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-eq v0, v3, :cond_10a

    .line 1224
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_f3

    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAudioHalBluetoothState() mBluetoothLeSuspendedExt: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBluetoothLeSuspendedInt: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBluetoothLeSuspendedApplied: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_f3
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    if-nez v0, :cond_fd

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    if-eqz v0, :cond_fc

    goto :goto_fd

    :cond_fc
    move v5, v1

    :cond_fd
    :goto_fd
    iput-boolean v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-eqz v5, :cond_105

    .line 1233
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    .line 1235
    :cond_105
    const-string p0, "LeAudioSuspended=false"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_10a
    return-void
.end method

.method public final updateCommunicationRoute(Ljava/lang/String;)V
    .registers 9

    .line 2691
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 2692
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    const-string v2, " eventSource: "

    const-string/jumbo v3, "updateCommunicationRoute, preferredCommunicationDevice: "

    const-string v4, "AS.AudioDeviceBroker"

    if-eqz v1, :cond_27

    .line 2693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    :cond_27
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2700
    iget p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    const/4 v2, -0x1

    if-ne p1, v2, :cond_77

    .line 2701
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    .line 2702
    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCommunicationRoute: strategy IDs reinit "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2704
    iget v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    if-ne v5, v2, :cond_62

    .line 2705
    const-string v2, "failure"

    goto :goto_65

    :cond_62
    const-string/jumbo v2, "success"

    :goto_65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v4}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 2702
    invoke-virtual {v1, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_77
    const/4 p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_b9

    .line 2709
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getDefaultCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    if-eqz v2, :cond_a0

    .line 2711
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    new-array v5, p1, [Landroid/media/AudioDeviceAttributes;

    aput-object v2, v5, v1

    .line 2712
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 2711
    invoke-virtual {v3, v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategyInt(ILjava/util/List;)I

    .line 2713
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    new-array p1, p1, [Landroid/media/AudioDeviceAttributes;

    aput-object v2, p1, v1

    .line 2714
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2713
    invoke-virtual {v3, v4, p1}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategyInt(ILjava/util/List;)I

    goto :goto_ae

    .line 2716
    :cond_a0
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    invoke-virtual {p1, v3}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDevicesForStrategyInt(I)I

    .line 2717
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    invoke-virtual {p1, v3}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDevicesForStrategyInt(I)I

    .line 2719
    :goto_ae
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles()V

    .line 2720
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    goto :goto_d8

    .line 2723
    :cond_b9
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    new-array v4, p1, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, v4, v1

    .line 2724
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2723
    invoke-virtual {v2, v3, v4}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategyInt(ILjava/util/List;)I

    .line 2725
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    new-array p1, p1, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, p1, v1

    .line 2726
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2725
    invoke-virtual {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategyInt(ILjava/util/List;)I

    move-object v2, v0

    .line 2729
    :goto_d8
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdatePhoneStrategyDevice(Landroid/media/AudioDeviceAttributes;)V

    if-eqz v2, :cond_ec

    .line 2733
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p1

    .line 2732
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothLeOutDevice(I)Z

    move-result p1

    if-eqz p1, :cond_ec

    const/16 p1, 0x3e

    .line 2734
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsg(IIII)V

    :cond_ec
    return-void
.end method

.method public updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V
    .registers 5

    .line 682
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setPlaybackActive(Z)V

    .line 683
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->isRecordingActiveForUid(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setRecordingActive(Z)V

    .line 684
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result v0

    if-eq p2, v0, :cond_2e

    if-eqz p2, :cond_27

    .line 686
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    const-string/jumbo p2, "updateCommunicationRouteClientState"

    .line 685
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public updateCommunicationRouteClientsActivity(Ljava/util/List;Ljava/util/List;)V
    .registers 15

    .line 2951
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2952
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_93

    .line 2953
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2954
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_4a

    .line 2957
    invoke-virtual {v3, v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setPlaybackActive(Z)V

    .line 2958
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPlaybackConfiguration;

    .line 2959
    invoke-virtual {v8}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v9

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v10

    if-ne v9, v10, :cond_27

    .line 2960
    invoke-virtual {v8}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 2961
    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setPlaybackActive(Z)V

    move v7, v6

    goto :goto_4b

    :catchall_48
    move-exception p0

    goto :goto_95

    :cond_4a
    move v7, v5

    :goto_4b
    if-eqz p2, :cond_74

    .line 2968
    invoke-virtual {v3, v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setRecordingActive(Z)V

    .line 2969
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_54
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_74

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioRecordingConfiguration;

    .line 2970
    invoke-virtual {v9}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v10

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v11

    if-ne v10, v11, :cond_54

    .line 2971
    invoke-virtual {v9}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    move-result v9

    if-nez v9, :cond_54

    .line 2972
    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setRecordingActive(Z)V

    move v7, v6

    :cond_74
    if-eqz v7, :cond_81

    .line 2979
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioDeviceBroker;->removeMsgForCheckClientState(I)V

    .line 2980
    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V

    goto :goto_c

    :cond_81
    if-eqz v4, :cond_c

    if-eqz p1, :cond_87

    move v4, v6

    goto :goto_88

    :cond_87
    move v4, v5

    :goto_88
    if-eqz p2, :cond_8b

    move v5, v6

    .line 2983
    :cond_8b
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V

    goto/16 :goto_c

    .line 2990
    :cond_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_6 .. :try_end_91} :catchall_48

    .line 2991
    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_93

    return-void

    :catchall_93
    move-exception p0

    goto :goto_97

    .line 2990
    :goto_95
    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_48

    :try_start_96
    throw p0

    .line 2991
    :goto_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_96 .. :try_end_98} :catchall_93

    throw p0
.end method

.method public final waitForBrokerHandlerCreation()V
    .registers 3

    .line 1937
    monitor-enter p0

    .line 1938
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9

    if-nez v0, :cond_13

    .line 1940
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_b
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    goto :goto_1

    :catchall_9
    move-exception v0

    goto :goto_15

    .line 1942
    :catch_b
    :try_start_b
    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "Interruption while waiting on BrokerHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1945
    :cond_13
    monitor-exit p0

    return-void

    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_9

    throw v0
.end method
