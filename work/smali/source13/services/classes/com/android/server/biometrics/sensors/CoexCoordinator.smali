.class public Lcom/android/server/biometrics/sensors/CoexCoordinator;
.super Ljava/lang/Object;
.source "CoexCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;,
        Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;,
        Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final FACE_HAPTIC_DISABLE:Ljava/lang/String; = "com.android.server.biometrics.sensors.CoexCoordinator.disable_face_haptics"

.field public static final SETTING_ENABLE_NAME:Ljava/lang/String; = "com.android.server.biometrics.sensors.CoexCoordinator.enable"

.field static final SUCCESSFUL_AUTH_VALID_DURATION_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "BiometricCoexCoordinator"

.field private static sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;


# instance fields
.field private mAdvancedLogicEnabled:Z

.field private final mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mFaceHapticDisabledWhenNonBypass:Z

.field private final mHandler:Landroid/os/Handler;

.field final mSuccessfulAuths:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mHandler:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;
    .registers 1

    .line 155
    sget-object v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;

    if-nez v0, :cond_b

    .line 156
    new-instance v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;

    .line 158
    :cond_b
    sget-object v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;

    return-object v0
.end method

.method private hasMultipleSuccessfulAuthentications()Z
    .registers 5

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 518
    .local v2, "c":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasAuthSuccessful()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 519
    add-int/lit8 v0, v0, 0x1

    .line 521
    :cond_1f
    const/4 v3, 0x1

    if-le v0, v3, :cond_23

    .line 522
    return v3

    .line 524
    .end local v2    # "c":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    :cond_23
    goto :goto_b

    .line 525
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method private isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 467
    .local p1, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private isCurrentUdfps(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 471
    .local p1, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isFaceScanning()Z
    .registers 5

    .line 475
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 476
    .local v0, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getState()I

    move-result v2

    if-ne v2, v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method private isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 503
    .local p1, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    .line 504
    return v1

    .line 507
    :cond_f
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 508
    .local v3, "c":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    if-eq v3, p1, :cond_28

    .line 509
    return v1

    .line 511
    .end local v3    # "c":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    :cond_28
    goto :goto_19

    .line 512
    :cond_29
    return v2
.end method

.method private static isUdfpsActivelyAuthing(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 480
    .local p0, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 481
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    :cond_d
    return v1

    .line 483
    :cond_e
    return v1
.end method

.method private static isUdfpsAuthAttempted(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 487
    .local p0, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 488
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    .line 490
    :cond_e
    return v1
.end method

.method private isUnknownClient(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 494
    .local p1, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 495
    .local v1, "c":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    if-ne v1, p1, :cond_1a

    .line 496
    const/4 v0, 0x0

    return v0

    .line 498
    .end local v1    # "c":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    :cond_1a
    goto :goto_a

    .line 499
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method private popSuccessfulFaceAuthIfExists(J)Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
    .registers 9
    .param p1, "currentTimeMillis"    # J

    .line 436
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    .line 437
    .local v1, "auth":Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
    iget-wide v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mAuthTimestamp:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3a

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing stale auth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricCoexCoordinator"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_45

    .line 444
    :cond_3a
    iget v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mSensorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    .line 445
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 446
    return-object v1

    .line 448
    .end local v1    # "auth":Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
    :cond_45
    :goto_45
    goto :goto_6

    .line 449
    :cond_46
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeAndFinishAllFaceFromQueue()V
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    .line 457
    .local v1, "auth":Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
    iget v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mSensorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing from queue, canceling, and finishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricCoexCoordinator"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationCanceled()V

    .line 460
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    .line 461
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 463
    .end local v1    # "auth":Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
    :cond_3e
    goto :goto_6

    .line 464
    :cond_3f
    return-void
.end method


# virtual methods
.method public addAuthenticationClient(ILcom/android/server/biometrics/sensors/AuthenticationClient;)V
    .registers 7
    .param p1, "sensorType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)V"
        }
    .end annotation

    .line 187
    .local p2, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAuthenticationClient("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->sensorTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricCoexCoordinator"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overwriting existing client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with new client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_5c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method public onAuthenticationError(Lcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;)V
    .registers 10
    .param p2, "error"    # I
    .param p3, "callback"    # Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;I",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 388
    .local p1, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    .line 392
    .local v0, "isUsingSingleModality":Z
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    .line 393
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasUserDetected()Z

    move-result v1

    if-nez v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v3

    .line 394
    .local v1, "notDetectedOnKeyguard":Z
    :goto_1b
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasAuthAttempted()Z

    move-result v4

    .line 396
    .local v4, "authAttempted":Z
    sparse-switch p2, :sswitch_data_86

    .line 403
    const/4 v5, 0x0

    .local v5, "shouldUsuallyVibrate":Z
    goto :goto_2c

    .line 400
    .end local v5    # "shouldUsuallyVibrate":Z
    :sswitch_24
    if-eqz v4, :cond_2a

    if-nez v1, :cond_2a

    move v5, v2

    goto :goto_2b

    :cond_2a
    move v5, v3

    .line 401
    .restart local v5    # "shouldUsuallyVibrate":Z
    :goto_2b
    nop

    .line 406
    .end local v1    # "notDetectedOnKeyguard":Z
    .end local v4    # "authAttempted":Z
    :goto_2c
    goto :goto_2e

    .line 407
    .end local v5    # "shouldUsuallyVibrate":Z
    :cond_2d
    const/4 v5, 0x0

    .line 412
    .restart local v5    # "shouldUsuallyVibrate":Z
    :goto_2e
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    if-eqz v1, :cond_4c

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 413
    if-eqz v0, :cond_3c

    .line 414
    const/4 v1, 0x0

    .local v1, "hapticSuppressedByCoex":Z
    goto :goto_5a

    .line 416
    .end local v1    # "hapticSuppressedByCoex":Z
    :cond_3c
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 417
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguardBypassEnabled()Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_4a

    :cond_49
    move v2, v3

    :goto_4a
    move v1, v2

    .restart local v1    # "hapticSuppressedByCoex":Z
    goto :goto_5a

    .line 419
    .end local v1    # "hapticSuppressedByCoex":Z
    :cond_4c
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_59

    if-nez v0, :cond_59

    .line 420
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    .restart local v1    # "hapticSuppressedByCoex":Z
    goto :goto_5a

    .line 422
    .end local v1    # "hapticSuppressedByCoex":Z
    :cond_59
    const/4 v1, 0x0

    .line 426
    .restart local v1    # "hapticSuppressedByCoex":Z
    :goto_5a
    if-eqz v5, :cond_62

    if-nez v1, :cond_62

    .line 427
    invoke-interface {p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;->sendHapticFeedback()V

    goto :goto_85

    .line 429
    :cond_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no haptic shouldUsuallyVibrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hapticSuppressedByCoex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricCoexCoordinator"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_85
    return-void

    :sswitch_data_86
    .sparse-switch
        0x3 -> :sswitch_24
        0x7 -> :sswitch_24
        0x9 -> :sswitch_24
    .end sparse-switch
.end method

.method public onAuthenticationRejected(JLcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V
    .registers 14
    .param p1, "currentTimeMillis"    # J
    .param p4, "lockoutMode"    # I
    .param p5, "callback"    # Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;I",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;",
            ")V"
        }
    .end annotation

    .line 299
    .local p3, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    invoke-direct {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    .line 301
    .local v0, "isUsingSingleModality":Z
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    if-eqz v1, :cond_100

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 302
    if-eqz v0, :cond_18

    .line 303
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 304
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_11b

    .line 307
    :cond_18
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 308
    .local v1, "udfps":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 309
    .local v2, "face":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    invoke-direct {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v3

    const-string v5, "BiometricCoexCoordinator"

    if-eqz v3, :cond_82

    .line 310
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUdfpsActivelyAuthing(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Face rejected in multi-sensor auth, udfps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_ff

    .line 316
    :cond_5c
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUdfpsAuthAttempted(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 321
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 322
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_ff

    .line 325
    :cond_6a
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    if-eqz v3, :cond_7a

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguardBypassEnabled()Z

    move-result v3

    if-nez v3, :cond_7a

    .line 326
    const-string v3, "Skipping face reject haptic"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 328
    :cond_7a
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 330
    :goto_7d
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_ff

    .line 332
    :cond_82
    invoke-direct {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentUdfps(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->popSuccessfulFaceAuthIfExists(J)Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    move-result-object v3

    .line 335
    .local v3, "auth":Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
    if-eqz v3, :cond_b7

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using recent auth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    .line 339
    iget-object v5, v3, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {v5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 340
    iget-object v5, v3, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {v5, v4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 341
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_e2

    .line 342
    :cond_b7
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isFaceScanning()Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UDFPS rejected in multi-sensor auth, face: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_e2

    .line 353
    :cond_d7
    const-string v4, "UDFPS rejected in multi-sensor auth, face not scanning"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 355
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    .line 357
    .end local v3    # "auth":Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
    :goto_e2
    goto :goto_ff

    .line 358
    :cond_e3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown client rejected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 360
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    .line 362
    .end local v1    # "udfps":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    .end local v2    # "face":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    :goto_ff
    goto :goto_11b

    .line 363
    :cond_100
    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_115

    if-nez v0, :cond_115

    .line 364
    invoke-direct {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    if-nez v1, :cond_111

    .line 365
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 367
    :cond_111
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_11b

    .line 369
    :cond_115
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 370
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    .line 375
    :goto_11b
    if-nez p4, :cond_121

    .line 379
    const/4 v1, 0x0

    invoke-interface {p5, v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 381
    :cond_121
    return-void
.end method

.method public onAuthenticationSucceeded(JLcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V
    .registers 21
    .param p1, "currentTimeMillis"    # J
    .param p4, "callback"    # Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;",
            ")V"
        }
    .end annotation

    .line 219
    .local p3, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    move-object/from16 v0, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct {v0, v9}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v11

    .line 221
    .local v11, "isUsingSingleModality":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 222
    if-nez v11, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->hasMultipleSuccessfulAuthentications()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1c

    .line 225
    :cond_19
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 228
    :goto_1c
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 229
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_d7

    .line 230
    :cond_25
    invoke-direct {v0, v9}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUnknownClient(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_37

    .line 234
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 235
    invoke-interface {v10, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 236
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_d7

    .line 237
    :cond_37
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    if-eqz v1, :cond_ce

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 238
    if-eqz v11, :cond_4e

    .line 240
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 241
    invoke-interface {v10, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 242
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_d7

    .line 245
    :cond_4e
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 246
    .local v12, "udfps":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 247
    .local v13, "face":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    invoke-direct {v0, v9}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 248
    invoke-static {v12}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUdfpsActivelyAuthing(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 253
    iget-object v14, v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    new-instance v15, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    move-object v1, v15

    move-object v3, v14

    move-wide/from16 v4, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;-><init>(Landroid/os/Handler;Ljava/util/LinkedList;JILcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V

    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 256
    :cond_8c
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    if-eqz v1, :cond_9e

    invoke-virtual {v13}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguardBypassEnabled()Z

    move-result v1

    if-nez v1, :cond_9e

    .line 257
    const-string v1, "BiometricCoexCoordinator"

    const-string v3, "Skipping face success haptic"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 259
    :cond_9e
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 261
    :goto_a1
    invoke-interface {v10, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 262
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_cd

    .line 264
    :cond_a8
    invoke-direct {v0, v9}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentUdfps(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isFaceScanning()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 268
    invoke-virtual {v13}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    .line 271
    :cond_b7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->removeAndFinishAllFaceFromQueue()V

    .line 273
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 274
    invoke-interface {v10, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 275
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_cd

    .line 278
    :cond_c4
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 279
    invoke-interface {v10, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 280
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    .line 282
    .end local v12    # "udfps":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    .end local v13    # "face":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    :goto_cd
    goto :goto_d7

    .line 286
    :cond_ce
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 287
    invoke-interface {v10, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 288
    invoke-interface/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    .line 290
    :goto_d7
    return-void
.end method

.method public removeAuthenticationClient(ILcom/android/server/biometrics/sensors/AuthenticationClient;)V
    .registers 6
    .param p1, "sensorType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)V"
        }
    .end annotation

    .line 202
    .local p2, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeAuthenticationClient("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->sensorTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricCoexCoordinator"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensorType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not exist in map. Client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 210
    :cond_55
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method reset()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 173
    return-void
.end method

.method public setAdvancedLogicEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 163
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    .line 164
    return-void
.end method

.method public setFaceHapticDisabledWhenNonBypass(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 532
    const-string v1, ", Face Haptic Disabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, ", Queue size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    .line 535
    .local v2, "auth":Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
    const-string v3, ", Auth: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .end local v2    # "auth":Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
    goto :goto_30

    .line 538
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
