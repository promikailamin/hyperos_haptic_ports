.class public interface abstract Landroid/bluetooth/BluetoothProfile;
.super Ljava/lang/Object;
.source "BluetoothProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothProfile$ServiceListener;,
        Landroid/bluetooth/BluetoothProfile$ConnectionPolicy;,
        Landroid/bluetooth/BluetoothProfile$BtProfileState;
    }
.end annotation


# static fields
.field public static final whitelist A2DP:I = 0x2

.field public static final whitelist A2DP_SINK:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o AVRCP:I = 0xd

.field public static final whitelist AVRCP_CONTROLLER:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BATTERY:I = 0x1e

.field public static final blacklist BC_PROFILE:I = 0x23

.field public static final blacklist BROADCAST:I = 0x21

.field public static final blacklist CC_SERVER:I = 0x25

.field public static final whitelist CONNECTION_POLICY_ALLOWED:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONNECTION_POLICY_FORBIDDEN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONNECTION_POLICY_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist COORDINATED_AUDIO_UNICAST:I = 0x26

.field public static final whitelist CSIP_SET_COORDINATOR:I = 0x19

.field public static final blacklist CS_PROFILE:I = 0x27

.field public static final blacklist DUN:I = 0x1f

.field public static final whitelist EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.PREVIOUS_STATE"

.field public static final whitelist EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.STATE"

.field public static final whitelist GATT:I = 0x7

.field public static final whitelist GATT_SERVER:I = 0x8

.field public static final blacklist GROUP_CLIENT:I = 0x20

.field public static final whitelist HAP_CLIENT:I = 0x1c

.field public static final whitelist HEADSET:I = 0x1

.field public static final whitelist HEADSET_CLIENT:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HEALTH:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist HEARING_AID:I = 0x15

.field public static final whitelist HID_DEVICE:I = 0x13

.field public static final whitelist HID_HOST:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_AUDIO:I = 0x16

.field public static final whitelist LE_AUDIO_BROADCAST:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_AUDIO_BROADCAST_ASSISTANT:I = 0x1d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist LE_CALL_CONTROL:I = 0x1b

.field public static final whitelist MAP:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MAP_CLIENT:I = 0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MAX_PROFILE_ID:I = 0x27

.field public static final blacklist MCP_SERVER:I = 0x18

.field public static final whitelist OPP:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PAN:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PBAP:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PBAP_CLIENT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PC_PROFILE:I = 0x24

.field public static final greylist-max-r PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final whitelist PRIORITY_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY_ON:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist PRIORITY_UNDEFINED:I = -0x1

.field public static final whitelist SAP:I = 0xa

.field public static final whitelist STATE_CONNECTED:I = 0x2

.field public static final whitelist STATE_CONNECTING:I = 0x1

.field public static final whitelist STATE_DISCONNECTED:I = 0x0

.field public static final whitelist STATE_DISCONNECTING:I = 0x3

.field public static final blacklist VCP:I = 0x22

.field public static final whitelist VOLUME_CONTROL:I = 0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method public static whitelist getConnectionStateName(I)Ljava/lang/String;
    .registers 2
    .param p0, "connectionState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 476
    packed-switch p0, :pswitch_data_12

    .line 486
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    .line 484
    :pswitch_6
    const-string v0, "STATE_DISCONNECTING"

    return-object v0

    .line 482
    :pswitch_9
    const-string v0, "STATE_CONNECTED"

    return-object v0

    .line 480
    :pswitch_c
    const-string v0, "STATE_CONNECTING"

    return-object v0

    .line 478
    :pswitch_f
    const-string v0, "STATE_DISCONNECTED"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static whitelist getProfileName(I)Ljava/lang/String;
    .registers 2
    .param p0, "profile"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 501
    packed-switch p0, :pswitch_data_6c

    .line 571
    :pswitch_3
    const-string v0, "UNKNOWN_PROFILE"

    return-object v0

    .line 569
    :pswitch_6
    const-string v0, "CC_SERVER"

    return-object v0

    .line 567
    :pswitch_9
    const-string v0, "PC_PROFILE"

    return-object v0

    .line 565
    :pswitch_c
    const-string v0, "BC_PROFILE"

    return-object v0

    .line 559
    :pswitch_f
    const-string v0, "VCP"

    return-object v0

    .line 557
    :pswitch_12
    const-string v0, "BROADCAST"

    return-object v0

    .line 561
    :pswitch_15
    const-string v0, "GROUP_CLIENT"

    return-object v0

    .line 563
    :pswitch_18
    const-string v0, "DUN"

    return-object v0

    .line 555
    :pswitch_1b
    const-string v0, "BATTERY"

    return-object v0

    .line 553
    :pswitch_1e
    const-string v0, "LE_AUDIO_BROADCAST_ASSISTANT"

    return-object v0

    .line 551
    :pswitch_21
    const-string v0, "HAP_CLIENT"

    return-object v0

    .line 549
    :pswitch_24
    const-string v0, "LE_CALL_CONTROL"

    return-object v0

    .line 547
    :pswitch_27
    const-string v0, "LE_AUDIO_BROADCAST"

    return-object v0

    .line 545
    :pswitch_2a
    const-string v0, "CSIP_SET_COORDINATOR"

    return-object v0

    .line 543
    :pswitch_2d
    const-string v0, "MCP_SERVER"

    return-object v0

    .line 541
    :pswitch_30
    const-string v0, "VOLUME_CONTROL"

    return-object v0

    .line 539
    :pswitch_33
    const-string v0, "LE_AUDIO"

    return-object v0

    .line 537
    :pswitch_36
    const-string v0, "HEARING_AID"

    return-object v0

    .line 535
    :pswitch_39
    const-string v0, "OPP"

    return-object v0

    .line 533
    :pswitch_3c
    const-string v0, "HID_DEVICE"

    return-object v0

    .line 531
    :pswitch_3f
    const-string v0, "MAP_CLIENT"

    return-object v0

    .line 529
    :pswitch_42
    const-string v0, "PBAP_CLIENT"

    return-object v0

    .line 527
    :pswitch_45
    const-string v0, "HEADSET_CLIENT"

    return-object v0

    .line 525
    :pswitch_48
    const-string v0, "AVRCP"

    return-object v0

    .line 523
    :pswitch_4b
    const-string v0, "AVRCP_CONTROLLER"

    return-object v0

    .line 521
    :pswitch_4e
    const-string v0, "A2DP_SINK"

    return-object v0

    .line 519
    :pswitch_51
    const-string v0, "SAP"

    return-object v0

    .line 517
    :pswitch_54
    const-string v0, "MAP"

    return-object v0

    .line 515
    :pswitch_57
    const-string v0, "GATT_SERVER"

    return-object v0

    .line 513
    :pswitch_5a
    const-string v0, "GATT"

    return-object v0

    .line 511
    :pswitch_5d
    const-string v0, "PBAP"

    return-object v0

    .line 509
    :pswitch_60
    const-string v0, "PAN"

    return-object v0

    .line 507
    :pswitch_63
    const-string v0, "HID_HOST"

    return-object v0

    .line 505
    :pswitch_66
    const-string v0, "A2DP"

    return-object v0

    .line 503
    :pswitch_69
    const-string v0, "HEADSET"

    return-object v0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_69
        :pswitch_66
        :pswitch_3
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_3
        :pswitch_3
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
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


# virtual methods
.method public abstract whitelist getConnectedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method
