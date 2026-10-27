.class public final Lcom/android/server/usb/hal/port/UsbPortHidl;
.super Ljava/lang/Object;
.source "UsbPortHidl.java"

# interfaces
.implements Lcom/android/server/usb/hal/port/UsbPortHal;


# static fields
.field public static sUsbDataStatus:I


# instance fields
.field public mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

.field public final mLock:Ljava/lang/Object;

.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mProxy:Landroid/hardware/usb/V1_0/IUsb;

.field public mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mSystemReady:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usb/hal/port/UsbPortHidl;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortHidl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmProxy(Lcom/android/server/usb/hal/port/UsbPortHidl;Landroid/hardware/usb/V1_0/IUsb;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectToProxy(Lcom/android/server/usb/hal/port/UsbPortHidl;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsUsbDataStatus()I
    .registers 1

    .line 0
    sget v0, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 176
    const-string v0, "Failed to register service start notification"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    .line 177
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/usb/UsbPortManager;

    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 178
    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 179
    new-instance p1, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2, p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;-><init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/hal/port/UsbPortHidl;)V

    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    .line 181
    :try_start_20
    new-instance p1, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;

    invoke-direct {p1, p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;-><init>(Lcom/android/server/usb/hal/port/UsbPortHidl;)V

    .line 183
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p2

    const-string v2, "android.hardware.usb@1.0::IUsb"

    const-string v3, ""

    .line 184
    invoke-interface {p2, v2, v3, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    if-nez p1, :cond_3a

    const/4 p1, 0x6

    .line 187
    invoke-static {p1, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_37} :catch_38

    goto :goto_3a

    :catch_38
    move-exception p0

    goto :goto_40

    .line 195
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p0, p1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void

    .line 191
    :goto_40
    invoke-static {v1, v0, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 138
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v1, :cond_b

    .line 140
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_39

    .line 144
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/hardware/usb/V1_0/IUsb;->getService()Landroid/hardware/usb/V1_0/IUsb;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 145
    new-instance v2, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;

    invoke-direct {v2, p0, p1}, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;-><init>(Lcom/android/server/usb/hal/port/UsbPortHidl;Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/usb/V1_0/IUsb;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 146
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    invoke-interface {v1, v2}, Landroid/hardware/usb/V1_0/IUsb;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    .line 147
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {p0}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_27
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_27} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_28
    .catchall {:try_start_b .. :try_end_27} :catchall_9

    goto :goto_37

    :catch_28
    move-exception p0

    goto :goto_2c

    :catch_2a
    move-exception p0

    goto :goto_32

    .line 153
    :goto_2c
    :try_start_2c
    const-string v1, "connectToProxy: usb hal service not responding"

    invoke-static {p1, v1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_37

    .line 150
    :goto_32
    const-string v1, "connectToProxy: usb hal service not found. Did the service fail to start?"

    invoke-static {p1, v1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 155
    :goto_37
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_9

    throw p0
.end method

.method public static isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z
    .registers 4

    const/4 v0, 0x1

    .line 165
    :try_start_1
    invoke-static {v0}, Landroid/hardware/usb/V1_0/IUsb;->getService(Z)Landroid/hardware/usb/V1_0/IUsb;
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_4} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_b

    :catch_5
    move-exception v1

    .line 170
    const-string v2, "IUSB hal service present but failed to get service"

    invoke-static {p0, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_b
    return v0

    :catch_c
    move-exception v0

    .line 167
    const-string v1, "connectToProxy: usb hidl hal service not found."

    invoke-static {p0, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
    .registers 5

    .line 201
    iget-object p3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 202
    :try_start_3
    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p4, :cond_13

    .line 203
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "Proxy is null. Retry !"

    const/4 p2, 0x6

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 204
    monitor-exit p3
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception p0

    goto :goto_30

    .line 210
    :cond_13
    :try_start_13
    invoke-static {p4}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    move-result-object p4

    .line 211
    invoke-interface {p4, p1, p2}, Landroid/hardware/usb/V1_2/IUsb;->enableContaminantPresenceDetection(Ljava/lang/String;Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_1a} :catch_1b
    .catchall {:try_start_13 .. :try_end_1a} :catchall_11

    goto :goto_2e

    :catch_1b
    move-exception p1

    goto :goto_1f

    :catch_1d
    move-exception p1

    goto :goto_27

    .line 215
    :goto_1f
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Method only applicable to V1.2 or above implementation"

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2e

    .line 213
    :goto_27
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Failed to set contaminant detection"

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 218
    :goto_2e
    monitor-exit p3

    return-void

    :goto_30
    monitor-exit p3
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_11

    throw p0
.end method

.method public enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 6

    const/4 p1, 0x2

    .line 284
    :try_start_1
    invoke-interface {p5, p1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p1

    .line 286
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Failed to call onOperationComplete"

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z
    .registers 12

    const/4 v0, 0x0

    .line 339
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->getUsbHalVersion()I

    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_b5

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2e

    const/4 p2, 0x2

    .line 349
    :try_start_a
    invoke-interface {p5, p2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_2d

    :catch_e
    move-exception p2

    .line 351
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call onOperationComplete. opID:"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " portId:"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2d
    return v0

    .line 359
    :cond_2e
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 361
    :try_start_32
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 362
    invoke-static {v3}, Landroid/hardware/usb/V1_3/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_3/IUsb;

    move-result-object v3

    .line 363
    invoke-interface {v3, p2}, Landroid/hardware/usb/V1_3/IUsb;->enableUsbDataSignal(Z)Z

    move-result v3
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3c} :catch_6f
    .catchall {:try_start_32 .. :try_end_3c} :catchall_6d

    .line 376
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_6d

    if-eqz v3, :cond_47

    if-eqz p2, :cond_43

    move p2, v0

    goto :goto_45

    :cond_43
    const/16 p2, 0x10

    .line 378
    :goto_45
    sput p2, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    :cond_47
    xor-int/lit8 p2, v3, 0x1

    .line 381
    :try_start_49
    invoke-interface {p5, p2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_6c

    :catch_4d
    move-exception p2

    .line 385
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call onOperationComplete. opID:"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " portId:"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_6c
    return v0

    :catchall_6d
    move-exception p0

    goto :goto_b3

    :catch_6f
    move-exception p2

    .line 365
    :try_start_70
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed enableUsbData: opId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " portId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8e
    .catchall {:try_start_70 .. :try_end_8e} :catchall_6d

    .line 368
    :try_start_8e
    invoke-interface {p5, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_91} :catch_92
    .catchall {:try_start_8e .. :try_end_91} :catchall_6d

    goto :goto_b1

    :catch_92
    move-exception p2

    .line 370
    :try_start_93
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call onOperationComplete. opID:"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " portId:"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 374
    :goto_b1
    monitor-exit v1

    return v0

    .line 376
    :goto_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_93 .. :try_end_b4} :catchall_6d

    throw p0

    :catch_b5
    move-exception p2

    .line 341
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to query USB HAL version. opID:"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " portId:"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method public enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 5

    const/4 p1, 0x2

    .line 295
    :try_start_1
    invoke-interface {p4, p1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p1

    .line 297
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Failed to call onOperationComplete"

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public getUsbHalVersion()I
    .registers 5

    .line 93
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v1, :cond_42

    .line 97
    invoke-static {v1}, Landroid/hardware/usb/V1_3/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_3/IUsb;

    move-result-object v1

    if-eqz v1, :cond_10

    const/16 p0, 0xd

    goto :goto_28

    .line 99
    :cond_10
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-static {v1}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    move-result-object v1

    if-eqz v1, :cond_1b

    const/16 p0, 0xc

    goto :goto_28

    .line 101
    :cond_1b
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-static {p0}, Landroid/hardware/usb/V1_1/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_1/IUsb;

    move-result-object p0

    if-eqz p0, :cond_26

    const/16 p0, 0xb

    goto :goto_28

    :cond_26
    const/16 p0, 0xa

    .line 106
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB HAL HIDL version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 107
    monitor-exit v0

    return p0

    :catchall_40
    move-exception p0

    goto :goto_4a

    .line 95
    :cond_42
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "IUsb not initialized yet"

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_40

    throw p0
.end method

.method public queryPortStatus(J)V
    .registers 4

    .line 223
    iget-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 224
    :try_start_3
    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p2, :cond_13

    .line 225
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Proxy is null. Retry !"

    const/4 v0, 0x6

    invoke-static {v0, p0, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 226
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception p0

    goto :goto_20

    .line 230
    :cond_13
    :try_start_13
    invoke-interface {p2}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_11

    goto :goto_1e

    :catch_17
    move-exception p0

    .line 232
    :try_start_18
    const-string p2, "ServiceStart: Failed to query port status"

    const/4 v0, 0x0

    invoke-static {v0, p2, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 234
    :goto_1e
    monitor-exit p1

    return-void

    :goto_20
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_11

    throw p0
.end method

.method public resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 7

    const/4 v0, 0x2

    .line 325
    :try_start_1
    invoke-interface {p4, v0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p4

    .line 327
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call onOperationComplete. opID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " portId:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public switchDataRole(Ljava/lang/String;IJ)V
    .registers 7

    .line 303
    iget-object p3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 304
    :try_start_3
    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p4, :cond_13

    .line 305
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "Proxy is null. Retry !"

    const/4 p2, 0x6

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 306
    monitor-exit p3

    return-void

    :catchall_11
    move-exception p0

    goto :goto_4a

    .line 309
    :cond_13
    new-instance p4, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p4}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    const/4 v0, 0x0

    .line 310
    iput v0, p4, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 311
    iput p2, p4, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_11

    .line 313
    :try_start_1d
    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {p2, p1, p4}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_11

    goto :goto_48

    :catch_23
    move-exception p2

    .line 315
    :try_start_24
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set the USB data role: portId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newDataRole="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p4, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 316
    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 318
    :goto_48
    monitor-exit p3

    return-void

    :goto_4a
    monitor-exit p3
    :try_end_4b
    .catchall {:try_start_24 .. :try_end_4b} :catchall_11

    throw p0
.end method

.method public switchMode(Ljava/lang/String;IJ)V
    .registers 7

    .line 239
    iget-object p3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 240
    :try_start_3
    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p4, :cond_13

    .line 241
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "Proxy is null. Retry !"

    const/4 p2, 0x6

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 242
    monitor-exit p3

    return-void

    :catchall_11
    move-exception p0

    goto :goto_4a

    .line 245
    :cond_13
    new-instance p4, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p4}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    const/4 v0, 0x2

    .line 246
    iput v0, p4, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 247
    iput p2, p4, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_11

    .line 249
    :try_start_1d
    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {p2, p1, p4}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_11

    goto :goto_48

    :catch_23
    move-exception p2

    .line 251
    :try_start_24
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set the USB port mode: portId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newMode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p4, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 253
    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 255
    :goto_48
    monitor-exit p3

    return-void

    :goto_4a
    monitor-exit p3
    :try_end_4b
    .catchall {:try_start_24 .. :try_end_4b} :catchall_11

    throw p0
.end method

.method public switchPowerRole(Ljava/lang/String;IJ)V
    .registers 7

    .line 261
    iget-object p3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 262
    :try_start_3
    iget-object p4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez p4, :cond_13

    .line 263
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "Proxy is null. Retry !"

    const/4 p2, 0x6

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 264
    monitor-exit p3

    return-void

    :catchall_11
    move-exception p0

    goto :goto_4a

    .line 267
    :cond_13
    new-instance p4, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p4}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    const/4 v0, 0x1

    .line 268
    iput v0, p4, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 269
    iput p2, p4, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_11

    .line 271
    :try_start_1d
    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {p2, p1, p4}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_11

    goto :goto_48

    :catch_23
    move-exception p2

    .line 273
    :try_start_24
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set the USB power role: portId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newPowerRole="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p4, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 274
    invoke-static {p1}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 276
    :goto_48
    monitor-exit p3

    return-void

    :goto_4a
    monitor-exit p3
    :try_end_4b
    .catchall {:try_start_24 .. :try_end_4b} :catchall_11

    throw p0
.end method

.method public systemReady()V
    .registers 2

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    return-void
.end method
