.class public Lcom/android/server/audio/BtHelper;
.super Ljava/lang/Object;
.source "BtHelper.java"


# instance fields
.field public mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field public mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field public mAvrcpAbsVolSupported:Z

.field public mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field public mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field public mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field public mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

.field public mLeAudioBroadcastCodec:I

.field public mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

.field public mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

.field public final mResolvedScoAudioDevices:Ljava/util/Map;

.field public mScoAudioMode:I

.field public mScoAudioState:I

.field public mScoConnectionState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Context;)V
    .registers 5

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 101
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 108
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    .line 114
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    .line 119
    iput-boolean v1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 660
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 999
    new-instance v0, Lcom/android/server/audio/BtHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper$1;-><init>(Lcom/android/server/audio/BtHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 82
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 83
    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static btDeviceClassToString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_4c

    .line 1459
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "0x%04x"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1457
    :sswitch_12
    const-string p0, "AUDIO_VIDEO_VIDEO_GAMING_TOY"

    return-object p0

    .line 1455
    :sswitch_15
    const-string p0, "AUDIO_VIDEO_RESERVED_0x0444"

    return-object p0

    .line 1453
    :sswitch_18
    const-string p0, "AUDIO_VIDEO_VIDEO_CONFERENCING"

    return-object p0

    .line 1451
    :sswitch_1b
    const-string p0, "AUDIO_VIDEO_VIDEO_DISPLAY_AND_LOUDSPEAKER"

    return-object p0

    .line 1449
    :sswitch_1e
    const-string p0, "AUDIO_VIDEO_VIDEO_MONITOR"

    return-object p0

    .line 1447
    :sswitch_21
    const-string p0, "AUDIO_VIDEO_CAMCORDER"

    return-object p0

    .line 1445
    :sswitch_24
    const-string p0, "AUDIO_VIDEO_VIDEO_CAMERA"

    return-object p0

    .line 1443
    :sswitch_27
    const-string p0, "AUDIO_VIDEO_VCR"

    return-object p0

    .line 1441
    :sswitch_2a
    const-string p0, "AUDIO_VIDEO_HIFI_AUDIO"

    return-object p0

    .line 1439
    :sswitch_2d
    const-string p0, "AUDIO_VIDEO_SET_TOP_BOX"

    return-object p0

    .line 1437
    :sswitch_30
    const-string p0, "AUDIO_VIDEO_CAR_AUDIO"

    return-object p0

    .line 1435
    :sswitch_33
    const-string p0, "AUDIO_VIDEO_PORTABLE_AUDIO"

    return-object p0

    .line 1433
    :sswitch_36
    const-string p0, "AUDIO_VIDEO_HEADPHONES"

    return-object p0

    .line 1431
    :sswitch_39
    const-string p0, "AUDIO_VIDEO_LOUDSPEAKER"

    return-object p0

    .line 1429
    :sswitch_3c
    const-string p0, "AUDIO_VIDEO_MICROPHONE"

    return-object p0

    .line 1427
    :sswitch_3f
    const-string p0, "AUDIO_VIDEO_RESERVED_0x040C"

    return-object p0

    .line 1425
    :sswitch_42
    const-string p0, "AUDIO_VIDEO_HANDSFREE"

    return-object p0

    .line 1423
    :sswitch_45
    const-string p0, "AUDIO_VIDEO_WEARABLE_HEADSET"

    return-object p0

    .line 1421
    :sswitch_48
    const-string p0, "AUDIO_VIDEO_UNCATEGORIZED"

    return-object p0

    nop

    :sswitch_data_4c
    .sparse-switch
        0x400 -> :sswitch_48
        0x404 -> :sswitch_45
        0x408 -> :sswitch_42
        0x40c -> :sswitch_3f
        0x410 -> :sswitch_3c
        0x414 -> :sswitch_39
        0x418 -> :sswitch_36
        0x41c -> :sswitch_33
        0x420 -> :sswitch_30
        0x424 -> :sswitch_2d
        0x428 -> :sswitch_2a
        0x42c -> :sswitch_27
        0x430 -> :sswitch_24
        0x434 -> :sswitch_21
        0x438 -> :sswitch_1e
        0x43c -> :sswitch_1b
        0x440 -> :sswitch_18
        0x444 -> :sswitch_15
        0x448 -> :sswitch_12
    .end sparse-switch
.end method

.method public static btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;
    .registers 7

    .line 885
    const-string v0, ""

    const/16 v1, 0x10

    if-nez p0, :cond_c

    .line 886
    new-instance p0, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p0, v1, v0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 888
    :cond_c
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 889
    invoke-static {p0}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 890
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object v0, v2

    .line 893
    :goto_1c
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 896
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    const/16 v5, 0x404

    if-eq v4, v5, :cond_36

    const/16 v5, 0x408

    if-eq v4, v5, :cond_36

    const/16 v5, 0x420

    if-eq v4, v5, :cond_33

    goto :goto_38

    :cond_33
    const/16 v1, 0x40

    goto :goto_38

    :cond_36
    const/16 v1, 0x20

    .line 906
    :cond_38
    :goto_38
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_6e

    .line 907
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btHeadsetDeviceToAudioDevice btDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " btClass: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_52

    .line 908
    const-string v2, "Unknown"

    :cond_52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " nativeType: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " address: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 907
    const-string v2, "AS.BtHelper"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_6e
    new-instance p0, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p0, v1, v0, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4

    if-eqz p2, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    const/4 p0, 0x0

    return p0

    .line 1203
    :cond_7
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    .line 1201
    :cond_c
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result p0

    return p0
.end method

.method public static deviceEventToString(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_19

    .line 213
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 211
    :cond_19
    const-string p0, "DEVICE_CONFIG_CHANGE"

    return-object p0
.end method

.method public static disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4

    if-eqz p2, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    const/4 p0, 0x0

    return p0

    .line 1191
    :cond_7
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    .line 1189
    :cond_c
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result p0

    return p0
.end method

.method public static getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 3

    .line 1348
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1349
    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_12

    .line 1353
    :cond_d
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBtDeviceCategory(Ljava/lang/String;)I
    .registers 7

    .line 1358
    invoke-static {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    const/16 v1, 0x11

    .line 1363
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object v1

    if-nez v1, :cond_11

    return v0

    .line 1367
    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 1368
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    sparse-switch v1, :sswitch_data_8e

    goto :goto_60

    :sswitch_21
    const-string v1, "Carkit"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 p0, 0x4

    return p0

    :sswitch_2b
    const-string v1, "Untethered Headset"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    goto :goto_5f

    :sswitch_34
    const-string v1, "Watch"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    return v5

    :sswitch_3d
    const-string v1, "Speaker"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    return v4

    :sswitch_46
    const-string v1, "HearingAid"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 p0, 0x6

    return p0

    :sswitch_50
    const-string v1, "Default"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_60

    :sswitch_57
    const-string v1, "Headset"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    :goto_5f
    return v3

    .line 1385
    :cond_60
    :goto_60
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    if-nez p0, :cond_67

    return v0

    .line 1390
    :cond_67
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v1, 0x404

    if-eq p0, v1, :cond_8c

    const/16 v1, 0x414

    if-eq p0, v1, :cond_8b

    const/16 v1, 0x418

    if-eq p0, v1, :cond_8c

    const/16 v1, 0x41c

    if-eq p0, v1, :cond_8b

    const/16 v1, 0x428

    if-eq p0, v1, :cond_89

    const/16 v1, 0x43c

    if-eq p0, v1, :cond_8b

    const/16 v1, 0x704

    if-eq p0, v1, :cond_88

    return v0

    :cond_88
    return v5

    :cond_89
    const/4 p0, 0x7

    return p0

    :cond_8b
    return v4

    :cond_8c
    return v3

    nop

    :sswitch_data_8e
    .sparse-switch
        -0x6d5fc59e -> :sswitch_57
        -0x40b391df -> :sswitch_50
        -0x28153a78 -> :sswitch_46
        -0x147f0821 -> :sswitch_3d
        0x4f7d4af -> :sswitch_34
        0x6399a2c -> :sswitch_2b
        0x77e10aa2 -> :sswitch_21
    .end sparse-switch
.end method

.method public static getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 1

    .line 218
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    .line 220
    const-string p0, ""

    :cond_8
    return-object p0
.end method

.method public static getPreferredAudioProfiles(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    .line 1342
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1343
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getPreferredAudioProfiles(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getProfileFromType(I)I
    .registers 2

    .line 1307
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x2

    return p0

    .line 1309
    :cond_8
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 1311
    :cond_10
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    move-result p0

    if-eqz p0, :cond_19

    const/16 p0, 0x16

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static getTypeFromProfile(IZLandroid/bluetooth/BluetoothDevice;)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_42

    const/4 p2, 0x2

    if-eq p0, p2, :cond_3f

    const/16 p2, 0xb

    if-eq p0, p2, :cond_3c

    const/16 p2, 0x1a

    if-eq p0, p2, :cond_38

    const/16 p2, 0x15

    if-eq p0, p2, :cond_35

    const/16 p2, 0x16

    if-ne p0, p2, :cond_1e

    if-eqz p1, :cond_1b

    const/high16 p0, 0x20000000

    return p0

    :cond_1b
    const/high16 p0, -0x60000000

    return p0

    .line 1337
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid profile "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    const/high16 p0, 0x8000000

    return p0

    :cond_38
    const p0, 0x20000002

    return p0

    :cond_3c
    const/high16 p0, -0x7ffe0000

    return p0

    :cond_3f
    const/16 p0, 0x80

    return p0

    .line 1335
    :cond_42
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p0

    return p0
.end method

.method public static onNotifyPreferredAudioProfileApplied(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    .line 1412
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->notifyActiveDeviceChangeApplied(Landroid/bluetooth/BluetoothDevice;)I

    return-void
.end method

.method public static scoAudioModeToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_25

    if-eqz p0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCO_MODE_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :cond_1f
    const-string p0, "SCO_MODE_VR"

    return-object p0

    .line 178
    :cond_22
    const-string p0, "SCO_MODE_VIRTUAL_CALL"

    return-object p0

    .line 176
    :cond_25
    const-string p0, "SCO_MODE_UNDEFINED"

    return-object p0
.end method

.method public static scoAudioStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_31

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_28

    const/4 v0, 0x5

    if-eq p0, v0, :cond_25

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCO_STATE_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 200
    :cond_25
    const-string p0, "SCO_STATE_DEACTIVATING"

    return-object p0

    .line 198
    :cond_28
    const-string p0, "SCO_STATE_ACTIVE_INTERNAL"

    return-object p0

    .line 196
    :cond_2b
    const-string p0, "SCO_STATE_ACTIVE_EXTERNAL"

    return-object p0

    .line 194
    :cond_2e
    const-string p0, "SCO_STATE_ACTIVATE_REQ"

    return-object p0

    .line 192
    :cond_31
    const-string p0, "SCO_STATE_INACTIVE"

    return-object p0
.end method


# virtual methods
.method public final broadcastScoConnectionState(I)V
    .registers 2

    .line 863
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    return-void
.end method

.method public final declared-synchronized checkScoAudioState()V
    .registers 5

    monitor-enter p0

    .line 1212
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_34

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-nez v2, :cond_34

    .line 1215
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_34

    const/4 v0, 0x2

    .line 1217
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1b
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_34

    :catchall_19
    move-exception v0

    goto :goto_36

    :catch_1b
    move-exception v0

    .line 1220
    :try_start_1c
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while getting audio state of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_19

    .line 1222
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_19

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBluetoothHeadset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBluetoothHeadsetDevice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_63

    .line 1468
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 1470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mBluetoothHeadsetDevice.DeviceClass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->btDeviceClassToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1470
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mScoAudioState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->scoAudioStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mScoAudioMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mHearingAid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLeAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mA2dp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mAvrcpAbsVolSupported: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_5

    .line 967
    const-string p0, "(null)"

    return-object p0

    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBluetoothHeadset()Z
    .registers 6

    .line 1226
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1228
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 1235
    :goto_16
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    if-eqz v0, :cond_1c

    const/16 v1, 0xbb8

    :cond_1c
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->handleFailureToConnectToBtHeadsetService(I)V

    return v0
.end method

.method public final declared-synchronized getCodec(Landroid/bluetooth/BluetoothDevice;I)Landroid/util/Pair;
    .registers 10

    const/4 v0, 0x0

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 0
    monitor-enter p0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p2, v2, :cond_ca

    const/16 v2, 0x16

    if-eq p2, v2, :cond_39

    const/16 p1, 0x1a

    if-eq p2, p1, :cond_1f

    .line 356
    :try_start_13
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object p1

    :catchall_1c
    move-exception p1

    goto/16 :goto_155

    .line 351
    :cond_1f
    :try_start_1f
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    const/high16 p2, 0x2b000000

    if-eq p1, p2, :cond_26

    move v0, v3

    .line 352
    :cond_26
    iput p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    .line 353
    new-instance p1, Landroid/util/Pair;

    iget p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_1c

    monitor-exit p0

    return-object p1

    .line 320
    :cond_39
    :try_start_39
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    if-eqz p2, :cond_3e

    move v0, v3

    .line 321
    :cond_3e
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-nez p2, :cond_4f

    .line 322
    iput-object v4, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 323
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_1c

    monitor-exit p0

    return-object p1

    .line 326
    :cond_4f
    :try_start_4f
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_1c

    .line 328
    :try_start_53
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothLeAudio;->getCodecStatus(I)Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    move-result-object p2
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_59} :catch_5a
    .catchall {:try_start_53 .. :try_end_59} :catchall_1c

    goto :goto_72

    :catch_5a
    move-exception p2

    .line 330
    :try_start_5b
    const-string v2, "AS.BtHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while getting status of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p2, v4

    :goto_72
    if-nez p2, :cond_97

    .line 333
    const-string p2, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCodec, null LE codec status for device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iput-object v4, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 335
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_95
    .catchall {:try_start_5b .. :try_end_95} :catchall_1c

    monitor-exit p0

    return-object p1

    .line 338
    :cond_97
    :try_start_97
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getOutputCodecConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-result-object p1

    if-nez p1, :cond_aa

    .line 340
    iput-object v4, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 341
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a8
    .catchall {:try_start_97 .. :try_end_a8} :catchall_1c

    monitor-exit p0

    return-object p1

    .line 343
    :cond_aa
    :try_start_aa
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v3

    .line 344
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 345
    new-instance v0, Landroid/util/Pair;

    .line 346
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result p1

    .line 345
    invoke-static {p1}, Landroid/media/AudioSystem;->bluetoothLeCodecToAudioFormat(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 346
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c8
    .catchall {:try_start_aa .. :try_end_c8} :catchall_1c

    .line 345
    monitor-exit p0

    return-object v0

    .line 293
    :cond_ca
    :try_start_ca
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    if-eqz p2, :cond_cf

    move v0, v3

    .line 294
    :cond_cf
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez p2, :cond_e0

    .line 295
    iput-object v4, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 296
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_de
    .catchall {:try_start_ca .. :try_end_de} :catchall_1c

    monitor-exit p0

    return-object p1

    .line 300
    :cond_e0
    :try_start_e0
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p2
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e4} :catch_e5
    .catchall {:try_start_e0 .. :try_end_e4} :catchall_1c

    goto :goto_fd

    :catch_e5
    move-exception p2

    .line 302
    :try_start_e6
    const-string v2, "AS.BtHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while getting status of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p2, v4

    :goto_fd
    if-nez p2, :cond_122

    .line 305
    const-string p2, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCodec, null A2DP codec status for device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iput-object v4, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 307
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_120
    .catchall {:try_start_e6 .. :try_end_120} :catchall_1c

    monitor-exit p0

    return-object p1

    .line 309
    :cond_122
    :try_start_122
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    if-nez p1, :cond_135

    .line 311
    iput-object v4, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 312
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_133
    .catchall {:try_start_122 .. :try_end_133} :catchall_1c

    monitor-exit p0

    return-object p1

    .line 314
    :cond_135
    :try_start_135
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v3

    .line 315
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 316
    new-instance v0, Landroid/util/Pair;

    .line 317
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    .line 316
    invoke-static {p1}, Landroid/media/AudioSystem;->bluetoothA2dpCodecToAudioFormat(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 317
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_153
    .catchall {:try_start_135 .. :try_end_153} :catchall_1c

    .line 316
    monitor-exit p0

    return-object v0

    .line 356
    :goto_155
    :try_start_155
    monitor-exit p0
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_1c

    throw p1
.end method

.method public declared-synchronized getCodecWithFallback(Landroid/bluetooth/BluetoothDevice;IZLjava/lang/String;)Landroid/util/Pair;
    .registers 8

    monitor-enter p0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1e

    if-eqz p3, :cond_e

    const/16 p3, 0x16

    if-eq p2, p3, :cond_1e

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_1e

    .line 370
    :cond_e
    :try_start_e
    new-instance p1, Landroid/util/Pair;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object p1

    :catchall_1c
    move-exception p1

    goto :goto_6c

    .line 373
    :cond_1e
    :try_start_1e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->getCodec(Landroid/bluetooth/BluetoothDevice;I)Landroid/util/Pair;

    move-result-object p1

    .line 374
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_6a

    .line 375
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance p3, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCodec DEFAULT from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " fallback to "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, v0, :cond_47

    .line 377
    const-string p4, "SBC"

    goto :goto_49

    :cond_47
    const-string p4, "LC3"

    :goto_49
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 378
    new-instance p1, Landroid/util/Pair;

    if-ne p2, v0, :cond_5d

    const/high16 p2, 0x1f000000

    goto :goto_5f

    :cond_5d
    const/high16 p2, 0x2b000000

    :goto_5f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 379
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_68
    .catchall {:try_start_1e .. :try_end_68} :catchall_1c

    .line 378
    monitor-exit p0

    return-object p1

    .line 382
    :cond_6a
    monitor-exit p0

    return-object p1

    :goto_6c
    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_1c

    throw p1
.end method

.method public getHeadsetAudioDevice()Landroid/media/AudioDeviceAttributes;
    .registers 2

    .line 868
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 871
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->getHeadsetAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final getHeadsetAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;
    .registers 2

    .line 876
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceAttributes;

    if-eqz p0, :cond_b

    return-object p0

    .line 881
    :cond_b
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getLeAudioDeviceGroupId(Landroid/bluetooth/BluetoothDevice;I)I
    .registers 5

    monitor-enter p0

    .line 1241
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v0, :cond_1a

    if-nez p1, :cond_8

    goto :goto_1a

    :cond_8
    const/16 v1, 0x16

    if-ne p2, v1, :cond_14

    .line 1245
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return p1

    :catchall_12
    move-exception p1

    goto :goto_1d

    .line 1247
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudio;->getBroadcastToUnicastFallbackGroup()I

    move-result p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_12

    monitor-exit p0

    return p1

    .line 1242
    :cond_1a
    :goto_1a
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_12

    throw p1
.end method

.method public declared-synchronized getLeAudioGroupAddresses(II)Ljava/util/List;
    .registers 7

    monitor-enter p0

    .line 1259
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 1261
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-nez v2, :cond_11

    goto :goto_5e

    :cond_11
    const/16 v3, 0x16

    if-ne p2, v3, :cond_46

    .line 1265
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p2

    .line 1267
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1d
    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1d

    .line 1268
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, p1, :cond_1d

    .line 1269
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :catchall_44
    move-exception p1

    goto :goto_60

    .line 1273
    :cond_46
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedGroupLeadDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 1275
    new-instance p2, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_44

    .line 1278
    :cond_5c
    monitor-exit p0

    return-object v0

    .line 1262
    :cond_5e
    :goto_5e
    monitor-exit p0

    return-object v0

    :goto_60
    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_44

    throw p1
.end method

.method public final handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;ZZ)Z
    .registers 16

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 922
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 923
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p2, :cond_1a

    .line 926
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object v4

    .line 927
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, v4, v0, p1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result v5

    goto :goto_51

    .line 930
    :cond_1a
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    const/4 v5, 0x0

    if-eqz v4, :cond_2f

    .line 932
    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6, v4, v3, p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result v4

    move-object v11, v5

    move v5, v4

    move-object v4, v11

    goto :goto_51

    :cond_2f
    const/16 v4, 0x20

    const/16 v6, 0x40

    const/16 v7, 0x10

    .line 937
    filled-new-array {v7, v4, v6}, [I

    move-result-object v4

    move v6, v3

    move v7, v6

    :goto_3b
    const/4 v8, 0x3

    if-ge v7, v8, :cond_4f

    .line 942
    aget v8, v4, v7

    .line 943
    iget-object v9, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v10, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v10, v8, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v3, p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result v8

    or-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    :cond_4f
    move-object v4, v5

    move v5, v6

    .line 952
    :goto_51
    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v7, Landroid/media/AudioDeviceAttributes;

    const v8, -0x7ffffff8

    invoke-direct {v7, v8, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, p2, p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result p3

    if-eqz p3, :cond_64

    if-eqz v5, :cond_64

    goto :goto_65

    :cond_64
    move v0, v3

    :goto_65
    if-eqz v0, :cond_74

    if-eqz p2, :cond_6f

    .line 957
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 959
    :cond_6f
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    return v0
.end method

.method public declared-synchronized isBluetoothScoOn()Z
    .registers 6

    monitor-enter p0

    .line 487
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_16

    if-nez v2, :cond_b

    goto :goto_33

    .line 491
    :cond_b
    :try_start_b
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_18
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    const/16 v2, 0xc

    if-ne v0, v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    monitor-exit p0

    return v1

    :catchall_16
    move-exception v0

    goto :goto_35

    :catch_18
    move-exception v0

    .line 494
    :try_start_19
    const-string v2, "AS.BtHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while getting audio state of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_16

    .line 496
    monitor-exit p0

    return v1

    .line 488
    :cond_33
    :goto_33
    monitor-exit p0

    return v1

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_16

    throw v0
.end method

.method public isBluetoothScoRequestedInternally()Z
    .registers 3

    .line 501
    iget p0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_b

    if-ne p0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    return v1
.end method

.method public declared-synchronized isProfilePoxyConnected(I)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_29

    const/4 v2, 0x2

    if-eq p1, v2, :cond_22

    const/16 v2, 0x15

    if-eq p1, v2, :cond_1b

    const/16 v2, 0x16

    if-eq p1, v2, :cond_12

    .line 805
    monitor-exit p0

    return v1

    .line 798
    :cond_12
    :try_start_12
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_19

    if-eqz p1, :cond_17

    move v0, v1

    :cond_17
    monitor-exit p0

    return v0

    :catchall_19
    move-exception p1

    goto :goto_30

    .line 796
    :cond_1b
    :try_start_1b
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_19

    if-eqz p1, :cond_20

    move v0, v1

    :cond_20
    monitor-exit p0

    return v0

    .line 794
    :cond_22
    :try_start_22
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_19

    if-eqz p1, :cond_27

    move v0, v1

    :cond_27
    monitor-exit p0

    return v0

    .line 792
    :cond_29
    :try_start_29
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_19

    if-eqz p1, :cond_2e

    move v0, v1

    :cond_2e
    monitor-exit p0

    return v0

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_19

    throw p1
.end method

.method public onBroadcastScoConnectionState(I)V
    .registers 5

    .line 574
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    if-ne p1, v0, :cond_5

    return-void

    .line 577
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 582
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    return-void
.end method

.method public declared-synchronized onBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 11

    monitor-enter p0

    .line 665
    :try_start_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " connected to proxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.BtHelper"

    .line 667
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 665
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    if-nez p2, :cond_4c

    .line 669
    const-string p2, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBtProfileConnected: null proxy for profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    .line 670
    monitor-exit p0

    return-void

    :catchall_49
    move-exception p1

    goto/16 :goto_1b9

    :cond_4c
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b2

    const/4 v1, 0x0

    const/16 v2, 0x16

    const/16 v3, 0x15

    const/4 v4, 0x2

    if-eq p1, v4, :cond_d9

    const/16 v5, 0xb

    if-eq p1, v5, :cond_d7

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_d7

    if-eq p1, v3, :cond_c5

    if-eq p1, v2, :cond_80

    .line 715
    :try_start_63
    const-string p2, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBtProfileConnected: Not a valid profile to connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 715
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_63 .. :try_end_7e} :catchall_49

    .line 717
    monitor-exit p0

    return-void

    .line 689
    :cond_80
    :try_start_80
    move-object v5, p2

    check-cast v5, Landroid/bluetooth/BluetoothLeAudio;

    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_49

    if-eqz v5, :cond_8d

    .line 690
    monitor-exit p0

    return-void

    .line 692
    :cond_8d
    :try_start_8d
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v5, :cond_a1

    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_49

    if-eqz v6, :cond_a1

    .line 694
    :try_start_95
    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothLeAudio;->unregisterCallback(Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_99
    .catchall {:try_start_95 .. :try_end_98} :catchall_49

    goto :goto_a1

    :catch_99
    move-exception v5

    .line 696
    :try_start_9a
    const-string v6, "AS.BtHelper"

    const-string v7, "Exception while unregistering callback for LE audio"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    :cond_a1
    :goto_a1
    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 700
    new-instance p2, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    invoke-direct {p2, p0}, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;-><init>(Lcom/android/server/audio/BtHelper;)V

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_ac
    .catchall {:try_start_9a .. :try_end_ac} :catchall_49

    .line 702
    :try_start_ac
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mContext:Landroid/content/Context;

    .line 703
    invoke-virtual {v5}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 702
    invoke-virtual {p2, v5, v6}, Landroid/bluetooth/BluetoothLeAudio;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b9} :catch_ba
    .catchall {:try_start_ac .. :try_end_b9} :catchall_49

    goto :goto_ea

    :catch_ba
    move-exception p2

    .line 705
    :try_start_bb
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 706
    const-string v5, "AS.BtHelper"

    const-string v6, "Exception while registering callback for LE audio"

    invoke-static {v5, v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ea

    .line 683
    :cond_c5
    move-object v5, p2

    check-cast v5, Landroid/bluetooth/BluetoothHearingAid;

    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_ce
    .catchall {:try_start_bb .. :try_end_ce} :catchall_49

    if-eqz v5, :cond_d2

    .line 684
    monitor-exit p0

    return-void

    .line 686
    :cond_d2
    :try_start_d2
    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    :try_end_d6
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_49

    goto :goto_ea

    .line 712
    :cond_d7
    monitor-exit p0

    return-void

    .line 677
    :cond_d9
    :try_start_d9
    move-object v5, p2

    check-cast v5, Landroid/bluetooth/BluetoothA2dp;

    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_e2
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_49

    if-eqz v5, :cond_e6

    .line 678
    monitor-exit p0

    return-void

    .line 680
    :cond_e6
    :try_start_e6
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 721
    :goto_ea
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-nez p2, :cond_10d

    .line 723
    const-string p2, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBtProfileConnected: Null BluetoothAdapter when connecting profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 723
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catchall {:try_start_e6 .. :try_end_10b} :catchall_49

    .line 725
    monitor-exit p0

    return-void

    .line 727
    :cond_10d
    :try_start_10d
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p2

    .line 728
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1b0

    const/4 v5, 0x0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_120

    goto/16 :goto_1b0

    .line 731
    :cond_120
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-eq p1, v4, :cond_1a6

    if-eq p1, v3, :cond_19e

    if-eq p1, v2, :cond_135

    .line 775
    const-string p1, "AS.BtHelper"

    const-string p2, "Invalid profile! onBtProfileConnected"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ae

    .line 744
    :cond_135
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1
    :try_end_13b
    .catchall {:try_start_10d .. :try_end_13b} :catchall_49

    .line 747
    :try_start_13b
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothLeAudio;->getCodecStatus(I)Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    move-result-object v1
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_141} :catch_142
    .catchall {:try_start_13b .. :try_end_141} :catchall_49

    goto :goto_159

    :catch_142
    move-exception v2

    .line 749
    :try_start_143
    const-string v3, "AS.BtHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while getting status of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_159
    if-nez v1, :cond_17b

    .line 752
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBtProfileConnected null LE codec status for groupId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", device: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ae

    .line 757
    :cond_17b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getOutputCodecSelectableCapabilities()Ljava/util/List;

    move-result-object p1

    .line 758
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18c

    .line 760
    invoke-static {v5, v0}, Landroid/media/BluetoothProfileConnectionInfo;->createLeAudioInfo(ZZ)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    .line 762
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 765
    :cond_18c
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getInputCodecSelectableCapabilities()Ljava/util/List;

    move-result-object p1

    .line 766
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1ae

    .line 768
    invoke-static {v5, v5}, Landroid/media/BluetoothProfileConnectionInfo;->createLeAudioInfo(ZZ)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    .line 770
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    goto :goto_1ae

    .line 740
    :cond_19e
    invoke-static {v5}, Landroid/media/BluetoothProfileConnectionInfo;->createHearingAidInfo(Z)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    .line 741
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    goto :goto_1ae

    :cond_1a6
    const/4 p1, -0x1

    .line 735
    invoke-static {v5, p1}, Landroid/media/BluetoothProfileConnectionInfo;->createA2dpInfo(ZI)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    .line 736
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    :try_end_1ae
    .catchall {:try_start_143 .. :try_end_1ae} :catchall_49

    .line 778
    :cond_1ae
    :goto_1ae
    monitor-exit p0

    return-void

    .line 729
    :cond_1b0
    :goto_1b0
    monitor-exit p0

    return-void

    .line 674
    :cond_1b2
    :try_start_1b2
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p2}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    :try_end_1b7
    .catchall {:try_start_1b2 .. :try_end_1b7} :catchall_49

    .line 675
    monitor-exit p0

    return-void

    .line 717
    :goto_1b9
    :try_start_1b9
    monitor-exit p0
    :try_end_1ba
    .catchall {:try_start_1b9 .. :try_end_1ba} :catchall_49

    throw p1
.end method

.method public declared-synchronized onBtProfileDisconnected(I)V
    .registers 6

    monitor-enter p0

    .line 596
    :try_start_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.BtHelper"

    .line 598
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 596
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_87

    const/4 v0, 0x2

    if-eq p1, v0, :cond_82

    const/16 v0, 0xb

    if-eq p1, v0, :cond_89

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_7e

    const/16 v0, 0x15

    if-eq p1, v0, :cond_7b

    const/16 v0, 0x16

    if-eq p1, v0, :cond_60

    .line 630
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBtProfileDisconnected: Not a valid profile to disconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 630
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    :catchall_5e
    move-exception p1

    goto :goto_8b

    .line 611
    :cond_60
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz p1, :cond_74

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_5e

    if-eqz v0, :cond_74

    .line 613
    :try_start_68
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeAudio;->unregisterCallback(Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c
    .catchall {:try_start_68 .. :try_end_6b} :catchall_5e

    goto :goto_74

    :catch_6c
    move-exception p1

    .line 615
    :try_start_6d
    const-string v0, "AS.BtHelper"

    const-string v2, "Exception while unregistering callback for LE audio"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    :cond_74
    :goto_74
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 619
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 620
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    goto :goto_89

    .line 608
    :cond_7b
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_89

    :cond_7e
    const/4 p1, 0x0

    .line 623
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    goto :goto_89

    .line 604
    :cond_82
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 605
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    goto :goto_89

    .line 601
    :cond_87
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_89
    .catchall {:try_start_6d .. :try_end_89} :catchall_5e

    .line 634
    :cond_89
    :goto_89
    monitor-exit p0

    return-void

    :goto_8b
    :try_start_8b
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_5e

    throw p1
.end method

.method public final declared-synchronized onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .registers 6

    monitor-enter p0

    .line 812
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->handleCancelFailureToConnectToBtHeadsetService()V

    .line 813
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 814
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 817
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p1

    .line 818
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_27

    goto :goto_18

    .line 822
    :cond_27
    invoke-virtual {p0, v2, v1}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_18

    :catchall_2b
    move-exception p1

    goto :goto_70

    .line 825
    :cond_2d
    const-string p1, "AS.BtHelper"

    const-string/jumbo v2, "onHeadsetProfileConnected: Null BluetoothAdapter"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 830
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_2b

    const/4 v2, 0x4

    if-eq p1, v0, :cond_41

    if-eq p1, v2, :cond_41

    .line 832
    monitor-exit p0

    return-void

    .line 835
    :cond_41
    :try_start_41
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_66

    if-eq p1, v0, :cond_58

    if-eq p1, v2, :cond_4a

    goto :goto_66

    .line 846
    :cond_4a
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, v3, v0}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_67

    const/4 v0, 0x5

    .line 850
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_67

    .line 838
    :cond_58
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, v3, v0}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_67

    const/4 v0, 0x3

    .line 842
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_67

    :cond_66
    :goto_66
    move p1, v1

    :cond_67
    :goto_67
    if-nez p1, :cond_6e

    .line 856
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 857
    invoke-virtual {p0, v1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_6e
    .catchall {:try_start_41 .. :try_end_6e} :catchall_2b

    .line 859
    :cond_6e
    monitor-exit p0

    return-void

    :goto_70
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_2b

    throw p1
.end method

.method public declared-synchronized onReceiveBtEvent(Landroid/content/Intent;)V
    .registers 6

    monitor-enter p0

    .line 387
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 389
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 390
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    const-class v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    if-eqz p1, :cond_46

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->isProfilePoxyConnected(I)Z

    move-result v1

    if-nez v1, :cond_46

    .line 393
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceiveBtEvent ACTION_ACTIVE_DEVICE_CHANGED received with null profile proxy for device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p1, "AS.BtHelper"

    .line 396
    invoke-virtual {v1, p1}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 393
    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 397
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    goto :goto_68

    :cond_46
    if-eqz p1, :cond_4d

    .line 400
    :try_start_48
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    .line 402
    :goto_4e
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_66

    .line 403
    :cond_54
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 404
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 405
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->onScoAudioStateChanged(I)V
    :try_end_66
    .catchall {:try_start_48 .. :try_end_66} :catchall_44

    .line 407
    :cond_66
    :goto_66
    monitor-exit p0

    return-void

    :goto_68
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_44

    throw p1
.end method

.method public final declared-synchronized onScoAudioStateChanged(I)V
    .registers 9

    monitor-enter p0

    .line 418
    :try_start_1
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScoAudioStateChanged  state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mScoAudioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_da

    goto :goto_68

    .line 423
    :pswitch_2b
    iget v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v5, v1, :cond_37

    if-eq v5, v0, :cond_37

    .line 425
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_40

    :catchall_34
    move-exception p1

    goto/16 :goto_d7

    .line 426
    :cond_37
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v0

    if-eqz v0, :cond_40

    move v3, v4

    .line 430
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isScoManagedByAudio()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 431
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BtHelper.onScoAudioStateChanged, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    :cond_5e
    move v2, v4

    goto :goto_aa

    .line 463
    :pswitch_60
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v1, :cond_68

    if-eq p1, v0, :cond_68

    .line 465
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    :cond_68
    :goto_68
    const/4 v2, -0x1

    goto :goto_aa

    .line 436
    :pswitch_6a
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isScoManagedByAudio()Z

    move-result v0

    if-nez v0, :cond_88

    .line 437
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BtHelper.onScoAudioStateChanged, state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 447
    :cond_88
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne p1, v4, :cond_a0

    .line 448
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p1, :cond_a0

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_a0

    iget v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 449
    invoke-static {p1, v0, v5}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 451
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    :goto_9e
    move v3, v4

    goto :goto_aa

    .line 457
    :cond_a0
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v2, :cond_a5

    goto :goto_a6

    :cond_a5
    move v4, v3

    .line 460
    :goto_a6
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    move v2, v3

    goto :goto_9e

    :goto_aa
    if-eqz v3, :cond_d5

    .line 472
    const-string p1, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScoAudioStateChanged  broadcasting state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0, v2}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 476
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    :try_end_d5
    .catchall {:try_start_1 .. :try_end_d5} :catchall_34

    .line 480
    :cond_d5
    monitor-exit p0

    return-void

    :goto_d7
    :try_start_d7
    monitor-exit p0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_34

    throw p1

    nop

    :pswitch_data_da
    .packed-switch 0xa
        :pswitch_6a
        :pswitch_60
        :pswitch_2b
    .end packed-switch
.end method

.method public onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 7

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSetBtScoActiveDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 975
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_86

    :cond_3a
    const/4 v2, 0x0

    .line 978
    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;ZZ)Z

    move-result p2

    if-nez p2, :cond_5a

    .line 979
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetBtScoActiveDevice() failed to remove previous device "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 979
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_5a
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p2, 0x1

    .line 986
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;ZZ)Z

    move-result p2

    if-nez p2, :cond_7f

    .line 987
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSetBtScoActiveDevice() failed to add new device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 987
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 990
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 992
    :cond_7f
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_86

    .line 993
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    :cond_86
    :goto_86
    return-void
.end method

.method public declared-synchronized onSystemReady()V
    .registers 5

    monitor-enter p0

    const/4 v0, -0x1

    .line 230
    :try_start_2
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    .line 231
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 232
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 241
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 243
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 245
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 247
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 249
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 251
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_60
    .catchall {:try_start_2 .. :try_end_60} :catchall_61

    goto :goto_63

    :catchall_61
    move-exception v0

    goto :goto_65

    .line 254
    :cond_63
    :goto_63
    monitor-exit p0

    return-void

    :goto_65
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_61

    throw v0
.end method

.method public final postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    .registers 6

    .line 782
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    const/4 v1, 0x0

    const-string/jumbo v2, "mBluetoothProfileServiceListener"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 784
    invoke-static {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object p1

    .line 786
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V

    return-void
.end method

.method public final declared-synchronized requestScoState(II)Z
    .registers 9

    monitor-enter p0

    .line 1046
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    const/16 v0, 0xc

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v0, :cond_115

    .line 1050
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    const/4 v0, 0x2

    if-eq p1, v3, :cond_19

    .line 1051
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto :goto_19

    :catchall_16
    move-exception p1

    goto/16 :goto_194

    .line 1053
    :cond_19
    :goto_19
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eqz p1, :cond_5b

    if-eq p1, v0, :cond_56

    if-eq p1, v3, :cond_192

    if-eq p1, v2, :cond_4f

    if-eq p1, v1, :cond_4b

    .line 1120
    const-string p1, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestScoState: failed to connect in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scoAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_16

    .line 1123
    monitor-exit p0

    return v5

    .line 1101
    :cond_4b
    :try_start_4b
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_192

    .line 1104
    :cond_4f
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1105
    invoke-virtual {p0, v4}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto/16 :goto_192

    .line 1117
    :cond_56
    invoke-virtual {p0, v4}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto/16 :goto_192

    .line 1055
    :cond_5b
    iput p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_8f

    .line 1057
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 1058
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_8f

    .line 1059
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1060
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_sco_channel_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1062
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1059
    invoke-static {p1, p2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    if-gt p1, v0, :cond_8d

    if-gez p1, :cond_8f

    .line 1065
    :cond_8d
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 1069
    :cond_8f
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez p1, :cond_bb

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 1071
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_192

    .line 1073
    :cond_9d
    const-string p1, "AS.BtHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_b9
    .catchall {:try_start_4b .. :try_end_b9} :catchall_16

    .line 1077
    monitor-exit p0

    return v5

    .line 1081
    :cond_bb
    :try_start_bb
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_dd

    .line 1082
    const-string p1, "AS.BtHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestScoState: no active device while connecting, mScoAudioMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-virtual {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_db
    .catchall {:try_start_bb .. :try_end_db} :catchall_16

    .line 1086
    monitor-exit p0

    return v5

    .line 1088
    :cond_dd
    :try_start_dd
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, p2, v0}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_e9

    .line 1090
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_192

    .line 1092
    :cond_e9
    const-string p1, "AS.BtHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestScoState: connect to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1093
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed, mScoAudioMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1092
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-virtual {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_113
    .catchall {:try_start_dd .. :try_end_113} :catchall_16

    .line 1097
    monitor-exit p0

    return v5

    :cond_115
    const/16 v0, 0xa

    if-ne p1, v0, :cond_192

    .line 1126
    :try_start_119
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v4, :cond_18d

    if-eq p1, v3, :cond_145

    .line 1161
    const-string p1, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestScoState: failed to disconnect in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scoAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-virtual {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_143
    .catchall {:try_start_119 .. :try_end_143} :catchall_16

    .line 1164
    monitor-exit p0

    return v5

    .line 1128
    :cond_145
    :try_start_145
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez p1, :cond_172

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result p1

    if-eqz p1, :cond_152

    .line 1130
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_192

    .line 1132
    :cond_152
    const-string p1, "AS.BtHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1135
    invoke-virtual {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_170
    .catchall {:try_start_145 .. :try_end_170} :catchall_16

    .line 1137
    monitor-exit p0

    return v5

    .line 1141
    :cond_172
    :try_start_172
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_17c

    .line 1142
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1143
    invoke-virtual {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto :goto_192

    .line 1147
    :cond_17c
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, p2, v0}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_187

    .line 1149
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_192

    .line 1151
    :cond_187
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1152
    invoke-virtual {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto :goto_192

    .line 1157
    :cond_18d
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1158
    invoke-virtual {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_192
    .catchall {:try_start_172 .. :try_end_192} :catchall_16

    .line 1167
    :cond_192
    :goto_192
    monitor-exit p0

    return v4

    :goto_194
    :try_start_194
    monitor-exit p0
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_16

    throw p1
.end method

.method public resetBluetoothSco()V
    .registers 3

    const/4 v0, 0x0

    .line 587
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 589
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->clearA2dpSuspended(Z)V

    .line 590
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->clearLeAudioSuspended(Z)V

    .line 591
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v1, "resetBluetoothSco"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    return-void
.end method

.method public final sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 5

    const/high16 v0, 0x10000000

    .line 1176
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1179
    :try_start_9
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_18

    .line 1181
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1182
    throw p0
.end method

.method public declared-synchronized setAvrcpAbsoluteVolumeIndex(I)V
    .registers 5

    monitor-enter p0

    .line 264
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_21

    .line 265
    sget-boolean p1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p1, :cond_1f

    .line 266
    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v1, "setAvrcpAbsoluteVolumeIndex: bailing due to null mA2dp"

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.BtHelper"

    .line 267
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 266
    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_70

    .line 269
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 271
    :cond_21
    :try_start_21
    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    if-nez v0, :cond_3a

    .line 272
    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v1, "setAvrcpAbsoluteVolumeIndex: abs vol not supported "

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.BtHelper"

    .line 273
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 272
    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_1d

    .line 274
    monitor-exit p0

    return-void

    .line 276
    :cond_3a
    :try_start_3a
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_55

    .line 277
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeIndex index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_55
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_60
    .catchall {:try_start_3a .. :try_end_60} :catchall_1d

    .line 282
    :try_start_60
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_66
    .catchall {:try_start_60 .. :try_end_65} :catchall_1d

    goto :goto_6e

    :catch_66
    move-exception p1

    .line 284
    :try_start_67
    const-string v0, "AS.BtHelper"

    const-string v1, "Exception while changing abs volume"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_1d

    .line 286
    :goto_6e
    monitor-exit p0

    return-void

    :goto_70
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_1d

    throw p1
.end method

.method public setAvrcpAbsoluteVolumeSupported(Z)V
    .registers 3

    .line 258
    iput-boolean p1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 259
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAvrcpAbsoluteVolumeSupported supported="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.BtHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized setHearingAidVolume(IIZ)V
    .registers 7

    monitor-enter p0

    .line 544
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_16

    .line 545
    sget-boolean p1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p1, :cond_14

    .line 546
    const-string p1, "AS.BtHelper"

    const-string/jumbo p2, "setHearingAidVolume: null mHearingAid"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception p1

    goto :goto_64

    .line 548
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 551
    :cond_16
    :try_start_16
    div-int/lit8 v0, p1, 0xa

    const/high16 v1, 0x8000000

    invoke-static {p2, v0, v1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result p2

    float-to-int p2, p2

    const/16 v0, -0x80

    if-ge p2, v0, :cond_24

    move p2, v0

    .line 556
    :cond_24
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_47

    .line 557
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHearingAidVolume: calling mHearingAid.setVolume idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-eqz p3, :cond_54

    .line 562
    sget-object p3, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(III)V

    invoke-virtual {p3, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_54
    .catchall {:try_start_16 .. :try_end_54} :catchall_12

    .line 566
    :cond_54
    :try_start_54
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_59} :catch_5a
    .catchall {:try_start_54 .. :try_end_59} :catchall_12

    goto :goto_62

    :catch_5a
    move-exception p1

    .line 568
    :try_start_5b
    const-string p2, "AS.BtHelper"

    const-string p3, "Exception while setting hearing aid volume"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_12

    .line 570
    :goto_62
    monitor-exit p0

    return-void

    :goto_64
    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_12

    throw p1
.end method

.method public declared-synchronized setLeAudioVolume(III)V
    .registers 12

    monitor-enter p0

    .line 519
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-nez v0, :cond_17

    .line 520
    sget-boolean p1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p1, :cond_15

    .line 521
    const-string p1, "AS.BtHelper"

    const-string/jumbo p2, "setLeAudioVolume: null mLeAudio"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    goto :goto_15

    :catchall_12
    move-exception v0

    move-object p1, v0

    goto :goto_69

    .line 523
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :cond_17
    int-to-double v0, p1

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 526
    :try_start_20
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 528
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_48

    .line 529
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLeAudioVolume: calling mLeAudio.setVolume idx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " volume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_48
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v3, 0xa

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    move v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_58
    .catchall {:try_start_20 .. :try_end_58} :catchall_12

    .line 536
    :try_start_58
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeAudio;->setVolume(I)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_5e
    .catchall {:try_start_58 .. :try_end_5d} :catchall_12

    goto :goto_67

    :catch_5e
    move-exception v0

    move-object p1, v0

    .line 538
    :try_start_60
    const-string p2, "AS.BtHelper"

    const-string p3, "Exception while setting LE volume"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_12

    .line 540
    :goto_67
    monitor-exit p0

    return-void

    :goto_69
    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_12

    throw p1
.end method

.method public declared-synchronized startBluetoothSco(ILjava/lang/String;)Z
    .registers 5

    monitor-enter p0

    .line 508
    :try_start_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    invoke-direct {v1, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/16 p2, 0xc

    .line 509
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return p1

    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public declared-synchronized stopBluetoothSco(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 514
    :try_start_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    invoke-direct {v1, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/16 p1, 0xa

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
