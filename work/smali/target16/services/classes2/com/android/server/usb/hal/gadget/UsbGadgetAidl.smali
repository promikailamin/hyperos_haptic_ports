.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;
.super Ljava/lang/Object;
.source "UsbGadgetAidl.java"

# interfaces
.implements Lcom/android/server/usb/hal/gadget/UsbGadgetHal;


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbGadgetAidl"

.field public static final USB_GADGET_AIDL_SERVICE:Ljava/lang/String;


# instance fields
.field public final mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

.field public final mGadgetProxyLock:Ljava/lang/Object;

.field public final mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceManager(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;)Lcom/android/server/usb/UsbDeviceManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/usb/gadget/IUsbGadget;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->USB_GADGET_AIDL_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 106
    iput-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 107
    invoke-virtual {p0, p2}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z
    .registers 3

    .line 96
    :try_start_0
    sget-object v0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->USB_GADGET_AIDL_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception v0

    .line 98
    const-string v1, "connectToProxy: usb gadget Aidl hal service not found."

    invoke-static {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    if-eqz v1, :cond_b

    .line 81
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_20

    .line 85
    :cond_b
    :try_start_b
    sget-object v1, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->USB_GADGET_AIDL_SERVICE:Ljava/lang/String;

    .line 86
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadget;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;
    :try_end_17
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_17} :catch_18
    .catchall {:try_start_b .. :try_end_17} :catchall_9

    goto :goto_1e

    :catch_18
    move-exception p0

    .line 88
    :try_start_19
    const-string v1, "connectToProxy: usb gadget hal service not found. Did the service fail to start?"

    invoke-static {p1, v1, p0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 91
    :goto_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_9

    throw p0
.end method

.method public getCurrentUsbFunctions(J)V
    .registers 7

    .line 112
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    new-instance v2, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;

    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;)V

    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/usb/gadget/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_11
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 121
    :try_start_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_2a

    :catch_11
    move-exception v1

    .line 116
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while calling getCurrentUsbFunctions, opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 119
    monitor-exit v0

    return-void

    .line 121
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_f

    throw p0
.end method

.method public getGadgetHalVersion()I
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    if-eqz p0, :cond_14

    .line 65
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    .line 66
    sget-object p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->TAG:Ljava/lang/String;

    const-string v0, "USB Gadget HAL AIDL version: GADGET_HAL_V2_0"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x14

    return p0

    :catchall_12
    move-exception p0

    goto :goto_1c

    .line 63
    :cond_14
    :try_start_14
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "IUsb not initialized yet"

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_12

    throw p0
.end method

.method public getUsbSpeed(J)V
    .registers 6

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_12

    .line 128
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    new-instance v2, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;

    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;)V

    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/usb/gadget/IUsbGadget;->getUsbSpeed(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V

    .line 129
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    :try_start_11
    throw v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_12

    :catch_12
    move-exception v0

    .line 131
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while calling getUsbSpeed, opID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public reset(J)V
    .registers 6

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_12

    .line 142
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    new-instance v2, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;

    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;)V

    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/usb/gadget/IUsbGadget;->reset(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V

    .line 143
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    :try_start_11
    throw v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_12

    :catch_12
    move-exception v0

    .line 145
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while calling getUsbSpeed, opID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public setCurrentUsbFunctions(IJZIJ)V
    .registers 24

    move/from16 v7, p5

    .line 156
    :try_start_2
    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4} :catch_28

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    :try_start_d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;-><init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;Lcom/android/internal/util/IndentingPrintWriter;IJZ)V

    iput-object v0, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;

    .line 158
    iget-object v2, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_26

    .line 159
    :try_start_15
    iget-object v8, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mGadgetProxy:Landroid/hardware/usb/gadget/IUsbGadget;

    iget-object v11, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mUsbGadgetCallback:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;

    int-to-long v12, v7

    move-wide/from16 v9, p2

    move-wide/from16 v14, p6

    invoke-interface/range {v8 .. v15}, Landroid/hardware/usb/gadget/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/IUsbGadgetCallback;JJ)V

    .line 161
    monitor-exit v2

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    :try_start_25
    throw v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    goto :goto_2b

    :catch_28
    move-exception v0

    move-object/from16 v1, p0

    .line 163
    :goto_2b
    iget-object v1, v1, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while calling setCurrentUsbFunctions: mRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mFunctions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mChargingFunctions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p6

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
