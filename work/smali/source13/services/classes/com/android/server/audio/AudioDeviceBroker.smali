.class final Lcom/android/server/audio/AudioDeviceBroker;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;,
        Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;,
        Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;,
        Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;,
        Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;,
        Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;,
        Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;
    }
.end annotation


# static fields
.field private static final BROKER_WAKELOCK_TIMEOUT_MS:J = 0x1388L

.field static final BTA2DP_DOCK_TIMEOUT_MS:I = 0x1f40

.field private static final BTA2DP_MUTE_CHECK_DELAY_MS:I = 0x64

.field static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final MESSAGES_MUTE_MUSIC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xc

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUTE_MUSIC:I = 0x23

.field private static final MSG_IIL_SET_FORCE_BT_A2DP_USE:I = 0x5

.field private static final MSG_IIL_SET_FORCE_USE:I = 0x4

.field private static final MSG_II_SET_HEARING_AID_VOLUME:I = 0xe

.field private static final MSG_II_SET_LE_AUDIO_OUT_VOLUME:I = 0x2e

.field private static final MSG_IL_BTA2DP_TIMEOUT:I = 0xa

.field private static final MSG_IL_BTLEA_TIMEOUT:I = 0x30

.field private static final MSG_IL_BT_SERVICE_CONNECTED_PROFILE:I = 0x17

.field private static final MSG_IL_SAVE_PREF_DEVICES_FOR_CAPTURE_PRESET:I = 0x25

.field private static final MSG_IL_SAVE_PREF_DEVICES_FOR_STRATEGY:I = 0x20

.field private static final MSG_I_BROADCAST_BT_CONNECTION_STATE:I = 0x3

.field private static final MSG_I_BT_SERVICE_DISCONNECTED_PROFILE:I = 0x16

.field private static final MSG_I_SAVE_CLEAR_PREF_DEVICES_FOR_CAPTURE_PRESET:I = 0x26

.field private static final MSG_I_SAVE_REMOVE_PREF_DEVICES_FOR_STRATEGY:I = 0x21

.field private static final MSG_I_SCO_AUDIO_STATE_CHANGED:I = 0x2c

.field private static final MSG_I_SET_AVRCP_ABSOLUTE_VOLUME:I = 0xf

.field private static final MSG_I_SET_MODE_OWNER_PID:I = 0x10

.field private static final MSG_L_A2DP_ACTIVE_DEVICE_CHANGE_EXT:I = 0x40

.field private static final MSG_L_A2DP_DEVICE_CONFIG_CHANGE:I = 0xb

.field private static final MSG_L_A2DP_DEVICE_CONFIG_CHANGE_SHO:I = 0x2f

.field private static final MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT:I = 0x1d

.field private static final MSG_L_BTHA_TIMEOUT:I = 0x31

.field private static final MSG_L_BT_ACTIVE_DEVICE_CHANGE_EXT:I = 0x2d

.field private static final MSG_L_COMMUNICATION_ROUTE_CLIENT_DIED:I = 0x22

.field private static final MSG_L_HEARING_AID_DEVICE_CONNECTION_CHANGE_EXT:I = 0x1f

.field private static final MSG_L_SET_BT_ACTIVE_DEVICE:I = 0x7

.field private static final MSG_L_SET_COMMUNICATION_ROUTE_FOR_CLIENT:I = 0x2a

.field private static final MSG_L_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x2

.field private static final MSG_L_UPDATE_COMMUNICATION_ROUTE:I = 0x27

.field private static final MSG_L_UPDATE_COMMUNICATION_ROUTE_CLIENT:I = 0x2b

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xd

.field private static final MSG_REPORT_NEW_ROUTES_A2DP:I = 0x24

.field private static final MSG_RESTORE_DEVICES:I = 0x1

.field private static final MSG_TOGGLE_HDMI:I = 0x6

.field protected static final REMOTE_DISCONNECTED:I = 0x13

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AS.AudioDeviceBroker"

.field private static sLastDeviceConnectMsgTime:J

.field private static final sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;


# instance fields
.field LEAAbsoluteAddress:Ljava/lang/String;

.field isLeDeviceConnected:Z

.field isLeDeviceConnecting:Z

.field private isRemoteDisconnected:Z

.field private isappbleneed:Z

.field private mAccessibilityStrategyId:I

.field private mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private mBluetoothA2dpEnabled:Z

.field private mBluetoothScoOn:Z

.field private mBluetoothScoOnApplied:Ljava/lang/Boolean;

.field private mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

.field private mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

.field private final mBtHelper:Lcom/android/server/audio/BtHelper;

.field final mCommDevDispatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ICommunicationDeviceDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommunicationClientLock:Ljava/lang/Object;

.field private final mCommunicationRouteClients:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;",
            ">;"
        }
    .end annotation
.end field

.field private mCommunicationStrategyId:I

.field private final mContext:Landroid/content/Context;

.field mCurCommunicationPortId:I

.field private final mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field private final mDeviceStateLock:Ljava/lang/Object;

.field private mModeOwnerPid:I

.field private mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

.field final mSetModeLock:Ljava/lang/Object;

.field private final mSystemServer:Lcom/android/server/audio/SystemServerAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBrokerEventWakeLock(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBrokerHandler(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmModeOwnerPid(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckMessagesMuteMusic(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitRoutingStrategyIds(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSendBecomingNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSetForceUse(Lcom/android/server/audio/AudioDeviceBroker;IIZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUpdateCommunicationRoute(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRoute(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRouteClient(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMsg(Lcom/android/server/audio/AudioDeviceBroker;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMESSAGES_MUTE_MUSIC()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisMessageHandledUnderWakelock(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    .line 127
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 1839
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    .line 1840
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1841
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1842
    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1843
    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1844
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1845
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1846
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/audio/AudioService;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->isRemoteDisconnected:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->isLeDeviceConnecting:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->isLeDeviceConnected:Z

    .line 88
    const-string v1, "00:00:00:00:00:00"

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->LEAAbsoluteAddress:Ljava/lang/String;

    .line 103
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 106
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 130
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 133
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationClientLock:Ljava/lang/Object;

    .line 141
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 144
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 148
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->isappbleneed:Z

    .line 994
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 999
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 1848
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1894
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 152
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 154
    new-instance v0, Lcom/android/server/audio/BtHelper;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 155
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 156
    invoke-static {p1}, Lcom/android/server/audio/SystemServerAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 158
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    .line 159
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioDeviceInventory;Lcom/android/server/audio/SystemServerAdapter;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/audio/AudioService;
    .param p3, "mockDeviceInventory"    # Lcom/android/server/audio/AudioDeviceInventory;
    .param p4, "mockSystemServer"    # Lcom/android/server/audio/SystemServerAdapter;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->isRemoteDisconnected:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->isLeDeviceConnecting:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->isLeDeviceConnected:Z

    .line 88
    const-string v1, "00:00:00:00:00:00"

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->LEAAbsoluteAddress:Ljava/lang/String;

    .line 103
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 106
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 130
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 133
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationClientLock:Ljava/lang/Object;

    .line 141
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 144
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 148
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->isappbleneed:Z

    .line 994
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 999
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 1848
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1894
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 166
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 168
    new-instance v0, Lcom/android/server/audio/BtHelper;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 169
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 170
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 172
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    .line 173
    return-void
.end method

.method private addCommunicationRouteClient(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 12
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 2150
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2151
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;)V

    .line 2152
    .local v0, "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->registerDeathRecipient()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2153
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2154
    :try_start_18
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 2155
    monitor-exit v1

    .line 2156
    return-object v0

    .line 2155
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v2

    .line 2158
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method private btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    .line 769
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.queueOnBluetoothActiveDeviceChanged"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 772
    invoke-virtual {v1, v2, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget-object v3, p3, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 773
    invoke-virtual {v3}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 774
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 775
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 776
    return-void
.end method

.method private checkMessagesMuteMusic(I)V
    .registers 6
    .param p1, "message"    # I

    .line 1876
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    move-result v0

    .line 1877
    .local v0, "mute":Z
    if-nez v0, :cond_2d

    .line 1878
    sget-object v1, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1879
    .local v2, "msg":I
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1880
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1881
    const/4 v0, 0x1

    .line 1882
    goto :goto_2d

    .line 1885
    .end local v2    # "msg":I
    :cond_2c
    goto :goto_c

    .line 1888
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eq v0, v1, :cond_3a

    .line 1889
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->setMusicMute(Z)V

    .line 1891
    :cond_3a
    return-void
.end method

.method private dispatchCommunicationDevice()V
    .registers 5

    .line 1004
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    .line 1005
    :cond_6
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    :goto_a
    nop

    .line 1006
    .local v0, "portId":I
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    if-ne v0, v1, :cond_10

    .line 1007
    return-void

    .line 1009
    :cond_10
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 1011
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1012
    .local v1, "nbDispatchers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_2b

    .line 1014
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/ICommunicationDeviceDispatcher;

    .line 1015
    invoke-interface {v3, v0}, Landroid/media/ICommunicationDeviceDispatcher;->dispatchCommunicationDeviceChanged(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_27

    .line 1017
    goto :goto_28

    .line 1016
    :catch_27
    move-exception v3

    .line 1012
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1019
    .end local v2    # "i":I
    :cond_2b
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1020
    return-void
.end method

.method private getCommunicationRouteClientForPid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 5
    .param p1, "pid"    # I

    .line 2163
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2164
    .local v1, "cl":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 2165
    return-object v1

    .line 2167
    .end local v1    # "cl":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    :cond_19
    goto :goto_6

    .line 2168
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private static hasIntersection(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1851
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "b":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1852
    .local v1, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    return v0

    .line 1853
    .end local v1    # "e":Ljava/lang/Object;, "TT;"
    :cond_16
    goto :goto_4

    .line 1854
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private init()V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setupMessaging(Landroid/content/Context;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Ljava/lang/Boolean;

    .line 197
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    .line 198
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 199
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 201
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/SystemServerAdapter;->registerUserStartedReceiver(Landroid/content/Context;)V

    .line 202
    return-void
.end method

.method private initRoutingStrategyIds()V
    .registers 6

    .line 176
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "strategies":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 178
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 180
    .local v3, "strategy":Landroid/media/audiopolicy/AudioProductStrategy;
    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    if-ne v4, v1, :cond_2a

    const/4 v4, 0x0

    .line 181
    invoke-virtual {v3, v4}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 183
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v4

    iput v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 185
    :cond_2a
    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    if-ne v4, v1, :cond_3c

    const/16 v4, 0xa

    .line 186
    invoke-virtual {v3, v4}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 188
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v4

    iput v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 190
    .end local v3    # "strategy":Landroid/media/audiopolicy/AudioProductStrategy;
    :cond_3c
    goto :goto_d

    .line 191
    :cond_3d
    return-void
.end method

.method private isDeviceActiveForCommunication(I)Z
    .registers 3
    .param p1, "deviceType"    # I

    .line 550
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_16

    .line 551
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    if-ne v0, p1, :cond_16

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v0, :cond_16

    .line 553
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    if-ne v0, p1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 550
    :goto_17
    return v0
.end method

.method private isDeviceOnForCommunication(I)Z
    .registers 7
    .param p1, "deviceType"    # I

    .line 531
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->isLeDeviceConnected:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 532
    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v3, "isDeviceOnForCommunication when ble is connect. preferredCommunicationDevice directly to avoid waiting too long."

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 534
    .local v0, "device":Landroid/media/AudioDeviceAttributes;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    if-ne v3, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    .line 536
    .end local v0    # "device":Landroid/media/AudioDeviceAttributes;
    :cond_1d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_20
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v3

    .line 538
    .local v3, "device":Landroid/media/AudioDeviceAttributes;
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v4

    if-ne v4, p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    monitor-exit v0

    return v1

    .line 539
    .end local v3    # "device":Landroid/media/AudioDeviceAttributes;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private isDeviceRequestedForCommunication(I)Z
    .registers 5
    .param p1, "deviceType"    # I

    .line 517
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    .line 519
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v2

    if-ne v2, p1, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 520
    .end local v1    # "device":Landroid/media/AudioDeviceAttributes;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private static isMessageHandledUnderWakelock(I)Z
    .registers 2
    .param p0, "msgId"    # I

    .line 1720
    sparse-switch p0, :sswitch_data_8

    .line 1735
    const/4 v0, 0x0

    return v0

    .line 1733
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0x1d -> :sswitch_5
        0x1f -> :sswitch_5
        0x23 -> :sswitch_5
        0x2f -> :sswitch_5
        0x30 -> :sswitch_5
        0x31 -> :sswitch_5
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method private isSpeakerphoneActive()Z
    .registers 2

    .line 574
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result v0

    return v0
.end method

.method private isSpeakerphoneRequested()Z
    .registers 2

    .line 562
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "cl"    # Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1284
    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1283
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    return-void
.end method

.method private onCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 11
    .param p1, "client"    # Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 1973
    if-nez p1, :cond_3

    .line 1974
    return-void

    .line 1976
    :cond_3
    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "Communication client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string/jumbo v8, "onCommunicationRouteClientDied"

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 1979
    return-void
.end method

.method private onSendBecomingNoisyIntent()V
    .registers 4

    .line 1332
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1333
    const-string v2, "AS.AudioDeviceBroker"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 1332
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1334
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->sendDeviceBecomingNoisyIntent()V

    .line 1335
    return-void
.end method

.method private onSetForceUse(IIZLjava/lang/String;)V
    .registers 8
    .param p1, "useCase"    # I
    .param p2, "config"    # I
    .param p3, "fromA2dp"    # Z
    .param p4, "eventSource"    # Ljava/lang/String;

    .line 1311
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1312
    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 1314
    :cond_6
    sget-object v0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1316
    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.forceUse."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1317
    invoke-static {p1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 1318
    const-string/jumbo v2, "onSetForceUse"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 1319
    invoke-virtual {v0, v1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 1321
    invoke-static {p2}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1320
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1322
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSetForceUse(useCase<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, config<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, fromA2dp<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, eventSource<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1329
    return-void
.end method

.method private onUpdateCommunicationRoute(Ljava/lang/String;)V
    .registers 9
    .param p1, "eventSource"    # Ljava/lang/String;

    .line 2029
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 2031
    .local v0, "preferredCommunicationDevice":Landroid/media/AudioDeviceAttributes;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateCommunicationRoute, preferredCommunicationDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " eventSource: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AS.AudioDeviceBroker"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2037
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Ljava/lang/Boolean;

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    if-eq v1, v2, :cond_73

    .line 2038
    :cond_56
    if-eqz v0, :cond_66

    .line 2039
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_60

    goto :goto_66

    .line 2042
    :cond_60
    const-string v1, "BT_SCO=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_6b

    .line 2040
    :cond_66
    :goto_66
    const-string v1, "BT_SCO=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2044
    :goto_6b
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Ljava/lang/Boolean;

    .line 2047
    :cond_73
    const/16 v1, 0x1a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7f

    .line 2048
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v5

    if-eq v5, v1, :cond_8b

    :cond_7f
    iget-boolean v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->isappbleneed:Z

    if-eqz v5, :cond_8b

    .line 2050
    iput-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->isappbleneed:Z

    .line 2051
    const-string v1, "BT_BLE=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_9e

    .line 2052
    :cond_8b
    if-eqz v0, :cond_9e

    .line 2053
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v5

    if-ne v5, v1, :cond_9e

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->isappbleneed:Z

    if-nez v1, :cond_9e

    .line 2055
    iput-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->isappbleneed:Z

    .line 2056
    const-string v1, "BT_BLE=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2059
    :cond_9e
    :goto_9e
    if-nez v0, :cond_ab

    .line 2060
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->removePreferredDevicesForStrategySync(I)I

    .line 2061
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->removePreferredDevicesForStrategySync(I)I

    goto :goto_c5

    .line 2063
    :cond_ab
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    new-array v5, v2, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, v5, v3

    .line 2064
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 2063
    invoke-virtual {p0, v1, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setPreferredDevicesForStrategySync(ILjava/util/List;)I

    .line 2065
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    new-array v2, v2, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, v2, v3

    .line 2066
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2065
    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setPreferredDevicesForStrategySync(ILjava/util/List;)I

    .line 2070
    :goto_c5
    if-eqz v0, :cond_101

    .line 2071
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_101

    .line 2072
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getBluetoothContextualVolumeStream()I

    move-result v1

    .line 2073
    .local v1, "streamType":I
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v2

    .line 2075
    .local v2, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUpdateCommunicationRoute, update vol for hearing aid, index "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", stream "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    mul-int/lit8 v3, v2, 0xa

    invoke-virtual {p0, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 2081
    .end local v1    # "streamType":I
    .end local v2    # "index":I
    :cond_101
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdatePhoneStrategyDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 2082
    return-void
.end method

.method private onUpdateCommunicationRouteClient(Ljava/lang/String;)V
    .registers 11
    .param p1, "eventSource"    # Ljava/lang/String;

    .line 2091
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRoute(Ljava/lang/String;)V

    .line 2092
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    .line 2094
    .local v0, "crc":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateCommunicationRouteClient, crc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " eventSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioDeviceBroker"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    if-eqz v0, :cond_60

    .line 2098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpdateCommunicationRouteClient, isRemoteDisconnected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->isRemoteDisconnected:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->isRemoteDisconnected:Z

    if-nez v1, :cond_63

    .line 2100
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v6

    const/4 v7, -0x1

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    goto :goto_63

    .line 2104
    :cond_60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->isRemoteDisconnected:Z

    .line 2106
    :cond_63
    :goto_63
    return-void
.end method

.method private onUpdatePhoneStrategyDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 9
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 2109
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2110
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_51

    .line 2111
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneActive()Z

    move-result v2

    .line 2112
    .local v2, "wasSpeakerphoneActive":Z
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 2113
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 2114
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneActive()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_4e

    if-eq v2, v3, :cond_43

    .line 2116
    :try_start_15
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.SPEAKERPHONE_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    .line 2118
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2116
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_29} :catch_2a
    .catchall {:try_start_15 .. :try_end_29} :catchall_4e

    .line 2122
    goto :goto_43

    .line 2120
    :catch_2a
    move-exception v3

    .line 2121
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string v4, "AS.AudioDeviceBroker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to broadcast ACTION_SPEAKERPHONE_STATE_CHANGED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->postUpdateRingerModeServiceInt()V

    .line 2125
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->dispatchCommunicationDevice()V

    .line 2126
    .end local v2    # "wasSpeakerphoneActive":Z
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_4e

    .line 2127
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_51

    .line 2128
    return-void

    .line 2126
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    :try_start_50
    throw v2

    .line 2127
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .restart local p1    # "device":Landroid/media/AudioDeviceAttributes;
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    throw v1
.end method

.method private preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .registers 7

    .line 1990
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1991
    .local v0, "btSCoOn":Z
    :goto_f
    if-eqz v0, :cond_1a

    .line 1996
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->getHeadsetAudioDummyDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    .line 1997
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    if-eqz v1, :cond_1a

    .line 1998
    return-object v1

    .line 2001
    .end local v1    # "device":Landroid/media/AudioDeviceAttributes;
    :cond_1a
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 2002
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2003
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;>;"
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2004
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2005
    .local v2, "cl":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->-$$Nest$fgetmDevice(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)Landroid/media/AudioDeviceAttributes;

    move-result-object v3

    if-eqz v3, :cond_5e

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->-$$Nest$fgetmDevice(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)Landroid/media/AudioDeviceAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_5e

    .line 2006
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceInventory;->getLeAudioAddress()Ljava/lang/String;

    move-result-object v3

    .line 2007
    .local v3, "address":Ljava/lang/String;
    if-eqz v3, :cond_5e

    .line 2008
    const-string v4, "AS.AudioDeviceBroker"

    const-string/jumbo v5, "preferredCommunicationDevice, return ble device when ble is selected by other app"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    new-instance v4, Landroid/media/AudioDeviceAttributes;

    const/high16 v5, 0x20000000

    invoke-direct {v4, v5, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    return-object v4

    .line 2012
    .end local v2    # "cl":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .end local v3    # "address":Ljava/lang/String;
    :cond_5e
    goto :goto_28

    .line 2014
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;>;"
    :cond_5f
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    .line 2015
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6d

    goto :goto_6e

    .line 2019
    :cond_6d
    return-object v1

    .line 2017
    :cond_6e
    :goto_6e
    const/4 v2, 0x0

    return-object v2
.end method

.method private removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "unregister"    # Z

    .line 2132
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2133
    .local v1, "cl":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_2a

    .line 2134
    if-eqz p2, :cond_1d

    .line 2135
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    .line 2137
    :cond_1d
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationClientLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2138
    :try_start_20
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2139
    monitor-exit v2

    .line 2140
    return-object v1

    .line 2139
    :catchall_27
    move-exception v0

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v0

    .line 2142
    .end local v1    # "cl":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    :cond_2a
    goto :goto_6

    .line 2143
    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method private requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .registers 5

    .line 464
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    .line 465
    .local v0, "crc":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 467
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestedCommunicationDevice, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode owner pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioDeviceBroker"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-object v1
.end method

.method private sendIILMsg(IIIILjava/lang/Object;I)V
    .registers 14
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 1791
    if-nez p2, :cond_8

    .line 1792
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    goto :goto_14

    .line 1793
    :cond_8
    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1794
    return-void

    .line 1797
    :cond_14
    :goto_14
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1798
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1800
    .local v0, "identity":J
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    .line 1803
    goto :goto_2e

    .line 1801
    :catch_26
    move-exception v2

    .line 1802
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AS.AudioDeviceBroker"

    const-string v4, "Exception acquiring wakelock"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1804
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1807
    .end local v0    # "identity":J
    :cond_31
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1808
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    .line 1811
    :cond_40
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1812
    :try_start_43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p6

    add-long/2addr v1, v3

    .line 1814
    .local v1, "time":J
    sparse-switch p1, :sswitch_data_6a

    goto :goto_5a

    .line 1822
    :sswitch_4d
    sget-wide v3, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    cmp-long v5, v3, v1

    if-ltz v5, :cond_57

    .line 1824
    const-wide/16 v5, 0x1e

    add-long/2addr v3, v5

    move-wide v1, v3

    .line 1826
    :cond_57
    sput-wide v1, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 1827
    nop

    .line 1831
    :goto_5a
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v3, p1, p3, p4, p5}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1833
    nop

    .end local v1    # "time":J
    monitor-exit v0

    .line 1834
    return-void

    .line 1833
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_43 .. :try_end_68} :catchall_66

    throw v1

    nop

    :sswitch_data_6a
    .sparse-switch
        0x2 -> :sswitch_4d
        0x7 -> :sswitch_4d
        0xa -> :sswitch_4d
        0xb -> :sswitch_4d
        0x2f -> :sswitch_4d
        0x30 -> :sswitch_4d
        0x31 -> :sswitch_4d
    .end sparse-switch
.end method

.method private sendIILMsgNoDelay(IIIILjava/lang/Object;)V
    .registers 13
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 1786
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1787
    return-void
.end method

.method private sendIIMsgNoDelay(IIII)V
    .registers 12
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 1774
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1775
    return-void
.end method

.method private sendILMsg(IIILjava/lang/Object;I)V
    .registers 13
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delay"    # I

    .line 1754
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1755
    return-void
.end method

.method private sendILMsgNoDelay(IIILjava/lang/Object;)V
    .registers 12
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1778
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1779
    return-void
.end method

.method private sendIMsg(IIII)V
    .registers 12
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "delay"    # I

    .line 1762
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1763
    return-void
.end method

.method private sendIMsgNoDelay(III)V
    .registers 11
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I

    .line 1770
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1771
    return-void
.end method

.method private sendLMsg(IILjava/lang/Object;I)V
    .registers 12
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "delay"    # I

    .line 1758
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1759
    return-void
.end method

.method private sendLMsgNoDelay(IILjava/lang/Object;)V
    .registers 11
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1782
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1783
    return-void
.end method

.method private sendMsg(III)V
    .registers 11
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "delay"    # I

    .line 1750
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1751
    return-void
.end method

.method private sendMsgNoDelay(II)V
    .registers 10
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I

    .line 1766
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1767
    return-void
.end method

.method private setupMessaging(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctxt"    # Landroid/content/Context;

    .line 1344
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1345
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string/jumbo v2, "handleAudioDeviceEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1347
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    .line 1348
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->start()V

    .line 1349
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->waitForBrokerHandlerCreation()V

    .line 1350
    return-void
.end method

.method private topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .registers 5

    .line 443
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 444
    .local v1, "crc":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    if-ne v2, v3, :cond_1b

    .line 445
    return-object v1

    .line 447
    .end local v1    # "crc":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    :cond_1b
    goto :goto_6

    .line 448
    :cond_1c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    if-nez v1, :cond_36

    .line 450
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    monitor-exit v0

    return-object v1

    .line 452
    :cond_36
    monitor-exit v0

    .line 453
    const/4 v0, 0x0

    return-object v0

    .line 452
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private waitForBrokerHandlerCreation()V
    .registers 4

    .line 1353
    monitor-enter p0

    .line 1354
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_13

    .line 1356
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_15

    .line 1359
    goto :goto_1

    .line 1357
    :catch_9
    move-exception v0

    .line 1358
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "Interruption while waiting on BrokerHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1361
    :cond_13
    monitor-exit p0

    .line 1362
    return-void

    .line 1361
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1268
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/SystemServerAdapter;->broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V

    .line 1269
    return-void
.end method

.method checkCommunicationRouteClientForCommunicationDevice(Lcom/android/server/audio/RecordingActivityMonitor;Lcom/android/server/audio/PlaybackActivityMonitor;)Z
    .registers 12
    .param p1, "recordingMonitor"    # Lcom/android/server/audio/RecordingActivityMonitor;
    .param p2, "playbackMonitor"    # Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 2173
    const/4 v0, 0x0

    .line 2174
    .local v0, "i":I
    const/4 v1, 0x0

    .line 2175
    .local v1, "j":I
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_b6

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_16

    goto/16 :goto_b6

    .line 2178
    :cond_16
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationClientLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2179
    :try_start_19
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2180
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;>;"
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 2181
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 2182
    .local v5, "cl":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->-$$Nest$fgetmDevice(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)Landroid/media/AudioDeviceAttributes;

    move-result-object v6

    if-eqz v6, :cond_92

    .line 2183
    const-string v6, "AS.AudioDeviceBroker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkCommunicationRouteClientForCommunicationDevice() CommunicationRouteClient loop uid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cl.mDevice.getType() is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->-$$Nest$fgetmDevice(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)Landroid/media/AudioDeviceAttributes;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    move-result v6

    if-nez v6, :cond_93

    .line 2185
    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/server/audio/PlaybackActivityMonitor;->isVoicePlaybackActiveForUid(I)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 2186
    goto :goto_93

    .line 2188
    :cond_74
    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->-$$Nest$fgetmDevice(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)Landroid/media/AudioDeviceAttributes;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_81

    add-int/lit8 v0, v0, 0x1

    .line 2189
    :cond_81
    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->-$$Nest$fgetmDevice(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)Landroid/media/AudioDeviceAttributes;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v6

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_8f

    add-int/lit8 v1, v1, 0x1

    .line 2190
    :cond_8f
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 2192
    .end local v5    # "cl":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    :cond_92
    goto :goto_1f

    .line 2193
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;>;"
    :cond_93
    :goto_93
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_19 .. :try_end_94} :catchall_b3

    .line 2194
    if-lez v1, :cond_a7

    .line 2195
    const-string v2, "AS.AudioDeviceBroker"

    const-string v4, "checkCommunicationRouteClientForCommunicationDevice() BLE will be close!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper()Z

    .line 2197
    const-string v2, "BT_BLE=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2199
    :cond_a7
    if-lez v0, :cond_b2

    .line 2200
    const-string v2, "AS.AudioDeviceBroker"

    const-string v3, "checkCommunicationRouteClientForCommunicationDevice() sco will be close!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const/4 v2, 0x1

    return v2

    .line 2203
    :cond_b2
    return v3

    .line 2193
    :catchall_b3
    move-exception v3

    :try_start_b4
    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v3

    .line 2176
    :cond_b6
    :goto_b6
    return v3
.end method

.method checkMusicActive(ILjava/lang/String;)V
    .registers 4
    .param p1, "deviceType"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 1067
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->checkMusicActive(ILjava/lang/String;)V

    .line 1068
    return-void
.end method

.method checkSafeMediaVolumeAndResetForBLE(III)I
    .registers 5
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .line 2220
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolumeAndResetForBLE(III)I

    move-result v0

    return v0
.end method

.method checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 1073
    return-void
.end method

.method clearAvrcpAbsoluteVolumeSupported()V
    .registers 3

    .line 1257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1258
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1259
    return-void
.end method

.method clearPreferredDevicesForCapturePresetSync(I)I
    .registers 3
    .param p1, "capturePreset"    # I

    .line 970
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->clearPreferredDevicesForCapturePresetSync(I)I

    move-result v0

    return v0
.end method

.method createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    .registers 13
    .param p1, "d"    # Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "state"    # I

    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, "codec":I
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v1}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v1

    sparse-switch v1, :sswitch_data_5e

    .line 762
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v3}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :sswitch_29
    const v1, 0x20000002

    .line 761
    .local v1, "audioDevice":I
    goto :goto_4f

    .line 753
    .end local v1    # "audioDevice":I
    :sswitch_2d
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v1}, Landroid/media/BluetoothProfileConnectionInfo;->isLeOutput()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 754
    const/high16 v1, 0x20000000

    .restart local v1    # "audioDevice":I
    goto :goto_4f

    .line 756
    .end local v1    # "audioDevice":I
    :cond_38
    const/high16 v1, -0x60000000

    .line 758
    .restart local v1    # "audioDevice":I
    goto :goto_4f

    .line 750
    .end local v1    # "audioDevice":I
    :sswitch_3b
    const/high16 v1, 0x8000000

    .line 751
    .restart local v1    # "audioDevice":I
    goto :goto_4f

    .line 741
    .end local v1    # "audioDevice":I
    :sswitch_3e
    const/high16 v1, -0x7ffe0000

    .line 742
    .restart local v1    # "audioDevice":I
    goto :goto_4f

    .line 744
    .end local v1    # "audioDevice":I
    :sswitch_41
    const/16 v1, 0x80

    .line 745
    .restart local v1    # "audioDevice":I
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 746
    :try_start_46
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    move v0, v3

    .line 747
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_5b

    .line 748
    nop

    .line 764
    :goto_4f
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, v1

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;III)V

    return-object v2

    .line 747
    :catchall_5b
    move-exception v3

    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v3

    :sswitch_data_5e
    .sparse-switch
        0x2 -> :sswitch_41
        0xb -> :sswitch_3e
        0x15 -> :sswitch_3b
        0x16 -> :sswitch_2d
        0x1a -> :sswitch_29
    .end sparse-switch
.end method

.method disconnectAllBluetoothProfiles()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->disconnectAllBluetoothProfiles()V

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1272
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    if-eqz v0, :cond_38

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Message handler (watch for unhandled messages):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_3d

    .line 1276
    :cond_38
    const-string v0, "Message handler is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    :goto_3d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Communication route clients:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->forEach(Ljava/util/function/Consumer;)V

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Computed Preferred communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1287
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1286
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Applied Preferred communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Active communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1291
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-nez v2, :cond_c0

    const-string v2, "None"

    goto :goto_c7

    .line 1292
    :cond_c0
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_c7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1290
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mCommunicationStrategyId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mAccessibilityStrategyId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mModeOwnerPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/BtHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1303
    return-void
.end method

.method getBluetoothA2dpEnabled()Z
    .registers 3

    .line 1262
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1263
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 1264
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getCommunicationDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 478
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 480
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit v0

    return-object v1

    .line 481
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 1063
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .registers 3

    .line 855
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 857
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getDeviceForStream(I)I
    .registers 3
    .param p1, "streamType"    # I

    .line 1038
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method getDeviceSensorUuid(Landroid/media/AudioDeviceAttributes;)Ljava/util/UUID;
    .registers 4
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 2213
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceSensorUuid(Landroid/media/AudioDeviceAttributes;)Ljava/util/UUID;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2215
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getMaxVssVolumeForStream(I)I
    .registers 3
    .param p1, "streamType"    # I

    .line 1034
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->getMaxVssVolumeForStream(I)I

    move-result v0

    return v0
.end method

.method getVssVolumeForDevice(II)I
    .registers 4
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 1030
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    move-result v0

    return v0
.end method

.method handleCancelFailureToConnectToBtHeadsetService()V
    .registers 3

    .line 1225
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 1226
    return-void
.end method

.method handleDeviceConnection(Landroid/media/AudioDeviceAttributes;Z)Z
    .registers 6
    .param p1, "attributes"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "connect"    # Z

    .line 1215
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1217
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method handleFailureToConnectToBtHeadsetService(I)V
    .registers 4
    .param p1, "delay"    # I

    .line 1221
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    .line 1222
    return-void
.end method

.method hasAudioFocusUsers()Z
    .registers 2

    .line 1076
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasAudioFocusUsers()Z

    move-result v0

    return v0
.end method

.method hasMediaDynamicPolicy()Z
    .registers 2

    .line 1059
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result v0

    return v0
.end method

.method hasScheduledA2dpConnection(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 1234
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1235
    .local v0, "devInfoToCheck":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isAvrcpAbsoluteVolumeSupported()Z
    .registers 3

    .line 861
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 862
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 863
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isBleHeadsetScoRequested()Z
    .registers 2

    .line 587
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    move-result v0

    return v0
.end method

.method isBluetoothA2dpOn()Z
    .registers 3

    .line 867
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 868
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 869
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isBluetoothScoActive()Z
    .registers 2

    .line 604
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result v0

    return v0
.end method

.method isBluetoothScoOn()Z
    .registers 4

    .line 595
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 596
    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v2, "isBluetoothScoOn return false when sco device is not connect."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return v1

    .line 599
    :cond_12
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceOnForCommunication(I)Z

    move-result v0

    if-nez v0, :cond_21

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceOnForCommunication(I)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method isBluetoothScoRequested()Z
    .registers 2

    .line 583
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    move-result v0

    return v0
.end method

.method isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z
    .registers 4
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 608
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 610
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isInCommunication()Z
    .registers 2

    .line 1055
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    return v0
.end method

.method isSpeakerphoneOn()Z
    .registers 2

    .line 570
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceOnForCommunication(I)Z

    move-result v0

    return v0
.end method

.method messageMutesMusic(I)Z
    .registers 6
    .param p1, "message"    # I

    .line 1858
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1859
    return v0

    .line 1862
    :cond_4
    const/4 v1, 0x7

    if-eq p1, v1, :cond_13

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_13

    const/16 v1, 0xb

    if-eq p1, v1, :cond_13

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_29

    .line 1866
    :cond_13
    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v2, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 1868
    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioService;->getDeviceSetForStream(I)Ljava/util/Set;

    move-result-object v1

    .line 1867
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->hasIntersection(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1869
    return v0

    .line 1871
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method needCheckBluetoothScoActive(Lcom/android/server/audio/RecordingActivityMonitor;Lcom/android/server/audio/PlaybackActivityMonitor;Ljava/lang/String;)Z
    .registers 5
    .param p1, "recordingMonitor"    # Lcom/android/server/audio/RecordingActivityMonitor;
    .param p2, "playbackMonitor"    # Lcom/android/server/audio/PlaybackActivityMonitor;
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 937
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->checkCommunicationRouteClientForCommunicationDevice(Lcom/android/server/audio/RecordingActivityMonitor;Lcom/android/server/audio/PlaybackActivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 938
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)Z

    .line 939
    const/4 v0, 0x1

    return v0

    .line 941
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method onAudioServerDied()V
    .registers 3

    .line 225
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 226
    return-void
.end method

.method onSystemReady()V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 217
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getModeOwnerPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 218
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->onSystemReady()V

    .line 219
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    .line 220
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_19

    .line 221
    return-void

    .line 219
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    :try_start_18
    throw v2

    .line 220
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method postAccessoryPlugMediaUnmute(I)V
    .registers 3
    .param p1, "device"    # I

    .line 1026
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    .line 1027
    return-void
.end method

.method postApplyVolumeOnDevice(IILjava/lang/String;)V
    .registers 5
    .param p1, "streamType"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 1042
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 1043
    return-void
.end method

.method postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 890
    const/16 v0, 0xb

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 891
    return-void
.end method

.method postBluetoothA2dpDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 894
    const/16 v0, 0x2f

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 895
    return-void
.end method

.method postBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    .param p2, "delay"    # I

    .line 1091
    const/4 v0, 0x7

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    .line 1092
    return-void
.end method

.method postBroadcastBecomingNoisy()V
    .registers 3

    .line 1086
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 1087
    return-void
.end method

.method postBroadcastScoConnectionState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 1082
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 1083
    return-void
.end method

.method postBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 1104
    const/16 v0, 0x17

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    .line 1105
    return-void
.end method

.method postBtProfileDisconnected(I)V
    .registers 4
    .param p1, "profile"    # I

    .line 1100
    const/16 v0, 0x16

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 1101
    return-void
.end method

.method postCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .registers 4
    .param p1, "client"    # Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 1108
    const/16 v0, 0x22

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1109
    return-void
.end method

.method postObserveDevicesForAllStreams()V
    .registers 2

    .line 1051
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams()V

    .line 1052
    return-void
.end method

.method postReportNewRoutes(Z)V
    .registers 4
    .param p1, "fromA2dp"    # Z

    .line 1229
    if-eqz p1, :cond_5

    const/16 v0, 0x24

    goto :goto_7

    :cond_5
    const/16 v0, 0xd

    :goto_7
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 1230
    return-void
.end method

.method postSaveClearPreferredDevicesForCapturePreset(I)V
    .registers 4
    .param p1, "capturePreset"    # I

    .line 1128
    const/16 v0, 0x26

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 1130
    return-void
.end method

.method postSaveRemovePreferredDevicesForStrategy(I)V
    .registers 4
    .param p1, "strategy"    # I

    .line 1118
    const/16 v0, 0x21

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 1119
    return-void
.end method

.method postSaveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V
    .registers 5
    .param p1, "capturePreset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 1123
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    const/16 v0, 0x25

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    .line 1125
    return-void
.end method

.method postSaveSetPreferredDevicesForStrategy(ILjava/util/List;)V
    .registers 5
    .param p1, "strategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 1114
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    const/16 v0, 0x20

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    .line 1115
    return-void
.end method

.method postScoAudioStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 1141
    const/16 v0, 0x2c

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 1142
    return-void
.end method

.method postSetAvrcpAbsoluteVolumeIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .line 873
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 874
    return-void
.end method

.method postSetCommunicationRouteForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    .line 1137
    const/16 v0, 0x2a

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1138
    return-void
.end method

.method postSetHearingAidVolumeIndex(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "streamType"    # I

    .line 877
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    .line 878
    return-void
.end method

.method postSetLeAudioVolumeIndex(III)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "maxIndex"    # I
    .param p3, "streamType"    # I

    .line 881
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;-><init>(III)V

    .line 882
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;
    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 883
    return-void
.end method

.method postSetModeOwnerPid(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "mode"    # I

    .line 886
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    .line 887
    return-void
.end method

.method postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "vssVolIndex"    # I
    .param p3, "device"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .line 1047
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 1048
    return-void
.end method

.method postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V
    .registers 4
    .param p1, "connectionState"    # Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;
    .param p2, "delay"    # I

    .line 1096
    const/4 v0, 0x2

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    .line 1097
    return-void
.end method

.method postUpdateCommunicationRouteClient(Ljava/lang/String;)V
    .registers 4
    .param p1, "eventSource"    # Ljava/lang/String;

    .line 1133
    const/16 v0, 0x2b

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1134
    return-void
.end method

.method queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .registers 10
    .param p1, "data"    # Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    .line 784
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v0}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v0

    const/16 v1, 0x2d

    const/4 v2, 0x2

    if-ne v0, v2, :cond_94

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_94

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_94

    .line 786
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "name":Ljava/lang/String;
    new-instance v3, Landroid/media/MediaMetrics$Item;

    const-string v4, "audio.device.queueOnBluetoothActiveDeviceChanged_update"

    invoke-direct {v3, v4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 789
    invoke-virtual {v3, v4, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v4, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 790
    invoke-virtual {v5}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 791
    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 793
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 794
    :try_start_40
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->isA2dpDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 795
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V

    goto :goto_8f

    .line 799
    :cond_54
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object v4, v4, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 800
    .local v4, "di":Ljava/lang/String;
    const-string v5, "AS.AudioDeviceBroker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queueOnBluetoothActiveDeviceChanged: current a2dp device is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    if-nez v4, :cond_8f

    .line 802
    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v6, "connected"

    invoke-direct {p0, v5, v6, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 803
    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 804
    invoke-virtual {p0, p1, v5, v2}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v5

    .line 803
    invoke-direct {p0, v1, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 808
    .end local v4    # "di":Ljava/lang/String;
    :cond_8f
    :goto_8f
    monitor-exit v3

    .line 809
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_c1

    .line 808
    .restart local v0    # "name":Ljava/lang/String;
    :catchall_91
    move-exception v1

    monitor-exit v3
    :try_end_93
    .catchall {:try_start_40 .. :try_end_93} :catchall_91

    throw v1

    .line 810
    .end local v0    # "name":Ljava/lang/String;
    :cond_94
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_97
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_ac

    .line 812
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v4, "disconnected"

    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 814
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    .line 815
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v3

    .line 814
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 818
    :cond_ac
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_c0

    .line 819
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v4, "connected"

    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 820
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 821
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v3

    .line 820
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 824
    :cond_c0
    monitor-exit v0

    .line 826
    :goto_c1
    return-void

    .line 824
    :catchall_c2
    move-exception v1

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_97 .. :try_end_c4} :catchall_c2

    throw v1
.end method

.method receiveBtEvent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 250
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 252
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/BtHelper;->receiveBtEvent(Landroid/content/Intent;)V

    .line 253
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_e

    .line 254
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_11

    .line 255
    return-void

    .line 253
    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .end local p1    # "intent":Landroid/content/Intent;
    :try_start_10
    throw v2

    .line 254
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_11

    throw v1
.end method

.method registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .registers 3
    .param p1, "dispatcher"    # Landroid/media/ICapturePresetDevicesRoleDispatcher;

    .line 975
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 976
    return-void
.end method

.method registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .registers 3
    .param p1, "dispatcher"    # Landroid/media/ICommunicationDeviceDispatcher;

    .line 985
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 986
    return-void
.end method

.method registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .registers 3
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDevicesDispatcher;

    .line 956
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 957
    return-void
.end method

.method removePreferredDevicesForStrategySync(I)I
    .registers 3
    .param p1, "strategy"    # I

    .line 951
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDevicesForStrategySync(I)I

    move-result v0

    return v0
.end method

.method setA2dpTimeout(Ljava/lang/String;II)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "a2dpCodec"    # I
    .param p3, "delayMs"    # I

    .line 1239
    const/16 v1, 0xa

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 1240
    return-void
.end method

.method setAvrcpAbsoluteVolumeSupported(Z)V
    .registers 4
    .param p1, "supported"    # Z

    .line 1251
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1252
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1253
    monitor-exit v0

    .line 1254
    return-void

    .line 1253
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setBluetoothA2dpOnInt(ZZLjava/lang/String;)V
    .registers 8
    .param p1, "on"    # Z
    .param p2, "fromA2dp"    # Z
    .param p3, "source"    # Ljava/lang/String;

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") from u/pid:"

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1201
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1203
    .local v0, "eventSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1204
    :try_start_39
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 1205
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 1206
    const/4 v2, 0x1

    .line 1208
    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz v3, :cond_48

    const/4 v3, 0x0

    goto :goto_4a

    :cond_48
    const/16 v3, 0xa

    .line 1206
    :goto_4a
    invoke-direct {p0, v2, v3, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    .line 1211
    monitor-exit v1

    .line 1212
    return-void

    .line 1211
    :catchall_4f
    move-exception v2

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method setBluetoothA2dpOn_Async(ZLjava/lang/String;)V
    .registers 12
    .param p1, "on"    # Z
    .param p2, "source"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-ne v1, p1, :cond_9

    .line 260
    monitor-exit v0

    return-void

    .line 262
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 263
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 264
    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 266
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1a
    const/16 v1, 0xa

    :goto_1c
    move v7, v1

    .line 264
    move-object v3, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method setBluetoothScoOn(ZLjava/lang/String;)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 835
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    if-nez p1, :cond_2a

    .line 839
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->resetBluetoothScoOfApp()V

    .line 842
    :cond_2a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_2d
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    .line 844
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdateCommunicationRouteClient(Ljava/lang/String;)V

    .line 845
    monitor-exit v0

    .line 846
    return-void

    .line 845
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    throw v1
.end method

.method setCommunicationDevice(Landroid/os/IBinder;IILandroid/media/AudioDeviceInfo;Ljava/lang/String;)Z
    .registers 20
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "device"    # Landroid/media/AudioDeviceInfo;
    .param p5, "eventSource"    # Ljava/lang/String;

    .line 319
    move-object v1, p0

    move/from16 v9, p3

    move-object/from16 v10, p4

    const-string v0, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCommunicationDevice, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v11, v1, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v11

    .line 323
    :try_start_2b
    iget-object v12, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_5b

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "deviceAttr":Landroid/media/AudioDeviceAttributes;
    if-eqz v10, :cond_38

    .line 326
    :try_start_31
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v2, v10}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    move-object v0, v2

    goto :goto_42

    .line 328
    :cond_38
    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForPid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v2

    .line 329
    .local v2, "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    if-nez v2, :cond_42

    .line 330
    const/4 v3, 0x0

    monitor-exit v12
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_58

    :try_start_40
    monitor-exit v11
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_5b

    return v3

    .line 333
    .end local v2    # "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    :cond_42
    :goto_42
    :try_start_42
    new-instance v13, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    const/4 v7, -0x1

    move-object v2, v13

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v0

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;-><init>(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationRouteForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;)V

    .line 335
    .end local v0    # "deviceAttr":Landroid/media/AudioDeviceAttributes;
    monitor-exit v12
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_58

    .line 336
    :try_start_55
    monitor-exit v11
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_5b

    .line 337
    const/4 v0, 0x1

    return v0

    .line 335
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v12
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .end local p1    # "cb":Landroid/os/IBinder;
    .end local p2    # "uid":I
    .end local p3    # "pid":I
    .end local p4    # "device":Landroid/media/AudioDeviceInfo;
    .end local p5    # "eventSource":Ljava/lang/String;
    :try_start_5a
    throw v0

    .line 336
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .restart local p1    # "cb":Landroid/os/IBinder;
    .restart local p2    # "uid":I
    .restart local p3    # "pid":I
    .restart local p4    # "device":Landroid/media/AudioDeviceInfo;
    .restart local p5    # "eventSource":Ljava/lang/String;
    :catchall_5b
    move-exception v0

    monitor-exit v11
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method setCommunicationRouteForClient(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 23
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p5, "scoAudioMode"    # I
    .param p6, "eventSource"    # Ljava/lang/String;

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCommunicationRouteForClient: device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.AudioDeviceBroker"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-object v6, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v8, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setCommunicationRouteForClient for pid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " device: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from API: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v8, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v8

    .line 348
    invoke-virtual {v6, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v6

    .line 354
    .local v6, "wasBtScoRequested":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBleHeadsetScoRequested()Z

    move-result v8

    .line 360
    .local v8, "wasBleScoRequested":Z
    const/4 v9, 0x0

    .line 361
    .local v9, "prevClientDevice":Landroid/media/AudioDeviceAttributes;
    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForPid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v10

    .line 362
    .local v10, "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    if-eqz v10, :cond_6e

    .line 363
    invoke-virtual {v10}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v9

    .line 367
    :cond_6e
    if-eqz v10, :cond_84

    invoke-virtual {v10}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->requestsSpeakerphone()Z

    move-result v11

    if-nez v11, :cond_84

    if-eqz v5, :cond_84

    .line 368
    const-string/jumbo v11, "setSpeakerphoneOn"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_84

    if-nez v4, :cond_84

    .line 369
    return-void

    .line 373
    :cond_84
    const/4 v11, 0x2

    const-string v12, "comm_device_to_speaker"

    const-string/jumbo v13, "remix_voip_when_speaker_selected"

    if-eqz v4, :cond_f0

    .line 374
    invoke-direct/range {p0 .. p4}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v10

    .line 375
    if-nez v10, :cond_b3

    .line 376
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCommunicationRouteForClient: could not add client for pid: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " and device: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_b3
    invoke-virtual/range {p4 .. p4}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v14

    if-ne v14, v11, :cond_d1

    iget-object v14, v0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 381
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v13, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d1

    .line 382
    iget-object v7, v0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v12, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    return-void

    .line 385
    :cond_d1
    invoke-virtual/range {p4 .. p4}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v14

    const/4 v15, 0x7

    if-ne v14, v15, :cond_10b

    iget-object v14, v0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 386
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v13, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10b

    .line 387
    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v12, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10b

    .line 390
    :cond_f0
    const/4 v14, 0x1

    invoke-direct {v0, v1, v14}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v10

    .line 391
    iget-object v15, v0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/4 v11, 0x0

    invoke-static {v15, v13, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v14, :cond_10b

    .line 392
    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v12, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    :cond_10b
    :goto_10b
    if-nez v10, :cond_10e

    .line 396
    return-void

    .line 399
    :cond_10e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v11

    .line 400
    .local v11, "isBtScoRequested":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBleHeadsetScoRequested()Z

    move-result v12

    .line 401
    .local v12, "isBleScoRequested":Z
    if-eqz v11, :cond_18f

    if-eqz v6, :cond_124

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v13

    if-nez v13, :cond_121

    goto :goto_124

    :cond_121
    move/from16 v14, p5

    goto :goto_191

    .line 402
    :cond_124
    :goto_124
    const-string/jumbo v13, "setNewModeOwner"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_135

    const-string v13, "BtHelper.receiveBtEvent"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15f

    :cond_135
    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v13}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v13

    if-nez v13, :cond_15f

    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 403
    invoke-virtual {v13}, Lcom/android/server/audio/AudioService;->getRecordMonitor()Lcom/android/server/audio/RecordingActivityMonitor;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    move-result v13

    if-nez v13, :cond_15f

    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 404
    invoke-virtual {v13}, Lcom/android/server/audio/AudioService;->getPlaybackMonitor()Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->isVoicePlaybackActiveForUid(I)Z

    move-result v13

    if-eqz v13, :cond_156

    goto :goto_15f

    .line 418
    :cond_156
    const-string/jumbo v13, "setCommunicationRouteForClient, client \'CommunicationRouteForClient is not active when setNewModeOwner 0."

    invoke-static {v7, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v14, p5

    goto :goto_19a

    .line 405
    :cond_15f
    :goto_15f
    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    move/from16 v14, p5

    invoke-virtual {v13, v14, v5}, Lcom/android/server/audio/BtHelper;->startBluetoothSco(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_19a

    .line 406
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setCommunicationRouteForClient: failure to start BT SCO for pid: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz v9, :cond_186

    .line 410
    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    goto :goto_18a

    .line 412
    :cond_186
    const/4 v13, 0x1

    invoke-direct {v0, v1, v13}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 414
    :goto_18a
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    goto :goto_19a

    .line 401
    :cond_18f
    move/from16 v14, p5

    .line 420
    :goto_191
    if-nez v11, :cond_19a

    if-eqz v6, :cond_19a

    .line 421
    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v13, v5}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)Z

    .line 424
    :cond_19a
    :goto_19a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setCommunicationRouteForClient for LEA "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string/jumbo v7, "setCommunicationDevice"

    if-eqz v8, :cond_1ce

    if-nez v12, :cond_1ce

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1ce

    .line 426
    iget-object v7, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v7}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper()Z

    goto :goto_1dd

    .line 427
    :cond_1ce
    if-nez v8, :cond_1dd

    if-eqz v12, :cond_1dd

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1dd

    .line 428
    iget-object v7, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v7}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper()Z

    .line 431
    :cond_1dd
    :goto_1dd
    const/16 v7, 0x27

    const/4 v13, 0x2

    invoke-direct {v0, v7, v13, v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 432
    return-void
.end method

.method setForceUse_Async(IILjava/lang/String;)V
    .registers 10
    .param p1, "useCase"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 229
    const/4 v1, 0x4

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 231
    return-void
.end method

.method setHearingAidTimeout(Ljava/lang/String;I)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .line 1247
    const/16 v0, 0x31

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    .line 1248
    return-void
.end method

.method setLeAudioTimeout(Ljava/lang/String;II)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "device"    # I
    .param p3, "delayMs"    # I

    .line 1243
    const/16 v1, 0x30

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 1244
    return-void
.end method

.method setPreferredDevicesForCapturePresetSync(ILjava/util/List;)I
    .registers 4
    .param p1, "capturePreset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 966
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForCapturePresetSync(ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method setPreferredDevicesForStrategySync(ILjava/util/List;)I
    .registers 4
    .param p1, "strategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 947
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategySync(ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method protected setScoDisconnectedReason(Z)V
    .registers 2
    .param p1, "remoteDisconnected"    # Z

    .line 2209
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->isRemoteDisconnected:Z

    .line 2210
    return-void
.end method

.method setSpeakerphoneOn(Landroid/os/IBinder;IIZLjava/lang/String;)V
    .registers 20
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "on"    # Z
    .param p5, "eventSource"    # Ljava/lang/String;

    .line 279
    move-object v1, p0

    move/from16 v9, p3

    move/from16 v10, p4

    const-string v0, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSpeakerphoneOn, on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-boolean v0, v1, Lcom/android/server/audio/AudioDeviceBroker;->isLeDeviceConnected:Z

    if-eqz v0, :cond_8f

    if-nez v10, :cond_8f

    .line 283
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSpeakerphoneOn, on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "when ble is connect. getCommunicationRouteClientForPid directly to avoid waiting too long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForPid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    .line 285
    .local v0, "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->requestsSpeakerphone()Z

    move-result v2

    if-nez v2, :cond_8f

    .line 286
    :cond_64
    const-string v2, "AS.AudioDeviceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSpeakerphoneOn, on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "when ble is connect return."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void

    .line 291
    .end local v0    # "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    :cond_8f
    iget-object v11, v1, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v11

    .line 292
    :try_start_92
    iget-object v12, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_ca

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "device":Landroid/media/AudioDeviceAttributes;
    if-eqz v10, :cond_a2

    .line 295
    :try_start_98
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    const/4 v3, 0x2

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    goto :goto_af

    .line 297
    :cond_a2
    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForPid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v2

    .line 298
    .local v2, "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    if-eqz v2, :cond_c4

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->requestsSpeakerphone()Z

    move-result v3

    if-nez v3, :cond_af

    goto :goto_c4

    .line 302
    .end local v2    # "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    :cond_af
    :goto_af
    new-instance v13, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    const/4 v7, -0x1

    move-object v2, v13

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v0

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;-><init>(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationRouteForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;)V

    .line 304
    .end local v0    # "device":Landroid/media/AudioDeviceAttributes;
    monitor-exit v12
    :try_end_c2
    .catchall {:try_start_98 .. :try_end_c2} :catchall_c7

    .line 305
    :try_start_c2
    monitor-exit v11
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_ca

    .line 306
    return-void

    .line 299
    .restart local v0    # "device":Landroid/media/AudioDeviceAttributes;
    .restart local v2    # "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    :cond_c4
    :goto_c4
    :try_start_c4
    monitor-exit v12
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c7

    :try_start_c5
    monitor-exit v11
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_ca

    return-void

    .line 304
    .end local v0    # "device":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    :catchall_c7
    move-exception v0

    :try_start_c8
    monitor-exit v12
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .end local p1    # "cb":Landroid/os/IBinder;
    .end local p2    # "uid":I
    .end local p3    # "pid":I
    .end local p4    # "on":Z
    .end local p5    # "eventSource":Ljava/lang/String;
    :try_start_c9
    throw v0

    .line 305
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .restart local p1    # "cb":Landroid/os/IBinder;
    .restart local p2    # "uid":I
    .restart local p3    # "pid":I
    .restart local p4    # "on":Z
    .restart local p5    # "eventSource":Ljava/lang/String;
    :catchall_ca
    move-exception v0

    monitor-exit v11
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_ca

    throw v0
.end method

.method setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V
    .registers 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "state"    # I

    .line 623
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    .line 625
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 6
    .param p1, "attributes"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "state"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 616
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)I

    .line 618
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method startBluetoothScoForClient(Landroid/os/IBinder;IIILjava/lang/String;)V
    .registers 16
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "scoAudioMode"    # I
    .param p5, "eventSource"    # Ljava/lang/String;

    .line 901
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startBluetoothScoForClient_Sync, pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 905
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_3c

    .line 906
    :try_start_1f
    new-instance v6, Landroid/media/AudioDeviceAttributes;

    const/16 v2, 0x10

    const-string v3, ""

    invoke-direct {v6, v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 909
    .local v6, "device":Landroid/media/AudioDeviceAttributes;
    new-instance v9, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    move-object v2, v9

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;-><init>(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationRouteForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;)V

    .line 911
    .end local v6    # "device":Landroid/media/AudioDeviceAttributes;
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_39

    .line 912
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_3c

    .line 913
    return-void

    .line 911
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .end local p1    # "cb":Landroid/os/IBinder;
    .end local p2    # "uid":I
    .end local p3    # "pid":I
    .end local p4    # "scoAudioMode":I
    .end local p5    # "eventSource":Ljava/lang/String;
    :try_start_3b
    throw v2

    .line 912
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .restart local p1    # "cb":Landroid/os/IBinder;
    .restart local p2    # "uid":I
    .restart local p3    # "pid":I
    .restart local p4    # "scoAudioMode":I
    .restart local p5    # "eventSource":Ljava/lang/String;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 4
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .line 849
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 851
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method stopBluetoothScoForClient(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 16
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "eventSource"    # Ljava/lang/String;

    .line 919
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopBluetoothScoForClient_Sync, pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_44

    .line 924
    :try_start_1f
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForPid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v2

    .line 925
    .local v2, "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->requestsBluetoothSco()Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_3e

    .line 928
    :cond_2c
    new-instance v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v4, v3

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;-><init>(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationRouteForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;)V

    .line 930
    .end local v2    # "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_41

    .line 931
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_44

    .line 932
    return-void

    .line 926
    .restart local v2    # "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    :cond_3e
    :goto_3e
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_41

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_44

    return-void

    .line 930
    .end local v2    # "client":Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .end local p1    # "cb":Landroid/os/IBinder;
    .end local p2    # "uid":I
    .end local p3    # "pid":I
    .end local p4    # "eventSource":Ljava/lang/String;
    :try_start_43
    throw v2

    .line 931
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .restart local p1    # "cb":Landroid/os/IBinder;
    .restart local p2    # "uid":I
    .restart local p3    # "pid":I
    .restart local p4    # "eventSource":Ljava/lang/String;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_44

    throw v1
.end method

.method toggleHdmiIfConnected_Async()V
    .registers 3

    .line 234
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 235
    return-void
.end method

.method unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .registers 3
    .param p1, "dispatcher"    # Landroid/media/ICapturePresetDevicesRoleDispatcher;

    .line 980
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 981
    return-void
.end method

.method unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .registers 3
    .param p1, "dispatcher"    # Landroid/media/ICommunicationDeviceDispatcher;

    .line 990
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 991
    return-void
.end method

.method unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .registers 3
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDevicesDispatcher;

    .line 961
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 962
    return-void
.end method

.method updateActiveCommunicationDevice()V
    .registers 6

    .line 489
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 490
    .local v0, "device":Landroid/media/AudioDeviceAttributes;
    if-nez v0, :cond_31

    .line 491
    nop

    .line 492
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v2

    .line 494
    .local v2, "attr":Landroid/media/AudioAttributes;
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 496
    .local v3, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 497
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isPlatformVoice()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 498
    const-string v1, "AS.AudioDeviceBroker"

    const-string/jumbo v4, "updateActiveCommunicationDevice(): no device for phone strategy"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 502
    return-void

    .line 504
    :cond_2a
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 506
    .end local v2    # "attr":Landroid/media/AudioAttributes;
    .end local v3    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :cond_31
    nop

    .line 507
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 506
    invoke-static {v1, v2}, Landroid/media/AudioManager;->getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 508
    return-void
.end method
