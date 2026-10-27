.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;
.super Ljava/lang/Object;
.source "UsbGadgetHidl.java"

# interfaces
.implements Lcom/android/server/usb/hal/gadget/UsbGadgetHal;


# instance fields
.field public mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

.field public final mGadgetProxyLock:Ljava/lang/Object;

.field public final mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceManager(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)Lcom/android/server/usb/UsbDeviceManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGadgetProxyLock(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPw(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)Lcom/android/internal/util/IndentingPrintWriter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmGadgetProxy(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;Landroid/hardware/usb/gadget/V1_0/IUsbGadget;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectToProxy(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 139
    const-string v0, "Failed to register service start notification"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    .line 140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 141
    iput-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 143
    :try_start_13
    new-instance p1, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;

    invoke-direct {p1, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$ServiceNotification;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    .line 145
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    const-string v2, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const-string v3, ""

    .line 146
    invoke-interface {v1, v2, v3, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    if-nez p1, :cond_2d

    const/4 p1, 0x6

    .line 149
    invoke-static {p1, p2, v0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_2b

    goto :goto_2d

    :catch_2b
    move-exception p0

    goto :goto_31

    .line 155
    :cond_2d
    :goto_2d
    invoke-direct {p0, p2}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void

    .line 152
    :goto_31
    invoke-static {p2, v0, p0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 108
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-eqz v1, :cond_b

    .line 110
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_2d

    .line 114
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService()Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 115
    new-instance v2, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;

    invoke-direct {v2, p0, p1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v3, 0x7d0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1b
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_1b} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_1c
    .catchall {:try_start_b .. :try_end_1b} :catchall_9

    goto :goto_2b

    :catch_1c
    move-exception p0

    goto :goto_20

    :catch_1e
    move-exception p0

    goto :goto_26

    .line 120
    :goto_20
    :try_start_20
    const-string v1, "connectToProxy: usb gadget hal service not responding"

    invoke-static {p1, v1, p0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2b

    .line 117
    :goto_26
    const-string v1, "connectToProxy: usb gadget hal service not found. Did the service fail to start?"

    invoke-static {p1, v1, p0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    :goto_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_9

    throw p0
.end method

.method public static isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z
    .registers 4

    const/4 v0, 0x1

    .line 128
    :try_start_1
    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_4} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_b

    :catch_5
    move-exception v1

    .line 133
    const-string v2, "IUSBGadget hal service present but failed to get service"

    invoke-static {p0, v2, v1}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_b
    return v0

    :catch_c
    move-exception v0

    .line 130
    const-string v1, "connectToProxy: usb gadget hidl hal service not found."

    invoke-static {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getCurrentUsbFunctions(J)V
    .registers 4

    .line 161
    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_12

    .line 162
    :try_start_3
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    invoke-interface {p2, v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    .line 163
    monitor-exit p1

    return-void

    :catchall_f
    move-exception p2

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    :try_start_11
    throw p2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_12

    :catch_12
    move-exception p1

    .line 165
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "RemoteException while calling getCurrentUsbFunctions"

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public getGadgetHalVersion()I
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-eqz v1, :cond_38

    .line 69
    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v1

    if-eqz v1, :cond_10

    const/16 v1, 0xc

    goto :goto_1d

    .line 71
    :cond_10
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object v1

    if-eqz v1, :cond_1b

    const/16 v1, 0xb

    goto :goto_1d

    :cond_1b
    const/16 v1, 0xa

    .line 76
    :goto_1d
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB Gadget HAL HIDL version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, p0, v2}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 77
    monitor-exit v0

    return v1

    :catchall_36
    move-exception p0

    goto :goto_40

    .line 67
    :cond_38
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "IUsbGadget not initialized yet"

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_36

    throw p0
.end method

.method public getUsbSpeed(J)V
    .registers 4

    .line 174
    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_20

    .line 175
    :try_start_3
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 176
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 177
    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object p2

    .line 178
    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V

    invoke-interface {p2, v0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->getUsbSpeed(Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback;)V

    goto :goto_1c

    :catchall_1a
    move-exception p2

    goto :goto_1e

    .line 180
    :cond_1c
    :goto_1c
    monitor-exit p1

    return-void

    :goto_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1a

    :try_start_1f
    throw p2
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p1

    .line 182
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "get UsbSpeed failed"

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public reset(J)V
    .registers 3

    .line 189
    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_1b

    .line 190
    :try_start_3
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 191
    iget-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 192
    invoke-static {p2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object p2

    .line 193
    invoke-interface {p2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->reset()I

    goto :goto_17

    :catchall_15
    move-exception p2

    goto :goto_19

    .line 195
    :cond_17
    :goto_17
    monitor-exit p1

    return-void

    :goto_19
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    :try_start_1a
    throw p2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception p1

    .line 197
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "RemoteException while calling reset"

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public setCurrentUsbFunctions(IJZIJ)V
    .registers 20

    move/from16 v1, p5

    .line 207
    :try_start_2
    new-instance v2, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    const/4 v4, 0x0

    move-object v3, p0

    move v5, p1

    move-wide v6, p2

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;Lcom/android/internal/util/IndentingPrintWriter;IJZ)V

    iput-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    .line 209
    iget-object v2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_20

    .line 210
    :try_start_12
    iget-object v6, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    iget-object v9, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;

    int-to-long v10, v1

    move-wide v7, p2

    invoke-interface/range {v6 .. v11}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    .line 211
    monitor-exit v2

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception v0

    .line 213
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while calling setCurrentUsbFunctions mRequest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mFunctions = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", timeout = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mChargingFunctions = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", operationId ="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
