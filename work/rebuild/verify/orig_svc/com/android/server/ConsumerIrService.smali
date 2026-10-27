.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# instance fields
.field public mAidlService:Landroid/hardware/ir/IConsumerIr;

.field public final mContext:Landroid/content/Context;

.field public final mHalLock:Ljava/lang/Object;

.field public final mHasNativeHal:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 45
    invoke-static {}, Lcom/android/server/utils/LazyJniRegistrar;->registerConsumerIrService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 54
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    .line 55
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    .line 56
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 58
    const-string v1, "ConsumerIrService"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/ConsumerIrService;->getHalService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.consumerir"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    if-eqz v0, :cond_39

    goto :goto_43

    .line 65
    :cond_39
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    if-nez v0, :cond_44

    :goto_43
    return-void

    .line 68
    :cond_44
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native getHidlHalService()Z
.end method

.method private static native halGetCarrierFrequencies()[I
.end method

.method private static native halTransmit(I[I)I
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .registers 7

    .line 139
    invoke-super {p0}, Landroid/hardware/IConsumerIrService$Stub;->getCarrierFrequencies_enforcePermission()V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 143
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_9
    iget-object p0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_1c

    if-eqz p0, :cond_3d

    .line 146
    :try_start_d
    invoke-interface {p0}, Landroid/hardware/ir/IConsumerIr;->getCarrierFreqs()[Landroid/hardware/ir/ConsumerIrFreqRange;

    move-result-object p0

    .line 147
    array-length v1, p0

    if-gtz v1, :cond_1e

    .line 148
    const-string v1, "ConsumerIrService"

    const-string v2, "Error getting carrier frequencies."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_43

    .line 150
    :cond_1e
    :goto_1e
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 151
    :goto_24
    array-length v3, p0

    if-ge v2, v3, :cond_38

    mul-int/lit8 v3, v2, 0x2

    .line 152
    aget-object v4, p0, v2

    iget v5, v4, Landroid/hardware/ir/ConsumerIrFreqRange;->minHz:I

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 153
    iget v4, v4, Landroid/hardware/ir/ConsumerIrFreqRange;->maxHz:I

    aput v4, v1, v3
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_35} :catch_3a
    .catchall {:try_start_d .. :try_end_35} :catchall_1c

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 155
    :cond_38
    :try_start_38
    monitor-exit v0

    return-object v1

    .line 157
    :catch_3a
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 160
    :cond_3d
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 162
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_1c

    throw p0
.end method

.method public final getHalService()Z
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/ir/IConsumerIr;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/hardware/ir/IConsumerIr$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ir/IConsumerIr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    if-eqz v0, :cond_21

    const/4 p0, 0x1

    return p0

    .line 88
    :cond_21
    invoke-static {}, Lcom/android/server/ConsumerIrService;->getHidlHalService()Z

    move-result p0

    return p0
.end method

.method public hasIrEmitter()Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    return p0
.end method

.method public final throwIfNoIrEmitter()V
    .registers 2

    .line 92
    iget-boolean p0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz p0, :cond_5

    return-void

    .line 93
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "IR emitter not available"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .registers 9

    .line 101
    invoke-super {p0}, Landroid/hardware/IConsumerIrService$Stub;->transmit_enforcePermission()V

    .line 105
    array-length p1, p3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, p1, :cond_1a

    aget v3, p3, v2

    if-lez v3, :cond_12

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 107
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-positive IR slice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    const-wide/32 v2, 0x1e8480

    cmp-long p1, v0, v2

    if-gtz p1, :cond_68

    .line 116
    invoke-virtual {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 119
    iget-object p1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 120
    :try_start_27
    iget-object p0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2f

    if-eqz p0, :cond_48

    .line 122
    :try_start_2b
    invoke-interface {p0, p2, p3}, Landroid/hardware/ir/IConsumerIr;->transmit(I[I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_31
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_64

    :catchall_2f
    move-exception p0

    goto :goto_66

    .line 124
    :catch_31
    :try_start_31
    const-string p0, "ConsumerIrService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error transmitting frequency: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 127
    :cond_48
    invoke-static {p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(I[I)I

    move-result p0

    if-gez p0, :cond_64

    .line 130
    const-string p2, "ConsumerIrService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error transmitting: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_64
    :goto_64
    monitor-exit p1

    return-void

    :goto_66
    monitor-exit p1
    :try_end_67
    .catchall {:try_start_31 .. :try_end_67} :catchall_2f

    throw p0

    .line 113
    :cond_68
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IR pattern too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
