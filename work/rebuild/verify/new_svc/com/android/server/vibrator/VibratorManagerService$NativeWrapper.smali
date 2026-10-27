.class public Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# instance fields
.field public mNativeServicePtr:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 2292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2294
    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    return-void
.end method


# virtual methods
.method public cancelSynced()V
    .registers 3

    .line 2336
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeCancelSynced(J)V

    return-void
.end method

.method public clearSessions()V
    .registers 3

    .line 2351
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeClearSessions(J)V

    return-void
.end method

.method public createVibrator(I)Lcom/android/server/vibrator/HalVibrator;
    .registers 2

    .line 2298
    new-instance p0, Lcom/android/server/vibrator/VibratorController;

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorController;-><init>(I)V

    return-object p0
.end method

.method public endSession(JZ)V
    .registers 6

    .line 2346
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->nativeEndSession(JJZ)V

    return-void
.end method

.method public getCapabilities()J
    .registers 3

    .line 2316
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetCapabilities(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVibratorIds()[I
    .registers 3

    .line 2321
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetVibratorIds(J)[I

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/android/server/vibrator/HalVibratorManager$Callbacks;)V
    .registers 6

    .line 2303
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeInit(Lcom/android/server/vibrator/HalVibratorManager$Callbacks;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 2304
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$smnativeGetFinalizer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1f

    .line 2307
    const-class p1, Lcom/android/server/vibrator/VibratorManagerService;

    .line 2309
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 2308
    invoke-static {p1, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    .line 2310
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    :cond_1f
    return-void
.end method

.method public prepareSynced([I)Z
    .registers 4

    .line 2326
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorManagerService;->nativePrepareSynced(J[I)Z

    move-result p0

    return p0
.end method

.method public startSession(J[I)Z
    .registers 6

    .line 2341
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->nativeStartSession(JJ[I)Z

    move-result p0

    return p0
.end method

.method public triggerSynced(J)Z
    .registers 5

    .line 2331
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->nativeTriggerSynced(JJ)Z

    move-result p0

    return p0
.end method
