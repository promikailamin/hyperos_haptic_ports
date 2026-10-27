.class public Lcom/android/server/audio/AudioManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "AudioManagerShellCommand.java"


# static fields
.field public static final sDeviceTypeIntegerToString:Ljava/util/Map;

.field public static final sDeviceTypeStringToInteger:Ljava/util/Map;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mService:Lcom/android/server/audio/AudioService;


# direct methods
.method static constructor <clinit>()V
    .registers 26

    .line 644
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioManagerShellCommand;->sDeviceTypeStringToInteger:Ljava/util/Map;

    .line 646
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/audio/AudioManagerShellCommand;->sDeviceTypeIntegerToString:Ljava/util/Map;

    const/4 v2, 0x1

    .line 649
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "BUILTIN_EARPIECE"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xf

    .line 650
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "BUILTIN_MIC"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    .line 651
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "BUILTIN_SPEAKER"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x7

    .line 652
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "BLUETOOTH_SCO"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x8

    .line 653
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "BLUETOOTH_A2DP"

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x4

    .line 654
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "WIRED_HEADPHONES"

    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x3

    .line 655
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "WIRED_HEADSET"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x9

    move-object/from16 v17, v14

    .line 656
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v16, v15

    const-string v15, "HDMI"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v18, 0x12

    move-object/from16 v19, v14

    .line 657
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v18, v15

    const-string v15, "TELEPHONY"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0xd

    move-object/from16 v21, v14

    .line 658
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v20, v15

    const-string v15, "DOCK"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0xc

    move-object/from16 v23, v14

    .line 659
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v22, v15

    const-string v15, "USB_ACCESSORY"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v24, 0xb

    move-object/from16 v25, v14

    .line 660
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v24, v15

    const-string v15, "USB_DEVICE"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x16

    .line 661
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "USB_HEADSET"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0xe

    .line 662
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "FM"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x10

    .line 663
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "FM_TUNER"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x11

    .line 664
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "TV_TUNER"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x5

    .line 665
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "LINE_ANALOG"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x6

    .line 666
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "LINE_DIGITAL"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x14

    .line 667
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "IP"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x15

    .line 668
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "BUS"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x19

    .line 669
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "REMOTE_SUBMIX"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1a

    .line 670
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "BLE_HEADSET"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0xa

    .line 671
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "HDMI_ARC"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1d

    .line 672
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "HDMI_EARC"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1c

    .line 673
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "ECHO_REFERENCE"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1f

    .line 674
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "DOCK_ANALOG"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x13

    .line 675
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "AUX_LINE"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x17

    .line 676
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "HEARING_AID"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x18

    .line 678
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 677
    const-string v15, "BUILTIN_SPEAKER_SAFE"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1b

    .line 679
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "BLE_SPEAKER"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1e

    .line 680
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "BLE_BROADCAST"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x20

    .line 682
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 681
    const-string v15, "MULTICHANNEL_GROUP"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    .line 690
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v18

    move-object/from16 v0, v19

    .line 691
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v20

    move-object/from16 v0, v21

    .line 692
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v22

    move-object/from16 v0, v23

    .line 693
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v24

    move-object/from16 v0, v25

    .line 694
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    .line 695
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "USB_DEVICE"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x16

    .line 696
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "USB_HEADSET"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xe

    .line 697
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FM"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x10

    .line 698
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FM_TUNER"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x11

    .line 699
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "TV_TUNER"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 700
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "LINE_ANALOG"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 701
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "LINE_DIGITAL"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    .line 702
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "IP"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x15

    .line 703
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "BUS"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x19

    .line 704
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "REMOTE_SUBMIX"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1a

    .line 705
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "BLE_HEADSET"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    .line 706
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "HDMI_ARC"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1d

    .line 707
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "HDMI_EARC"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1c

    .line 708
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ECHO_REFERENCE"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1f

    .line 709
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "DOCK_ANALOG"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x13

    .line 710
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "AUX_LINE"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x17

    .line 711
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "HEARING_AID"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x18

    .line 713
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "BUILTIN_SPEAKER_SAFE"

    .line 712
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1b

    .line 714
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "BLE_SPEAKER"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1e

    .line 715
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "BLE_BROADCAST"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    .line 717
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MULTICHANNEL_GROUP"

    .line 716
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 50
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final adjGroupVolume()I
    .registers 6

    .line 461
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v0

    .line 462
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readDirectionArg()I

    move-result v1

    .line 463
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling AudioManager.adjustVolumeGroupVolume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", 0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->adjustVolumeGroupVolume(III)V

    return v2
.end method

.method public final adjMute()I
    .registers 5

    .line 411
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v0

    .line 412
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling AudioManager.adjustStreamVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", AudioManager.ADJUST_MUTE, 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, -0x64

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v2
.end method

.method public final adjUnmute()I
    .registers 5

    .line 422
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v0

    .line 423
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling AudioManager.adjustStreamVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", AudioManager.ADJUST_UNMUTE, 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v2
.end method

.method public final adjVolume()I
    .registers 6

    .line 433
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v0

    .line 434
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readDirectionArg()I

    move-result v1

    .line 435
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling AudioManager.adjustStreamVolume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", 0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v2
.end method

.method public final convertAudioDeviceTypeFromString(Ljava/lang/String;)I
    .registers 3

    .line 738
    sget-object p0, Lcom/android/server/audio/AudioManagerShellCommand;->sDeviceTypeStringToInteger:Ljava/util/Map;

    const/4 v0, 0x0

    .line 739
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 738
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final convertAudioDeviceTypeToString(I)Ljava/lang/String;
    .registers 3

    .line 727
    sget-object p0, Lcom/android/server/audio/AudioManagerShellCommand;->sDeviceTypeIntegerToString:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "UNKNOWN"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getConnectedOutputDevices()I
    .registers 7

    .line 487
    iget-object v0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 488
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_21

    aget-object v5, v0, v4

    .line 490
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioManagerShellCommand;->convertAudioDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 492
    :cond_21
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v3
.end method

.method public final getCurrentOutputDevice()I
    .registers 4

    .line 498
    iget-object v0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 501
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 502
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    .line 503
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_24

    .line 504
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no devices audio devices connected"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 508
    :cond_24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    .line 509
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioManagerShellCommand;->convertAudioDeviceTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final getEncodedSurroundMode()I
    .registers 4

    .line 304
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoded surround mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 305
    invoke-virtual {p0}, Landroid/media/AudioManager;->getEncodedSurroundMode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getIsStreamMute()I
    .registers 3

    .line 398
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 400
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "true"

    goto :goto_16

    :cond_14
    const-string v0, "false"

    :goto_16
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getIsSurroundFormatEnabled()I
    .registers 5

    .line 250
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 253
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no surroundFormat specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 259
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_49

    if-gez v0, :cond_21

    .line 266
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid value of surroundFormat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 269
    :cond_21
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of enabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 274
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->isSurroundFormatEnabled(I)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 261
    :catch_49
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: wrong format specified for surroundFormat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final getIsVolumeFixed()I
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    .line 406
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "true"

    goto :goto_12

    :cond_10
    const-string v0, "false"

    :goto_12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getMaxVolume()I
    .registers 5

    .line 361
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v0

    .line 362
    iget-object v1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 363
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioManager.getStreamMaxVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getMediaStrategy()Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 2

    .line 602
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x1

    .line 603
    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    .line 605
    invoke-static {p0, v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategyForAudioAttributes(Landroid/media/AudioAttributes;Z)Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object p0

    return-object p0
.end method

.method public final getMinVolume()I
    .registers 5

    .line 354
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v0

    .line 355
    iget-object v1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v1

    .line 356
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioManager.getStreamMinVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferredOutputDevice()I
    .registers 3

    .line 529
    iget-object v0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 530
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getMediaStrategy()Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    if-nez v0, :cond_18

    .line 532
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "no preferred device set"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 535
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioManagerShellCommand;->convertAudioDeviceTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getRingerMode(Ljava/lang/String;)I
    .registers 6

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch p0, :sswitch_data_38

    :goto_e
    move p0, v3

    goto :goto_30

    :sswitch_10
    const-string p0, "VIBRATE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_e

    :cond_19
    move p0, v0

    goto :goto_30

    :sswitch_1b
    const-string p0, "SILENT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_e

    :cond_24
    move p0, v1

    goto :goto_30

    :sswitch_26
    const-string p0, "NORMAL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_e

    :cond_2f
    move p0, v2

    :goto_30
    packed-switch p0, :pswitch_data_46

    return v3

    :pswitch_34
    return v1

    :pswitch_35
    return v2

    :pswitch_36
    return v0

    nop

    :sswitch_data_38
    .sparse-switch
        -0x76664f19 -> :sswitch_26
        -0x6e3577ab -> :sswitch_1b
        0x45b2014f -> :sswitch_10
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch
.end method

.method public final getSoundDoseValue()I
    .registers 4

    .line 334
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sound dose value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getCsd()F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getStreamVolume()I
    .registers 5

    .line 368
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 370
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioManager.getStreamVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getSupportedOutputDevices()I
    .registers 6

    .line 514
    iget-object v0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    .line 515
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getSupportedDeviceTypes(I)Ljava/util/Set;

    move-result-object v0

    .line 516
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 517
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 518
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioManagerShellCommand;->convertAudioDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 519
    const-string v4, "UNKNOWN"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 520
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioManagerShellCommand;->convertAudioDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 523
    :cond_34
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 56
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 58
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_1fc

    goto/16 :goto_175

    :sswitch_18
    const-string/jumbo v0, "set-hardening"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_175

    :cond_23
    const/16 v2, 0x19

    goto/16 :goto_175

    :sswitch_27
    const-string/jumbo v0, "set-volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto/16 :goto_175

    :cond_32
    const/16 v2, 0x18

    goto/16 :goto_175

    :sswitch_36
    const-string v0, "get-encoded-surround-mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto/16 :goto_175

    :cond_40
    const/16 v2, 0x17

    goto/16 :goto_175

    :sswitch_44
    const-string v0, "get-sound-dose-value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto/16 :goto_175

    :cond_4e
    const/16 v2, 0x16

    goto/16 :goto_175

    :sswitch_52
    const-string v0, "get-is-surround-format-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto/16 :goto_175

    :cond_5c
    const/16 v2, 0x15

    goto/16 :goto_175

    :sswitch_60
    const-string v0, "get-min-volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto/16 :goto_175

    :cond_6a
    const/16 v2, 0x14

    goto/16 :goto_175

    :sswitch_6e
    const-string/jumbo v0, "set-sound-dose-value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    goto/16 :goto_175

    :cond_79
    const/16 v2, 0x13

    goto/16 :goto_175

    :sswitch_7d
    const-string v0, "get-connected-output-devices"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_87

    goto/16 :goto_175

    :cond_87
    const/16 v2, 0x12

    goto/16 :goto_175

    :sswitch_8b
    const-string/jumbo v0, "set-device-volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_96

    goto/16 :goto_175

    :cond_96
    const/16 v2, 0x11

    goto/16 :goto_175

    :sswitch_9a
    const-string v0, "get-preferred-output-device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a4

    goto/16 :goto_175

    :cond_a4
    const/16 v2, 0x10

    goto/16 :goto_175

    :sswitch_a8
    const-string v0, "get-current-output-device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b2

    goto/16 :goto_175

    :cond_b2
    const/16 v2, 0xf

    goto/16 :goto_175

    :sswitch_b6
    const-string v0, "get-supported-output-devices"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c0

    goto/16 :goto_175

    :cond_c0
    const/16 v2, 0xe

    goto/16 :goto_175

    :sswitch_c4
    const-string/jumbo v0, "reset-sound-dose-timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cf

    goto/16 :goto_175

    :cond_cf
    const/16 v2, 0xd

    goto/16 :goto_175

    :sswitch_d3
    const-string/jumbo v0, "set-preferred-output-device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_de

    goto/16 :goto_175

    :cond_de
    const/16 v2, 0xc

    goto/16 :goto_175

    :sswitch_e2
    const-string v0, "adj-mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ec

    goto/16 :goto_175

    :cond_ec
    const/16 v2, 0xb

    goto/16 :goto_175

    :sswitch_f0
    const-string v0, "get-stream-volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fa

    goto/16 :goto_175

    :cond_fa
    const/16 v2, 0xa

    goto/16 :goto_175

    :sswitch_fe
    const-string/jumbo v0, "set-group-volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_109

    goto/16 :goto_175

    :cond_109
    const/16 v2, 0x9

    goto/16 :goto_175

    :sswitch_10d
    const-string/jumbo v0, "set-surround-format-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_118

    goto/16 :goto_175

    :cond_118
    const/16 v2, 0x8

    goto/16 :goto_175

    :sswitch_11c
    const-string v0, "adj-group-volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_125

    goto :goto_175

    :cond_125
    const/4 v2, 0x7

    goto :goto_175

    :sswitch_127
    const-string v0, "get-max-volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_130

    goto :goto_175

    :cond_130
    const/4 v2, 0x6

    goto :goto_175

    :sswitch_132
    const-string v0, "adj-volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13b

    goto :goto_175

    :cond_13b
    const/4 v2, 0x5

    goto :goto_175

    :sswitch_13d
    const-string v0, "is-volume-fixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_146

    goto :goto_175

    :cond_146
    const/4 v2, 0x4

    goto :goto_175

    :sswitch_148
    const-string v0, "adj-unmute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_151

    goto :goto_175

    :cond_151
    const/4 v2, 0x3

    goto :goto_175

    :sswitch_153
    const-string/jumbo v0, "set-encoded-surround-mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15d

    goto :goto_175

    :cond_15d
    const/4 v2, 0x2

    goto :goto_175

    :sswitch_15f
    const-string/jumbo v0, "set-ringer-mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_169

    goto :goto_175

    :cond_169
    const/4 v2, 0x1

    goto :goto_175

    :sswitch_16b
    const-string v0, "is-stream-mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_174

    goto :goto_175

    :cond_174
    move v2, v1

    :goto_175
    packed-switch v2, :pswitch_data_266

    return v1

    .line 101
    :pswitch_179
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setEnableHardening()I

    move-result p0

    return p0

    .line 77
    :pswitch_17e
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setVolume()I

    move-result p0

    return p0

    .line 67
    :pswitch_183
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getEncodedSurroundMode()I

    move-result p0

    return p0

    .line 71
    :pswitch_188
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getSoundDoseValue()I

    move-result p0

    return p0

    .line 63
    :pswitch_18d
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getIsSurroundFormatEnabled()I

    move-result p0

    return p0

    .line 79
    :pswitch_192
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getMinVolume()I

    move-result p0

    return p0

    .line 69
    :pswitch_197
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setSoundDoseValue()I

    move-result p0

    return p0

    .line 111
    :pswitch_19c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getConnectedOutputDevices()I

    move-result p0

    return p0

    .line 85
    :pswitch_1a1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setDeviceVolume()I

    move-result p0

    return p0

    .line 103
    :pswitch_1a6
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getPreferredOutputDevice()I

    move-result p0

    return p0

    .line 109
    :pswitch_1ab
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getCurrentOutputDevice()I

    move-result p0

    return p0

    .line 107
    :pswitch_1b0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getSupportedOutputDevices()I

    move-result p0

    return p0

    .line 73
    :pswitch_1b5
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->resetSoundDoseTimeout()I

    move-result p0

    return p0

    .line 105
    :pswitch_1ba
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setPreferredOutputDevice()I

    move-result p0

    return p0

    .line 91
    :pswitch_1bf
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->adjMute()I

    move-result p0

    return p0

    .line 83
    :pswitch_1c4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getStreamVolume()I

    move-result p0

    return p0

    .line 97
    :pswitch_1c9
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setGroupVolume()I

    move-result p0

    return p0

    .line 61
    :pswitch_1ce
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setSurroundFormatEnabled()I

    move-result p0

    return p0

    .line 99
    :pswitch_1d3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->adjGroupVolume()I

    move-result p0

    return p0

    .line 81
    :pswitch_1d8
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getMaxVolume()I

    move-result p0

    return p0

    .line 95
    :pswitch_1dd
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->adjVolume()I

    move-result p0

    return p0

    .line 89
    :pswitch_1e2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getIsVolumeFixed()I

    move-result p0

    return p0

    .line 93
    :pswitch_1e7
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->adjUnmute()I

    move-result p0

    return p0

    .line 65
    :pswitch_1ec
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setEncodedSurroundMode()I

    move-result p0

    return p0

    .line 75
    :pswitch_1f1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setRingerMode()I

    move-result p0

    return p0

    .line 87
    :pswitch_1f6
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getIsStreamMute()I

    move-result p0

    return p0

    nop

    :sswitch_data_1fc
    .sparse-switch
        -0x7eb47bdd -> :sswitch_16b
        -0x7352c258 -> :sswitch_15f
        -0x6fa638d8 -> :sswitch_153
        -0x67d35be8 -> :sswitch_148
        -0x67bb0d3c -> :sswitch_13d
        -0x6610e100 -> :sswitch_132
        -0x5e7c6186 -> :sswitch_127
        -0x5710ee72 -> :sswitch_11c
        -0x4fdec891 -> :sswitch_10d
        -0x4e4a0a4d -> :sswitch_fe
        -0x4c94fc30 -> :sswitch_f0
        -0x422fb481 -> :sswitch_e2
        -0x35922815 -> :sswitch_d3
        -0x1b6c3313 -> :sswitch_c4
        -0x18b6fa59 -> :sswitch_b6
        -0xf443e9 -> :sswitch_a8
        0x1aa10edf -> :sswitch_9a
        0x1c836046 -> :sswitch_8b
        0x2a7b05ec -> :sswitch_7d
        0x339d8d4a -> :sswitch_6e
        0x34db55cc -> :sswitch_60
        0x37e12d0e -> :sswitch_52
        0x580780d6 -> :sswitch_44
        0x5e162b1c -> :sswitch_36
        0x6a2942e5 -> :sswitch_27
        0x6d8904e3 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_266
    .packed-switch 0x0
        :pswitch_1f6
        :pswitch_1f1
        :pswitch_1ec
        :pswitch_1e7
        :pswitch_1e2
        :pswitch_1dd
        :pswitch_1d8
        :pswitch_1d3
        :pswitch_1ce
        :pswitch_1c9
        :pswitch_1c4
        :pswitch_1bf
        :pswitch_1ba
        :pswitch_1b5
        :pswitch_1b0
        :pswitch_1ab
        :pswitch_1a6
        :pswitch_1a1
        :pswitch_19c
        :pswitch_197
        :pswitch_192
        :pswitch_18d
        :pswitch_188
        :pswitch_183
        :pswitch_17e
        :pswitch_179
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 118
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 119
    const-string v0, "Audio manager commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 123
    const-string v0, "  set-surround-format-enabled SURROUND_FORMAT IS_ENABLED"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    const-string v0, "    Enables/disabled the SURROUND_FORMAT based on IS_ENABLED"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    const-string v0, "  get-is-surround-format-enabled SURROUND_FORMAT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const-string v0, "    Returns if the SURROUND_FORMAT is enabled"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const-string v0, "  set-encoded-surround-mode SURROUND_SOUND_MODE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v0, "    Sets the encoded surround sound mode to SURROUND_SOUND_MODE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    const-string v0, "  get-encoded-surround-mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v0, "    Returns the encoded surround sound mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v0, "  set-sound-dose-value"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string v0, "    Sets the current sound dose value"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    const-string v0, "  get-sound-dose-value"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v0, "    Returns the current sound dose value"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    const-string v0, "  reset-sound-dose-timeout"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const-string v0, "    Resets the sound dose timeout used for momentary exposure"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string v0, "  set-ringer-mode NORMAL|SILENT|VIBRATE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    const-string v0, "    Sets the Ringer mode to one of NORMAL|SILENT|VIBRATE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    const-string v0, "  set-volume STREAM_TYPE VOLUME_INDEX"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    const-string v0, "    Sets the volume for STREAM_TYPE to VOLUME_INDEX"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    const-string v0, "  get-min-volume STREAM_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const-string v0, "    Gets the min volume for STREAM_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    const-string v0, "  get-max-volume STREAM_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const-string v0, "    Gets the max volume for STREAM_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    const-string v0, "  get-stream-volume STREAM_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    const-string v0, "    Gets the volume for STREAM_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    const-string v0, "  set-device-volume STREAM_TYPE VOLUME_INDEX NATIVE_DEVICE_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    const-string v0, "    Sets for NATIVE_DEVICE_TYPE the STREAM_TYPE volume to VOLUME_INDEX"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    const-string v0, "  is-stream-mute STREAM_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v0, "    Returns whether the STREAM_TYPE is muted."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    const-string v0, "  is-volume-fixed"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    const-string v0, "    Returns whether the volume is fixed for the device"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    const-string v0, "  adj-mute STREAM_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    const-string v0, "    mutes the STREAM_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    const-string v0, "  adj-unmute STREAM_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    const-string v0, "    unmutes the STREAM_TYPE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    const-string v0, "  adj-volume STREAM_TYPE <RAISE|LOWER|MUTE|UNMUTE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    const-string v0, "    Adjusts the STREAM_TYPE volume given the specified direction"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    const-string v0, "  set-group-volume GROUP_ID VOLUME_INDEX"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    const-string v0, "    Sets the volume for GROUP_ID to VOLUME_INDEX"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    const-string v0, "  adj-group-volume GROUP_ID <RAISE|LOWER|MUTE|UNMUTE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    const-string v0, "    Adjusts the group volume for GROUP_ID given the specified direction"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    const-string v0, "  set-enable-hardening <1|0>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    const-string v0, "    Enables full audio hardening enforcement, disabling any exemptions"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    const-string v0, "  set-preferred-output-device AUDIO_DEVICE_TYPE [ADDRESS]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    const-string v0, "    Sets the output audio device to AUDIO_DEVICE_TYPE (e.g. AUTO, HDMI, BLUETOOTH_A2DP, BUILTIN_SPEAKER) for media strategy. AUTO means that the preferred device will be removed and the system will select the default device. Optionally, the ADDRESS can be provided to select a specific device. \'get-supported-output-devices\' and \'get-connected-output-devices\' commands to see available output devices"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    const-string v0, "  get-supported-output-devices"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string v0, "    Returns a list of supported audio output devices using AudioManager.getSupportedDeviceTypes(AudioManager.GET_DEVICES_OUTPUTS)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    const-string v0, "  get-current-output-device"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const-string v0, "    Returns the current output audio device for the media strategy if preferred device is not set then returns first device in the connected list of devices with media strategy using AudioManager.getDevicesForAttributes(<AudioAttributes.USAGE_MEDIA>)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string v0, " get-connected-output-devices"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string v0, "    Returns a list of all connected output devices using AudioManager.getDevices(AudioManager.GET_DEVICES_OUTPUTS)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    const-string v0, "  get-preferred-output-device"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    const-string v0, "    Returns the preferred output audio device for the media strategy"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final readDirectionArg()I
    .registers 4

    .line 628
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 635
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p0, :sswitch_data_72

    :goto_12
    move p0, v2

    goto :goto_3f

    :sswitch_14
    const-string p0, "RAISE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 p0, 0x3

    goto :goto_3f

    :sswitch_1f
    const-string p0, "LOWER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_12

    :cond_28
    const/4 p0, 0x2

    goto :goto_3f

    :sswitch_2a
    const-string p0, "MUTE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_12

    :cond_33
    move p0, v1

    goto :goto_3f

    :sswitch_35
    const-string p0, "UNMUTE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_12

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    packed-switch p0, :pswitch_data_84

    .line 640
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong direction argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_59
    return v1

    :pswitch_5a
    return v2

    :pswitch_5b
    const/16 p0, -0x64

    return p0

    :pswitch_5e
    const/16 p0, 0x64

    return p0

    .line 631
    :cond_61
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no argument provided"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No argument provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_72
    .sparse-switch
        -0x6a849fce -> :sswitch_35
        0x244a19 -> :sswitch_2a
        0x45432e1 -> :sswitch_1f
        0x4a22fcc -> :sswitch_14
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
    .end packed-switch
.end method

.method public final readIntArg()I
    .registers 4

    .line 609
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 618
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    .line 620
    :catch_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: wrong format for argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong format for argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 612
    :cond_3a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no argument provided"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No argument provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resetSoundDoseTimeout()I
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setCsd(F)V

    .line 340
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Reset sound dose momentary exposure timeout"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setDeviceVolume()I
    .registers 6

    .line 375
    iget-object v0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 376
    const-string v1, "audio_device_volume"

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceVolumeManager;

    .line 379
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v1

    .line 380
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v2

    .line 381
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v3

    .line 383
    new-instance v4, Landroid/media/VolumeInfo$Builder;

    invoke-direct {v4, v1}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/media/VolumeInfo$Builder;->setVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    move-result-object v1

    .line 384
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    const-string v4, "foo"

    invoke-direct {v2, v3, v4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling AudioDeviceVolumeManager.setDeviceVolume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioDeviceVolumeManager;->setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setEnableHardening()I
    .registers 6

    .line 475
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    .line 476
    :goto_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling AudioManager.setEnableHardening("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    :try_start_27
    iget-object v2, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setEnableHardening(Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_46

    :catch_2d
    move-exception v0

    .line 481
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_46
    return v1
.end method

.method public final setEncodedSurroundMode()I
    .registers 3

    .line 279
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 282
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no encodedSurroundMode specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 288
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_28

    if-gez v0, :cond_21

    .line 295
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid value of encodedSurroundMode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 299
    :cond_21
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setEncodedSurroundMode(I)Z

    const/4 p0, 0x0

    return p0

    .line 290
    :catch_28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: wrong format specified for encoded surround mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final setGroupVolume()I
    .registers 6

    .line 447
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v0

    .line 448
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v1

    .line 449
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling AudioManager.setVolumeGroupVolumeIndex("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", 0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->setVolumeGroupVolumeIndex(III)V

    return v2
.end method

.method public final setPreferredOutputDevice()I
    .registers 11

    .line 540
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f4

    .line 541
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_f4

    .line 548
    :cond_f
    const-string v2, "AUTO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    .line 549
    iget-object v0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getMediaStrategy()Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->removePreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 551
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "failed to set to default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 554
    :cond_2e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "successfully set to default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 558
    :cond_39
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioManagerShellCommand;->convertAudioDeviceTypeFromString(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5d

    .line 560
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: invalid output device type provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'get-supported-audio-devices\' can be used to get supported devices"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 566
    :cond_5d
    iget-object v4, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v4

    .line 567
    array-length v5, v4

    if-nez v5, :cond_71

    .line 568
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no devices connected"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 572
    :cond_71
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 575
    array-length v6, v4

    move v7, v3

    :goto_77
    if-ge v7, v6, :cond_91

    aget-object v8, v4, v7

    .line 576
    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v9

    if-ne v9, v2, :cond_8e

    if-eqz v5, :cond_92

    .line 577
    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8e

    goto :goto_92

    :cond_8e
    add-int/lit8 v7, v7, 0x1

    goto :goto_77

    :cond_91
    const/4 v8, 0x0

    :cond_92
    :goto_92
    if-nez v8, :cond_c6

    .line 584
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: no device connected for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_b9

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " with address: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bb

    :cond_b9
    const-string v0, ""

    :goto_bb
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 589
    :cond_c6
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    .line 590
    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result v2

    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 592
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getMediaStrategy()Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/media/AudioManager;->setPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    if-nez v0, :cond_e9

    .line 594
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "failed to set preferred device"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 597
    :cond_e9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "successfully set preferred device"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 542
    :cond_f4
    :goto_f4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no output device type provided\n\'get-connected-output-devices\' can be used to get supported devices"

    .line 543
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final setRingerMode()I
    .registers 4

    .line 221
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 223
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no ringer mode specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 227
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioManagerShellCommand;->getRingerMode(Ljava/lang/String;)I

    move-result v0

    .line 228
    invoke-static {v0}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v2

    if-nez v2, :cond_25

    .line 229
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid value of ringerMode, should be one of NORMAL|SILENT|VIBRATE"

    .line 230
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 236
    :cond_25
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setSoundDoseValue()I
    .registers 4

    .line 310
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 313
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no sound dose value specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 319
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_2b

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_24

    .line 326
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid value of sound dose"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 329
    :cond_24
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setCsd(F)V

    const/4 p0, 0x0

    return p0

    .line 321
    :catch_2b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: wrong format specified for sound dose"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final setSurroundFormatEnabled()I
    .registers 4

    .line 189
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_15

    .line 193
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no surroundFormat specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_15
    if-nez v1, :cond_21

    .line 198
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no enabled value for surroundFormat specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 205
    :cond_21
    :try_start_21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_29} :catch_3c

    if-gez v0, :cond_35

    .line 212
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid value of surroundFormat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 216
    :cond_35
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->setSurroundFormatEnabled(IZ)Z

    const/4 p0, 0x0

    return p0

    .line 208
    :catch_3c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: wrong format specified for surroundFormat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final setVolume()I
    .registers 6

    .line 345
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v0

    .line 346
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->readIntArg()I

    move-result v1

    .line 347
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling AudioManager.setStreamVolume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", 0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v2
.end method
