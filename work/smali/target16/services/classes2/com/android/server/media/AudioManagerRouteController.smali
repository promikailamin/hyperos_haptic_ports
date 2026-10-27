.class public final Lcom/android/server/media/AudioManagerRouteController;
.super Ljava/lang/Object;
.source "AudioManagerRouteController.java"

# interfaces
.implements Lcom/android/server/media/DeviceRouteController;


# static fields
.field public static final AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

.field public static final MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static mInstance:Lcom/android/server/media/AudioManagerRouteController;


# instance fields
.field public final mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

.field public final mBuiltInSpeakerSuitabilityStatus:I

.field public final mContext:Landroid/content/Context;

.field public mDeselectableRoutes:Ljava/util/List;

.field public final mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsTv:Z

.field public final mOnDevicesForAttributesChangedListener:Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;

.field public final mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

.field public mSelectableRoutes:Ljava/util/List;

.field public mSelectedRoutes:Ljava/util/List;

.field public mSessionReleaseType:I

.field public mStarted:Z

.field public final mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;


# direct methods
.method public static synthetic $r8$lambda$-_oU9yDXV1U3xDwofh4mPa-gfkY(Lcom/android/server/media/AudioManagerRouteController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    return-void
.end method

.method public static synthetic $r8$lambda$7KJau6D3qbI5Xn8EnwRPtvMX_RM(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/AudioManagerRouteController;->lambda$transferTo$1(Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ZuofFIW5BsTfgvn45XuGVk0sNM(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)Landroid/media/MediaRoute2Info;
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    return-object p0
.end method

.method public static synthetic $r8$lambda$A128SSbNwSZKgkAHoXW8nb5RVHE(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)Landroid/media/MediaRoute2Info;
    .registers 1

    .line 725
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    return-object p0
.end method

.method public static synthetic $r8$lambda$CjVOD2OQtr9CHcY7wrnPfW59fFI(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$deselectRoute$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GV08mCM1sBDFIMFLke40B9HVjFk(Lcom/android/server/media/AudioManagerRouteController;Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$updateAvailableRoutes$10(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JR8fQ1QyZRZayb_SiOVQpR4wkXQ(Lcom/android/server/media/AudioManagerRouteController;JLjava/lang/String;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/AudioManagerRouteController;->lambda$setVolume$5(JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LUi3bgcWd3tS4gacajtk_0_LFRY(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$stopBroadcastForTransfer$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UWPN_71jDg-J1rJ3R5PcEsgz1oM(Lcom/android/server/media/AudioManagerRouteController;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$selectRoute$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_puIOP__aQ1V_gSSdQ-XFQ8JI1Y(Lcom/android/server/media/AudioManagerRouteController;Landroid/media/MediaRoute2Info;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$updateAvailableRoutes$8(Landroid/media/MediaRoute2Info;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eGS-TXJxGNUxqcArbGwsPSsIVcE(Lcom/android/server/media/AudioManagerRouteController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    return-void
.end method

.method public static synthetic $r8$lambda$gr3LU52lDiQLjP7tmD8Zc-CNrUU(Lcom/android/server/media/AudioManagerRouteController;Landroid/media/AudioAttributes;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/AudioManagerRouteController;->onDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ibXNiUuR3162NroRxxvQhdZsp8s(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$getTransferActionForRoute$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mHLpduAEscWTAdDOiWDYYNESRbU(Lcom/android/server/media/AudioManagerRouteController;Landroid/media/AudioDeviceAttributes;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$getTransferActionForRoute$7(Landroid/media/AudioDeviceAttributes;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mMOeBwwcy3dF-002GGE275r-zYk(Lcom/android/server/media/AudioManagerRouteController;Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$updateAvailableRoutes$9(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/media/AudioManagerRouteController;)Landroid/media/AudioManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStrategyForMedia(Lcom/android/server/media/AudioManagerRouteController;)Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrebuildAvailableRoutesAndNotify(Lcom/android/server/media/AudioManagerRouteController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetAUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO()Landroid/util/SparseArray;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 10

    .line 89
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/AudioManagerRouteController;->MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    .line 971
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/4 v2, 0x2

    const-string v3, "ROUTE_ID_BUILTIN_SPEAKER"

    const v4, 0x104036f

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 977
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/4 v2, 0x3

    const-string v3, "ROUTE_ID_WIRED_HEADSET"

    const v4, 0x1040378

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 983
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v2, "ROUTE_ID_WIRED_HEADPHONES"

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 989
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v2, 0x8

    const-string v3, "ROUTE_ID_BLUETOOTH_A2DP"

    const v4, 0x10401c8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 995
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v2, 0x9

    const-string v3, "ROUTE_ID_HDMI"

    const v6, 0x1040376

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1001
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v2, 0xd

    const-string v3, "ROUTE_ID_DOCK"

    const v7, 0x1040374

    invoke-direct {v1, v2, v3, v7, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1007
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v3, 0xb

    const-string v8, "ROUTE_ID_USB_DEVICE"

    const v9, 0x1040379

    invoke-direct {v1, v3, v8, v9, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1013
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_USB_HEADSET"

    const/16 v8, 0x16

    invoke-direct {v1, v8, v3, v9, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1019
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_HDMI_ARC"

    const v8, 0x1040371

    const/16 v9, 0xa

    invoke-direct {v1, v9, v3, v8, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1025
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_HDMI_EARC"

    const v8, 0x1040375

    const/16 v9, 0x1d

    invoke-direct {v1, v9, v3, v8, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1031
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_HEARING_AID"

    const/16 v8, 0x17

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1037
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_BLE_HEADSET"

    const/16 v8, 0x1a

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1043
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_BLE_SPEAKER"

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    const/16 v3, 0x1b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1049
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_BLE_BROADCAST"

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    const/16 v3, 0x1e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1055
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 1059
    const-string v3, "ROUTE_ID_LINE_DIGITAL"

    const v4, 0x1040373

    const/4 v8, 0x6

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    .line 1055
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1062
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 1066
    const-string v3, "ROUTE_ID_LINE_ANALOG"

    const v4, 0x1040370

    const/4 v8, 0x5

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    .line 1062
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1069
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 1073
    const-string v3, "ROUTE_ID_AUX_LINE"

    const v4, 0x1040372

    const/16 v8, 0x13

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    .line 1069
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1076
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_DOCK_ANALOG"

    invoke-direct {v1, v2, v3, v7, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1083
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v2, "ROUTE_ID_MULTICHANNEL_SPEAKER_GROUP"

    const/16 v3, 0x20

    invoke-direct {v1, v3, v2, v6, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 7

    move-object v0, p5

    .line 182
    new-instance p5, Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-direct {p5, p1, p3, v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/server/media/AudioManagerRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Lcom/android/server/media/BluetoothDeviceRoutesManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Lcom/android/server/media/BluetoothDeviceRoutesManager;)V
    .registers 8

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 110
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;-><init>(Lcom/android/server/media/AudioManagerRouteController;Lcom/android/server/media/AudioManagerRouteController-IA;)V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 114
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDevicesForAttributesChangedListener:Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 124
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoutes:Ljava/util/List;

    .line 127
    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mDeselectableRoutes:Ljava/util/List;

    .line 130
    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mSelectableRoutes:Ljava/util/List;

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mSessionReleaseType:I

    .line 140
    iput-boolean v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mStarted:Z

    .line 202
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mContext:Landroid/content/Context;

    .line 203
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 204
    new-instance p2, Landroid/os/Handler;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    .line 205
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p4

    check-cast p2, Landroid/media/audiopolicy/AudioProductStrategy;

    iput-object p4, p0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.software.leanback"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/media/AudioManagerRouteController;->mIsTv:Z

    .line 209
    invoke-static {p1}, Lcom/android/server/media/DeviceRouteController;->getBuiltInSpeakerSuitabilityStatus(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    .line 211
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 214
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutes()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;)Lcom/android/server/media/AudioManagerRouteController;
    .registers 13

    .line 157
    const-class v1, Lcom/android/server/media/AudioManagerRouteController;

    monitor-enter v1

    .line 158
    :try_start_3
    sget-object v0, Lcom/android/server/media/AudioManagerRouteController;->mInstance:Lcom/android/server/media/AudioManagerRouteController;

    if-nez v0, :cond_17

    .line 159
    new-instance v2, Lcom/android/server/media/AudioManagerRouteController;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/media/AudioManagerRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v2, Lcom/android/server/media/AudioManagerRouteController;->mInstance:Lcom/android/server/media/AudioManagerRouteController;

    goto :goto_17

    :catchall_14
    move-exception v0

    move-object p0, v0

    goto :goto_1b

    .line 164
    :cond_17
    :goto_17
    sget-object p0, Lcom/android/server/media/AudioManagerRouteController;->mInstance:Lcom/android/server/media/AudioManagerRouteController;

    monitor-exit v1

    return-object p0

    .line 165
    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_14

    throw p0
.end method


# virtual methods
.method public final createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .registers 8

    .line 783
    sget-object v0, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    .line 784
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    if-nez p2, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 791
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mIsTv:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_29

    .line 792
    iget v0, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mMediaRoute2InfoType:I

    if-ne v0, v1, :cond_18

    .line 793
    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_29

    :cond_18
    const/16 v2, 0x9

    if-ne v0, v2, :cond_29

    .line 795
    iget-object p3, p0, Lcom/android/server/media/AudioManagerRouteController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x1040377

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 799
    :cond_29
    :goto_29
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 800
    iget-object p3, p0, Lcom/android/server/media/AudioManagerRouteController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v0, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mNameResource:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_3b
    if-nez p1, :cond_53

    .line 808
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mDefaultRouteId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";address="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 813
    :cond_53
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v0, p1, p3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget p1, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mMediaRoute2InfoType:I

    .line 814
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    .line 815
    invoke-virtual {p1, p4}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const/4 p3, 0x1

    .line 816
    invoke-virtual {p1, p3}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const-string p3, "android.media.route.feature.LIVE_AUDIO"

    .line 817
    invoke-virtual {p1, p3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const-string p3, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 818
    invoke-virtual {p1, p3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    .line 819
    invoke-virtual {p1, v1}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    .line 821
    iget p2, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mMediaRoute2InfoType:I

    if-ne p2, v1, :cond_80

    .line 822
    iget p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    invoke-virtual {p1, p0}, Landroid/media/MediaRoute2Info$Builder;->setSuitabilityStatus(I)Landroid/media/MediaRoute2Info$Builder;

    .line 825
    :cond_80
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method

.method public final createMediaRoute2InfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MediaRoute2Info;
    .registers 6

    .line 747
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    move-result-object v1

    .line 758
    iget-object v2, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v2, v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->containsBondedDeviceWithAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 759
    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v1, v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getRouteIdForBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 760
    iget-object v2, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v2, v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getNameForBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    :cond_21
    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    .line 762
    :goto_25
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method

.method public final createPlaceholderBuiltinSpeakerRoute()Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 739
    invoke-virtual {p0, v0, v1, v0, v0}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    .line 738
    invoke-static {p0, v1}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->createForAudioManagerRoute(Landroid/media/MediaRoute2Info;I)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    move-result-object p0

    return-object p0
.end method

.method public final currentOutputIsBLEBroadcast()Z
    .registers 3

    .line 842
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    sget-object v0, Lcom/android/server/media/AudioManagerRouteController;->MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 843
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object p0

    .line 844
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 845
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v1
.end method

.method public deselectRoute(JLjava/lang/String;)V
    .registers 6

    .line 390
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->currentOutputIsBLEBroadcast()Z

    move-result v0

    if-nez v0, :cond_29

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to deselect route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ,requestId: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MR2SystemProvider"

    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x4

    .line 393
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/AudioManagerRouteController;->notifyRequestFailed(JI)V

    return-void

    .line 397
    :cond_29
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0, p3}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized getAvailableRoutes()Ljava/util/List;
    .registers 3

    monitor-enter p0

    .line 308
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda2;-><init>()V

    .line 309
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 308
    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public declared-synchronized getDeselectableRoutes()Ljava/util/List;
    .registers 2

    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mDeselectableRoutes:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getSelectableRoutes()Ljava/util/List;
    .registers 2

    monitor-enter p0

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mSelectableRoutes:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getSelectedRoutes()Ljava/util/List;
    .registers 3

    monitor-enter p0

    .line 286
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 290
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoutes:Ljava/util/List;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    goto :goto_17

    .line 288
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Selected routes should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_d

    throw v0
.end method

.method public declared-synchronized getSessionReleaseType()I
    .registers 2

    monitor-enter p0

    .line 273
    :try_start_1
    iget v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mSessionReleaseType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final getTransferActionForRoute(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)Ljava/lang/Runnable;
    .registers 5

    .line 443
    iget-boolean v0, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mCorrespondsToInactiveBluetoothRoute:Z

    if-eqz v0, :cond_10

    .line 444
    iget-object p1, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 445
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/String;)V

    return-object v0

    .line 456
    :cond_10
    iget-object v0, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 458
    const-string v0, ""

    .line 462
    :cond_1a
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    const/4 v2, 0x2

    iget p1, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mAudioDeviceInfoType:I

    invoke-direct {v1, v2, p1, v0}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 467
    new-instance p1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, v1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/media/AudioManagerRouteController;Landroid/media/AudioDeviceAttributes;)V

    return-object p1
.end method

.method public final synthetic lambda$deselectRoute$3(Ljava/lang/String;)V
    .registers 2

    .line 397
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->removeRouteFromBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$getTransferActionForRoute$6(Ljava/lang/String;)V
    .registers 3

    .line 448
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->activateBluetoothDeviceWithAddress(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->removePreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Z

    return-void
.end method

.method public final synthetic lambda$getTransferActionForRoute$7(Landroid/media/AudioDeviceAttributes;)V
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {v0, p0, p1}, Landroid/media/AudioManager;->setPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z

    return-void
.end method

.method public final synthetic lambda$selectRoute$2(Ljava/util/List;)V
    .registers 2

    .line 385
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->startBroadcast(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$setVolume$5(JLjava/lang/String;I)V
    .registers 5

    .line 419
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/AudioManagerRouteController;->setVolumeOnHandler(JLjava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$stopBroadcastForTransfer$4(Ljava/lang/String;)V
    .registers 2

    .line 401
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->stopBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$transferTo$1(Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 7

    .line 353
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected exception while transferring to route id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MR2SystemProvider"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 361
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/media/AudioManagerRouteController;->notifyRequestFailed(JI)V

    .line 363
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$updateAvailableRoutes$10(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)Z
    .registers 3

    .line 720
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoutes:Ljava/util/List;

    iget-object v0, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    iget-object p0, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 722
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    const/16 p1, 0x1a

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$updateAvailableRoutes$8(Landroid/media/MediaRoute2Info;)Z
    .registers 2

    .line 698
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$updateAvailableRoutes$9(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)V
    .registers 3

    .line 701
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final notifyRequestFailed(JI)V
    .registers 5

    .line 835
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/DeviceRouteController$EventListener;

    .line 836
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/media/DeviceRouteController$EventListener;->onDeviceRouteRequestFailed(JI)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final onDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Ljava/util/List;)V
    .registers 3

    .line 480
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_a

    .line 482
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    :cond_a
    return-void
.end method

.method public final rebuildAvailableRoutes()V
    .registers 14

    .line 504
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/android/server/media/AudioManagerRouteController;->MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 505
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    .line 508
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "MR2SystemProvider"

    if-eqz v1, :cond_1b

    .line 509
    const-string v0, "Unexpected empty list of output devices for media. Using built-in speakers."

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v0, ""

    move v4, v2

    :goto_19
    move-object v5, v0

    goto :goto_38

    .line 517
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_27

    .line 518
    const-string v1, "AudioManager.getDevicesForAttributes returned more than one element. Using the first one."

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v1, 0x0

    .line 524
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 525
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    .line 526
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    move v4, v1

    goto :goto_19

    .line 530
    :goto_38
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 531
    invoke-virtual {v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->isLEAudioBroadcastSupported()Z

    move-result v11

    .line 533
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v1, 0x1e

    if-ne v4, v1, :cond_4a

    .line 536
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getBroadcastingDeviceRoutes()Ljava/util/List;

    move-result-object v0

    :cond_4a
    move-object v12, v0

    .line 539
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 542
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 544
    invoke-virtual {v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getAvailableBluetoothRoutes()Ljava/util/List;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 545
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 546
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v9

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 547
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v10

    move-object v3, p0

    .line 539
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/media/AudioManagerRouteController;->updateAvailableRoutes(ILjava/lang/String;[Landroid/media/AudioDeviceInfo;Ljava/util/List;IIZZLjava/util/List;)V

    return-void
.end method

.method public final rebuildAvailableRoutesAndNotify()V
    .registers 2

    .line 492
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutes()V

    .line 493
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/DeviceRouteController$EventListener;

    .line 494
    invoke-interface {v0}, Lcom/android/server/media/DeviceRouteController$EventListener;->onDeviceRouteChanged()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public registerRouteChangeListener(Lcom/android/server/media/DeviceRouteController$EventListener;)V
    .registers 2

    .line 218
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseRoutingSession()V
    .registers 2

    .line 278
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->currentOutputIsBLEBroadcast()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 279
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->stopBroadcast()V

    :cond_b
    return-void
.end method

.method public selectRoute(JLjava/lang/String;)V
    .registers 6

    .line 373
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->currentOutputIsBLEBroadcast()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to select route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ,requestId: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MR2SystemProvider"

    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x4

    .line 377
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/AudioManagerRouteController;->notifyRequestFailed(JI)V

    return-void

    .line 381
    :cond_29
    new-instance p1, Ljava/util/ArrayList;

    .line 382
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->getSelectedRoutes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 383
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object p2, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0, p1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVolume(JLjava/lang/String;I)V
    .registers 12

    .line 419
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/media/AudioManagerRouteController;JLjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setVolumeOnHandler(JLjava/lang/String;I)V
    .registers 8

    .line 423
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->currentOutputIsBLEBroadcast()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_22

    .line 424
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v0, p3}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->isMediaOnlyRouteInBroadcast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 427
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v0, p3, p4}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->setRouteVolume(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_1b

    .line 429
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/media/AudioManagerRouteController;->notifyRequestFailed(JI)V

    :cond_1b
    return-void

    .line 435
    :cond_1c
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2, p4, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void

    .line 438
    :cond_22
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2, p4, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public start(Landroid/os/UserHandle;)V
    .registers 5

    .line 234
    iget-boolean p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mStarted:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mStarted:Z

    .line 240
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 242
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 243
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 240
    invoke-virtual {p1, v0, v1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->start(Landroid/os/UserHandle;Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRoutesUpdatedListener;)V

    .line 245
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 246
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    sget-object v0, Lcom/android/server/media/AudioRoutingUtils;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDevicesForAttributesChangedListener:Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;

    invoke-virtual {p1, v0, v1, p0}, Landroid/media/AudioManager;->addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;)V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 0
    return-void
.end method

.method public final stopBroadcastForTransfer(Ljava/lang/String;)V
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public transferTo(JLjava/lang/String;)V
    .registers 10

    if-nez p3, :cond_e

    .line 321
    const-string p3, "MR2SystemProvider"

    const-string v0, "Unexpected call to AudioPoliciesDeviceRouteController#transferTo(null)"

    invoke-static {p3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x3

    .line 322
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/AudioManagerRouteController;->notifyRequestFailed(JI)V

    return-void

    .line 327
    :cond_e
    monitor-enter p0

    .line 328
    :try_start_f
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 329
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_65

    if-nez v0, :cond_32

    .line 331
    const-string p0, "MR2SystemProvider"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "transferTo: Ignoring transfer request to unknown route id : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 338
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->currentOutputIsBLEBroadcast()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 340
    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    iget-object v2, v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 341
    invoke-virtual {v1, v2}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->isBtRoute(Landroid/media/MediaRoute2Info;)Z

    move-result v1

    if-eqz v1, :cond_44

    move-object v2, p3

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    .line 342
    :goto_45
    invoke-virtual {p0, v2}, Lcom/android/server/media/AudioManagerRouteController;->stopBroadcastForTransfer(Ljava/lang/String;)V

    if-eqz v1, :cond_53

    .line 344
    const-string p0, "MR2SystemProvider"

    const-string/jumbo p1, "transferTo: Skip transfer action for BT route in broadcast"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_53
    invoke-virtual {p0, v0}, Lcom/android/server/media/AudioManagerRouteController;->getTransferActionForRoute(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)Ljava/lang/Runnable;

    move-result-object v2

    .line 350
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;

    move-object v1, p0

    move-wide v4, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 368
    iget-object p0, v1, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_65
    move-exception v0

    move-object v1, p0

    :goto_67
    move-object p0, v0

    .line 329
    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_6a

    throw p0

    :catchall_6a
    move-exception v0

    goto :goto_67
.end method

.method public final declared-synchronized updateAvailableRoutes(ILjava/lang/String;[Landroid/media/AudioDeviceInfo;Ljava/util/List;IIZZLjava/util/List;)V
    .registers 26

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    monitor-enter p0

    .line 584
    :try_start_d
    iget-object v6, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 586
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0x1e

    if-ne v0, v7, :cond_1d

    const/4 v9, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v9, 0x0

    :goto_1e
    const/16 v10, 0x1a

    if-eqz v9, :cond_46

    .line 592
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_26
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_46

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/MediaRoute2Info;

    .line 595
    invoke-static {v12, v10}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->createForAudioManagerRoute(Landroid/media/MediaRoute2Info;I)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    move-result-object v13

    .line 597
    iget-object v14, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-virtual {v12}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :catchall_43
    move-exception v0

    goto/16 :goto_1ce

    .line 602
    :cond_46
    array-length v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_49
    if-ge v13, v11, :cond_83

    aget-object v14, v2, v13

    .line 604
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v15

    if-ne v15, v7, :cond_56

    :cond_53
    move-object/from16 v7, p2

    goto :goto_7c

    .line 610
    :cond_56
    invoke-virtual {v1, v14}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2InfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v15

    if-eqz v15, :cond_53

    .line 614
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    .line 615
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 617
    invoke-static {v15, v7}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->createForAudioManagerRoute(Landroid/media/MediaRoute2Info;I)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    move-result-object v10

    .line 619
    iget-object v8, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-virtual {v15}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v0, v7, :cond_53

    move-object/from16 v7, p2

    .line 623
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7c

    move-object v12, v10

    :cond_7c
    :goto_7c
    add-int/lit8 v13, v13, 0x1

    const/16 v7, 0x1e

    const/16 v10, 0x1a

    goto :goto_49

    .line 633
    :cond_83
    iget-object v7, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 638
    const-string v7, "MR2SystemProvider"

    const-string v8, "Ended up with an empty list of routes. Creating a placeholder route."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v1}, Lcom/android/server/media/AudioManagerRouteController;->createPlaceholderBuiltinSpeakerRoute()Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    move-result-object v7

    .line 640
    iget-object v8, v7, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-virtual {v8}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v8

    .line 641
    iget-object v10, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {v10, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_a1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_ed

    if-nez v12, :cond_ed

    .line 645
    const-string v7, "MR2SystemProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not map this selected device attribute type to an available route: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Available types: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;-><init>()V

    .line 652
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 653
    invoke-interface {v0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 650
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 658
    :cond_ed
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_141

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_fd
    if-ge v7, v2, :cond_13a

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 662
    iget-object v10, v8, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 664
    invoke-virtual {v10}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_125

    .line 665
    invoke-virtual {v10}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    move-result v11

    const/16 v12, 0xff

    if-ne v11, v12, :cond_125

    .line 669
    invoke-virtual {v10}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v11

    invoke-virtual {v10}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    move-result v10

    .line 668
    invoke-virtual {v8, v11, v10, v5}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->copyWithVolumeInfo(IIZ)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    move-result-object v10

    goto :goto_129

    .line 674
    :cond_125
    invoke-virtual {v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->copyWithVolumeInfo(IIZ)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    move-result-object v10

    .line 677
    :goto_129
    iget-object v11, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    iget-object v8, v8, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 678
    invoke-virtual {v8}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v8

    .line 677
    invoke-interface {v11, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v8, v10, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fd

    .line 682
    :cond_13a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoutes:Ljava/util/List;

    goto :goto_158

    .line 685
    :cond_141
    invoke-virtual {v12, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->copyWithVolumeInfo(IIZ)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    move-result-object v0

    .line 687
    iget-object v2, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    iget-object v3, v12, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 688
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    .line 687
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v0, v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 691
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoutes:Ljava/util/List;

    .line 697
    :goto_158
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 698
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;-><init>()V

    .line 699
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 700
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    if-nez p8, :cond_180

    .line 705
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mDeselectableRoutes:Ljava/util/List;

    .line 706
    iput-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mSelectableRoutes:Ljava/util/List;

    const/4 v2, 0x0

    goto :goto_1c5

    :cond_180
    if-eqz v9, :cond_185

    .line 709
    iget-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoutes:Ljava/util/List;

    goto :goto_187

    :cond_185
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_187
    iput-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mDeselectableRoutes:Ljava/util/List;

    if-nez v9, :cond_1c0

    .line 711
    iget-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoutes:Ljava/util/List;

    const/4 v2, 0x0

    .line 712
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v0

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_19d

    goto :goto_1c1

    .line 716
    :cond_19d
    iget-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 717
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 718
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda8;-><init>()V

    .line 725
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 726
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mSelectableRoutes:Ljava/util/List;

    goto :goto_1c5

    :cond_1c0
    const/4 v2, 0x0

    .line 714
    :goto_1c1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, v1, Lcom/android/server/media/AudioManagerRouteController;->mSelectableRoutes:Ljava/util/List;

    :goto_1c5
    if-eqz v9, :cond_1c9

    const/4 v8, 0x2

    goto :goto_1ca

    :cond_1c9
    move v8, v2

    .line 732
    :goto_1ca
    iput v8, v1, Lcom/android/server/media/AudioManagerRouteController;->mSessionReleaseType:I
    :try_end_1cc
    .catchall {:try_start_d .. :try_end_1cc} :catchall_43

    .line 734
    monitor-exit p0

    return-void

    :goto_1ce
    :try_start_1ce
    monitor-exit p0
    :try_end_1cf
    .catchall {:try_start_1ce .. :try_end_1cf} :catchall_43

    throw v0
.end method

.method public updateVolume(I)Z
    .registers 2

    .line 413
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    const/4 p0, 0x1

    return p0
.end method
