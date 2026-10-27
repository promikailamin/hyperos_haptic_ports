.class public abstract Lcom/android/server/biometrics/sensors/EnrollClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "EnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnrollmentModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/EnrollmentModifier;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics/EnrollClient"


# instance fields
.field protected final mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

.field private mEnrollmentStartTimeMs:J

.field protected final mHardwareAuthToken:[B

.field private final mHasEnrollmentsBeforeStarting:Z

.field protected final mTimeoutSec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 28
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "hardwareAuthToken"    # [B
    .param p7, "owner"    # Ljava/lang/String;
    .param p8, "utils"    # Lcom/android/server/biometrics/sensors/BiometricUtils;
    .param p9, "timeoutSec"    # I
    .param p10, "sensorId"    # I
    .param p11, "shouldVibrate"    # Z
    .param p12, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p13, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I[B",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils;",
            "IIZ",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    move-object v12, p0

    move-object/from16 v13, p6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v8, p10

    move/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 63
    move-object/from16 v0, p8

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 64
    array-length v1, v13

    invoke-static {v13, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    .line 65
    move/from16 v1, p9

    iput v1, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mTimeoutSec:I

    .line 66
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasEnrollments()Z

    move-result v2

    iput-boolean v2, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mHasEnrollmentsBeforeStarting:Z

    .line 67
    return-void
.end method


# virtual methods
.method protected getOverlayReasonFromEnrollReason(I)I
    .registers 3
    .param p1, "reason"    # I

    .line 141
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    packed-switch p1, :pswitch_data_a

    .line 147
    const/4 v0, 0x0

    return v0

    .line 145
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 143
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public getProtoEnum()I
    .registers 2

    .line 132
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    const/4 v0, 0x2

    return v0
.end method

.method public hasEnrollmentStateChanged()Z
    .registers 3

    .line 71
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasEnrollments()Z

    move-result v0

    .line 72
    .local v0, "hasEnrollmentsNow":Z
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHasEnrollmentsBeforeStarting:Z

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public hasEnrollments()Z
    .registers 4

    .line 77
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected abstract hasReachedEnrollmentLimit()Z
.end method

.method public interruptsPrecedingClients()Z
    .registers 2

    .line 137
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 10
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 81
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mShouldVibrate:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getIsFod()Z

    move-result v0

    if-nez v0, :cond_11

    .line 82
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->vibrateSuccess()V

    .line 85
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    .line 87
    .local v0, "listener":Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    if-eqz v0, :cond_24

    .line 88
    :try_start_17
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_24

    .line 90
    :catch_1b
    move-exception v1

    .line 91
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Biometrics/EnrollClient"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 92
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_24
    :goto_24
    nop

    .line 94
    :goto_25
    if-nez p2, :cond_4c

    .line 95
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getTargetUserId()I

    move-result v2

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v3, v5

    .line 96
    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnEnrolled(IJZ)V

    .line 99
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 101
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->notifyUserActivity()V

    .line 102
    return-void
.end method

.method public onError(II)V
    .registers 9
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 124
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getTargetUserId()I

    move-result v1

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v2, v4

    .line 124
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnEnrolled(IJZ)V

    .line 127
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    .line 128
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 106
    .local p0, "this":Lcom/android/server/biometrics/sensors/EnrollClient;, "Lcom/android/server/biometrics/sensors/EnrollClient<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasReachedEnrollmentLimit()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 109
    const-string v0, "Biometrics/EnrollClient"

    const-string v1, "Reached enrollment limit"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 111
    return-void

    .line 114
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    .line 115
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->startHalOperation()V

    .line 116
    return-void
.end method
