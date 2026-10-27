.class public Landroid/hardware/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# annotations
.annotation runtime Landroid/annotation/RestrictedForEnvironment;
    environments = {
        "SDK Runtime"
    }
    from = 0x22
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbManager$AccessoryHandle;,
        Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;,
        Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;,
        Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;,
        Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;,
        Landroid/hardware/usb/UsbManager$UsbHalVersion;,
        Landroid/hardware/usb/UsbManager$UsbGadgetHalVersion;,
        Landroid/hardware/usb/UsbManager$UsbFunctionMode;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final whitelist ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final whitelist ACTION_USB_ACCESSORY_HANDSHAKE:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_HANDSHAKE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_ATTACHED"

.field public static final whitelist ACTION_USB_DEVICE_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_DETACHED"

.field public static final whitelist ACTION_USB_PORT_CHANGED:Ljava/lang/String; = "android.hardware.usb.action.USB_PORT_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USB_PORT_COMPLIANCE_CHANGED:Ljava/lang/String; = "android.hardware.usb.action.USB_PORT_COMPLIANCE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final whitelist EXTRA_ACCESSORY_HANDSHAKE_END:Ljava/lang/String; = "android.hardware.usb.extra.ACCESSORY_HANDSHAKE_END"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACCESSORY_START:Ljava/lang/String; = "android.hardware.usb.extra.ACCESSORY_START"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACCESSORY_STRING_COUNT:Ljava/lang/String; = "android.hardware.usb.extra.ACCESSORY_STRING_COUNT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACCESSORY_UEVENT_TIME:Ljava/lang/String; = "android.hardware.usb.extra.ACCESSORY_UEVENT_TIME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_CAN_BE_DEFAULT:Ljava/lang/String; = "android.hardware.usb.extra.CAN_BE_DEFAULT"

.field public static final whitelist EXTRA_DEVICE:Ljava/lang/String; = "device"

.field public static final blacklist EXTRA_PACKAGE:Ljava/lang/String; = "android.hardware.usb.extra.PACKAGE"

.field public static final whitelist EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field public static final greylist-max-o EXTRA_PORT:Ljava/lang/String; = "port"

.field public static final greylist-max-o EXTRA_PORT_STATUS:Ljava/lang/String; = "portStatus"

.field public static final whitelist FUNCTION_ACCESSORY:J = 0x2L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_ADB:J = 0x1L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_AUDIO_SOURCE:J = 0x40L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_MIDI:J = 0x8L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_MTP:J = 0x4L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o FUNCTION_NAME_TO_CODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FUNCTION_NCM:J = 0x400L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_NONE:J = 0x0L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_PTP:J = 0x10L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_RNDIS:J = 0x20L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FUNCTION_UVC:J = 0x80L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_NOT_SUPPORTED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final blacklist GADGET_HAL_V1_0:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_V1_1:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_V1_2:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_V2_0:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist GADGET_HAL_VERSION_1_0:Ljava/lang/String; = "V1_0"

.field public static final blacklist GADGET_HAL_VERSION_1_1:Ljava/lang/String; = "V1_1"

.field public static final blacklist GADGET_HAL_VERSION_1_2:Ljava/lang/String; = "V1_2"

.field public static final blacklist GADGET_HAL_VERSION_2_0:Ljava/lang/String; = "V2_0"

.field private static final greylist-max-o SETTABLE_FUNCTIONS:J = 0x4bcL

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UsbManager"

.field public static final whitelist USB_CONFIGURED:Ljava/lang/String; = "configured"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_CONNECTED:Ljava/lang/String; = "connected"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_10G:I = 0x2800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_20G:I = 0x5000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_40G:I = 0xa000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_5G:I = 0x1400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_FULL_SPEED:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_HIGH_SPEED:I = 0x1e0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_LOW_SPEED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USB_DATA_TRANSFER_RATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-r USB_DATA_UNLOCKED:Ljava/lang/String; = "unlocked"

.field public static final greylist-max-o USB_FUNCTION_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final greylist-max-o USB_FUNCTION_ADB:Ljava/lang/String; = "adb"

.field public static final greylist-max-o USB_FUNCTION_AUDIO_SOURCE:Ljava/lang/String; = "audio_source"

.field public static final greylist-max-o USB_FUNCTION_MIDI:Ljava/lang/String; = "midi"

.field public static final greylist-max-o USB_FUNCTION_MTP:Ljava/lang/String; = "mtp"

.field public static final whitelist USB_FUNCTION_NCM:Ljava/lang/String; = "ncm"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist USB_FUNCTION_NONE:Ljava/lang/String; = "none"

.field public static final greylist-max-o USB_FUNCTION_PTP:Ljava/lang/String; = "ptp"

.field public static final whitelist USB_FUNCTION_RNDIS:Ljava/lang/String; = "rndis"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USB_FUNCTION_UVC:Ljava/lang/String; = "uvc"

.field public static final blacklist USB_HAL_NOT_SUPPORTED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_RETRY:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_V1_0:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_V1_1:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_V1_2:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_V1_3:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist USB_HAL_V2_0:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o USB_HOST_CONNECTED:Ljava/lang/String; = "host_connected"

.field private static final blacklist sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private blacklist mAccessoryHandleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/hardware/usb/UsbManager$AccessoryHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAccessoryHandleMapLock:Ljava/lang/Object;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mDisplayPortListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayPortListenersLock:Ljava/lang/Object;

.field private blacklist mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

.field private final greylist-max-o mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayPortListeners(Landroid/hardware/usb/UsbManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayPortListenersLock(Landroid/hardware/usb/UsbManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcloseHandleForAccessory(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/usb/UsbManager;->closeHandleForAccessory(Landroid/hardware/usb/UsbAccessory;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 735
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    .line 740
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 743
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mtp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ptp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "rndis"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "midi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "accessory"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "audio_source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "adb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x400

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ncm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-wide/16 v1, 0x80

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "uvc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .registers 4

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListenersLock:Ljava/lang/Object;

    .line 1089
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMapLock:Ljava/lang/Object;

    .line 1099
    iput-object p1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    .line 1100
    iput-object p2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    .line 1101
    return-void
.end method

.method public static greylist-max-o areSettableFunctions(J)Z
    .registers 8

    .line 2135
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    const-wide/16 v4, -0x4bd

    and-long/2addr v4, p0

    cmp-long v0, v4, v0

    if-nez v0, :cond_1b

    .line 2137
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    if-eq v0, v3, :cond_1d

    const-wide/16 v0, 0x420

    cmp-long p0, p0, v0

    if-nez p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    nop

    .line 2135
    :goto_1e
    return v3
.end method

.method private blacklist closeHandleForAccessory(Landroid/hardware/usb/UsbAccessory;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_3
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager$AccessoryHandle;

    .line 906
    if-eqz v1, :cond_2b

    .line 911
    invoke-direct {p0, p2, v1}, Landroid/hardware/usb/UsbManager;->getModifiedHandleForClosingStream(ZLandroid/hardware/usb/UsbManager$AccessoryHandle;)Landroid/hardware/usb/UsbManager$AccessoryHandle;

    move-result-object p2

    .line 913
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isOpen()Z

    move-result v1

    if-nez v1, :cond_24

    .line 915
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 916
    iget-object p2, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 918
    :cond_24
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    :goto_29
    monitor-exit v0

    .line 921
    return-void

    .line 907
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No handle has been initialised for this accessory!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 920
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private blacklist getModifiedHandleForClosingStream(ZLandroid/hardware/usb/UsbManager$AccessoryHandle;)Landroid/hardware/usb/UsbManager$AccessoryHandle;
    .registers 6

    .line 925
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isInputStreamOpened()Z

    move-result v0

    if-nez v0, :cond_11

    if-nez p1, :cond_9

    goto :goto_11

    .line 926
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to close an input stream that has not been opened for this accessory!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 931
    :cond_11
    :goto_11
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isOutputStreamOpened()Z

    move-result v0

    if-nez v0, :cond_22

    if-eqz p1, :cond_1a

    goto :goto_22

    .line 932
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to close an output stream that has not been opened for this accessory!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 937
    :cond_22
    :goto_22
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2e

    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isInputStreamOpened()Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v0

    goto :goto_2f

    :cond_2e
    move v2, v1

    .line 938
    :goto_2f
    if-eqz p1, :cond_38

    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isOutputStreamOpened()Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 940
    :goto_39
    new-instance p1, Landroid/hardware/usb/UsbManager$AccessoryHandle;

    .line 941
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2, v2, v0}, Landroid/hardware/usb/UsbManager$AccessoryHandle;-><init>(Landroid/os/ParcelFileDescriptor;ZZ)V

    .line 940
    return-object p1
.end method

.method private blacklist getModifiedHandleForOpeningStream(ZLandroid/hardware/usb/UsbManager$AccessoryHandle;)Landroid/hardware/usb/UsbManager$AccessoryHandle;
    .registers 6

    .line 880
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isInputStreamOpened()Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p1, :cond_9

    goto :goto_11

    .line 881
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Input stream already open for this accessory! Please close the existing input stream before opening a new one."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 885
    :cond_11
    :goto_11
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isOutputStreamOpened()Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz p1, :cond_1a

    goto :goto_22

    .line 886
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Output stream already open for this accessory! Please close the existing output stream before opening a new one."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 890
    :cond_22
    :goto_22
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2f

    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isInputStreamOpened()Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_2f

    :cond_2d
    move v2, v0

    goto :goto_30

    :cond_2f
    :goto_2f
    move v2, v1

    .line 891
    :goto_30
    if-eqz p1, :cond_38

    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->isOutputStreamOpened()Z

    move-result p1

    if-eqz p1, :cond_39

    :cond_38
    move v0, v1

    .line 893
    :cond_39
    new-instance p1, Landroid/hardware/usb/UsbManager$AccessoryHandle;

    .line 894
    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2, v2, v0}, Landroid/hardware/usb/UsbManager$AccessoryHandle;-><init>(Landroid/os/ParcelFileDescriptor;ZZ)V

    .line 893
    return-object p1
.end method

.method private blacklist isPortDisabled(Landroid/hardware/usb/UsbPort;)Z
    .registers 3

    .line 1767
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result p1

    const/16 v0, 0x10

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public static whitelist isUvcSupportEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1727
    const-string v0, "ro.usb.uvc.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist openHandleForAccessory(Landroid/hardware/usb/UsbAccessory;Z)Landroid/hardware/usb/UsbManager$AccessoryHandle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 848
    :try_start_3
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    if-nez v1, :cond_e

    .line 849
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    .line 853
    :cond_e
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 855
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 856
    new-instance v2, Landroid/hardware/usb/UsbManager$AccessoryHandle;

    if-nez p2, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    invoke-direct {v2, v1, p2, v3}, Landroid/hardware/usb/UsbManager$AccessoryHandle;-><init>(Landroid/os/ParcelFileDescriptor;ZZ)V

    .line 858
    iget-object p2, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    monitor-exit v0

    return-object v2

    .line 864
    :cond_2d
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager$AccessoryHandle;

    .line 865
    if-eqz v1, :cond_42

    .line 869
    invoke-direct {p0, p2, v1}, Landroid/hardware/usb/UsbManager;->getModifiedHandleForOpeningStream(ZLandroid/hardware/usb/UsbManager$AccessoryHandle;)Landroid/hardware/usb/UsbManager$AccessoryHandle;

    move-result-object p2

    .line 872
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mAccessoryHandleMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    monitor-exit v0

    return-object p2

    .line 866
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Accessory doesn\'t have an associated handle yet!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 875
    :catchall_4a
    move-exception p1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method private blacklist registerDisplayPortAltModeEventsIfNeededLocked()Z
    .registers 3

    .line 2003
    new-instance v0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbManager-IA;)V

    .line 2006
    :try_start_6
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, v0}, Landroid/hardware/usb/IUsbManager;->registerForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2007
    iput-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_14

    .line 2008
    const/4 v0, 0x1

    return v0

    .line 2010
    :cond_12
    const/4 v0, 0x0

    return v0

    .line 2011
    :catch_14
    move-exception v0

    .line 2012
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private blacklist setUsbDataSignal(Ljava/util/List;ZZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbPort;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1751
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_52

    .line 1752
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbPort;

    .line 1753
    invoke-direct {p0, v3}, Landroid/hardware/usb/UsbManager;->isPortDisabled(Landroid/hardware/usb/UsbPort;)Z

    move-result v5

    if-eq v5, p2, :cond_4f

    .line 1754
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1755
    xor-int/lit8 v5, p2, 0x1

    invoke-virtual {v3, v5}, Landroid/hardware/usb/UsbPort;->enableUsbData(Z)I

    move-result v5

    if-eqz v5, :cond_4f

    if-eqz p3, :cond_4f

    .line 1757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to set usb data signal for portID("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "UsbManager"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    xor-int/lit8 p1, p2, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataSignal(Ljava/util/List;ZZ)Z

    .line 1759
    return v1

    .line 1751
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1763
    :cond_52
    return v4
.end method

.method private blacklist unregisterDisplayPortAltModeEventsLocked()V
    .registers 4

    .line 2065
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    if-eqz v0, :cond_1a

    .line 2067
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    invoke-interface {v1, v2}, Landroid/hardware/usb/IUsbManager;->unregisterForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_11
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    .line 2073
    iput-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    .line 2074
    goto :goto_1a

    .line 2073
    :catchall_f
    move-exception v1

    goto :goto_17

    .line 2068
    :catch_11
    move-exception v1

    .line 2069
    :try_start_12
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    .line 2073
    :goto_17
    iput-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    .line 2074
    throw v1

    .line 2076
    :cond_1a
    :goto_1a
    return-void
.end method

.method public static greylist-max-o usbFunctionsFromString(Ljava/lang/String;)J
    .registers 8

    .line 2188
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_53

    const-string v2, "none"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_53

    .line 2191
    :cond_d
    nop

    .line 2192
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_52

    aget-object v5, v2, v4

    .line 2193
    sget-object v6, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 2194
    sget-object v6, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    or-long/2addr v0, v5

    goto :goto_36

    .line 2195
    :cond_30
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_39

    .line 2192
    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 2196
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid usb function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2199
    :cond_52
    return-wide v0

    .line 2189
    :cond_53
    :goto_53
    return-wide v0
.end method

.method public static greylist-max-o usbFunctionsToString(J)Ljava/lang/String;
    .registers 7

    .line 2149
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2150
    const-wide/16 v1, 0x4

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    .line 2151
    const-string v1, "mtp"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2153
    :cond_15
    const-wide/16 v1, 0x10

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_21

    .line 2154
    const-string v1, "ptp"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2156
    :cond_21
    const-wide/16 v1, 0x20

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    .line 2157
    const-string v1, "rndis"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2159
    :cond_2d
    const-wide/16 v1, 0x8

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_39

    .line 2160
    const-string v1, "midi"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2162
    :cond_39
    const-wide/16 v1, 0x2

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_45

    .line 2163
    const-string v1, "accessory"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2165
    :cond_45
    const-wide/16 v1, 0x40

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_51

    .line 2166
    const-string v1, "audio_source"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2168
    :cond_51
    const-wide/16 v1, 0x400

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5d

    .line 2169
    const-string v1, "ncm"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2171
    :cond_5d
    const-wide/16 v1, 0x80

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_69

    .line 2172
    const-string v1, "uvc"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2174
    :cond_69
    const-wide/16 v1, 0x1

    and-long/2addr p0, v1

    cmp-long p0, p0, v3

    if-eqz p0, :cond_75

    .line 2175
    const-string p0, "adb"

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2177
    :cond_75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist usbGadgetHalVersionToString(I)Ljava/lang/String;
    .registers 2

    .line 2246
    const/16 v0, 0x14

    if-ne p0, v0, :cond_7

    .line 2247
    const-string p0, "V2_0"

    goto :goto_1e

    .line 2248
    :cond_7
    const/16 v0, 0xc

    if-ne p0, v0, :cond_e

    .line 2249
    const-string p0, "V1_2"

    goto :goto_1e

    .line 2250
    :cond_e
    const/16 v0, 0xb

    if-ne p0, v0, :cond_15

    .line 2251
    const-string p0, "V1_1"

    goto :goto_1e

    .line 2252
    :cond_15
    const/16 v0, 0xa

    if-ne p0, v0, :cond_1c

    .line 2253
    const-string p0, "V1_0"

    goto :goto_1e

    .line 2255
    :cond_1c
    const-string p0, "unknown"

    .line 2258
    :goto_1e
    return-object p0
.end method

.method public static blacklist usbSpeedToBandwidth(I)I
    .registers 3

    .line 2210
    const/16 v0, 0x2800

    const/16 v1, 0x5000

    packed-switch p0, :pswitch_data_1e

    .line 2232
    const/4 p0, -0x1

    return p0

    .line 2212
    :pswitch_9
    const p0, 0xa000

    return p0

    .line 2214
    :pswitch_d
    return v1

    .line 2216
    :pswitch_e
    return v1

    .line 2218
    :pswitch_f
    return v0

    .line 2220
    :pswitch_10
    return v1

    .line 2222
    :pswitch_11
    return v0

    .line 2224
    :pswitch_12
    const/16 p0, 0x1400

    return p0

    .line 2226
    :pswitch_15
    const/16 p0, 0x1e0

    return p0

    .line 2228
    :pswitch_18
    const/16 p0, 0xc

    return p0

    .line 2230
    :pswitch_1b
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method blacklist enableContaminantDetection(Landroid/hardware/usb/UsbPort;Z)V
    .registers 4

    .line 1862
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->enableContaminantDetection(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 1865
    nop

    .line 1866
    return-void

    .line 1863
    :catch_b
    move-exception p1

    .line 1864
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist enableLimitPowerTransfer(Landroid/hardware/usb/UsbPort;ZILandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 7

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLimitPowerTransfer:port must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1887
    :try_start_16
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/usb/IUsbManager;->enableLimitPowerTransfer(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_21

    .line 1897
    nop

    .line 1898
    return-void

    .line 1888
    :catch_21
    move-exception p1

    .line 1889
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableLimitPowerTransfer failed. opId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UsbManager"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1891
    const/4 p2, 0x1

    :try_start_3b
    invoke-interface {p4, p2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 1895
    goto :goto_56

    .line 1892
    :catch_3f
    move-exception p2

    .line 1893
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLimitPowerTransfer failed to call onOperationComplete. opId:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1896
    :goto_56
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist enableUsbData(Landroid/hardware/usb/UsbPort;ZILandroid/hardware/usb/IUsbOperationInternal;)Z
    .registers 7

    .line 1956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUsbData: port must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1958
    :try_start_16
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/usb/IUsbManager;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    move-result p1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_21

    return p1

    .line 1959
    :catch_21
    move-exception p1

    .line 1960
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableUsbData: failed. opId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UsbManager"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1962
    const/4 p2, 0x1

    :try_start_3b
    invoke-interface {p4, p2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 1966
    goto :goto_56

    .line 1963
    :catch_3f
    move-exception p2

    .line 1964
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUsbData: failed to call onOperationComplete. opId:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1967
    :goto_56
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist enableUsbDataSignal(Z)Z
    .registers 4

    .line 1745
    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataSignal(Ljava/util/List;ZZ)Z

    move-result p1

    return p1
.end method

.method blacklist enableUsbDataWhileDocked(Landroid/hardware/usb/UsbPort;ILandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 7

    .line 1984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUsbDataWhileDocked: port must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1987
    :try_start_16
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/usb/IUsbManager;->enableUsbDataWhileDocked(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_21

    .line 1997
    nop

    .line 1998
    return-void

    .line 1988
    :catch_21
    move-exception p1

    .line 1989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUsbDataWhileDocked: failed. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbManager"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1991
    const/4 v0, 0x1

    :try_start_3b
    invoke-interface {p3, v0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 1995
    goto :goto_56

    .line 1992
    :catch_3f
    move-exception p3

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbDataWhileDocked: failed to call onOperationComplete. opId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1996
    :goto_56
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAccessoryList()[Landroid/hardware/usb/UsbAccessory;
    .registers 4

    .line 1163
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1164
    return-object v1

    .line 1167
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 1168
    if-nez v0, :cond_f

    .line 1169
    return-object v1

    .line 1171
    :cond_f
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/hardware/usb/UsbAccessory;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_16

    return-object v1

    .line 1173
    :catch_16
    move-exception v0

    .line 1174
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 1272
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1273
    :catch_7
    move-exception p1

    .line 1274
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getCurrentFunctions()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1582
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getCurrentFunctions()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 1583
    :catch_7
    move-exception v0

    .line 1584
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getDeviceList()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .line 1113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1114
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v1, :cond_a

    .line 1115
    return-object v0

    .line 1117
    :cond_a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1119
    :try_start_f
    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v2, v1}, Landroid/hardware/usb/IUsbManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 1120
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1121
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_31} :catch_33

    .line 1122
    goto :goto_1c

    .line 1123
    :cond_32
    return-object v0

    .line 1124
    :catch_33
    move-exception v0

    .line 1125
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getGadgetHalVersion()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1669
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getGadgetHalVersion()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1670
    :catch_7
    move-exception v0

    .line 1671
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;
    .registers 3

    .line 1819
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 1820
    :catch_b
    move-exception p1

    .line 1821
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getPorts()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbPort;",
            ">;"
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_9

    .line 1788
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1793
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getPorts()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_34

    .line 1796
    nop

    .line 1798
    if-nez v0, :cond_17

    .line 1799
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1801
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1803
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1804
    const/4 v3, 0x0

    :goto_21
    if-ge v3, v1, :cond_33

    .line 1805
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/ParcelableUsbPort;

    invoke-virtual {v4, p0}, Landroid/hardware/usb/ParcelableUsbPort;->getUsbPort(Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbPort;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1808
    :cond_33
    return-object v2

    .line 1794
    :catch_34
    move-exception v0

    .line 1795
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getScreenUnlockedFunctions()J
    .registers 3

    .line 1622
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getScreenUnlockedFunctions()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 1623
    :catch_7
    move-exception v0

    .line 1624
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getUsbBandwidthMbps()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1648
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getCurrentUsbSpeed()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_c

    .line 1651
    nop

    .line 1652
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbSpeedToBandwidth(I)I

    move-result v0

    return v0

    .line 1649
    :catch_c
    move-exception v0

    .line 1650
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getUsbHalVersion()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1689
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getUsbHalVersion()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1690
    :catch_7
    move-exception v0

    .line 1691
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o grantPermission(Landroid/hardware/usb/UsbDevice;)V
    .registers 3

    .line 1432
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/usb/UsbManager;->grantPermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 1433
    return-void
.end method

.method public greylist-max-o grantPermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 4

    .line 1445
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1448
    nop

    .line 1449
    return-void

    .line 1446
    :catch_7
    move-exception p1

    .line 1447
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist grantPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1463
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    .line 1464
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1465
    invoke-virtual {p0, p1, v0}, Landroid/hardware/usb/UsbManager;->grantPermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1468
    goto :goto_33

    .line 1466
    :catch_14
    move-exception p1

    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " not found."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UsbManager"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1469
    :goto_33
    return-void
.end method

.method public whitelist hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 3

    .line 1335
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_6

    .line 1336
    const/4 p1, 0x0

    return p1

    .line 1339
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 1340
    :catch_d
    move-exception p1

    .line 1341
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z
    .registers 5

    .line 1356
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_6

    .line 1357
    const/4 p1, 0x0

    return p1

    .line 1360
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermissionWithIdentity(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 1361
    :catch_d
    move-exception p1

    .line 1362
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 4

    .line 1292
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_6

    .line 1293
    const/4 p1, 0x0

    return p1

    .line 1296
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/usb/IUsbManager;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return p1

    .line 1297
    :catch_13
    move-exception p1

    .line 1298
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .registers 6

    .line 1314
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_6

    .line 1315
    const/4 p1, 0x0

    return p1

    .line 1318
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/usb/IUsbManager;->hasDevicePermissionWithIdentity(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 1319
    :catch_d
    move-exception p1

    .line 1320
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-r isFunctionEnabled(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1488
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1489
    :catch_7
    move-exception p1

    .line 1490
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist isModeChangeSupported(Landroid/hardware/usb/UsbPort;)Z
    .registers 3

    .line 1834
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->isModeChangeSupported(Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    .line 1835
    :catch_b
    move-exception p1

    .line 1836
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isUvcGadgetSupportEnabled()Z
    .registers 2

    .line 1503
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->isUvcGadgetSupportEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1504
    :catch_7
    move-exception v0

    .line 1505
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 1195
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1196
    :catch_7
    move-exception p1

    .line 1197
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist openAccessoryInputStream(Landroid/hardware/usb/UsbAccessory;)Ljava/io/InputStream;
    .registers 5

    .line 1216
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->isAccessoryFfsEnabled()Z

    move-result v0

    .line 1217
    if-eqz v0, :cond_14

    .line 1218
    new-instance v1, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    .line 1220
    invoke-interface {v2, p1}, Landroid/hardware/usb/IUsbManager;->openAccessoryForInputStream(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Landroid/os/ParcelFileDescriptor;Z)V

    .line 1218
    return-object v1

    .line 1223
    :cond_14
    new-instance v0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;

    .line 1224
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/hardware/usb/UsbManager;->openHandleForAccessory(Landroid/hardware/usb/UsbAccessory;Z)Landroid/hardware/usb/UsbManager$AccessoryHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Landroid/os/ParcelFileDescriptor;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 1223
    return-object v0

    .line 1226
    :catch_23
    move-exception p1

    .line 1227
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist openAccessoryOutputStream(Landroid/hardware/usb/UsbAccessory;)Ljava/io/OutputStream;
    .registers 9

    .line 1243
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->isAccessoryFfsEnabled()Z

    move-result v6

    .line 1244
    if-eqz v6, :cond_1c

    .line 1245
    new-instance v1, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;

    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    .line 1247
    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->openAccessoryForOutputStream(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    .line 1248
    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->getMaxPacketSize(Landroid/hardware/usb/UsbAccessory;)I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Landroid/os/ParcelFileDescriptor;IZ)V

    .line 1245
    return-object v1

    .line 1251
    :cond_1c
    move-object v2, p0

    move-object v3, p1

    new-instance p1, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;

    .line 1252
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Landroid/hardware/usb/UsbManager;->openHandleForAccessory(Landroid/hardware/usb/UsbAccessory;Z)Landroid/hardware/usb/UsbManager$AccessoryHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager$AccessoryHandle;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p1, p0, v3, v0}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Landroid/os/ParcelFileDescriptor;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 1251
    return-object p1

    .line 1253
    :catch_2d
    move-exception v0

    move-object p1, v0

    .line 1254
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .registers 5

    .line 1139
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 1140
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/hardware/usb/IUsbManager;->openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1141
    if-eqz v1, :cond_23

    .line 1142
    new-instance v2, Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {v2, p1}, Landroid/hardware/usb/UsbDeviceConnection;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 1143
    iget-object p1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1, p1}, Landroid/hardware/usb/UsbDeviceConnection;->open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/Context;)Z

    move-result p1

    .line 1144
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_24

    .line 1145
    if-eqz p1, :cond_23

    .line 1146
    return-object v2

    .line 1151
    :cond_23
    goto :goto_2c

    .line 1149
    :catch_24
    move-exception p1

    .line 1150
    const-string v0, "UsbManager"

    const-string v1, "exception in UsbManager.openDevice"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    :goto_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist registerDisplayPortAltModeInfoListener(Ljava/util/concurrent/Executor;Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2037
    const-string v0, "registerDisplayPortAltModeInfoListener: executor must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2039
    const-string v0, "registerDisplayPortAltModeInfoListener: listener must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2042
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2043
    :try_start_d
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_18

    .line 2044
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    .line 2048
    :cond_18
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortServiceListener:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;

    if-nez v1, :cond_2b

    .line 2049
    invoke-direct {p0}, Landroid/hardware/usb/UsbManager;->registerDisplayPortAltModeEventsIfNeededLocked()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_2b

    .line 2050
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected failure registering service listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2054
    :cond_2b
    :goto_2b
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 2058
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    monitor-exit v0

    .line 2060
    return-void

    .line 2055
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Listener has already been registered."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2059
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_42

    throw p1
.end method

.method public whitelist requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .registers 5

    .line 1418
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1421
    nop

    .line 1422
    return-void

    .line 1419
    :catch_d
    move-exception p1

    .line 1420
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    .registers 5

    .line 1391
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/hardware/usb/IUsbManager;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1394
    nop

    .line 1395
    return-void

    .line 1392
    :catch_d
    move-exception p1

    .line 1393
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist resetUsbGadget()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1708
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->resetUsbGadget()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1711
    nop

    .line 1712
    return-void

    .line 1709
    :catch_7
    move-exception v0

    .line 1710
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist resetUsbPort(Landroid/hardware/usb/UsbPort;ILandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 7

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetUsbPort: port must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1923
    :try_start_16
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/usb/IUsbManager;->resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_21

    .line 1933
    nop

    .line 1934
    return-void

    .line 1924
    :catch_21
    move-exception p1

    .line 1925
    const-string v0, "resetUsbPort: failed. "

    const-string v1, "UsbManager"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1927
    const/4 v0, 0x1

    :try_start_2a
    invoke-interface {p3, v0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 1931
    goto :goto_45

    .line 1928
    :catch_2e
    move-exception p3

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetUsbPort: failed to call onOperationComplete. opId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1932
    :goto_45
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist setCurrentFunction(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1556
    sget-object v0, Landroid/hardware/usb/UsbManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 1558
    :try_start_b
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/hardware/usb/IUsbManager;->setCurrentFunction(Ljava/lang/String;ZI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 1563
    nop

    .line 1564
    return-void

    .line 1559
    :catch_12
    move-exception p2

    .line 1560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFunction: failed to call setCurrentFunction. functions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", opId:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1562
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setCurrentFunctions(J)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1534
    sget-object v0, Landroid/hardware/usb/UsbManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 1536
    :try_start_b
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/hardware/usb/IUsbManager;->setCurrentFunctions(JI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 1541
    nop

    .line 1542
    return-void

    .line 1537
    :catch_12
    move-exception v1

    .line 1538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentFunctions: failed to call setCurrentFunctions. functions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", opId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsbManager"

    invoke-static {p2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1540
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist setPortRoles(Landroid/hardware/usb/UsbPort;II)V
    .registers 6

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPortRoles Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :try_start_1e
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/usb/IUsbManager;->setPortRoles(Ljava/lang/String;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_29

    .line 1851
    nop

    .line 1852
    return-void

    .line 1849
    :catch_29
    move-exception p1

    .line 1850
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setScreenUnlockedFunctions(J)V
    .registers 4

    .line 1606
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->setScreenUnlockedFunctions(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1609
    nop

    .line 1610
    return-void

    .line 1607
    :catch_7
    move-exception p1

    .line 1608
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 3

    .line 2117
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2120
    nop

    .line 2121
    return-void

    .line 2118
    :catch_7
    move-exception p1

    .line 2119
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unregisterDisplayPortAltModeInfoListener(Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2091
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2092
    :try_start_3
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_9

    .line 2093
    monitor-exit v0

    return-void

    .line 2095
    :cond_9
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    iget-object p1, p0, Landroid/hardware/usb/UsbManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2097
    invoke-direct {p0}, Landroid/hardware/usb/UsbManager;->unregisterDisplayPortAltModeEventsLocked()V

    .line 2099
    :cond_19
    monitor-exit v0

    .line 2100
    return-void

    .line 2099
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method
