.class public Lcom/android/server/usb/UsbPortManager;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbPortManager$PortInfo;
    }
.end annotation


# static fields
.field private static final COMBO_SINK_DEVICE:I

.field private static final COMBO_SINK_HOST:I

.field private static final COMBO_SOURCE_DEVICE:I

.field private static final COMBO_SOURCE_HOST:I

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final MSG_UPDATE_PORTS:I = 0x1

.field private static final PORT_INFO:Ljava/lang/String; = "port_info"

.field private static final TAG:Ljava/lang/String; = "UsbPortManager"


# instance fields
.field private final mConnected:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContaminantStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPortContaminatedNotificationId:I

.field private final mLock:Ljava/lang/Object;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$PortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimulatedPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/hal/port/RawPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private mTransactionId:J

.field private mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNotificationManager(Lcom/android/server/usb/UsbPortManager;Landroid/app/NotificationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePortsLocked(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 113
    nop

    .line 114
    const/4 v0, 0x1

    invoke-static {v0, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    sput v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 115
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    sput v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    .line 117
    nop

    .line 118
    invoke-static {v1, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    .line 119
    invoke-static {v1, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 143
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 146
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 151
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 155
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    .line 1153
    new-instance v0, Lcom/android/server/usb/UsbPortManager$1;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbPortManager$1;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    .line 170
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 171
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/usb/hal/port/UsbPortHalInstance;->getInstance(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)Lcom/android/server/usb/hal/port/UsbPortHal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 172
    const/4 v1, 0x3

    const-string v2, "getInstance done"

    invoke-static {v1, v0, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZIIZILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 44
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "supportedContaminantProtectionModes"    # I
    .param p4, "currentMode"    # I
    .param p5, "canChangeMode"    # Z
    .param p6, "currentPowerRole"    # I
    .param p7, "canChangePowerRole"    # Z
    .param p8, "currentDataRole"    # I
    .param p9, "canChangeDataRole"    # Z
    .param p10, "supportsEnableContaminantPresenceProtection"    # Z
    .param p11, "contaminantProtectionStatus"    # I
    .param p12, "supportsEnableContaminantPresenceDetection"    # Z
    .param p13, "contaminantDetectionStatus"    # I
    .param p14, "usbDataStatus"    # I
    .param p15, "powerTransferLimited"    # Z
    .param p16, "powerBrickConnectionStatus"    # I
    .param p17, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 902
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v1, p4

    move/from16 v15, p6

    move/from16 v14, p8

    move/from16 v13, p10

    move/from16 v12, p12

    move-object/from16 v11, p17

    and-int/lit8 v2, v9, 0x3

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eq v2, v3, :cond_50

    .line 903
    const/4 v2, 0x0

    .line 904
    .end local p5    # "canChangeMode":Z
    .local v2, "canChangeMode":Z
    if-eqz v1, :cond_4b

    if-eq v1, v9, :cond_4b

    .line 905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring inconsistent current mode from USB port driver: supportedModes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 906
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", currentMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 907
    invoke-static/range {p4 .. p4}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 905
    invoke-static {v4, v11, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 908
    const/4 v1, 0x0

    move/from16 v23, v1

    move/from16 v24, v2

    .end local p4    # "currentMode":I
    .local v1, "currentMode":I
    goto :goto_54

    .line 915
    .end local v1    # "currentMode":I
    .restart local p4    # "currentMode":I
    :cond_4b
    move/from16 v23, v1

    move/from16 v24, v2

    goto :goto_54

    .line 902
    .end local v2    # "canChangeMode":Z
    .restart local p5    # "canChangeMode":Z
    :cond_50
    move/from16 v24, p5

    move/from16 v23, v1

    .line 915
    .end local p4    # "currentMode":I
    .end local p5    # "canChangeMode":Z
    .local v23, "currentMode":I
    .local v24, "canChangeMode":Z
    :goto_54
    invoke-static {v15, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    .line 917
    .local v1, "supportedRoleCombinations":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v23, :cond_9c

    if-eqz v15, :cond_9c

    if-eqz v14, :cond_9c

    .line 918
    if-eqz p7, :cond_73

    if-eqz p9, :cond_73

    .line 921
    sget v5, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    or-int/2addr v5, v6

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    or-int/2addr v5, v6

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v5, v6

    or-int/2addr v1, v5

    move/from16 v25, v1

    goto :goto_9e

    .line 924
    :cond_73
    if-eqz p7, :cond_82

    .line 927
    invoke-static {v3, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v5

    or-int/2addr v1, v5

    .line 929
    invoke-static {v2, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v5

    or-int/2addr v1, v5

    move/from16 v25, v1

    goto :goto_9e

    .line 931
    :cond_82
    if-eqz p9, :cond_91

    .line 934
    invoke-static {v15, v3}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v5

    or-int/2addr v1, v5

    .line 936
    invoke-static {v15, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v5

    or-int/2addr v1, v5

    move/from16 v25, v1

    goto :goto_9e

    .line 938
    :cond_91
    if-eqz v24, :cond_9c

    .line 942
    sget v5, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v5, v6

    or-int/2addr v1, v5

    move/from16 v25, v1

    goto :goto_9e

    .line 947
    :cond_9c
    move/from16 v25, v1

    .end local v1    # "supportedRoleCombinations":I
    .local v25, "supportedRoleCombinations":I
    :goto_9e
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 948
    .local v10, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v10, :cond_eb

    .line 949
    new-instance v16, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/hardware/usb/UsbManager;

    move-object/from16 v1, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p10

    move/from16 v7, p12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbPortManager$PortInfo;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V

    .line 953
    .end local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move-object v10, v1

    move-object v5, v11

    move/from16 v11, v23

    move v6, v12

    move/from16 v12, v24

    move v7, v13

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, v25

    move/from16 v18, p11

    move/from16 v19, p13

    move/from16 v20, p14

    move/from16 v21, p15

    move/from16 v22, p16

    invoke-virtual/range {v10 .. v22}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZIIIIZI)Z

    .line 959
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a1

    .line 962
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_eb
    move-object v5, v11

    move v6, v12

    move v7, v13

    iget-object v1, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v1

    const-string v11, ", current="

    if-eq v9, v1, :cond_124

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring inconsistent list of supported modes from USB port driver (should be immutable): previous="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 966
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v12

    .line 965
    invoke-static {v12}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 967
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 963
    invoke-static {v4, v5, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 970
    :cond_124
    iget-object v1, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 971
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v1

    if-eq v7, v1, :cond_150

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring inconsistent supportsEnableContaminantPresenceProtectionUSB port driver (should be immutable): previous="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 976
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-static {v4, v5, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 980
    :cond_150
    iget-object v1, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 981
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v1

    if-eq v6, v1, :cond_17c

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring inconsistent supportsEnableContaminantPresenceDetection USB port driver (should be immutable): previous="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 986
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-static {v4, v5, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 991
    :cond_17c
    move-object v1, v10

    .end local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move/from16 v11, v23

    move/from16 v12, v24

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, v25

    move/from16 v18, p11

    move/from16 v19, p13

    move/from16 v20, p14

    move/from16 v21, p15

    move/from16 v22, p16

    invoke-virtual/range {v10 .. v22}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZIIIIZI)Z

    move-result v4

    if-eqz v4, :cond_19e

    .line 997
    iput v3, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_1a0

    .line 999
    :cond_19e
    iput v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 1002
    :goto_1a0
    move-object v10, v1

    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :goto_1a1
    return-void
.end method

.method private static convertContaminantDetectionStatusToProto(I)I
    .registers 2
    .param p0, "contaminantDetectionStatus"    # I

    .line 1031
    packed-switch p0, :pswitch_data_e

    .line 1041
    const/4 v0, 0x0

    return v0

    .line 1039
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 1037
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 1035
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 1033
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private disableLimitPowerTransferIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 11
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1076
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1077
    return-void

    .line 1080
    :cond_f
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1081
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1082
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1084
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v0, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usb/UsbPortManager;->enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1086
    :cond_47
    return-void
.end method

.method private enableContaminantDetectionIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1060
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1061
    return-void

    .line 1064
    :cond_f
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1065
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1066
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    .line 1071
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 1073
    :cond_3d
    return-void
.end method

.method private handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1013
    return-void
.end method

.method private handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1017
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetectionIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1018
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->disableLimitPowerTransferIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1019
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1020
    return-void
.end method

.method private handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1005
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 1006
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logToStatsd(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1007
    invoke-direct {p0}, Lcom/android/server/usb/UsbPortManager;->updateContaminantNotification()V

    .line 1008
    return-void
.end method

.method private handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1024
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1025
    return-void
.end method

.method public static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p0, "priority"    # I
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .line 1140
    const-string v0, "UsbPortManager"

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 1141
    if-eqz p1, :cond_a

    .line 1142
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1144
    :cond_a
    return-void
.end method

.method public static logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1147
    const-string v0, "UsbPortManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1148
    if-eqz p0, :cond_1b

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    :cond_1b
    return-void
.end method

.method private logToStatsd(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1090
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/16 v1, 0x92

    const/4 v2, 0x0

    const/16 v3, 0x46

    if-nez v0, :cond_7e

    .line 1091
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1093
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1094
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1097
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1094
    invoke-static {v3, v2, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    .line 1099
    :cond_36
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    :cond_41
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1104
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_72

    .line 1106
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1107
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 1108
    invoke-static {v2}, Lcom/android/server/usb/UsbPortManager;->convertContaminantDetectionStatusToProto(I)I

    move-result v2

    .line 1106
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 1111
    :cond_72
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    :cond_7d
    return-void

    .line 1116
    :cond_7e
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1117
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1118
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    if-eq v0, v4, :cond_d2

    .line 1119
    :cond_a6
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    nop

    .line 1121
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 1122
    const/4 v2, 0x1

    goto :goto_c7

    .line 1123
    :cond_c6
    nop

    :goto_c7
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1124
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1120
    invoke-static {v3, v2, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    .line 1127
    :cond_d2
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1128
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1129
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    if-eq v0, v2, :cond_122

    .line 1130
    :cond_fa
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1131
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1130
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1133
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1135
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    .line 1134
    invoke-static {v2}, Lcom/android/server/usb/UsbPortManager;->convertContaminantDetectionStatusToProto(I)I

    move-result v2

    .line 1132
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 1137
    :cond_122
    return-void
.end method

.method private sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .registers 5
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 1046
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1050
    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-static {v1}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v1

    const-string/jumbo v2, "port"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1051
    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string/jumbo v2, "portStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1055
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1057
    return-void
.end method

.method private toHalUsbDataRole(I)I
    .registers 3
    .param p1, "usbDataRole"    # I

    .line 486
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 487
    return v0

    .line 489
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private toHalUsbMode(I)I
    .registers 3
    .param p1, "usbMode"    # I

    .line 500
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 501
    const/4 v0, 0x2

    return v0

    .line 503
    :cond_5
    return v0
.end method

.method private toHalUsbPowerRole(I)I
    .registers 3
    .param p1, "usbPowerRole"    # I

    .line 493
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 494
    return v0

    .line 496
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private updateContaminantNotification()V
    .registers 19

    .line 190
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 191
    .local v1, "currentPortInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 192
    .local v2, "r":Landroid/content/res/Resources;
    const/4 v3, 0x2

    .line 196
    .local v3, "contaminantStatus":I
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 197
    .local v5, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    iget-object v8, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v3

    .line 198
    if-eq v3, v6, :cond_2e

    if-ne v3, v7, :cond_2d

    goto :goto_2e

    .line 203
    .end local v5    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_2d
    goto :goto_14

    .line 200
    .restart local v5    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_2e
    :goto_2e
    move-object v1, v5

    .line 201
    nop

    .line 208
    .end local v5    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_30
    const v4, 0x106001c

    const/16 v5, 0x35

    const/16 v8, 0x34

    const/4 v9, 0x0

    if-ne v3, v6, :cond_de

    iget v10, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    if-eq v10, v8, :cond_de

    .line 211
    if-ne v10, v5, :cond_47

    .line 213
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v9, v10, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 217
    :cond_47
    iput v8, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 218
    const v5, 0x1040963

    .line 219
    .local v5, "titleRes":I
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 220
    .local v6, "title":Ljava/lang/CharSequence;
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 221
    .local v8, "channel":Ljava/lang/String;
    const v10, 0x1040962

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 224
    .local v10, "message":Ljava/lang/CharSequence;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    const v12, 0x10402ce

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 228
    iget-object v12, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-static {v12}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v12

    const-string/jumbo v13, "port"

    invoke-virtual {v11, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    iget-object v12, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string/jumbo v13, "portStatus"

    invoke-virtual {v11, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    iget-object v12, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/high16 v15, 0x4000000

    const/16 v16, 0x0

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v14, v11

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 235
    .local v12, "pi":Landroid/app/PendingIntent;
    new-instance v13, Landroid/app/Notification$Builder;

    iget-object v14, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 237
    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {v14, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 241
    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 242
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 243
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 244
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v7, 0x108008a

    .line 245
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 247
    invoke-virtual {v7, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    .line 246
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 248
    .local v4, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 249
    .local v7, "notification":Landroid/app/Notification;
    iget-object v13, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v14, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v9, v14, v7, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "titleRes":I
    .end local v6    # "title":Ljava/lang/CharSequence;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "channel":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/CharSequence;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "pi":Landroid/app/PendingIntent;
    goto :goto_146

    .line 253
    :cond_de
    if-eq v3, v6, :cond_146

    iget v6, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    if-ne v6, v8, :cond_146

    .line 256
    iget-object v8, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v6, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 258
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 262
    const/4 v6, 0x2

    if-ne v3, v6, :cond_147

    .line 263
    iput v5, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 265
    const v5, 0x1040965

    .line 266
    .restart local v5    # "titleRes":I
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 267
    .restart local v6    # "title":Ljava/lang/CharSequence;
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 268
    .restart local v8    # "channel":Ljava/lang/String;
    const v10, 0x1040964

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 271
    .restart local v10    # "message":Ljava/lang/CharSequence;
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0x1080571

    .line 272
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 273
    invoke-virtual {v11, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {v12, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 277
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 278
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 279
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 281
    invoke-virtual {v7, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    .line 280
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 282
    .restart local v4    # "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 283
    .restart local v7    # "notification":Landroid/app/Notification;
    iget-object v11, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v12, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v9, v12, v7, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_147

    .line 253
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "titleRes":I
    .end local v6    # "title":Ljava/lang/CharSequence;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "channel":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/CharSequence;
    :cond_146
    :goto_146
    nop

    .line 287
    :cond_147
    :goto_147
    return-void
.end method

.method private updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V
    .registers 25
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/hal/port/RawPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 825
    .local p2, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/hal/port/RawPortInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "i":I
    :goto_a
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_1b

    .line 826
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    const/4 v3, 0x3

    iput v3, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    move v1, v2

    goto :goto_a

    .line 830
    .end local v2    # "i":I
    :cond_1b
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 831
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 832
    .local v14, "count":I
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_2b
    if-ge v13, v14, :cond_77

    .line 833
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 834
    .local v12, "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    iget-object v1, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    iget v3, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    iget v4, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    iget-boolean v5, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    iget v6, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    iget-boolean v7, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    iget v8, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    iget-boolean v9, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    iget-boolean v10, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    iget v11, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    iget-boolean v0, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    move-object/from16 v18, v1

    move-object v1, v12

    .end local v12    # "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    .local v1, "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    move v12, v0

    iget v0, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    move/from16 v19, v13

    .end local v13    # "i":I
    .local v19, "i":I
    move v13, v0

    iget v0, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    move/from16 v20, v14

    .end local v14    # "count":I
    .local v20, "count":I
    move v14, v0

    iget-boolean v0, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    move v15, v0

    iget v0, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    move-object/from16 v21, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v21

    .end local v1    # "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    .local v18, "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    invoke-direct/range {v0 .. v17}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZIIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 832
    .end local v18    # "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    add-int/lit8 v13, v19, 0x1

    move-object/from16 v15, p1

    move/from16 v14, v20

    .end local v19    # "i":I
    .restart local v13    # "i":I
    goto :goto_2b

    .end local v20    # "count":I
    .restart local v14    # "count":I
    :cond_77
    move/from16 v19, v13

    move/from16 v20, v14

    .line 847
    .end local v13    # "i":I
    .end local v14    # "count":I
    goto :goto_bc

    .line 848
    :cond_7c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_80
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 849
    .local v0, "currentPortInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    iget-object v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    iget v3, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    iget v4, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    iget-boolean v5, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    iget v6, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    iget-boolean v7, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    iget v8, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    iget-boolean v9, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    iget-boolean v10, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    iget v11, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    iget-boolean v12, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    iget v13, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    iget v14, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    iget-boolean v15, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    move-object/from16 v19, v1

    iget v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    move/from16 v16, v1

    move-object/from16 v20, v0

    .end local v0    # "currentPortInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    .local v20, "currentPortInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    move-object/from16 v0, p0

    move-object/from16 v17, p1

    move-object/from16 v1, v19

    invoke-direct/range {v0 .. v17}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZIIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 861
    .end local v20    # "currentPortInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    goto :goto_80

    .line 866
    :cond_bc
    :goto_bc
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "i":I
    :goto_c4
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    if-lez v1, :cond_f9

    .line 867
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 868
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    iget v3, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    const/4 v4, 0x2

    packed-switch v3, :pswitch_data_fc

    :pswitch_d6
    move-object/from16 v3, p1

    goto :goto_f7

    .line 878
    :pswitch_d9
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 879
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 880
    move-object/from16 v3, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/usb/UsbPortManager;->handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_f7

    .line 874
    :pswitch_e7
    move-object/from16 v3, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/usb/UsbPortManager;->handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 875
    iput v4, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 876
    goto :goto_f7

    .line 870
    :pswitch_ef
    move-object/from16 v3, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/usb/UsbPortManager;->handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 871
    iput v4, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 872
    nop

    .line 883
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :goto_f7
    move v1, v2

    goto :goto_c4

    .line 866
    :cond_f9
    move-object/from16 v3, p1

    .line 884
    .end local v2    # "i":I
    return-void

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_e7
        :pswitch_d6
        :pswitch_d9
    .end packed-switch
.end method


# virtual methods
.method public addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 684
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 686
    const-string v1, "Port with same name already exists.  Please remove it first."

    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 687
    monitor-exit v0

    return-void

    .line 690
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding simulated port: portId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supportedModes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 691
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/usb/hal/port/RawPortInfo;

    invoke-direct {v2, p1, p2}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 695
    monitor-exit v0

    .line 696
    return-void

    .line 695
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 13
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "canChangeMode"    # Z
    .param p4, "powerRole"    # I
    .param p5, "canChangePowerRole"    # Z
    .param p6, "dataRole"    # I
    .param p7, "canChangeDataRole"    # Z
    .param p8, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 701
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 703
    .local v1, "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    if-nez v1, :cond_14

    .line 704
    const-string v2, "Cannot connect simulated port which does not exist."

    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 705
    monitor-exit v0

    return-void

    .line 708
    :cond_14
    if-eqz p2, :cond_ad

    if-eqz p4, :cond_ad

    if-nez p6, :cond_1c

    goto/16 :goto_ad

    .line 714
    :cond_1c
    iget v2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    and-int/2addr v2, p2

    if-nez v2, :cond_3d

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulated port does not support mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 716
    monitor-exit v0

    return-void

    .line 719
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 720
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", canChangeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", powerRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 722
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", canChangePowerRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 724
    invoke-static {p6}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", canChangeDataRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 726
    iput p2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 727
    iput-boolean p3, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 728
    iput p4, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 729
    iput-boolean p5, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 730
    iput p6, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 731
    iput-boolean p7, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    .line 732
    const/4 v2, 0x0

    invoke-direct {p0, p8, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 733
    .end local v1    # "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    monitor-exit v0

    .line 734
    return-void

    .line 709
    .restart local v1    # "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    :cond_ad
    :goto_ad
    const-string v2, "Cannot connect simulated port in null mode, power role, or data role."

    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 711
    monitor-exit v0

    return-void

    .line 733
    .end local v1    # "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    :catchall_b4
    move-exception v1

    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_3 .. :try_end_b6} :catchall_b4

    throw v1
.end method

.method public disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 758
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 760
    .local v1, "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    if-nez v1, :cond_14

    .line 761
    const-string v2, "Cannot disconnect simulated port which does not exist."

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 762
    monitor-exit v0

    return-void

    .line 765
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 766
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 767
    iput-boolean v2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 768
    iput v2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 769
    iput-boolean v2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 770
    iput v2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 771
    iput-boolean v2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    .line 772
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 773
    .end local v1    # "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    monitor-exit v0

    .line 774
    return-void

    .line 773
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 13
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 804
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 806
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 807
    :try_start_7
    const-string v3, "is_simulation_active"

    const-wide v4, 0x10800000001L

    iget-object v6, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 808
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_18

    const/4 v6, 0x1

    goto :goto_19

    :cond_18
    const/4 v6, 0x0

    .line 807
    :goto_19
    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 810
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 811
    .local v4, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    const-string/jumbo v5, "usb_ports"

    const-wide v6, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/usb/UsbPortManager$PortInfo;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 812
    .end local v4    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    goto :goto_26

    .line 814
    :cond_3e
    const-string/jumbo v3, "usb_hal_version"

    const-wide v4, 0x10e00000004L

    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->getUsbHalVersion()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 815
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_52

    .line 817
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 818
    return-void

    .line 815
    :catchall_52
    move-exception v3

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v3
.end method

.method public enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 315
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 316
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v0, :cond_23

    .line 317
    if-eqz p3, :cond_22

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such USB port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 320
    :cond_22
    return-void

    .line 323
    :cond_23
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 324
    return-void

    .line 327
    :cond_2c
    const/4 v1, 0x1

    if-eqz p2, :cond_37

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    if-ne v2, v1, :cond_49

    :cond_37
    if-nez p2, :cond_41

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 329
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    if-eq v2, v1, :cond_49

    :cond_41
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 331
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v1

    if-nez v1, :cond_4a

    .line 333
    :cond_49
    return-void

    .line 337
    :cond_4a
    :try_start_4a
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    iget-wide v2, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_56} :catch_57

    .line 340
    goto :goto_5d

    .line 338
    :catch_57
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to set contaminant detection"

    invoke-static {p3, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 341
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5d
    return-void
.end method

.method public enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 16
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "limit"    # Z
    .param p3, "transactionId"    # J
    .param p5, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;
    .param p6, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 351
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 353
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v0, :cond_4f

    .line 354
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableLimitPowerTransfer: No such port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p6, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 357
    if-eqz p5, :cond_4d

    .line 358
    const/4 v1, 0x3

    :try_start_31
    invoke-interface {p5, v1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_4d

    .line 360
    :catch_35
    move-exception v1

    .line 361
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableLimitPowerTransfer: Failed to call OperationComplete. opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p6, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4e

    .line 364
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    nop

    .line 365
    :goto_4e
    return-void

    .line 370
    :cond_4f
    :try_start_4f
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_58} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_58} :catch_59

    .line 378
    goto :goto_78

    .line 379
    :catch_59
    move-exception v1

    goto :goto_79

    .line 371
    :catch_5b
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableLimitPowerTransfer: Failed to limit power transfer. opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p6, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 375
    if-eqz p5, :cond_78

    .line 376
    const/4 v2, 0x1

    invoke-interface {p5, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_78} :catch_59

    .line 383
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_78
    :goto_78
    goto :goto_8f

    .line 380
    .local v1, "e":Landroid/os/RemoteException;
    :goto_79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableLimitPowerTransfer:Failed to call onOperationComplete. opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p6, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 384
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_8f
    return-void
.end method

.method public enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)Z
    .registers 16
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "transactionId"    # I
    .param p4, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;
    .param p5, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 433
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 436
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_4f

    .line 437
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableUsbData: No such port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p5, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 440
    const/4 v2, 0x3

    :try_start_33
    invoke-interface {p4, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    .line 445
    goto :goto_4e

    .line 441
    :catch_37
    move-exception v2

    .line 442
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableUsbData: Failed to call OperationComplete. opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 446
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4e
    return v1

    .line 451
    :cond_4f
    :try_start_4f
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    int-to-long v7, p3

    move-object v5, p1

    move v6, p2

    move-object v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z

    move-result v1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_59} :catch_5c
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_59} :catch_5a

    return v1

    .line 458
    :catch_5a
    move-exception v2

    goto :goto_78

    .line 452
    :catch_5c
    move-exception v2

    .line 453
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableUsbData: Failed to invoke enableUsbData. opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 456
    const/4 v3, 0x1

    invoke-interface {p4, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_77} :catch_5a

    .line 462
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_8e

    .line 459
    .local v2, "e":Landroid/os/RemoteException;
    :goto_78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableUsbData: Failed to call onOperationComplete. opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 464
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_8e
    return v1
.end method

.method public enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "transactionId"    # J
    .param p4, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;
    .param p5, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 391
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 393
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v0, :cond_4f

    .line 394
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableUsbDataWhileDocked: No such port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p5, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 397
    if-eqz p4, :cond_4d

    .line 398
    const/4 v1, 0x3

    :try_start_31
    invoke-interface {p4, v1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_4d

    .line 400
    :catch_35
    move-exception v1

    .line 401
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableUsbDataWhileDocked: Failed to call OperationComplete. opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4e

    .line 404
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    nop

    .line 405
    :goto_4e
    return-void

    .line 410
    :cond_4f
    :try_start_4f
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_54} :catch_55

    .line 418
    goto :goto_74

    .line 419
    :catch_55
    move-exception v1

    goto :goto_75

    .line 411
    :catch_57
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/Exception;
    :try_start_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableUsbDataWhileDocked: Failed to limit power transfer. opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 415
    if-eqz p4, :cond_74

    .line 416
    const/4 v2, 0x1

    invoke-interface {p4, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_74} :catch_55

    .line 423
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_74
    :goto_74
    goto :goto_8b

    .line 420
    .local v1, "e":Landroid/os/RemoteException;
    :goto_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableUsbDataWhileDocked:Failed to call onOperationComplete. opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 424
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_8b
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .registers 5
    .param p1, "portId"    # Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 303
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    monitor-exit v0

    return-object v2

    .line 304
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .registers 6

    .line 290
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 292
    .local v1, "count":I
    new-array v2, v1, [Landroid/hardware/usb/UsbPort;

    .line 293
    .local v2, "result":[Landroid/hardware/usb/UsbPort;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_1d

    .line 294
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v4, v4, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    aput-object v4, v2, v3

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 296
    .end local v3    # "i":I
    :cond_1d
    monitor-exit v0

    return-object v2

    .line 297
    .end local v1    # "count":I
    .end local v2    # "result":[Landroid/hardware/usb/UsbPort;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getUsbHalVersion()I
    .registers 3

    .line 475
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    const/4 v1, -0x2

    if-eqz v0, :cond_c

    .line 477
    :try_start_5
    invoke-interface {v0}, Lcom/android/server/usb/hal/port/UsbPortHal;->getUsbHalVersion()I

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    return v0

    .line 478
    :catch_a
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 482
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_c
    return v1
.end method

.method synthetic lambda$sendPortChangedBroadcastLocked$0$com-android-server-usb-UsbPortManager(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1055
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 777
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 779
    .local v1, "index":I
    if-gez v1, :cond_12

    .line 780
    const-string v2, "Cannot remove simulated port which does not exist."

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 781
    monitor-exit v0

    return-void

    .line 784
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 785
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 786
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 787
    .end local v1    # "index":I
    monitor-exit v0

    .line 788
    return-void

    .line 787
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 791
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_3
    const-string v1, "Removing all simulated ports and ending simulation."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 794
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 795
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 797
    :cond_19
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "transactionId"    # I
    .param p3, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;
    .param p4, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 513
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 517
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v1, :cond_52

    .line 518
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUsbPort: No such port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p4, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_91

    .line 521
    const/4 v2, 0x3

    :try_start_36
    invoke-interface {p3, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3a
    .catchall {:try_start_36 .. :try_end_39} :catchall_91

    .line 527
    goto :goto_52

    .line 523
    :catch_3a
    move-exception v2

    .line 524
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUsbPort: Failed to call OperationComplete. opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_91

    .line 532
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_52
    :goto_52
    :try_start_52
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    int-to-long v3, p2

    invoke-interface {v2, p1, v3, v4, p3}, Lcom/android/server/usb/hal/port/UsbPortHal;->resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_58} :catch_59
    .catchall {:try_start_52 .. :try_end_58} :catchall_91

    .line 538
    goto :goto_77

    .line 539
    :catch_59
    move-exception v2

    goto :goto_78

    .line 533
    :catch_5b
    move-exception v2

    .line 534
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reseetUsbPort: Failed to resetUsbPort. opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 537
    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_77} :catch_59
    .catchall {:try_start_5c .. :try_end_77} :catchall_91

    .line 543
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_77
    goto :goto_8f

    .line 540
    .local v2, "e":Landroid/os/RemoteException;
    :goto_78
    :try_start_78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUsbPort: Failed to call onOperationComplete. opId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 544
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_8f
    monitor-exit v0

    .line 545
    return-void

    .line 544
    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_78 .. :try_end_93} :catchall_91

    throw v1
.end method

.method public setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 26
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newPowerRole"    # I
    .param p3, "newDataRole"    # I
    .param p4, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 549
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    iget-object v6, v1, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 550
    :try_start_d
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    move-object v7, v0

    .line 551
    .local v7, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v7, :cond_32

    .line 552
    if-eqz v5, :cond_30

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such USB port: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 555
    :cond_30
    monitor-exit v6

    return-void

    .line 559
    :cond_32
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    const/4 v8, 0x6

    if-nez v0, :cond_6f

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempted to set USB port into unsupported role combination: portId="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", newPowerRole="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 562
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", newDataRole="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 563
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {v8, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 564
    monitor-exit v6

    return-void

    .line 568
    :cond_6f
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v0

    move v9, v0

    .line 569
    .local v9, "currentDataRole":I
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    move v10, v0

    .line 570
    .local v10, "currentPowerRole":I
    if-ne v9, v4, :cond_8a

    if-ne v10, v3, :cond_8a

    .line 571
    if-eqz v5, :cond_88

    .line 572
    const-string v0, "No change."

    invoke-virtual {v5, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 574
    :cond_88
    monitor-exit v6

    return-void

    .line 583
    :cond_8a
    iget-boolean v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    move v11, v0

    .line 584
    .local v11, "canChangeMode":Z
    iget-boolean v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    move v12, v0

    .line 585
    .local v12, "canChangePowerRole":Z
    iget-boolean v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    move v13, v0

    .line 586
    .local v13, "canChangeDataRole":Z
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v0

    move v14, v0

    .line 588
    .local v14, "currentMode":I
    if-nez v12, :cond_9e

    if-ne v10, v3, :cond_a2

    :cond_9e
    if-nez v13, :cond_ea

    if-eq v9, v4, :cond_ea

    .line 590
    :cond_a2
    if-eqz v11, :cond_ac

    const/4 v0, 0x1

    if-ne v3, v0, :cond_ac

    if-ne v4, v0, :cond_ac

    .line 592
    const/4 v0, 0x2

    move v15, v0

    .local v0, "newMode":I
    goto :goto_ec

    .line 593
    .end local v0    # "newMode":I
    :cond_ac
    if-eqz v11, :cond_b6

    const/4 v0, 0x2

    if-ne v3, v0, :cond_b6

    if-ne v4, v0, :cond_b6

    .line 595
    const/4 v0, 0x1

    move v15, v0

    .restart local v0    # "newMode":I
    goto :goto_ec

    .line 597
    .end local v0    # "newMode":I
    :cond_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found mismatch in supported USB role combinations while attempting to change role: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, ", newPowerRole="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 599
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, ", newDataRole="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 600
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {v8, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 601
    monitor-exit v6

    return-void

    .line 604
    :cond_ea
    move v0, v14

    move v15, v0

    .line 608
    .local v15, "newMode":I
    :goto_ec
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting USB port mode and role: portId="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", currentMode="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 609
    invoke-static {v14}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", currentPowerRole="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 610
    invoke-static {v10}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", currentDataRole="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 611
    invoke-static {v9}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", newMode="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 612
    invoke-static {v15}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", newPowerRole="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 613
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", newDataRole="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 614
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    const/4 v8, 0x4

    invoke-static {v8, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 616
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/hal/port/RawPortInfo;

    move-object v8, v0

    .line 617
    .local v8, "sim":Lcom/android/server/usb/hal/port/RawPortInfo;
    if-eqz v8, :cond_16e

    .line 619
    iput v15, v8, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 620
    iput v3, v8, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 621
    iput v4, v8, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 622
    const/4 v0, 0x0

    invoke-direct {v1, v5, v0}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    goto/16 :goto_259

    .line 623
    :cond_16e
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    if-eqz v0, :cond_253

    .line 624
    const-wide/16 v17, 0x1

    if-eq v14, v15, :cond_1de

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v7

    .end local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .local v19, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    const-string v7, "Trying to set the USB port mode: portId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", newMode="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 634
    invoke-static {v15}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    const/4 v7, 0x6

    invoke-static {v7, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_19d
    .catchall {:try_start_d .. :try_end_19d} :catchall_25b

    .line 636
    :try_start_19d
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    invoke-direct {v1, v15}, Lcom/android/server/usb/UsbPortManager;->toHalUsbMode(I)I

    move-result v7
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a3} :catch_1b4
    .catchall {:try_start_19d .. :try_end_1a3} :catchall_25b

    move/from16 v16, v11

    move/from16 v20, v12

    .end local v11    # "canChangeMode":Z
    .end local v12    # "canChangePowerRole":Z
    .local v16, "canChangeMode":Z
    .local v20, "canChangePowerRole":Z
    :try_start_1a7
    iget-wide v11, v1, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    add-long v11, v11, v17

    iput-wide v11, v1, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {v0, v2, v7, v11, v12}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchMode(Ljava/lang/String;IJ)V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1b0} :catch_1b2
    .catchall {:try_start_1a7 .. :try_end_1b0} :catchall_25b

    .line 641
    :goto_1b0
    goto/16 :goto_259

    .line 637
    :catch_1b2
    move-exception v0

    goto :goto_1b9

    .end local v16    # "canChangeMode":Z
    .end local v20    # "canChangePowerRole":Z
    .restart local v11    # "canChangeMode":Z
    .restart local v12    # "canChangePowerRole":Z
    :catch_1b4
    move-exception v0

    move/from16 v16, v11

    move/from16 v20, v12

    .line 638
    .end local v11    # "canChangeMode":Z
    .end local v12    # "canChangePowerRole":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "canChangeMode":Z
    .restart local v20    # "canChangePowerRole":Z
    :goto_1b9
    :try_start_1b9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set the USB port mode: portId="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", newMode="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 640
    invoke-static {v15}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 638
    invoke-static {v5, v7, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1dd
    .catchall {:try_start_1b9 .. :try_end_1dd} :catchall_25b

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1b0

    .line 644
    .end local v16    # "canChangeMode":Z
    .end local v19    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v20    # "canChangePowerRole":Z
    .restart local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v11    # "canChangeMode":Z
    .restart local v12    # "canChangePowerRole":Z
    :cond_1de
    move-object/from16 v19, v7

    move/from16 v16, v11

    move/from16 v20, v12

    .end local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v11    # "canChangeMode":Z
    .end local v12    # "canChangePowerRole":Z
    .restart local v16    # "canChangeMode":Z
    .restart local v19    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v20    # "canChangePowerRole":Z
    if-eq v10, v3, :cond_21b

    .line 646
    :try_start_1e6
    invoke-direct {v1, v3}, Lcom/android/server/usb/UsbPortManager;->toHalUsbPowerRole(I)I

    move-result v7

    iget-wide v11, v1, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    add-long v11, v11, v17

    iput-wide v11, v1, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {v0, v2, v7, v11, v12}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchPowerRole(Ljava/lang/String;IJ)V
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_1f3} :catch_1f4
    .catchall {:try_start_1e6 .. :try_end_1f3} :catchall_25b

    .line 655
    goto :goto_21b

    .line 648
    :catch_1f4
    move-exception v0

    .line 649
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1f5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set the USB port power role: portId="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", newPowerRole="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 652
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 649
    invoke-static {v5, v7, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 654
    monitor-exit v6
    :try_end_21a
    .catchall {:try_start_1f5 .. :try_end_21a} :catchall_25b

    return-void

    .line 657
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21b
    :goto_21b
    if-eq v9, v4, :cond_259

    .line 659
    :try_start_21d
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    invoke-direct {v1, v4}, Lcom/android/server/usb/UsbPortManager;->toHalUsbDataRole(I)I

    move-result v7

    iget-wide v11, v1, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    add-long v11, v11, v17

    iput-wide v11, v1, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {v0, v2, v7, v11, v12}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchDataRole(Ljava/lang/String;IJ)V
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_22c} :catch_22d
    .catchall {:try_start_21d .. :try_end_22c} :catchall_25b

    .line 667
    goto :goto_259

    .line 661
    :catch_22d
    move-exception v0

    .line 662
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_22e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set the USB port data role: portId="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", newDataRole="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 665
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 662
    invoke-static {v5, v7, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_259

    .line 623
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "canChangeMode":Z
    .end local v19    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v20    # "canChangePowerRole":Z
    .restart local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v11    # "canChangeMode":Z
    .restart local v12    # "canChangePowerRole":Z
    :cond_253
    move-object/from16 v19, v7

    move/from16 v16, v11

    move/from16 v20, v12

    .line 671
    .end local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v8    # "sim":Lcom/android/server/usb/hal/port/RawPortInfo;
    .end local v9    # "currentDataRole":I
    .end local v10    # "currentPowerRole":I
    .end local v11    # "canChangeMode":Z
    .end local v12    # "canChangePowerRole":Z
    .end local v13    # "canChangeDataRole":Z
    .end local v14    # "currentMode":I
    .end local v15    # "newMode":I
    :cond_259
    :goto_259
    monitor-exit v6

    .line 672
    return-void

    .line 671
    :catchall_25b
    move-exception v0

    monitor-exit v6
    :try_end_25d
    .catchall {:try_start_22e .. :try_end_25d} :catchall_25b

    throw v0
.end method

.method public simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "detected"    # Z
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 741
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 743
    .local v1, "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    if-nez v1, :cond_14

    .line 744
    const-string v2, "Simulated port not found."

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 745
    monitor-exit v0

    return-void

    .line 748
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulating wet port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 750
    if-eqz p2, :cond_38

    .line 751
    const/4 v2, 0x3

    goto :goto_39

    .line 752
    :cond_38
    const/4 v2, 0x2

    :goto_39
    iput v2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    .line 753
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 754
    .end local v1    # "portInfo":Lcom/android/server/usb/hal/port/RawPortInfo;
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public systemReady()V
    .registers 6

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager;->mSystemReady:Z

    .line 177
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    if-eqz v0, :cond_1e

    .line 178
    invoke-interface {v0}, Lcom/android/server/usb/hal/port/UsbPortHal;->systemReady()V

    .line 180
    :try_start_a
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/usb/hal/port/UsbPortHal;->queryPortStatus(J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    .line 184
    goto :goto_1e

    .line 181
    :catch_17
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const-string v2, "ServiceStart: Failed to query port status"

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    return-void
.end method

.method public updatePorts(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/hal/port/RawPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 675
    .local p1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/hal/port/RawPortInfo;>;"
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 676
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 677
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "port_info"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 678
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 679
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 680
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 681
    return-void
.end method
