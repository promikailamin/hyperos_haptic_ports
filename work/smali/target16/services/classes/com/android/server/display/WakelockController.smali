.class public final Lcom/android/server/display/WakelockController;
.super Ljava/lang/Object;
.source "WakelockController.java"


# static fields
.field public static final DEBUG:Z

.field static final WAKE_LOCK_MAX:I = 0x6


# instance fields
.field public final mDisplayId:I

.field public final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public mHasProximityDebounced:Z

.field public mIsOverrideDozeScreenStateAcquired:Z

.field public mIsProximityNegativeAcquired:Z

.field public mIsProximityPositiveAcquired:Z

.field public final mLock:Ljava/lang/Object;

.field public mOnStateChangedPending:Z

.field public final mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

.field public final mSuspendBlockerIdProxDebounce:Ljava/lang/String;

.field public final mSuspendBlockerIdProxNegative:Ljava/lang/String;

.field public final mSuspendBlockerIdProxPositive:Ljava/lang/String;

.field public final mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

.field public final mSuspendBlockerOverrideDozeScreenState:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;

.field public mUnfinishedBusiness:Z


# direct methods
.method public static synthetic $r8$lambda$DC3Jjdcy5pC5tkL4-1bzHZx_j9Q(Lcom/android/server/display/WakelockController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->lambda$getOnStateChangedRunnable$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$IvKh1ddXhKb-OhNkChFV9eFYY68(Lcom/android/server/display/WakelockController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->lambda$getOnProximityPositiveRunnable$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mv9NP1W90VpZtg1gBnYyNVVck1s(Lcom/android/server/display/WakelockController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->lambda$getOnProximityNegativeRunnable$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-string v0, "WakelockController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/WakelockController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .registers 5

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mLock:Ljava/lang/Object;

    .line 118
    iput p1, p0, Lcom/android/server/display/WakelockController;->mDisplayId:I

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakelockController["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]unfinished business"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]override doze screen state"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerOverrideDozeScreenState:Ljava/lang/String;

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]on state changed"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]prox positive"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]prox negative"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]prox debounce"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final acquireOverrideDozeScreenStateSuspendBlockerLocked()Z
    .registers 3

    .line 250
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsOverrideDozeScreenStateAcquired:Z

    if-nez v0, :cond_1a

    .line 251
    sget-boolean v0, Lcom/android/server/display/WakelockController;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 252
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    const-string v1, "Acquiring suspend blocker to override the doze screen state..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerOverrideDozeScreenState:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsOverrideDozeScreenStateAcquired:Z

    return v0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final acquireProxDebounceSuspendBlocker()Z
    .registers 3

    .line 355
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    if-nez v0, :cond_f

    .line 356
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 357
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final acquireProxNegativeSuspendBlocker()Z
    .registers 3

    .line 329
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    if-nez v0, :cond_f

    .line 330
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final acquireProxPositiveSuspendBlocker()Z
    .registers 3

    .line 206
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    if-nez v0, :cond_f

    .line 207
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final acquireStateChangedSuspendBlocker()Z
    .registers 3

    .line 219
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    if-nez v0, :cond_1a

    .line 220
    sget-boolean v0, Lcom/android/server/display/WakelockController;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 221
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    const-string v1, "State Changed..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    return v0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final acquireUnfinishedBusinessSuspendBlocker()Z
    .registers 3

    .line 284
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    if-nez v0, :cond_1a

    .line 285
    sget-boolean v0, Lcom/android/server/display/WakelockController;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 286
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    const-string v1, "Unfinished business..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    return v0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public acquireWakelock(I)Z
    .registers 2

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/display/WakelockController;->acquireWakelockInternal(I)Z

    move-result p0

    return p0
.end method

.method public final acquireWakelockInternal(I)Z
    .registers 2

    packed-switch p1, :pswitch_data_30

    .line 176
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid wakelock attempted to be acquired"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireUnfinishedBusinessSuspendBlocker()Z

    move-result p0

    return p0

    .line 170
    :pswitch_10
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 171
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireOverrideDozeScreenStateSuspendBlockerLocked()Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_19
    move-exception p0

    .line 172
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_19

    throw p0

    .line 168
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireStateChangedSuspendBlocker()Z

    move-result p0

    return p0

    .line 166
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireProxDebounceSuspendBlocker()Z

    move-result p0

    return p0

    .line 164
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireProxNegativeSuspendBlocker()Z

    move-result p0

    return p0

    .line 162
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->acquireProxPositiveSuspendBlocker()Z

    move-result p0

    return p0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public dumpLocal(Ljava/io/PrintWriter;)V
    .registers 4

    .line 419
    const-string v0, "WakelockController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v0, "-------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WakelockController;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->hasUnfinishedBusiness()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnStateChangePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->isOnStateChangedPending()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnProximityPositiveMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->isProximityPositiveAcquired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnProximityNegativeMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->isProximityNegativeAcquired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsOverrideDozeScreenStateAcquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->isOverrideDozeScreenStateAcquired()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getOnProximityNegativeRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 406
    new-instance v0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/WakelockController;)V

    return-object v0
.end method

.method public getOnProximityPositiveRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 380
    new-instance v0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/WakelockController;)V

    return-object v0
.end method

.method public getOnStateChangedRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 393
    new-instance v0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;)V

    return-object v0
.end method

.method public getSuspendBlockerOnStateChangedId()Ljava/lang/String;
    .registers 1

    .line 436
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerOverrideDozeScreenState()Ljava/lang/String;
    .registers 2

    .line 456
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerOverrideDozeScreenState:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 458
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getSuspendBlockerProxDebounceId()Ljava/lang/String;
    .registers 1

    .line 451
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerProxNegativeId()Ljava/lang/String;
    .registers 1

    .line 446
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerProxPositiveId()Ljava/lang/String;
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerUnfinishedBusinessId()Ljava/lang/String;
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    return-object p0
.end method

.method public hasProximitySensorDebounced()Z
    .registers 1

    .line 483
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    return p0
.end method

.method public hasUnfinishedBusiness()Z
    .registers 1

    .line 463
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    return p0
.end method

.method public isOnStateChangedPending()Z
    .registers 1

    .line 468
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    return p0
.end method

.method public isOverrideDozeScreenStateAcquired()Z
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsOverrideDozeScreenStateAcquired:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 490
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isProximityNegativeAcquired()Z
    .registers 1

    .line 478
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    return p0
.end method

.method public isProximityPositiveAcquired()Z
    .registers 1

    .line 473
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    return p0
.end method

.method public final synthetic lambda$getOnProximityNegativeRunnable$2()V
    .registers 2

    .line 407
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 408
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    .line 409
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onProximityNegative()V

    .line 410
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final synthetic lambda$getOnProximityPositiveRunnable$0()V
    .registers 2

    .line 381
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    .line 383
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onProximityPositive()V

    .line 384
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final synthetic lambda$getOnStateChangedRunnable$1()V
    .registers 2

    .line 394
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    .line 396
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onStateChanged()V

    .line 397
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public releaseAll()V
    .registers 3

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x6

    if-gt v0, v1, :cond_a

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method public final releaseOverrideDozeScreenStateSuspendBlockerLocked()Z
    .registers 4

    .line 267
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsOverrideDozeScreenStateAcquired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 268
    sget-boolean v0, Lcom/android/server/display/WakelockController;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 269
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    const-string v2, "Finished overriding doze screen state..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerOverrideDozeScreenState:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 272
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsOverrideDozeScreenStateAcquired:Z

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v1
.end method

.method public final releaseProxDebounceSuspendBlocker()Z
    .registers 4

    .line 368
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 369
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 370
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    const/4 p0, 0x1

    return p0

    :cond_10
    return v1
.end method

.method public final releaseProxNegativeSuspendBlocker()Z
    .registers 4

    .line 342
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 343
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 344
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    const/4 p0, 0x1

    return p0

    :cond_10
    return v1
.end method

.method public final releaseProxPositiveSuspendBlocker()Z
    .registers 4

    .line 316
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 317
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 318
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    const/4 p0, 0x1

    return p0

    :cond_10
    return v1
.end method

.method public final releaseStateChangedSuspendBlocker()Z
    .registers 4

    .line 234
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 235
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 236
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    const/4 p0, 0x1

    return p0

    :cond_10
    return v1
.end method

.method public final releaseUnfinishedBusinessSuspendBlocker()Z
    .registers 4

    .line 300
    iget-boolean v0, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 301
    sget-boolean v0, Lcom/android/server/display/WakelockController;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 302
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    const-string v2, "Finished business..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 305
    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v1
.end method

.method public releaseWakelock(I)Z
    .registers 2

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    move-result p0

    return p0
.end method

.method public final releaseWakelockInternal(I)Z
    .registers 2

    packed-switch p1, :pswitch_data_30

    .line 197
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid wakelock attempted to be released"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseUnfinishedBusinessSuspendBlocker()Z

    move-result p0

    return p0

    .line 191
    :pswitch_10
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 192
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseOverrideDozeScreenStateSuspendBlockerLocked()Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_19
    move-exception p0

    .line 193
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_19

    throw p0

    .line 189
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseStateChangedSuspendBlocker()Z

    move-result p0

    return p0

    .line 187
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseProxDebounceSuspendBlocker()Z

    move-result p0

    return p0

    .line 185
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseProxNegativeSuspendBlocker()Z

    move-result p0

    return p0

    .line 183
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->releaseProxPositiveSuspendBlocker()Z

    move-result p0

    return p0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method
