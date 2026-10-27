.class public final Lcom/android/server/usb/hal/port/UsbPortHidl;
.super Ljava/lang/Object;
.source "UsbPortHidl.java"

# interfaces
.implements Lcom/android/server/usb/hal/port/UsbPortHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;,
        Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;,
        Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final USB_HAL_DEATH_COOKIE:I = 0x3e8

.field private static sUsbDataStatus:I


# instance fields
.field private mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

.field private final mLock:Ljava/lang/Object;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private mProxy:Landroid/hardware/usb/V1_0/IUsb;

.field public mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field private mSystemReady:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usb/hal/port/UsbPortHidl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortHidl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmProxy(Lcom/android/server/usb/hal/port/UsbPortHidl;Landroid/hardware/usb/V1_0/IUsb;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnectToProxy(Lcom/android/server/usb/hal/port/UsbPortHidl;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsUsbDataStatus()I
    .registers 1

    sget v0, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 74
    const-class v0, Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/hal/port/UsbPortHidl;->TAG:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9
    .param p1, "portManager"    # Lcom/android/server/usb/UsbPortManager;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 175
    const-string v0, "Failed to register service start notification"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    .line 176
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager;

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 177
    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 178
    new-instance v1, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;-><init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/hal/port/UsbPortHidl;)V

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    .line 180
    :try_start_20
    new-instance v1, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;

    invoke-direct {v1, p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;-><init>(Lcom/android/server/usb/hal/port/UsbPortHidl;)V

    .line 182
    .local v1, "serviceNotification":Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    const-string v4, "android.hardware.usb@1.0::IUsb"

    const-string v5, ""

    .line 183
    invoke-interface {v2, v4, v5, v1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v2

    .line 185
    .local v2, "ret":Z
    if-nez v2, :cond_37

    .line 186
    const/4 v4, 0x6

    invoke-static {v4, v3, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_37} :catch_3e

    .line 193
    .end local v1    # "serviceNotification":Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;
    .end local v2    # "ret":Z
    :cond_37
    nop

    .line 194
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p0, v0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 195
    return-void

    .line 189
    :catch_3e
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v3, v0, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 192
    return-void
.end method

.method private connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 137
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v1, :cond_9

    .line 139
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_36

    return-void

    .line 143
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/hardware/usb/V1_0/IUsb;->getService()Landroid/hardware/usb/V1_0/IUsb;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 144
    new-instance v2, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;

    invoke-direct {v2, p0, p1}, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;-><init>(Lcom/android/server/usb/hal/port/UsbPortHidl;Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/usb/V1_0/IUsb;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 145
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;

    invoke-interface {v1, v2}, Landroid/hardware/usb/V1_0/IUsb;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    .line 146
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v1}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_25
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_25} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_25} :catch_26
    .catchall {:try_start_9 .. :try_end_25} :catchall_36

    goto :goto_33

    .line 151
    :catch_26
    move-exception v1

    .line 152
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_27
    const-string v2, "connectToProxy: usb hal service not responding"

    invoke-static {p1, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_34

    .line 148
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2d
    move-exception v1

    .line 149
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "connectToProxy: usb hal service not found. Did the service fail to start?"

    invoke-static {p1, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 153
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_33
    nop

    .line 154
    :goto_34
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_36

    throw v1
.end method

.method static isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z
    .registers 4
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 164
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Landroid/hardware/usb/V1_0/IUsb;->getService(Z)Landroid/hardware/usb/V1_0/IUsb;
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_4} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 170
    goto :goto_b

    .line 168
    :catch_5
    move-exception v1

    .line 169
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "IUSB hal service present but failed to get service"

    invoke-static {p0, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 172
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_b
    return v0

    .line 165
    :catch_c
    move-exception v0

    .line 166
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "connectToProxy: usb hidl hal service not found."

    invoke-static {p0, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 167
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
    .registers 9
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "transactionId"    # J

    .line 200
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez v1, :cond_11

    .line 202
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "Proxy is null. Retry !"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 203
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2e

    return-void

    .line 208
    :cond_11
    nop

    .line 209
    :try_start_12
    invoke-static {v1}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    move-result-object v1

    .line 210
    .local v1, "proxy":Landroid/hardware/usb/V1_2/IUsb;
    invoke-interface {v1, p1, p2}, Landroid/hardware/usb/V1_2/IUsb;->enableContaminantPresenceDetection(Ljava/lang/String;Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_23
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_19} :catch_1a
    .catchall {:try_start_12 .. :try_end_19} :catchall_2e

    .line 216
    .end local v1    # "proxy":Landroid/hardware/usb/V1_2/IUsb;
    :goto_19
    goto :goto_2c

    .line 213
    :catch_1a
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "Method only applicable to V1.2 or above implementation"

    invoke-static {v2, v3, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2c

    .line 211
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_23
    move-exception v1

    .line 212
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "Failed to set contaminant detection"

    invoke-static {v2, v3, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_19

    .line 217
    :goto_2c
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 9
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "limit"    # Z
    .param p3, "transactionId"    # J
    .param p5, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 283
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {p5, v0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 286
    goto :goto_d

    .line 284
    :catch_5
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "Failed to call onOperationComplete"

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 287
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d
    return-void
.end method

.method public enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z
    .registers 14
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "transactionId"    # J
    .param p5, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 338
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->getUsbHalVersion()I

    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_ca

    .line 344
    .local v1, "halVersion":I
    nop

    .line 346
    const/16 v2, 0xd

    if-eq v1, v2, :cond_33

    .line 348
    const/4 v2, 0x2

    :try_start_b
    invoke-interface {p5, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 353
    goto :goto_32

    .line 349
    :catch_f
    move-exception v2

    .line 350
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call onOperationComplete. opID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " portId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 354
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_32
    return v0

    .line 358
    :cond_33
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 360
    const/4 v3, 0x1

    :try_start_37
    iget-object v4, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 361
    invoke-static {v4}, Landroid/hardware/usb/V1_3/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_3/IUsb;

    move-result-object v4

    .line 362
    .local v4, "proxy":Landroid/hardware/usb/V1_3/IUsb;
    invoke-interface {v4, p2}, Landroid/hardware/usb/V1_3/IUsb;->enableUsbDataSignal(Z)Z

    move-result v5
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_41} :catch_7c
    .catchall {:try_start_37 .. :try_end_41} :catchall_7a

    .line 374
    .end local v4    # "proxy":Landroid/hardware/usb/V1_3/IUsb;
    .local v5, "success":Z
    nop

    .line 375
    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_7a

    .line 376
    if-eqz v5, :cond_4d

    .line 377
    if-eqz p2, :cond_49

    move v2, v0

    goto :goto_4b

    :cond_49
    const/16 v2, 0x10

    :goto_4b
    sput v2, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    .line 380
    :cond_4d
    if-eqz v5, :cond_51

    .line 381
    move v3, v0

    goto :goto_52

    .line 382
    :cond_51
    nop

    .line 380
    :goto_52
    :try_start_52
    invoke-interface {p5, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_55} :catch_56

    .line 387
    goto :goto_79

    .line 383
    :catch_56
    move-exception v2

    .line 384
    .local v2, "r":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call onOperationComplete. opID:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " portId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 388
    .end local v2    # "r":Landroid/os/RemoteException;
    :goto_79
    return v0

    .line 375
    .end local v5    # "success":Z
    :catchall_7a
    move-exception v0

    goto :goto_c8

    .line 363
    :catch_7c
    move-exception v4

    .line 364
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_7d
    iget-object v5, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed enableUsbData: opId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " portId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9f
    .catchall {:try_start_7d .. :try_end_9f} :catchall_7a

    .line 367
    :try_start_9f
    invoke-interface {p5, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a2} :catch_a3
    .catchall {:try_start_9f .. :try_end_a2} :catchall_7a

    .line 372
    goto :goto_c6

    .line 368
    :catch_a3
    move-exception v3

    .line 369
    .local v3, "r":Landroid/os/RemoteException;
    :try_start_a4
    iget-object v5, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to call onOperationComplete. opID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " portId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 373
    .end local v3    # "r":Landroid/os/RemoteException;
    :goto_c6
    monitor-exit v2

    return v0

    .line 375
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_c8
    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_a4 .. :try_end_c9} :catchall_7a

    throw v0

    .line 339
    .end local v1    # "halVersion":I
    :catch_ca
    move-exception v1

    .line 340
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query USB HAL version. opID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " portId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 343
    return v0
.end method

.method public enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 8
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "transactionId"    # J
    .param p4, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 294
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {p4, v0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 297
    goto :goto_d

    .line 295
    :catch_5
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "Failed to call onOperationComplete"

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d
    return-void
.end method

.method public getUsbHalVersion()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v1, :cond_42

    .line 96
    invoke-static {v1}, Landroid/hardware/usb/V1_3/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_3/IUsb;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 97
    const/16 v1, 0xd

    .local v1, "version":I
    goto :goto_28

    .line 98
    .end local v1    # "version":I
    :cond_10
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-static {v1}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 99
    const/16 v1, 0xc

    .restart local v1    # "version":I
    goto :goto_28

    .line 100
    .end local v1    # "version":I
    :cond_1b
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-static {v1}, Landroid/hardware/usb/V1_1/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_1/IUsb;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 101
    const/16 v1, 0xb

    .restart local v1    # "version":I
    goto :goto_28

    .line 103
    .end local v1    # "version":I
    :cond_26
    const/16 v1, 0xa

    .line 105
    .restart local v1    # "version":I
    :goto_28
    const/4 v2, 0x4

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USB HAL HIDL version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 106
    monitor-exit v0

    return v1

    .line 94
    .end local v1    # "version":I
    :cond_42
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "IUsb not initialized yet"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usb/hal/port/UsbPortHidl;
    throw v1

    .line 107
    .restart local p0    # "this":Lcom/android/server/usb/hal/port/UsbPortHidl;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public queryPortStatus(J)V
    .registers 7
    .param p1, "transactionId"    # J

    .line 222
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez v1, :cond_11

    .line 224
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "Proxy is null. Retry !"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 225
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1e

    return-void

    .line 229
    :cond_11
    :try_start_11
    invoke-interface {v1}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_1e

    .line 232
    goto :goto_1c

    .line 230
    :catch_15
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    :try_start_17
    const-string v3, "ServiceStart: Failed to query port status"

    invoke-static {v2, v3, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 233
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1c
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 9
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "transactionId"    # J
    .param p4, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 324
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {p4, v0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 329
    goto :goto_28

    .line 325
    :catch_5
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onOperationComplete. opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method public switchDataRole(Ljava/lang/String;IJ)V
    .registers 11
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newDataRole"    # I
    .param p3, "transactionId"    # J

    .line 302
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez v1, :cond_11

    .line 304
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "Proxy is null. Retry !"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 305
    monitor-exit v0

    return-void

    .line 308
    :cond_11
    new-instance v1, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 309
    .local v1, "newRole":Landroid/hardware/usb/V1_0/PortRole;
    const/4 v2, 0x0

    iput v2, v1, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 310
    iput p2, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_4c

    .line 312
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v2, p1, v1}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_4c

    .line 316
    goto :goto_4a

    .line 313
    :catch_21
    move-exception v2

    .line 314
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_22
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set the USB data role: portId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newDataRole="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 315
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-static {v3, v4, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 317
    .end local v1    # "newRole":Landroid/hardware/usb/V1_0/PortRole;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4a
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_22 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public switchMode(Ljava/lang/String;IJ)V
    .registers 11
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "transactionId"    # J

    .line 238
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez v1, :cond_11

    .line 240
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "Proxy is null. Retry !"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 241
    monitor-exit v0

    return-void

    .line 244
    :cond_11
    new-instance v1, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 245
    .local v1, "newRole":Landroid/hardware/usb/V1_0/PortRole;
    const/4 v2, 0x2

    iput v2, v1, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 246
    iput p2, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_4c

    .line 248
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v2, p1, v1}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_4c

    .line 253
    goto :goto_4a

    .line 249
    :catch_21
    move-exception v2

    .line 250
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_22
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set the USB port mode: portId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 252
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-static {v3, v4, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 254
    .end local v1    # "newRole":Landroid/hardware/usb/V1_0/PortRole;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4a
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_22 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public switchPowerRole(Ljava/lang/String;IJ)V
    .registers 11
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newPowerRole"    # I
    .param p3, "transactionId"    # J

    .line 260
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-nez v1, :cond_11

    .line 262
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "Proxy is null. Retry !"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 263
    monitor-exit v0

    return-void

    .line 266
    :cond_11
    new-instance v1, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 267
    .local v1, "newRole":Landroid/hardware/usb/V1_0/PortRole;
    const/4 v2, 0x1

    iput v2, v1, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 268
    iput p2, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_4c

    .line 270
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v2, p1, v1}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_4c

    .line 274
    goto :goto_4a

    .line 271
    :catch_21
    move-exception v2

    .line 272
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_22
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set the USB power role: portId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newPowerRole="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 273
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-static {v3, v4, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 275
    .end local v1    # "newRole":Landroid/hardware/usb/V1_0/PortRole;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4a
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_22 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public systemReady()V
    .registers 2

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    .line 160
    return-void
.end method
