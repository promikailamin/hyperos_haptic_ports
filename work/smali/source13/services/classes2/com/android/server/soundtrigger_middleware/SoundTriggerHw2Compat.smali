.class final Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Compat.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundTriggerHw2Compat"


# instance fields
.field private final mBinder:Landroid/os/IHwBinder;

.field private final mDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder$DeathRecipient;",
            "Landroid/os/IHwBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mProperties:Landroid/media/soundtrigger/Properties;

.field private final mRebootRunnable:Ljava/lang/Runnable;

.field private mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

.field private mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

.field private mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

.field private mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;


# direct methods
.method private constructor <init>(Landroid/os/IHwBinder;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IHwBinder;
    .param p2, "rebootRunnable"    # Ljava/lang/Runnable;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    .line 105
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mRebootRunnable:Ljava/lang/Runnable;

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->initUnderlying(Landroid/os/IHwBinder;)V

    .line 108
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getPropertiesInternal()Landroid/media/soundtrigger/Properties;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/soundtrigger/Properties;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 109
    return-void
.end method

.method private as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    return-object v0
.end method

.method private as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    if-eqz v0, :cond_5

    .line 510
    return-object v0

    .line 508
    :cond_5
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v1, "Underlying driver version < 2.1"

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private as2_2()Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    if-eqz v0, :cond_5

    .line 518
    return-object v0

    .line 516
    :cond_5
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v1, "Underlying driver version < 2.2"

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    if-eqz v0, :cond_5

    .line 526
    return-object v0

    .line 524
    :cond_5
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v1, "Underlying driver version < 2.3"

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .registers 4
    .param p0, "underlying"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    .param p1, "rebootRunnable"    # Ljava/lang/Runnable;
    .param p2, "notifier"    # Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    .line 87
    invoke-interface {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->create(Landroid/os/IHwBinder;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/os/IHwBinder;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .registers 7
    .param p0, "binder"    # Landroid/os/IHwBinder;
    .param p1, "rebootRunnable"    # Ljava/lang/Runnable;
    .param p2, "notifier"    # Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    .line 93
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;-><init>(Landroid/os/IHwBinder;Ljava/lang/Runnable;)V

    .line 94
    .local v0, "compat":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
    move-object v1, v0

    .line 96
    .local v1, "result":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    iget-object v3, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    iget v3, v3, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    invoke-direct {v2, v1, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;I)V

    move-object v1, v2

    .line 98
    iget-object v2, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    iget-boolean v2, v2, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    if-nez v2, :cond_1c

    .line 99
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-direct {v2, v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)V

    move-object v1, v2

    .line 101
    :cond_1c
    return-object v1
.end method

.method private getPropertiesInternal()Landroid/media/soundtrigger/Properties;
    .registers 5

    .line 184
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 185
    .local v0, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_32

    .line 188
    .local v1, "properties":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/hardware/soundtrigger/V2_3/Properties;>;"
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->getProperties_2_3(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getProperties_2_3Callback;)V
    :try_end_17
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_b .. :try_end_17} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_32

    .line 196
    nop

    .line 197
    :try_start_18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v3, "getProperties_2_3"

    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/V2_3/Properties;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;

    move-result-object v2

    return-object v2

    .line 193
    :catch_2c
    move-exception v2

    .line 195
    .local v2, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getProperties_2_0()Landroid/media/soundtrigger/Properties;

    move-result-object v3
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_31} :catch_32

    return-object v3

    .line 199
    .end local v0    # "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "properties":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/hardware/soundtrigger/V2_3/Properties;>;"
    .end local v2    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catch_32
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getProperties_2_0()Landroid/media/soundtrigger/Properties;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 421
    .local v0, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 423
    .local v1, "properties":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;>;"
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, v3}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;)V

    .line 428
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v3, "getProperties"

    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 429
    nop

    .line 430
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertProperties_2_0_to_2_3(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object v2

    .line 429
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;

    move-result-object v2

    return-object v2
.end method

.method private static handleHalStatus(ILjava/lang/String;)V
    .registers 3
    .param p0, "status"    # I
    .param p1, "methodName"    # Ljava/lang/String;

    .line 155
    if-nez p0, :cond_3

    .line 158
    return-void

    .line 156
    :cond_3
    new-instance v0, Lcom/android/server/soundtrigger_middleware/HalException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/HalException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private static handleHalStatusAllowBusy(ILjava/lang/String;)V
    .registers 4
    .param p0, "status"    # I
    .param p1, "methodName"    # Ljava/lang/String;

    .line 161
    sget v0, Landroid/system/OsConstants;->EBUSY:I

    neg-int v0, v0

    if-eq p0, v0, :cond_9

    .line 164
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 165
    return-void

    .line 162
    :cond_9
    new-instance v0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw v0
.end method

.method private initUnderlying(Landroid/os/IHwBinder;)V
    .registers 8
    .param p1, "binder"    # Landroid/os/IHwBinder;

    .line 117
    nop

    .line 118
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v0

    .line 119
    .local v0, "as2_3":Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;
    if-eqz v0, :cond_10

    .line 120
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 121
    return-void

    .line 125
    :cond_10
    nop

    .line 126
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    move-result-object v1

    .line 127
    .local v1, "as2_2":Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;
    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 128
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 129
    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    .line 130
    return-void

    .line 134
    :cond_21
    nop

    .line 135
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v3

    .line 136
    .local v3, "as2_1":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;
    if-eqz v3, :cond_31

    .line 137
    iput-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 138
    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    .line 139
    return-void

    .line 143
    :cond_31
    nop

    .line 144
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v4

    .line 145
    .local v4, "as2_0":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    if-eqz v4, :cond_41

    .line 146
    iput-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 147
    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    .line 148
    return-void

    .line 151
    :cond_41
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "Binder doesn\'t support ISoundTriggerHw@2.0"

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic lambda$getModelParameter$3(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4
    .param p0, "status"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "value"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "s"    # I
    .param p3, "v"    # I

    .line 342
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 343
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 344
    return-void
.end method

.method static synthetic lambda$getPropertiesInternal$0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/Properties;)V
    .registers 4
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "properties"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p2, "r"    # I
    .param p3, "p"    # Landroid/hardware/soundtrigger/V2_3/Properties;

    .line 190
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 191
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method static synthetic lambda$getProperties_2_0$6(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)V
    .registers 4
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "properties"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p2, "r"    # I
    .param p3, "p"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 425
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 426
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method static synthetic lambda$linkToDeath$5(Landroid/os/IBinder$DeathRecipient;J)V
    .registers 3
    .param p0, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p1, "cookie"    # J

    .line 393
    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    return-void
.end method

.method static synthetic lambda$loadPhraseSoundModel$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "handle"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "r"    # I
    .param p3, "h"    # I

    .line 257
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 258
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 259
    return-void
.end method

.method static synthetic lambda$loadPhraseSoundModel_2_0$8(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "handle"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "r"    # I
    .param p3, "h"    # I

    .line 464
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 465
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 466
    return-void
.end method

.method static synthetic lambda$loadSoundModel$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "handle"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "r"    # I
    .param p3, "h"    # I

    .line 221
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 222
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 223
    return-void
.end method

.method static synthetic lambda$loadSoundModel_2_0$7(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "handle"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "r"    # I
    .param p3, "h"    # I

    .line 444
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 445
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 446
    return-void
.end method

.method static synthetic lambda$queryParameter$4(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;)V
    .registers 4
    .param p0, "status"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "optionalRange"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p2, "s"    # I
    .param p3, "r"    # Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    .line 375
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 376
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method private loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 10
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    nop

    .line 458
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertPhraseSoundModel_2_1_to_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    move-result-object v0

    .line 460
    .local v0, "model_2_0":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 461
    .local v1, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 462
    .local v2, "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, p2, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v4, v0, v5, v3, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;)V

    .line 467
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const-string v4, "loadSoundModel"

    invoke-static {v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 468
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    return v3
.end method

.method private loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 10
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    nop

    .line 439
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertSoundModel_2_1_to_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    move-result-object v0

    .line 441
    .local v0, "model_2_0":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 442
    .local v1, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 443
    .local v2, "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, p2, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda4;

    invoke-direct {v6, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v4, v0, v5, v3, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;)V

    .line 447
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const-string v4, "loadSoundModel"

    invoke-static {v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 448
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    return v3
.end method

.method private startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    .registers 8
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    nop

    .line 494
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertRecognitionConfig_2_3_to_2_0(Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    move-result-object v0

    .line 495
    .local v0, "config_2_0":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 496
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    .line 495
    const/4 v3, 0x0

    invoke-interface {v1, p1, v0, v2, v3}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;I)I

    move-result v1

    .line 497
    .local v1, "retval":I
    const-string/jumbo v2, "startRecognition"

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 498
    return-void
.end method

.method private startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    .registers 8
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    .line 476
    nop

    .line 477
    :try_start_1
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertRecognitionConfig_2_3_to_2_1(Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    move-result-object v0

    .line 478
    .local v0, "config_2_1":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 479
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    const/4 v3, 0x0

    .line 478
    invoke-interface {v1, p1, v0, v2, v3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;I)I

    move-result v1

    .line 480
    .local v1, "retval":I
    const-string/jumbo v2, "startRecognition_2_1"

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_26
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_1 .. :try_end_26} :catch_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_26} :catch_27

    .line 484
    .end local v0    # "config_2_1":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;
    .end local v1    # "retval":I
    goto :goto_2d

    .line 485
    :catch_27
    move-exception v0

    goto :goto_2f

    .line 481
    :catch_29
    move-exception v0

    .line 483
    .local v0, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :try_start_2a
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_27

    .line 487
    .end local v0    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :goto_2d
    nop

    .line 488
    return-void

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public detach()V
    .registers 1

    .line 175
    return-void
.end method

.method public flushCallbacks()V
    .registers 1

    .line 415
    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 4
    .param p1, "modelHandle"    # I

    .line 326
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_2()Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->getModelState(I)I

    move-result v0

    .line 327
    .local v0, "retval":I
    const-string v1, "getModelState"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_15
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_d} :catch_f

    .line 332
    .end local v0    # "retval":I
    nop

    .line 333
    return-void

    .line 330
    :catch_f
    move-exception v0

    .line 331
    .local v0, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object v1

    throw v1

    .line 328
    .end local v0    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catch_15
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getModelParameter(II)I
    .registers 7
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 337
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 338
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 340
    .local v1, "value":Ljava/util/concurrent/atomic/AtomicInteger;
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->getParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getParameterCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_2d
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_c .. :try_end_18} :catch_27

    .line 349
    nop

    .line 350
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v3, "getParameter"

    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 351
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    return v2

    .line 347
    :catch_27
    move-exception v2

    .line 348
    .local v2, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    invoke-virtual {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object v3

    throw v3

    .line 345
    .end local v2    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catch_2d
    move-exception v2

    .line 346
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    return-object v0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 3

    .line 406
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 407
    :catch_9
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 6
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 393
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda5;-><init>(Landroid/os/IBinder$DeathRecipient;)V

    .line 394
    .local v0, "wrapper":Landroid/os/IHwBinder$DeathRecipient;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 396
    return-void
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 12
    .param p1, "soundModel"    # Landroid/media/soundtrigger/PhraseSoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 248
    const-string v0, "Failed to close file"

    const-string v1, "SoundTriggerHw2Compat"

    .line 249
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    move-result-object v2

    .line 251
    .local v2, "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    :try_start_8
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 252
    .local v3, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_6e
    .catchall {:try_start_8 .. :try_end_14} :catchall_6c

    .line 254
    .local v4, "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    :try_start_14
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v6

    new-instance v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v8, 0x0

    invoke-direct {v7, p2, v8}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    new-instance v8, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda7;

    invoke-direct {v8, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v6, v2, v7, v5, v8}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadPhraseSoundModel_2_1Callback;)V

    .line 260
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const-string v6, "loadPhraseSoundModel_2_1"

    invoke-static {v5, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 261
    iget-object v5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_14 .. :try_end_3c} :catch_54
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3c} :catch_6e
    .catchall {:try_start_14 .. :try_end_3c} :catchall_6c

    .line 265
    nop

    .line 266
    :try_start_3d
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_41} :catch_6e
    .catchall {:try_start_3d .. :try_end_41} :catchall_6c

    .line 272
    iget-object v6, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v6, v6, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz v6, :cond_53

    .line 274
    :try_start_47
    iget-object v6, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v6, v6, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    invoke-virtual {v6}, Landroid/os/HidlMemory;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4e} :catch_4f

    .line 277
    goto :goto_53

    .line 275
    :catch_4f
    move-exception v6

    .line 276
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v6    # "e":Ljava/io/IOException;
    :cond_53
    :goto_53
    return v5

    .line 262
    :catch_54
    move-exception v5

    .line 264
    .local v5, "ee":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :try_start_55
    invoke-direct {p0, v2, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result v6
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_59} :catch_6e
    .catchall {:try_start_55 .. :try_end_59} :catchall_6c

    .line 272
    iget-object v7, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v7, v7, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz v7, :cond_6b

    .line 274
    :try_start_5f
    iget-object v7, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v7, v7, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    invoke-virtual {v7}, Landroid/os/HidlMemory;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_66} :catch_67

    .line 277
    goto :goto_6b

    .line 275
    :catch_67
    move-exception v7

    .line 276
    .local v7, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v7    # "e":Ljava/io/IOException;
    :cond_6b
    :goto_6b
    return v6

    .line 272
    .end local v3    # "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v4    # "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v5    # "ee":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catchall_6c
    move-exception v3

    goto :goto_74

    .line 267
    :catch_6e
    move-exception v3

    .line 268
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_6f
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v2    # "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
    .end local p1    # "soundModel":Landroid/media/soundtrigger/PhraseSoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    throw v4
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_6c

    .line 272
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
    .restart local p1    # "soundModel":Landroid/media/soundtrigger/PhraseSoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    :goto_74
    iget-object v4, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v4, v4, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz v4, :cond_86

    .line 274
    :try_start_7a
    iget-object v4, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v4, v4, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    invoke-virtual {v4}, Landroid/os/HidlMemory;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_81} :catch_82

    .line 277
    goto :goto_86

    .line 275
    :catch_82
    move-exception v4

    .line 276
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v4    # "e":Ljava/io/IOException;
    :cond_86
    :goto_86
    throw v3
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 12
    .param p1, "soundModel"    # Landroid/media/soundtrigger/SoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 212
    const-string v0, "Failed to close file"

    const-string v1, "SoundTriggerHw2Compat"

    .line 213
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    move-result-object v2

    .line 215
    .local v2, "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    :try_start_8
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 216
    .local v3, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_66
    .catchall {:try_start_8 .. :try_end_14} :catchall_64

    .line 218
    .local v4, "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    :try_start_14
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v6

    new-instance v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v8, 0x0

    invoke-direct {v7, p2, v8}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    new-instance v8, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;

    invoke-direct {v8, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v6, v2, v7, v5, v8}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadSoundModel_2_1Callback;)V

    .line 224
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const-string v6, "loadSoundModel_2_1"

    invoke-static {v5, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 225
    iget-object v5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_14 .. :try_end_3c} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3c} :catch_66
    .catchall {:try_start_14 .. :try_end_3c} :catchall_64

    .line 229
    nop

    .line 230
    :try_start_3d
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_41} :catch_66
    .catchall {:try_start_3d .. :try_end_41} :catchall_64

    .line 236
    iget-object v6, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz v6, :cond_4f

    .line 238
    :try_start_45
    iget-object v6, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    invoke-virtual {v6}, Landroid/os/HidlMemory;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_4b

    .line 241
    goto :goto_4f

    .line 239
    :catch_4b
    move-exception v6

    .line 240
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v6    # "e":Ljava/io/IOException;
    :cond_4f
    :goto_4f
    return v5

    .line 226
    :catch_50
    move-exception v5

    .line 228
    .local v5, "ee":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :try_start_51
    invoke-direct {p0, v2, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result v6
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_55} :catch_66
    .catchall {:try_start_51 .. :try_end_55} :catchall_64

    .line 236
    iget-object v7, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz v7, :cond_63

    .line 238
    :try_start_59
    iget-object v7, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    invoke-virtual {v7}, Landroid/os/HidlMemory;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_5f

    .line 241
    goto :goto_63

    .line 239
    :catch_5f
    move-exception v7

    .line 240
    .local v7, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v7    # "e":Ljava/io/IOException;
    :cond_63
    :goto_63
    return v6

    .line 236
    .end local v3    # "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v4    # "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v5    # "ee":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catchall_64
    move-exception v3

    goto :goto_6c

    .line 231
    :catch_66
    move-exception v3

    .line 232
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_67
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v2    # "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
    .end local p1    # "soundModel":Landroid/media/soundtrigger/SoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    throw v4
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_64

    .line 236
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
    .restart local p1    # "soundModel":Landroid/media/soundtrigger/SoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;
    :goto_6c
    iget-object v4, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz v4, :cond_7a

    .line 238
    :try_start_70
    iget-object v4, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    invoke-virtual {v4}, Landroid/os/HidlMemory;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_75} :catch_76

    .line 241
    goto :goto_7a

    .line 239
    :catch_76
    move-exception v4

    .line 240
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v4    # "e":Ljava/io/IOException;
    :cond_7a
    :goto_7a
    throw v3
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 8
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 368
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 370
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 373
    .local v1, "optionalRange":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;>;"
    const/4 v2, 0x0

    :try_start_c
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->queryParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$queryParameterCallback;)V
    :try_end_18
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_c .. :try_end_18} :catch_47
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_41

    .line 383
    nop

    .line 384
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const-string/jumbo v4, "queryParameter"

    invoke-static {v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->getDiscriminator()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3f

    .line 388
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlModelParameterRange(Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v2

    goto :goto_40

    :cond_3f
    nop

    .line 385
    :goto_40
    return-object v2

    .line 381
    :catch_41
    move-exception v2

    .line 382
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 378
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_47
    move-exception v3

    .line 380
    .local v3, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    return-object v2
.end method

.method public reboot()V
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mRebootRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 170
    return-void
.end method

.method public registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 208
    return-void
.end method

.method public setModelParameter(III)V
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 357
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->setParameter(III)I

    move-result v0

    .line 358
    .local v0, "retval":I
    const-string/jumbo v1, "setParameter"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_e} :catch_10

    .line 363
    .end local v0    # "retval":I
    nop

    .line 364
    return-void

    .line 361
    :catch_10
    move-exception v0

    .line 362
    .local v0, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object v1

    throw v1

    .line 359
    .end local v0    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catch_16
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 8
    .param p1, "modelHandle"    # I
    .param p2, "deviceHandle"    # I
    .param p3, "ioHandle"    # I
    .param p4, "config"    # Landroid/media/soundtrigger/RecognitionConfig;

    .line 308
    nop

    .line 309
    invoke-static {p4, p2, p3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;II)Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    move-result-object v0

    .line 312
    .local v0, "hidlConfig":Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->startRecognition_2_3(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)I

    move-result v1

    .line 313
    .local v1, "retval":I
    const-string/jumbo v2, "startRecognition_2_3"

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_13
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_5 .. :try_end_13} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_13} :catch_14

    .line 317
    .end local v1    # "retval":I
    goto :goto_1a

    .line 318
    :catch_14
    move-exception v1

    goto :goto_1c

    .line 314
    :catch_16
    move-exception v1

    .line 316
    .local v1, "ee":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :try_start_17
    invoke-direct {p0, p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_14

    .line 320
    .end local v1    # "ee":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :goto_1a
    nop

    .line 321
    return-void

    .line 319
    .local v1, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public stopRecognition(I)V
    .registers 4
    .param p1, "modelHandle"    # I

    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopRecognition(I)I

    move-result v0

    .line 298
    .local v0, "retval":I
    const-string/jumbo v1, "stopRecognition"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 301
    .end local v0    # "retval":I
    nop

    .line 303
    return-void

    .line 299
    :catch_10
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 4
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 400
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IHwBinder$DeathRecipient;

    invoke-interface {v0, v1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    .line 401
    return-void
.end method

.method public unloadSoundModel(I)V
    .registers 4
    .param p1, "modelHandle"    # I

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->unloadSoundModel(I)I

    move-result v0

    .line 288
    .local v0, "retval":I
    const-string/jumbo v1, "unloadSoundModel"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 291
    .end local v0    # "retval":I
    nop

    .line 292
    return-void

    .line 289
    :catch_19
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
