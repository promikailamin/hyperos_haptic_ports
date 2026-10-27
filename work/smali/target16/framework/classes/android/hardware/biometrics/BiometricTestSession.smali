.class public Landroid/hardware/biometrics/BiometricTestSession;
.super Ljava/lang/Object;
.source "BiometricTestSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;,
        Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;
    }
.end annotation


# static fields
.field private static final blacklist BASE_TAG:Ljava/lang/String; = "BiometricTestSession"


# instance fields
.field private final blacklist mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private blacklist mCloseLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mSensorId:I

.field private blacklist mTestSession:Landroid/hardware/biometrics/ITestSession;

.field private final blacklist mTestSessionsForAllSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/ITestSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTestedUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUsersCleaningUp:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCloseLatch(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;ILandroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties;",
            ">;I",
            "Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    .line 102
    iput p3, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    .line 103
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 106
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/SensorProperties;

    .line 107
    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties;->getSensorId()I

    move-result v0

    .line 108
    new-instance v1, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;-><init>(Landroid/hardware/biometrics/BiometricTestSession;ILandroid/hardware/biometrics/BiometricTestSession-IA;)V

    invoke-interface {p4, p1, v0, v1}, Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;->createTestSession(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v1

    .line 110
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    if-ne v0, p3, :cond_3d

    .line 112
    iput-object v1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    .line 114
    :cond_3d
    goto :goto_1a

    .line 116
    :cond_3e
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    .line 117
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    .line 118
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricTestSession;->setTestHalEnabled(Z)V

    .line 119
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Opening BiometricTestSession"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method private blacklist getTag()Ljava/lang/String;
    .registers 3

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BiometricTestSession_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setTestHalEnabled(Z)V
    .registers 7

    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/ITestSession;

    .line 135
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTestHalEnabled, sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/hardware/biometrics/ITestSession;->getSensorId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-interface {v1, p1}, Landroid/hardware/biometrics/ITestSession;->setTestHalEnabled(Z)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3e} :catch_41

    .line 138
    goto :goto_6

    .line 141
    :cond_3f
    nop

    .line 142
    return-void

    .line 139
    :catch_41
    move-exception p1

    .line 140
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public blacklist acceptAuthentication(I)V
    .registers 3

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->acceptAuthentication(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 185
    nop

    .line 186
    return-void

    .line 183
    :catch_7
    move-exception p1

    .line 184
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist cleanupInternalState(I)V
    .registers 7

    .line 250
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 251
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup already in progress for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_26
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/ITestSession;

    .line 255
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupInternalState for sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/hardware/biometrics/ITestSession;->getSensorId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    .line 258
    invoke-interface {v1, p1}, Landroid/hardware/biometrics/ITestSession;->cleanupInternalState(I)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6a} :catch_93

    .line 261
    :try_start_6a
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Awaiting latch..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 263
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Finished awaiting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_85} :catch_86
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_85} :catch_93

    .line 266
    goto :goto_90

    .line 264
    :catch_86
    move-exception v1

    .line 265
    :try_start_87
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Latch interrupted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_90} :catch_93

    .line 267
    :goto_90
    goto :goto_2c

    .line 270
    :cond_91
    nop

    .line 271
    return-void

    .line 268
    :catch_93
    move-exception p1

    .line 269
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 276
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close, mTestedUsers size; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 280
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 281
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/BiometricTestSession;->cleanupInternalState(I)V

    .line 282
    goto :goto_2e

    .line 285
    :cond_42
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 287
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup not finished before shutdown - pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    .line 288
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_6a
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    new-instance v1, Landroid/hardware/biometrics/IdentityCheckStatus$Builder;

    invoke-direct {v1}, Landroid/hardware/biometrics/IdentityCheckStatus$Builder;-><init>()V

    .line 293
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/IdentityCheckStatus$Builder;->setIdentityCheckActive(Z)Landroid/hardware/biometrics/IdentityCheckStatus$Builder;

    move-result-object v1

    .line 294
    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/IdentityCheckStatus$Builder;->setIdentityCheckValueForTestAvailable(Z)Landroid/hardware/biometrics/IdentityCheckStatus$Builder;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Landroid/hardware/biometrics/IdentityCheckStatus$Builder;->build()Landroid/hardware/biometrics/IdentityCheckStatus;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricManager;->setIdentityCheckTestStatus(Landroid/hardware/biometrics/IdentityCheckStatus;)V

    .line 297
    invoke-direct {p0, v2}, Landroid/hardware/biometrics/BiometricTestSession;->setTestHalEnabled(Z)V

    .line 298
    return-void
.end method

.method public blacklist finishEnroll(I)V
    .registers 4

    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->finishEnroll(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 171
    nop

    .line 172
    return-void

    .line 169
    :catch_10
    move-exception p1

    .line 170
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyAcquired(II)V
    .registers 4

    .line 215
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyAcquired(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 218
    nop

    .line 219
    return-void

    .line 216
    :catch_7
    move-exception p1

    .line 217
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyError(II)V
    .registers 4

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyError(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 237
    nop

    .line 238
    return-void

    .line 235
    :catch_7
    move-exception p1

    .line 236
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist rejectAuthentication(I)V
    .registers 3

    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->rejectAuthentication(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 199
    nop

    .line 200
    return-void

    .line 197
    :catch_7
    move-exception p1

    .line 198
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist startEnroll(I)V
    .registers 4

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->startEnroll(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 156
    nop

    .line 157
    return-void

    .line 154
    :catch_10
    move-exception p1

    .line 155
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
