.class public Lcom/android/server/audio/BtHelper;
.super Ljava/lang/Object;
.source "BtHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    }
.end annotation


# static fields
.field private static final BT_HEARING_AID_GAIN_MIN:I = -0x80

.field private static final BT_LE_AUDIO_MAX_VOL:I = 0xff

.field private static final BT_LE_AUDIO_MIN_VOL:I = 0x0

.field static final EVENT_ACTIVE_DEVICE_CHANGE:I = 0x1

.field static final EVENT_DEVICE_CONFIG_CHANGE:I = 0x0

.field private static final GROUP_ID_END:I = 0xf

.field private static final GROUP_ID_START:I = 0x0

.field private static final SCO_MODE_MAX:I = 0x2

.field static final SCO_MODE_UNDEFINED:I = -0x1

.field static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATING:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SPATIAL_AUDIO_DEVICE_CONNECT_ACTION:Ljava/lang/String; = "miui.intent.action.SPATIAL_AUDIO_DEVICE_CONNECT"

.field private static final TAG:Ljava/lang/String; = "AS.BtHelper"

.field private static mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private static mBluetoothA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;


# instance fields
.field private mAvrcpAbsVolSupported:Z

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothHeadsetDummyDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field private mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field private mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private mScoClientDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private mSpaitalBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 3
    .param p1, "broker"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    .line 942
    new-instance v0, Lcom/android/server/audio/BtHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper$1;-><init>(Lcom/android/server/audio/BtHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 62
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 63
    return-void
.end method

.method static SetA2dpActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetA2dpActiveDevice for TWS+ pair as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sput-object p0, Lcom/android/server/audio/BtHelper;->mBluetoothA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 235
    return-void
.end method

.method static a2dpDeviceEventToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "event"    # I

    .line 216
    packed-switch p0, :pswitch_data_24

    .line 220
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 218
    :pswitch_1d
    const-string v0, "ACTIVE_DEVICE_CHANGE"

    return-object v0

    .line 217
    :pswitch_20
    const-string v0, "DEVICE_CONFIG_CHANGE"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static bluetoothCodecToEncodingString(I)Ljava/lang/String;
    .registers 3
    .param p0, "btCodecType"    # I

    .line 1243
    sparse-switch p0, :sswitch_data_30

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENCODING_BT_CODEC_TYPE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1261
    :sswitch_1d
    const-string v0, "ENCODING_LHDC"

    return-object v0

    .line 1253
    :sswitch_20
    const-string v0, "ENCODING_LDAC"

    return-object v0

    .line 1251
    :sswitch_23
    const-string v0, "ENCODING_APTX_HD"

    return-object v0

    .line 1249
    :sswitch_26
    const-string v0, "ENCODING_APTX"

    return-object v0

    .line 1247
    :sswitch_29
    const-string v0, "ENCODING_AAC"

    return-object v0

    .line 1245
    :sswitch_2c
    const-string v0, "ENCODING_SBC"

    return-object v0

    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_2c
        0x1 -> :sswitch_29
        0x2 -> :sswitch_26
        0x3 -> :sswitch_23
        0x4 -> :sswitch_20
        0xc -> :sswitch_1d
        0xd -> :sswitch_1d
        0xe -> :sswitch_1d
        0x13 -> :sswitch_1d
    .end sparse-switch
.end method

.method private broadcastScoConnectionState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 790
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    .line 791
    return-void
.end method

.method public static btDeviceClassToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "btDeviceClass"    # I

    .line 1273
    sparse-switch p0, :sswitch_data_4e

    .line 1313
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "0x%04x"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1311
    :sswitch_14
    const-string v0, "AUDIO_VIDEO_VIDEO_GAMING_TOY"

    return-object v0

    .line 1309
    :sswitch_17
    const-string v0, "AUDIO_VIDEO_RESERVED_0x0444"

    return-object v0

    .line 1307
    :sswitch_1a
    const-string v0, "AUDIO_VIDEO_VIDEO_CONFERENCING"

    return-object v0

    .line 1305
    :sswitch_1d
    const-string v0, "AUDIO_VIDEO_VIDEO_DISPLAY_AND_LOUDSPEAKER"

    return-object v0

    .line 1303
    :sswitch_20
    const-string v0, "AUDIO_VIDEO_VIDEO_MONITOR"

    return-object v0

    .line 1301
    :sswitch_23
    const-string v0, "AUDIO_VIDEO_CAMCORDER"

    return-object v0

    .line 1299
    :sswitch_26
    const-string v0, "AUDIO_VIDEO_VIDEO_CAMERA"

    return-object v0

    .line 1297
    :sswitch_29
    const-string v0, "AUDIO_VIDEO_VCR"

    return-object v0

    .line 1295
    :sswitch_2c
    const-string v0, "AUDIO_VIDEO_HIFI_AUDIO"

    return-object v0

    .line 1293
    :sswitch_2f
    const-string v0, "AUDIO_VIDEO_SET_TOP_BOX"

    return-object v0

    .line 1291
    :sswitch_32
    const-string v0, "AUDIO_VIDEO_CAR_AUDIO"

    return-object v0

    .line 1289
    :sswitch_35
    const-string v0, "AUDIO_VIDEO_PORTABLE_AUDIO"

    return-object v0

    .line 1287
    :sswitch_38
    const-string v0, "AUDIO_VIDEO_HEADPHONES"

    return-object v0

    .line 1285
    :sswitch_3b
    const-string v0, "AUDIO_VIDEO_LOUDSPEAKER"

    return-object v0

    .line 1283
    :sswitch_3e
    const-string v0, "AUDIO_VIDEO_MICROPHONE"

    return-object v0

    .line 1281
    :sswitch_41
    const-string v0, "AUDIO_VIDEO_RESERVED_0x040C"

    return-object v0

    .line 1279
    :sswitch_44
    const-string v0, "AUDIO_VIDEO_HANDSFREE"

    return-object v0

    .line 1277
    :sswitch_47
    const-string v0, "AUDIO_VIDEO_WEARABLE_HEADSET"

    return-object v0

    .line 1275
    :sswitch_4a
    const-string v0, "AUDIO_VIDEO_UNCATEGORIZED"

    return-object v0

    nop

    :sswitch_data_4e
    .sparse-switch
        0x400 -> :sswitch_4a
        0x404 -> :sswitch_47
        0x408 -> :sswitch_44
        0x40c -> :sswitch_41
        0x410 -> :sswitch_3e
        0x414 -> :sswitch_3b
        0x418 -> :sswitch_38
        0x41c -> :sswitch_35
        0x420 -> :sswitch_32
        0x424 -> :sswitch_2f
        0x428 -> :sswitch_2c
        0x42c -> :sswitch_29
        0x430 -> :sswitch_26
        0x434 -> :sswitch_23
        0x438 -> :sswitch_20
        0x43c -> :sswitch_1d
        0x440 -> :sswitch_1a
        0x444 -> :sswitch_17
        0x448 -> :sswitch_14
    .end sparse-switch
.end method

.method private btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;
    .registers 8
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 808
    if-nez p1, :cond_c

    .line 809
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/16 v1, 0x10

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 811
    :cond_c
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 813
    const-string v0, ""

    .line 815
    :cond_18
    const-string v1, "00:00:00:00:00:00"

    .line 816
    .local v1, "dummyAddress":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    goto :goto_26

    .line 817
    :cond_22
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    :goto_26
    nop

    .line 818
    .local v2, "btClass":Landroid/bluetooth/BluetoothClass;
    const/16 v3, 0x10

    .line 819
    .local v3, "nativeType":I
    if-eqz v2, :cond_38

    .line 820
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    sparse-switch v4, :sswitch_data_7a

    goto :goto_38

    .line 826
    :sswitch_33
    const/16 v3, 0x40

    goto :goto_38

    .line 823
    :sswitch_36
    const/16 v3, 0x20

    .line 831
    :cond_38
    :goto_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btHeadsetDeviceToAudioDevice btDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " btClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 832
    if-nez v2, :cond_52

    const-string v5, "Unknown"

    goto :goto_53

    :cond_52
    move-object v5, v2

    :goto_53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nativeType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 831
    const-string v5, "AS.BtHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v4, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v4, v3, v0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    return-object v4

    :sswitch_data_7a
    .sparse-switch
        0x404 -> :sswitch_36
        0x408 -> :sswitch_36
        0x420 -> :sswitch_33
    .end sparse-switch
.end method

.method private checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 383
    const/4 v0, 0x1

    .line 384
    .local v0, "ret":Z
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 385
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.BtHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-nez v1, :cond_29

    .line 388
    const-string v2, "checkAndUpdatTwsPlusScoState: device is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return v0

    .line 394
    :cond_29
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 395
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_47

    .line 398
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 399
    const-string v2, "No need to bringup audio-path"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v0, 0x0

    .line 403
    :cond_43
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/BtHelper;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    goto :goto_57

    .line 406
    :cond_47
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/BtHelper;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    .line 409
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 410
    const-string/jumbo v2, "not good to tear down audio-path"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    .line 415
    :cond_57
    :goto_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdatTwsPlusScoState returns "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v0
.end method

.method private checkAndUpdateGroupScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 445
    const/4 v0, 0x1

    .line 446
    .local v0, "ret":Z
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 447
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.BtHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-nez v1, :cond_29

    .line 450
    const-string v2, "checkAndUpdateGroupScoState: device is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return v0

    .line 456
    :cond_29
    invoke-direct {p0, v1}, Lcom/android/server/audio/BtHelper;->isGroupDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 457
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_47

    .line 460
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 461
    const-string v2, "No need to bringup audio-path"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v0, 0x0

    .line 465
    :cond_43
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/BtHelper;->updateGroupScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    goto :goto_57

    .line 468
    :cond_47
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/BtHelper;->updateGroupScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    .line 471
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 472
    const-string/jumbo v2, "not good to tear down audio-path"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v0, 0x0

    .line 477
    :cond_57
    :goto_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdateGroupScoState returns "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return v0
.end method

.method private checkScoAudioState()V
    .registers 4

    .line 1208
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_17

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-nez v2, :cond_17

    .line 1211
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_17

    .line 1213
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1216
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In checkScoAudioState(), mScoAudioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void
.end method

.method private static connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In connectBluetoothScoAudioHelper(), scoAudioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bluetoothHeadset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", BluetoothDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    packed-switch p2, :pswitch_data_66

    .line 1203
    :pswitch_2f
    const/4 v0, 0x0

    return v0

    .line 1198
    :pswitch_31
    const-string v0, "In connectBluetoothScoAudioHelper(), calling startVoiceRecognition()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 1188
    :pswitch_3b
    const-string v0, "In connectBluetoothScoAudioHelper(), calling startScoUsingVirtualVoiceCall()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In connectBluetoothScoAudioHelper(), calling startScoUsingVirtualVoiceCall(), BluetoothDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 1192
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1195
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_2f
        :pswitch_31
    .end packed-switch
.end method

.method private static disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In disconnectBluetoothScoAudioHelper(), scoAudioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bluetoothHeadset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", BluetoothDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    packed-switch p2, :pswitch_data_66

    .line 1175
    :pswitch_2f
    const/4 v0, 0x0

    return v0

    .line 1170
    :pswitch_31
    const-string v0, "In disconnectBluetoothScoAudioHelper(), calling stopVoiceRecognition()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 1160
    :pswitch_3b
    const-string v0, "In disconnectBluetoothScoAudioHelper(), calling stopScoUsingVirtualVoiceCall()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In disconnectBluetoothScoAudioHelper(), calling stopScoUsingVirtualVoiceCall(), BluetoothDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 1164
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1167
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_2f
        :pswitch_31
    .end packed-switch
.end method

.method private getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 3
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 881
    if-nez p1, :cond_5

    const-string v0, "(null)"

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method private getBluetoothHeadset()Z
    .registers 6

    .line 1221
    const/4 v0, 0x0

    .line 1222
    .local v0, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1223
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_14

    .line 1224
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    .line 1231
    :cond_14
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1232
    if-eqz v0, :cond_1b

    const/16 v3, 0xbb8

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    .line 1231
    :goto_1c
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->handleFailureToConnectToBtHeadsetService(I)V

    .line 1233
    return v0
.end method

.method static getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 225
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 227
    const-string v1, ""

    return-object v1

    .line 229
    :cond_9
    return-object v0
.end method

.method private handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 19
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "isActive"    # Z

    .line 839
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    if-nez p1, :cond_8

    .line 840
    return v2

    .line 842
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 843
    .local v3, "address":Ljava/lang/String;
    const-string v4, "00:00:00:00:00:00"

    .line 844
    .local v4, "dummyAddress":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    goto :goto_1a

    .line 845
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    :goto_1a
    nop

    .line 846
    .local v5, "btClass":Landroid/bluetooth/BluetoothClass;
    const v6, -0x7ffffff8

    .line 847
    .local v6, "inDevice":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object v7

    .line 848
    .local v7, "audioDevice":Landroid/media/AudioDeviceAttributes;
    invoke-static/range {p1 .. p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v8

    .line 849
    .local v8, "btDeviceName":Ljava/lang/String;
    if-nez v8, :cond_32

    .line 850
    const-string v9, "AS.BtHelper"

    const-string/jumbo v10, "handleBtScoActiveDeviceChange: btDeviceName is null, sending empty string"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v8, ""

    .line 855
    :cond_32
    const/4 v9, 0x0

    .line 856
    .local v9, "result":Z
    if-eqz v1, :cond_4a

    .line 857
    iget-object v11, v0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v12, Landroid/media/AudioDeviceAttributes;

    .line 858
    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v13

    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14, v8}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {v11, v12, v1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;Z)Z

    move-result v11

    or-int/2addr v9, v11

    goto :goto_6a

    .line 861
    :cond_4a
    const/4 v11, 0x3

    new-array v11, v11, [I

    fill-array-data v11, :array_82

    .line 866
    .local v11, "outDeviceTypes":[I
    array-length v12, v11

    const/4 v13, 0x0

    :goto_52
    if-ge v13, v12, :cond_6a

    aget v14, v11, v13

    .line 867
    .local v14, "outDeviceType":I
    iget-object v15, v0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v2, Landroid/media/AudioDeviceAttributes;

    .line 868
    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v14, v10, v8}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-virtual {v15, v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;Z)Z

    move-result v2

    or-int/2addr v9, v2

    .line 866
    .end local v14    # "outDeviceType":I
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x1

    goto :goto_52

    .line 873
    .end local v11    # "outDeviceTypes":[I
    :cond_6a
    :goto_6a
    iget-object v2, v0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v10, Landroid/media/AudioDeviceAttributes;

    .line 874
    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v6, v11, v8}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {v2, v10, v1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;Z)Z

    move-result v2

    if-eqz v2, :cond_7f

    if-eqz v9, :cond_7f

    const/4 v2, 0x1

    goto :goto_80

    :cond_7f
    const/4 v2, 0x0

    .line 876
    .end local v9    # "result":Z
    .local v2, "result":Z
    :goto_80
    return v2

    nop

    :array_82
    .array-data 4
        0x10
        0x20
        0x40
    .end array-data
.end method

.method private isAudioPathUp()Z
    .registers 7

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 370
    .local v1, "it":Ljava/util/Iterator;
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 371
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2b

    .line 372
    const/4 v0, 0x1

    .line 373
    goto :goto_2c

    .line 375
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_2b
    goto :goto_15

    .line 376
    :cond_2c
    :goto_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAudioPathUp returns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.BtHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return v0
.end method

.method private isGroupDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 420
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getDeviceType()I

    move-result v0

    .line 421
    .local v0, "type":I
    const/4 v1, 0x0

    .line 422
    .local v1, "ret":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth device type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.BtHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-ltz v0, :cond_24

    const/16 v2, 0xf

    if-gt v0, v2, :cond_24

    .line 424
    const/4 v1, 0x1

    .line 425
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isGroupDevice return "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v1
.end method

.method static isTwsPlusSwitch(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .registers 7
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "address"    # Ljava/lang/String;

    .line 239
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 240
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 241
    .local v1, "connDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x0

    if-eqz p0, :cond_3f

    if-eqz v1, :cond_3f

    .line 242
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    goto :goto_3f

    .line 245
    :cond_14
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 246
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 247
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 248
    sget-object v3, Lcom/android/server/audio/BtHelper;->mBluetoothA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v4, "AS.BtHelper"

    if-nez v3, :cond_36

    .line 249
    const-string v3, "Not a TwsPlusSwitch as previous active device was null"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return v2

    .line 252
    :cond_36
    const-string/jumbo v2, "isTwsPlusSwitch true"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v2, 0x1

    return v2

    .line 255
    :cond_3e
    return v2

    .line 243
    :cond_3f
    :goto_3f
    return v2
.end method

.method private requestScoState(II)Z
    .registers 11
    .param p1, "state"    # I
    .param p2, "scoAudioMode"    # I

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In requestScoState(), state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scoAudioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 994
    const-string v0, ", scoAudioMode="

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-ne p1, v4, :cond_139

    .line 997
    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-ne v4, v6, :cond_39

    .line 998
    const-string v4, "SCO already connected, Not broadcasting SCO_AUDIO_STATE_CONNECTING"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1000
    :cond_39
    invoke-direct {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1002
    :goto_3c
    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    packed-switch v4, :pswitch_data_1b6

    .line 1069
    :pswitch_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: failed to connect in state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-direct {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1072
    return v3

    .line 1050
    :pswitch_66
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1051
    goto/16 :goto_1b5

    .line 1053
    :pswitch_6a
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1054
    invoke-direct {p0, v2}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1055
    goto/16 :goto_1b5

    .line 1057
    :pswitch_71
    const-string/jumbo v0, "requestScoState: already in ACTIVE mode, simply return"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    goto/16 :goto_1b5

    .line 1066
    :pswitch_79
    invoke-direct {p0, v2}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1067
    goto/16 :goto_1b5

    .line 1004
    :pswitch_7e
    iput p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 1005
    const/4 v0, -0x1

    if-ne p2, v0, :cond_b4

    .line 1006
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 1007
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_b4

    .line 1008
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1009
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bluetooth_sco_channel_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1011
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1008
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 1013
    if-gt v0, v5, :cond_b2

    if-gez v0, :cond_b4

    .line 1014
    :cond_b2
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 1018
    :cond_b4
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_df

    .line 1019
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 1020
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_1b5

    .line 1022
    :cond_c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-direct {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1026
    return v3

    .line 1030
    :cond_df
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_100

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestScoState: no active device while connecting, mScoAudioMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-direct {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1035
    return v3

    .line 1037
    :cond_100
    iget v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v0, v4, v5}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 1039
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_1b5

    .line 1041
    :cond_10c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestScoState: connect to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1042
    invoke-direct {p0, v2}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed, mScoAudioMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-direct {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1046
    return v3

    .line 1074
    :cond_139
    const/16 v4, 0xa

    if-ne p1, v4, :cond_1b5

    .line 1075
    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    packed-switch v4, :pswitch_data_1c6

    .line 1110
    :pswitch_142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: failed to disconnect in state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-direct {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1113
    return v3

    .line 1077
    :pswitch_167
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_194

    .line 1078
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_175

    .line 1079
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_1b5

    .line 1081
    :cond_175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1084
    invoke-direct {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1086
    return v3

    .line 1090
    :cond_194
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_19e

    .line 1091
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1092
    invoke-direct {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1094
    goto :goto_1b5

    .line 1096
    :cond_19e
    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v0, v1, v4}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 1098
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_1b5

    .line 1100
    :cond_1aa
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1101
    invoke-direct {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1104
    goto :goto_1b5

    .line 1106
    :pswitch_1b0
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1107
    invoke-direct {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1116
    :cond_1b5
    :goto_1b5
    return v2

    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_41
        :pswitch_79
        :pswitch_71
        :pswitch_6a
        :pswitch_66
    .end packed-switch

    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_1b0
        :pswitch_142
        :pswitch_167
    .end packed-switch
.end method

.method public static scoAudioModeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "scoAudioMode"    # I

    .line 133
    packed-switch p0, :pswitch_data_26

    .line 141
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCO_MODE_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :pswitch_1d
    const-string v0, "SCO_MODE_VR"

    return-object v0

    .line 137
    :pswitch_20
    const-string v0, "SCO_MODE_VIRTUAL_CALL"

    return-object v0

    .line 135
    :pswitch_23
    const-string v0, "SCO_MODE_UNDEFINED"

    return-object v0

    :pswitch_data_26
    .packed-switch -0x1
        :pswitch_23
        :pswitch_20
        :pswitch_3
        :pswitch_1d
    .end packed-switch
.end method

.method public static scoAudioStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "scoAudioState"    # I

    .line 149
    packed-switch p0, :pswitch_data_2c

    .line 161
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCO_STATE_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :pswitch_1d
    const-string v0, "SCO_STATE_DEACTIVATING"

    return-object v0

    .line 157
    :pswitch_20
    const-string v0, "SCO_STATE_ACTIVE_INTERNAL"

    return-object v0

    .line 155
    :pswitch_23
    const-string v0, "SCO_STATE_ACTIVE_EXTERNAL"

    return-object v0

    .line 153
    :pswitch_26
    const-string v0, "SCO_STATE_ACTIVATE_REQ"

    return-object v0

    .line 151
    :pswitch_29
    const-string v0, "SCO_STATE_INACTIVE"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_3
        :pswitch_1d
    .end packed-switch
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1122
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1125
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_19

    .line 1127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    nop

    .line 1129
    return-void

    .line 1127
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    throw v2
.end method

.method private setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 9
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBtScoActiveDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 889
    invoke-direct {p0, p1}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 891
    .local v0, "previousActiveDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_52

    if-eqz p1, :cond_52

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 893
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 894
    const-string/jumbo v2, "setBtScoActiveDevice: Active device switch between twsplus devices"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void

    .line 899
    :cond_52
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 900
    return-void

    .line 902
    :cond_59
    invoke-static {}, Lcom/android/server/audio/BtHelperStub;->getInstance()Lcom/android/server/audio/BtHelperStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mSpaitalBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3, v0}, Lcom/android/server/audio/BtHelperStub;->handleSpatialAudioDeviceDisConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)V

    .line 903
    const-string v2, "00:00:00:00:00:00"

    .line 904
    .local v2, "DummyAddress":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 905
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_70

    .line 906
    const-string v4, "adapter is null, returning from setBtScoActiveDevice"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void

    .line 909
    :cond_70
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDummyDevice:Landroid/bluetooth/BluetoothDevice;

    .line 910
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_9b

    if-eqz p1, :cond_9b

    .line 913
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v4

    if-nez v4, :cond_9b

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBtScoActiveDevice() failed to add new device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 p1, 0x0

    .line 919
    :cond_9b
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    if-eqz v4, :cond_c1

    if-nez p1, :cond_c1

    .line 922
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDummyDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v4

    if-nez v4, :cond_c1

    .line 923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBtScoActiveDevice() failed to remove previous device "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_c1
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_d2

    if-nez p1, :cond_d2

    .line 929
    const-string/jumbo v4, "remove sco device from mConnectedDevices when mBluetoothHeadsetDevice and btDevice all null"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDummyDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 932
    :cond_d2
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 933
    if-nez p1, :cond_e1

    .line 934
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDummyDevice:Landroid/bluetooth/BluetoothDevice;

    .line 935
    const-string v4, "In setBtScoActiveDevice(), calling resetBluetoothSco()"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 938
    :cond_e1
    return-void
.end method

.method private updateGroupScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 430
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 431
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 432
    .local v0, "prevState":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGroupScoState: prevState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.BtHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-eq p2, v0, :cond_40

    .line 434
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .end local v0    # "prevState":Ljava/lang/Integer;
    :cond_40
    goto :goto_46

    .line 438
    :cond_41
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :goto_46
    return-void
.end method

.method private updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 355
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 356
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 357
    .local v0, "prevState":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTwsPlusScoState: prevState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.BtHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-eq p2, v0, :cond_40

    .line 359
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .end local v0    # "prevState":Ljava/lang/Integer;
    :cond_40
    goto :goto_46

    .line 363
    :cond_41
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :goto_46
    return-void
.end method


# virtual methods
.method public connectBluetoothScoAudioHelper()Z
    .registers 3

    .line 1142
    const-string v0, "AS.BtHelper"

    const-string v1, "bthelper try to connect the sco"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1144
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_17

    .line 1145
    const-string/jumbo v1, "mBluetoothHeadset == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const/4 v0, 0x0

    return v0

    .line 1148
    :cond_17
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0
.end method

.method declared-synchronized disconnectAllBluetoothProfiles()V
    .registers 3

    monitor-enter p0

    .line 686
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V

    .line 687
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V

    .line 688
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V

    .line 689
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V

    .line 690
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V

    .line 691
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 692
    monitor-exit p0

    return-void

    .line 685
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnectBluetoothScoAudioHelper()Z
    .registers 4

    .line 1132
    const-string v0, "AS.BtHelper"

    const-string v1, "bthelper try to disconnect the sco"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 1134
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v2, :cond_16

    .line 1135
    const-string/jumbo v2, "mBluetoothHeadset == null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return v1

    .line 1138
    :cond_16
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0
.end method

.method declared-synchronized disconnectHeadset()V
    .registers 2

    monitor-enter p0

    .line 709
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 710
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 711
    monitor-exit p0

    return-void

    .line 708
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mBluetoothHeadset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mBluetoothHeadsetDevice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_6d

    .line 1322
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 1323
    .local v0, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_6d

    .line 1324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mBluetoothHeadsetDevice.DeviceClass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1325
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->btDeviceClassToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1324
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    .end local v0    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mScoAudioState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->scoAudioStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mScoAudioMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mHearingAid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLeAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mA2dp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAvrcpAbsVolSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    return-void
.end method

.method declared-synchronized getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    monitor-enter p0

    .line 326
    :try_start_1
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6a

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 327
    monitor-exit p0

    return v1

    .line 329
    :cond_8
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_6a

    .line 330
    .local v0, "btCodecStatus":Landroid/bluetooth/BluetoothCodecStatus;
    if-nez v0, :cond_10

    .line 331
    monitor-exit p0

    return v1

    .line 333
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_6a

    .line 334
    .local v2, "btCodecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    if-nez v2, :cond_18

    .line 335
    monitor-exit p0

    return v1

    .line 338
    :cond_18
    :try_start_18
    const-string v1, "AS.BtHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btCodecConfig.getEncoderFormatone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getEncoderFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {}, Lcom/android/server/audio/BtHelperStub;->getInstance()Lcom/android/server/audio/BtHelperStub;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/server/audio/BtHelperStub;->checkEncoderFormat(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 341
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getEncoderFormat()I

    move-result v1
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_6a

    monitor-exit p0

    return v1

    .line 343
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_44
    :try_start_44
    const-string v1, "AS.BtHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btCodecConfig.getEncoderFormatwo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getEncoderFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->bluetoothCodecToAudioFormat(I)I

    move-result v1
    :try_end_68
    .catchall {:try_start_44 .. :try_end_68} :catchall_6a

    monitor-exit p0

    return v1

    .line 325
    .end local v0    # "btCodecStatus":Landroid/bluetooth/BluetoothCodecStatus;
    .end local v2    # "btCodecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_6a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getHeadsetAudioDevice()Landroid/media/AudioDeviceAttributes;
    .registers 2

    .line 794
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_6

    .line 795
    const/4 v0, 0x0

    return-object v0

    .line 797
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    return-object v0
.end method

.method getHeadsetAudioDummyDevice()Landroid/media/AudioDeviceAttributes;
    .registers 2

    .line 801
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDummyDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_6

    .line 802
    const/4 v0, 0x0

    return-object v0

    .line 804
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized isAvrcpAbsoluteVolumeSupported()Z
    .registers 2

    monitor-enter p0

    .line 295
    :try_start_1
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    .line 295
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isBluetoothAudioNotConnectedToEarbud()Z
    .registers 9

    .line 516
    const/4 v0, 0x1

    .line 518
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "AS.BtHelper"

    if-eqz v1, :cond_54

    .line 519
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 522
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "pDevAddr":Ljava/lang/String;
    if-eqz v1, :cond_54

    .line 524
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 525
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 526
    .local v4, "peerDev":Landroid/bluetooth/BluetoothDevice;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "peer device audio State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v6, v4}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_4e

    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v7, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 529
    invoke-virtual {v5, v7}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v5, v6, :cond_54

    .line 531
    :cond_4e
    const-string v5, "TwsPLus Case: one of eb SCO is connected"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, 0x0

    .line 536
    .end local v1    # "pDevAddr":Ljava/lang/String;
    .end local v3    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v4    # "peerDev":Landroid/bluetooth/BluetoothDevice;
    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBluetoothAudioConnectedToEarbud returns: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return v0
.end method

.method declared-synchronized isBluetoothScoOn()Z
    .registers 6

    monitor-enter p0

    .line 609
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_b

    goto :goto_2f

    .line 612
    :cond_b
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 613
    .local v0, "state":I
    const-string v2, "AS.BtHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBluetoothHeadset.getAudioState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_31

    .line 614
    const/16 v2, 0xc

    if-ne v0, v2, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    monitor-exit p0

    return v1

    .line 610
    .end local v0    # "state":I
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_2f
    :goto_2f
    monitor-exit p0

    return v1

    .line 608
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onAudioServerDiedRestoreA2dp()V
    .registers 5

    monitor-enter p0

    .line 289
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getBluetoothA2dpEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 290
    const/4 v0, 0x0

    goto :goto_d

    :cond_b
    const/16 v0, 0xa

    .line 291
    .local v0, "forMed":I
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x1

    const-string/jumbo v3, "onAudioServerDied()"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 292
    monitor-exit p0

    return-void

    .line 288
    .end local v0    # "forMed":I
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBroadcastScoConnectionState(I)V
    .registers 5
    .param p1, "state"    # I

    monitor-enter p0

    .line 674
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-ne p1, v0, :cond_7

    .line 675
    monitor-exit p0

    return-void

    .line 677
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 682
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_21

    .line 683
    monitor-exit p0

    return-void

    .line 673
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "state":I
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 10
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    monitor-enter p0

    .line 714
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 715
    :try_start_4
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_c

    .line 716
    monitor-exit p0

    return-void

    .line 713
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "profile":I
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :catchall_c
    move-exception p1

    goto :goto_6b

    .line 718
    .restart local p1    # "profile":I
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    .line 719
    :try_start_11
    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    sput-object v1, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_2a

    .line 720
    :cond_17
    const/16 v1, 0x15

    if-ne p1, v1, :cond_21

    .line 721
    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_2a

    .line 722
    :cond_21
    const/16 v1, 0x16

    if-ne p1, v1, :cond_2a

    .line 723
    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothLeAudio;

    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 725
    :cond_2a
    :goto_2a
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 726
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_c

    if-eqz v2, :cond_36

    .line 727
    monitor-exit p0

    return-void

    .line 729
    .restart local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_36
    const/4 v2, 0x0

    :try_start_37
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 730
    .local v2, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p2, v2}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v0, :cond_57

    .line 731
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v3, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    new-instance v5, Landroid/media/BluetoothProfileConnectionInfo;

    invoke-direct {v5, p1}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(I)V

    const-string/jumbo v6, "mBluetoothProfileServiceListener"

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    goto :goto_69

    .line 736
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_57
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v3, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    new-instance v5, Landroid/media/BluetoothProfileConnectionInfo;

    invoke-direct {v5, p1}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(I)V

    const-string/jumbo v6, "mBluetoothProfileServiceListener"

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    :try_end_69
    .catchall {:try_start_37 .. :try_end_69} :catchall_c

    .line 741
    :goto_69
    monitor-exit p0

    return-void

    .line 713
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local p1    # "profile":I
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :goto_6b
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .registers 9
    .param p1, "headset"    # Landroid/bluetooth/BluetoothHeadset;

    monitor-enter p0

    .line 747
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->handleCancelFailureToConnectToBtHeadsetService()V

    .line 748
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 749
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 750
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 751
    .local v1, "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 752
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 754
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_26

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    invoke-direct {p0, v3}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 756
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 757
    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_65

    if-eq v3, v2, :cond_36

    const/4 v2, 0x4

    if-eq v3, v2, :cond_36

    .line 759
    monitor-exit p0

    return-void

    .line 761
    .restart local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_36
    const/4 v2, 0x0

    .line 762
    .local v2, "status":Z
    :try_start_37
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v5, :cond_5c

    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v6, :cond_5c

    .line 763
    sparse-switch v3, :sswitch_data_68

    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    goto :goto_5c

    .line 773
    .restart local p0    # "this":Lcom/android/server/audio/BtHelper;
    :sswitch_43
    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v5, v6, v3}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v3

    move v2, v3

    .line 776
    if-eqz v2, :cond_5c

    .line 777
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_5c

    .line 765
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :sswitch_50
    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v5, v6, v3}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v3

    move v2, v3

    .line 768
    if-eqz v2, :cond_5c

    .line 769
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 782
    :cond_5c
    :goto_5c
    if-nez v2, :cond_63

    .line 783
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 784
    invoke-direct {p0, v4}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_63
    .catchall {:try_start_37 .. :try_end_63} :catchall_65

    .line 786
    :cond_63
    monitor-exit p0

    return-void

    .line 746
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "status":Z
    .end local p1    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_50
        0x4 -> :sswitch_43
    .end sparse-switch
.end method

.method onScoAudioStateChanged(I)V
    .registers 10
    .param p1, "state"    # I

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "broadcast":Z
    const/4 v1, -0x1

    .line 549
    .local v1, "scoAudioState":I
    const/4 v2, 0x4

    const/4 v3, 0x1

    const-string v4, "BtHelper.receiveBtEvent"

    const/4 v5, 0x2

    const/4 v6, 0x3

    packed-switch p1, :pswitch_data_6c

    goto :goto_56

    .line 551
    :pswitch_c
    const/4 v1, 0x1

    .line 552
    iget v7, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v7, v6, :cond_16

    if-eq v7, v2, :cond_16

    .line 554
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_1f

    .line 555
    :cond_16
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 557
    const/4 v0, 0x1

    .line 559
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 560
    goto :goto_56

    .line 586
    :pswitch_25
    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v3, v6, :cond_56

    if-eq v3, v2, :cond_56

    .line 588
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_56

    .line 562
    :pswitch_2e
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 563
    const/4 v1, 0x0

    .line 570
    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne v2, v3, :cond_4e

    .line 571
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_4e

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_4e

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 572
    invoke-static {v2, v3, v4}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 574
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 575
    const/4 v1, 0x2

    .line 576
    const/4 v0, 0x1

    .line 577
    goto :goto_56

    .line 580
    :cond_4e
    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v2, v5, :cond_53

    .line 581
    const/4 v0, 0x1

    .line 583
    :cond_53
    iput v7, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 584
    nop

    .line 594
    :cond_56
    :goto_56
    if-eqz v0, :cond_6a

    .line 595
    invoke-direct {p0, v1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 598
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v2, "newIntent":Landroid/content/Intent;
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    invoke-direct {p0, v2}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 603
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0xa
        :pswitch_2e
        :pswitch_25
        :pswitch_c
    .end packed-switch
.end method

.method declared-synchronized onSystemReady()V
    .registers 6

    monitor-enter p0

    .line 263
    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    .line 265
    const-string v0, "AS.BtHelper"

    const-string v1, "In onSystemReady(), calling resetBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 268
    invoke-direct {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 277
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 278
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_4d

    .line 279
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 281
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v4, 0x15

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 283
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v4, 0x16

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_4d
    .catchall {:try_start_2 .. :try_end_4d} :catchall_4f

    .line 286
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_4d
    monitor-exit p0

    return-void

    .line 262
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receiveBtEvent(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 484
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "broadcastType":Ljava/lang/String;
    const-string v2, "AS.BtHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receiveBtEvent action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mScoAudioState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v2, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string v2, "fake_hfp_broadcast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 488
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 489
    .local v2, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v2}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 490
    .end local v2    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    goto/16 :goto_eb

    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_4d
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_c3

    const-string v2, "fake_hfp_broadcast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c3

    .line 491
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 492
    .local v2, "btState":I
    const-string v4, "AS.BtHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receiveBtEvent ACTION_AUDIO_STATE_CHANGED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v4, "android.bluetooth.headset.EXTRA_SCO_DISC_REASON"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 495
    .local v3, "btScoDisconnectedReason":I
    const-string v4, "AS.BtHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receiveBtEvent btScoDisconnectedReason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v5, 0x13

    if-ne v3, v5, :cond_a4

    .line 497
    const/4 v5, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v5, 0x0

    .line 496
    :goto_a5
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setScoDisconnectedReason(Z)V

    .line 498
    nop

    .line 499
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 498
    invoke-direct {p0, p1, v4}, Lcom/android/server/audio/BtHelper;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 501
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 500
    invoke-direct {p0, p1, v4}, Lcom/android/server/audio/BtHelper;->checkAndUpdateGroupScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 502
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postScoAudioStateChanged(I)V

    goto :goto_ea

    .line 504
    .end local v2    # "btState":I
    .end local v3    # "btScoDisconnectedReason":I
    :cond_c3
    const-string/jumbo v2, "miui.intent.action.SPATIAL_AUDIO_DEVICE_CONNECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 505
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 506
    .local v2, "btDevice":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v4, "spatialAudioType"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 507
    .local v3, "spatialAudioType":I
    invoke-static {}, Lcom/android/server/audio/BtHelperStub;->getInstance()Lcom/android/server/audio/BtHelperStub;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v4, v2, v5, v3}, Lcom/android/server/audio/BtHelperStub;->handleSpatialAudioDeviceConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 508
    iput-object v2, p0, Lcom/android/server/audio/BtHelper;->mSpaitalBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_e9
    .catchall {:try_start_1 .. :try_end_e9} :catchall_ed

    goto :goto_eb

    .line 504
    .end local v2    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "spatialAudioType":I
    :cond_ea
    :goto_ea
    nop

    .line 511
    :cond_eb
    :goto_eb
    monitor-exit p0

    return-void

    .line 483
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "broadcastType":Ljava/lang/String;
    .end local p1    # "intent":Landroid/content/Intent;
    :catchall_ed
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized resetBluetoothSco()V
    .registers 4

    monitor-enter p0

    .line 698
    :try_start_1
    const-string v0, "AS.BtHelper"

    const-string v1, "In resetBluetoothSco(), calling clearAllScoClients()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 701
    invoke-direct {p0, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 702
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 703
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v2, "resetBluetoothSco"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 704
    monitor-exit p0

    return-void

    .line 697
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setAvrcpAbsoluteVolumeIndex(I)V
    .registers 5
    .param p1, "index"    # I

    monitor-enter p0

    .line 304
    :try_start_1
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_1a

    .line 306
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeIndex: bailing due to null mA2dp"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.BtHelper"

    .line 307
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_5e

    .line 308
    monitor-exit p0

    return-void

    .line 311
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_1a
    :try_start_1a
    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    if-nez v0, :cond_33

    .line 312
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeIndex: abs vol not supported "

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.BtHelper"

    .line 313
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_5e

    .line 314
    monitor-exit p0

    return-void

    .line 317
    :cond_33
    :try_start_33
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeIndex index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 321
    sget-object v0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V
    :try_end_5c
    .catchall {:try_start_33 .. :try_end_5c} :catchall_5e

    .line 322
    monitor-exit p0

    return-void

    .line 303
    .end local p1    # "index":I
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAvrcpAbsoluteVolumeSupported(Z)V
    .registers 5
    .param p1, "supported"    # Z

    monitor-enter p0

    .line 299
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 300
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeSupported supported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 301
    monitor-exit p0

    return-void

    .line 298
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "supported":Z
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setHearingAidVolume(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "streamType"    # I

    monitor-enter p0

    .line 652
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_f

    .line 654
    const-string v0, "AS.BtHelper"

    const-string/jumbo v1, "setHearingAidVolume: null mHearingAid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_53

    .line 656
    monitor-exit p0

    return-void

    .line 659
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_f
    :try_start_f
    div-int/lit8 v0, p1, 0xa

    const/high16 v1, 0x8000000

    invoke-static {p2, v0, v1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v0

    float-to-int v0, v0

    .line 661
    .local v0, "gainDB":I
    const/16 v1, -0x80

    if-ge v0, v1, :cond_1e

    .line 662
    const/16 v0, -0x80

    .line 665
    :cond_1e
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHearingAidVolume: calling mHearingAid.setVolume idx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p1, v0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 670
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_53

    .line 671
    monitor-exit p0

    return-void

    .line 651
    .end local v0    # "gainDB":I
    .end local p1    # "index":I
    .end local p2    # "streamType":I
    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setLeAudioVolume(III)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "maxIndex"    # I
    .param p3, "streamType"    # I

    monitor-enter p0

    .line 633
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-nez v0, :cond_f

    .line 635
    const-string v0, "AS.BtHelper"

    const-string/jumbo v1, "setLeAudioVolume: null mLeAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_53

    .line 637
    monitor-exit p0

    return-void

    .line 640
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    :cond_f
    int-to-double v0, p1

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    :try_start_18
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 643
    .local v0, "volume":I
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLeAudioVolume: calling mLeAudio.setVolume idx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " volume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v3, 0xa

    invoke-direct {v2, v3, p1, p2}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 648
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothLeAudio;->setVolume(I)V
    :try_end_51
    .catchall {:try_start_18 .. :try_end_51} :catchall_53

    .line 649
    monitor-exit p0

    return-void

    .line 632
    .end local v0    # "volume":I
    .end local p1    # "index":I
    .end local p2    # "maxIndex":I
    .end local p3    # "streamType":I
    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized startBluetoothSco(ILjava/lang/String;)Z
    .registers 7
    .param p1, "scoAudioMode"    # I
    .param p2, "eventSource"    # Ljava/lang/String;

    monitor-enter p0

    .line 621
    :try_start_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scoAudioMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mScoAudioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 622
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z

    move-result v0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    monitor-exit p0

    return v0

    .line 620
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "scoAudioMode":I
    .end local p2    # "eventSource":Ljava/lang/String;
    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized stopBluetoothSco(Ljava/lang/String;)Z
    .registers 7
    .param p1, "eventSource"    # Ljava/lang/String;

    monitor-enter p0

    .line 628
    :try_start_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scoAudioMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mScoAudioState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 629
    const/16 v0, 0xa

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z

    move-result v0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return v0

    .line 627
    .end local p0    # "this":Lcom/android/server/audio/BtHelper;
    .end local p1    # "eventSource":Ljava/lang/String;
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
