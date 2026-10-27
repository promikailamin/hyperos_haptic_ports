.class public final Lcom/android/server/usb/hal/port/UsbPortAidl;
.super Ljava/lang/Object;
.source "UsbPortAidl.java"

# interfaces
.implements Lcom/android/server/usb/hal/port/UsbPortHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final USB_AIDL_SERVICE:Ljava/lang/String; = "android.hardware.usb.IUsb/default"

.field public static final USB_DATA_STATUS_DISABLED_CONTAMINANT:I = 0x3

.field public static final USB_DATA_STATUS_DISABLED_DEBUG:I = 0x6

.field public static final USB_DATA_STATUS_DISABLED_DOCK:I = 0x4

.field public static final USB_DATA_STATUS_DISABLED_FORCE:I = 0x5

.field public static final USB_DATA_STATUS_DISABLED_OVERHEAT:I = 0x2

.field public static final USB_DATA_STATUS_ENABLED:I = 0x1

.field public static final USB_DATA_STATUS_UNKNOWN:I

.field private static final sCallbacks:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/hardware/usb/IUsbOperationInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

.field private final mLock:Ljava/lang/Object;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private mProxy:Landroid/hardware/usb/IUsb;

.field public mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field private mSystemReady:Z

.field private mTransactionId:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortAidl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mSystemReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;
    .registers 1

    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-class v0, Lcom/android/server/usb/hal/port/UsbPortAidl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "portManager"    # Lcom/android/server/usb/UsbPortManager;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 167
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager;

    iput-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 168
    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 169
    new-instance v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;-><init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/hal/port/UsbPortAidl;)V

    iput-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    .line 170
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p0, v0}, Lcom/android/server/usb/hal/port/UsbPortAidl;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 171
    return-void
.end method

.method private connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 136
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-eqz v1, :cond_9

    .line 138
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_46

    return-void

    .line 142
    :cond_9
    :try_start_9
    const-string v1, "android.hardware.usb.IUsb/default"

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mBinder:Landroid/os/IBinder;

    .line 143
    invoke-static {v1}, Landroid/hardware/usb/IUsb$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsb;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 144
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mBinder:Landroid/os/IBinder;

    new-instance v2, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/hal/port/UsbPortAidl;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 145
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    invoke-interface {v1, v2}, Landroid/hardware/usb/IUsb;->setCallback(Landroid/hardware/usb/IUsbCallback;)V

    .line 146
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    iget-wide v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mTransactionId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mTransactionId:J

    invoke-interface {v1, v2, v3}, Landroid/hardware/usb/IUsb;->queryPortStatus(J)V
    :try_end_35
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_35} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_35} :catch_36
    .catchall {:try_start_9 .. :try_end_35} :catchall_46

    goto :goto_43

    .line 150
    :catch_36
    move-exception v1

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_37
    const-string v2, "connectToProxy: usb hal service not responding"

    invoke-static {p1, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_44

    .line 147
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_3d
    move-exception v1

    .line 148
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "connectToProxy: usb hal service not found. Did the service fail to start?"

    invoke-static {p1, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 152
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_43
    nop

    .line 153
    :goto_44
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_46

    throw v1
.end method

.method static isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z
    .registers 3
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 158
    :try_start_0
    const-string v0, "android.hardware.usb.IUsb/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 159
    :catch_7
    move-exception v0

    .line 160
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "connectToProxy: usb Aidl hal service not found."

    invoke-static {p0, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 163
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
    .registers 10
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "operationID"    # J

    .line 176
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v1, :cond_22

    .line 178
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is null. Retry ! opID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 180
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_41

    return-void

    .line 185
    :cond_22
    :try_start_22
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/usb/IUsb;->enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26
    .catchall {:try_start_22 .. :try_end_25} :catchall_41

    .line 189
    goto :goto_3f

    .line 186
    :catch_26
    move-exception v1

    .line 187
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_27
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set contaminant detection. opID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 190
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3f
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 15
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "limit"    # Z
    .param p3, "operationID"    # J
    .param p5, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 363
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    move-wide v0, p3

    .line 365
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 367
    :try_start_7
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v4, 0x1

    if-nez v3, :cond_2a

    .line 368
    const/4 v3, 0x6

    iget-object v5, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableLimitPowerTransfer: Proxy is null. Retry !opID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 371
    invoke-interface {p5, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_28} :catch_9c
    .catchall {:try_start_7 .. :try_end_28} :catchall_9a

    .line 372
    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_9a

    return-void

    .line 374
    :cond_2a
    :goto_2a
    :try_start_2a
    sget-object v3, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3c

    .line 375
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v3

    int-to-long v0, v3

    goto :goto_2a

    .line 377
    :cond_3c
    cmp-long v5, v0, p3

    if-eqz v5, :cond_63

    .line 378
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableUsbData: operationID exists ! opID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_63} :catch_9c
    .catchall {:try_start_2a .. :try_end_63} :catchall_9a

    .line 382
    :cond_63
    :try_start_63
    invoke-virtual {v3, v0, v1, p5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 383
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v3, p1, p2, v0, v1}, Landroid/hardware/usb/IUsb;->limitPowerTransfer(Ljava/lang/String;ZJ)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6b} :catch_6c
    .catchall {:try_start_63 .. :try_end_6b} :catchall_9a

    .line 392
    goto :goto_99

    .line 384
    :catch_6c
    move-exception v3

    .line 385
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_6d
    iget-object v5, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableLimitPowerTransfer: Failed while invoking AIDL HAL portID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " opID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 388
    if-eqz p5, :cond_94

    .line 389
    invoke-interface {p5, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 391
    :cond_94
    sget-object v4, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_99} :catch_9c
    .catchall {:try_start_6d .. :try_end_99} :catchall_9a

    .line 397
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_99
    goto :goto_bf

    .line 398
    :catchall_9a
    move-exception v3

    goto :goto_c1

    .line 393
    :catch_9c
    move-exception v3

    .line 394
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_9d
    iget-object v4, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableLimitPowerTransfer: Failed to call onOperationComplete portID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " opID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 398
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_bf
    monitor-exit v2

    .line 399
    return-void

    .line 398
    :goto_c1
    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_9d .. :try_end_c2} :catchall_9a

    throw v3
.end method

.method public enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z
    .registers 16
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "operationID"    # J
    .param p5, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 319
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    move-wide v0, p3

    .line 322
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 324
    const/4 v3, 0x0

    :try_start_b
    iget-object v4, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v5, 0x1

    if-nez v4, :cond_2e

    .line 325
    const/4 v4, 0x6

    iget-object v6, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableUsbData: Proxy is null. Retry !opID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 328
    invoke-interface {p5, v5}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2c} :catch_a3
    .catchall {:try_start_b .. :try_end_2c} :catchall_a1

    .line 329
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_a1

    return v3

    .line 331
    :cond_2e
    :goto_2e
    :try_start_2e
    sget-object v4, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 332
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v4

    int-to-long v0, v4

    goto :goto_2e

    .line 334
    :cond_40
    cmp-long v6, v0, p3

    if-eqz v6, :cond_67

    .line 335
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableUsbData: operationID exists ! opID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_67} :catch_a3
    .catchall {:try_start_2e .. :try_end_67} :catchall_a1

    .line 339
    :cond_67
    :try_start_67
    invoke-virtual {v4, v0, v1, p5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 340
    iget-object v4, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v4, p1, p2, v0, v1}, Landroid/hardware/usb/IUsb;->enableUsbData(Ljava/lang/String;ZJ)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6f} :catch_73
    .catchall {:try_start_67 .. :try_end_6f} :catchall_a1

    .line 348
    nop

    .line 355
    nop

    .line 356
    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_a1

    return v5

    .line 341
    :catch_73
    move-exception v4

    .line 342
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_74
    iget-object v6, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableUsbData: Failed to invoke enableUsbData: portID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "opID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 345
    invoke-interface {p5, v5}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 346
    sget-object v5, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_9f} :catch_a3
    .catchall {:try_start_74 .. :try_end_9f} :catchall_a1

    .line 347
    :try_start_9f
    monitor-exit v2

    return v3

    .line 357
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_a1
    move-exception v3

    goto :goto_ce

    .line 349
    :catch_a3
    move-exception v4

    .line 350
    .restart local v4    # "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableUsbData: Failed to call onOperationComplete portID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "opID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 353
    sget-object v5, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 354
    monitor-exit v2

    return v3

    .line 357
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_ce
    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_9f .. :try_end_cf} :catchall_a1

    throw v3
.end method

.method public enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 14
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "operationID"    # J
    .param p4, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 404
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    move-wide v0, p2

    .line 406
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 408
    :try_start_7
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v4, 0x1

    if-nez v3, :cond_2a

    .line 409
    const/4 v3, 0x6

    iget-object v5, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableUsbDataWhileDocked: Proxy is null. Retry !opID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 412
    invoke-interface {p4, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_28} :catch_9c
    .catchall {:try_start_7 .. :try_end_28} :catchall_9a

    .line 413
    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_9a

    return-void

    .line 415
    :cond_2a
    :goto_2a
    :try_start_2a
    sget-object v3, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3c

    .line 416
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v3

    int-to-long v0, v3

    goto :goto_2a

    .line 418
    :cond_3c
    cmp-long v5, v0, p2

    if-eqz v5, :cond_63

    .line 419
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableUsbDataWhileDocked: operationID exists ! opID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_63} :catch_9c
    .catchall {:try_start_2a .. :try_end_63} :catchall_9a

    .line 424
    :cond_63
    :try_start_63
    invoke-virtual {v3, v0, v1, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 425
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v3, p1, v0, v1}, Landroid/hardware/usb/IUsb;->enableUsbDataWhileDocked(Ljava/lang/String;J)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6b} :catch_6c
    .catchall {:try_start_63 .. :try_end_6b} :catchall_9a

    .line 434
    goto :goto_99

    .line 426
    :catch_6c
    move-exception v3

    .line 427
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_6d
    iget-object v5, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableUsbDataWhileDocked: error while invoking halportID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " opID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 430
    if-eqz p4, :cond_94

    .line 431
    invoke-interface {p4, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 433
    :cond_94
    sget-object v4, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_99} :catch_9c
    .catchall {:try_start_6d .. :try_end_99} :catchall_9a

    .line 439
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_99
    goto :goto_bf

    .line 440
    :catchall_9a
    move-exception v3

    goto :goto_c1

    .line 435
    :catch_9c
    move-exception v3

    .line 436
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_9d
    iget-object v4, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableUsbDataWhileDocked: Failed to call onOperationComplete portID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " opID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 440
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_bf
    monitor-exit v2

    .line 441
    return-void

    .line 440
    :goto_c1
    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_9d .. :try_end_c2} :catchall_9a

    throw v3
.end method

.method public getUsbHalVersion()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-eqz v1, :cond_12

    .line 117
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    .line 118
    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, "USB HAL AIDL version: USB_HAL_V2_0"

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 119
    const/16 v0, 0x14

    return v0

    .line 115
    :cond_12
    :try_start_12
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "IUsb not initialized yet"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usb/hal/port/UsbPortAidl;
    throw v1

    .line 117
    .restart local p0    # "this":Lcom/android/server/usb/hal/port/UsbPortAidl;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public queryPortStatus(J)V
    .registers 8
    .param p1, "operationID"    # J

    .line 195
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v1, :cond_22

    .line 197
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is null. Retry ! opID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 199
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_40

    return-void

    .line 203
    :cond_22
    :try_start_22
    invoke-interface {v1, p1, p2}, Landroid/hardware/usb/IUsb;->queryPortStatus(J)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26
    .catchall {:try_start_22 .. :try_end_25} :catchall_40

    .line 207
    goto :goto_3e

    .line 204
    :catch_26
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    :try_start_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceStart: Failed to query port status. opID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 208
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3e
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 14
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "operationID"    # J
    .param p4, "callback"    # Landroid/hardware/usb/IUsbOperationInternal;

    .line 279
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    move-wide v0, p2

    .line 282
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 284
    :try_start_a
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v4, 0x1

    if-nez v3, :cond_2c

    .line 285
    const/4 v3, 0x6

    iget-object v5, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetUsbPort: Proxy is null. Retry !opID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 288
    invoke-interface {p4, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 290
    :cond_2c
    :goto_2c
    sget-object v3, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3e

    .line 291
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v3

    int-to-long v0, v3

    goto :goto_2c

    .line 293
    :cond_3e
    cmp-long v5, v0, p2

    if-eqz v5, :cond_66

    .line 294
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resetUsbPort: operationID exists ! opID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_66} :catch_9f
    .catchall {:try_start_a .. :try_end_66} :catchall_9d

    .line 298
    :cond_66
    :try_start_66
    invoke-virtual {v3, v0, v1, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 299
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v3, p1, v0, v1}, Landroid/hardware/usb/IUsb;->resetUsbPort(Ljava/lang/String;J)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6e} :catch_6f
    .catchall {:try_start_66 .. :try_end_6e} :catchall_9d

    .line 306
    goto :goto_9c

    .line 300
    :catch_6f
    move-exception v3

    .line 301
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_70
    iget-object v5, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetUsbPort: Failed to resetUsbPort: portID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "opId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 304
    invoke-interface {p4, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 305
    sget-object v4, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_9c} :catch_9f
    .catchall {:try_start_70 .. :try_end_9c} :catchall_9d

    .line 312
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_9c
    goto :goto_c9

    .line 313
    :catchall_9d
    move-exception v3

    goto :goto_cb

    .line 307
    :catch_9f
    move-exception v3

    .line 308
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_a0
    iget-object v4, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetUsbPort: Failed to call onOperationComplete portID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "opID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 311
    sget-object v4, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 313
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_c9
    monitor-exit v2

    .line 314
    return-void

    .line 313
    :goto_cb
    monitor-exit v2
    :try_end_cc
    .catchall {:try_start_a0 .. :try_end_cc} :catchall_9d

    throw v3
.end method

.method public serviceDied()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Usb AIDL hal service died"

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    const/4 v1, 0x0

    :try_start_c
    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 131
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 132
    invoke-direct {p0, v1}, Lcom/android/server/usb/hal/port/UsbPortAidl;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 133
    return-void

    .line 131
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public switchDataRole(Ljava/lang/String;IJ)V
    .registers 11
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newDataRole"    # I
    .param p3, "operationID"    # J

    .line 257
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v1, :cond_22

    .line 259
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is null. Retry ! opID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 261
    monitor-exit v0

    return-void

    .line 264
    :cond_22
    new-instance v1, Landroid/hardware/usb/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    .line 265
    .local v1, "newRole":Landroid/hardware/usb/PortRole;
    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Landroid/hardware/usb/PortRole;->setDataRole(B)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_65

    .line 267
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v2, p1, v1, p3, p4}, Landroid/hardware/usb/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31
    .catchall {:try_start_2b .. :try_end_30} :catchall_65

    .line 272
    goto :goto_63

    .line 268
    :catch_31
    move-exception v2

    .line 269
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_32
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

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

    .line 270
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "opID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-static {v3, v4, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 273
    .end local v1    # "newRole":Landroid/hardware/usb/PortRole;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_63
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_32 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public switchMode(Ljava/lang/String;IJ)V
    .registers 11
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "operationID"    # J

    .line 213
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v1, :cond_22

    .line 215
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is null. Retry ! opID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 217
    monitor-exit v0

    return-void

    .line 220
    :cond_22
    new-instance v1, Landroid/hardware/usb/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    .line 221
    .local v1, "newRole":Landroid/hardware/usb/PortRole;
    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Landroid/hardware/usb/PortRole;->setMode(B)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_65

    .line 223
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v2, p1, v1, p3, p4}, Landroid/hardware/usb/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31
    .catchall {:try_start_2b .. :try_end_30} :catchall_65

    .line 229
    goto :goto_63

    .line 224
    :catch_31
    move-exception v2

    .line 225
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_32
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

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

    .line 227
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "opID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-static {v3, v4, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 230
    .end local v1    # "newRole":Landroid/hardware/usb/PortRole;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_63
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_32 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public switchPowerRole(Ljava/lang/String;IJ)V
    .registers 11
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newPowerRole"    # I
    .param p3, "operationID"    # J

    .line 236
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v1, :cond_22

    .line 238
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is null. Retry ! opID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 240
    monitor-exit v0

    return-void

    .line 243
    :cond_22
    new-instance v1, Landroid/hardware/usb/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    .line 244
    .local v1, "newRole":Landroid/hardware/usb/PortRole;
    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Landroid/hardware/usb/PortRole;->setPowerRole(B)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_65

    .line 246
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v2, p1, v1, p3, p4}, Landroid/hardware/usb/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31
    .catchall {:try_start_2b .. :try_end_30} :catchall_65

    .line 251
    goto :goto_63

    .line 247
    :catch_31
    move-exception v2

    .line 248
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_32
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

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

    .line 249
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "opID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-static {v3, v4, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 252
    .end local v1    # "newRole":Landroid/hardware/usb/PortRole;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_63
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_32 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public systemReady()V
    .registers 2

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mSystemReady:Z

    .line 125
    return-void
.end method
