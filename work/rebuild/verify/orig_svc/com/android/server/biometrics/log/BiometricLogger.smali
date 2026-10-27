.class public Lcom/android/server/biometrics/log/BiometricLogger;
.super Ljava/lang/Object;
.source "BiometricLogger.java"


# static fields
.field public static final VERBOSE:Z


# instance fields
.field public final mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

.field public final mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

.field public mFirstAcquireTimeMs:J

.field public final mHandler:Landroid/os/Handler;

.field public mShouldLogMetrics:Z

.field public final mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field public final mStatsAction:I

.field public final mStatsClient:I

.field public final mStatsModality:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const-string v0, "BiometricLogger"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Lcom/android/server/biometrics/log/BiometricLogger;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V
    .registers 15

    .line 94
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v5

    const-class v0, Landroid/hardware/SensorManager;

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/hardware/SensorManager;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v6, p6

    .line 93
    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/os/Handler;IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/AuthenticationStatsCollector;Landroid/hardware/SensorManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/AuthenticationStatsCollector;Landroid/hardware/SensorManager;)V
    .registers 9

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 105
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mHandler:Landroid/os/Handler;

    .line 106
    iput p2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 107
    iput p3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 108
    iput p4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 109
    iput-object p5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 110
    iput-object p6, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 111
    new-instance p2, Lcom/android/server/biometrics/log/ALSProbe;

    invoke-direct {p2, p7, p1}, Lcom/android/server/biometrics/log/ALSProbe;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    return-void
.end method

.method public static ofUnknown(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 9

    .line 72
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;Landroid/os/Handler;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    return-object v0
.end method


# virtual methods
.method public final actionAsString()Ljava/lang/String;
    .registers 1

    .line 398
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final clientAsString()Ljava/lang/String;
    .registers 1

    .line 402
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->clientToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public disableMetrics()V
    .registers 2

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 123
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->destroy()V

    return-void
.end method

.method public getAmbientLightProbe(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;
    .registers 3

    .line 390
    new-instance v0, Lcom/android/server/biometrics/log/CallbackWithProbe;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/Probe;Z)V

    return-object v0
.end method

.method public logFingerprintsLoe()V
    .registers 2

    .line 371
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 375
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportFingerprintsLoe(I)V

    return-void
.end method

.method public logOnAcquired(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V
    .registers 16

    .line 153
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_6

    goto/16 :goto_9a

    .line 157
    :cond_6
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    if-ne v0, v3, :cond_13

    move v2, v3

    :cond_13
    if-nez v1, :cond_29

    if-eqz v2, :cond_18

    goto :goto_29

    :cond_18
    if-nez p3, :cond_3a

    .line 165
    iget-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3a

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    goto :goto_3a

    :cond_29
    :goto_29
    if-eqz v2, :cond_2e

    const/4 v0, 0x7

    if-eq p3, v0, :cond_34

    :cond_2e
    if-eqz v1, :cond_3a

    const/16 v0, 0x14

    if-ne p3, v0, :cond_3a

    .line 162
    :cond_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 169
    :cond_3a
    :goto_3a
    sget-boolean v0, Lcom/android/server/biometrics/log/BiometricLogger;->VERBOSE:Z

    if-eqz v0, :cond_94

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquired! Modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->modalityAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsCrypto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p2}, Lcom/android/server/biometrics/log/OperationContextExt;->isCrypto()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->actionAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->clientAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AcquiredInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", VendorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "BiometricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_94
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_9b

    :goto_9a
    return-void

    .line 183
    :cond_9b
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 185
    invoke-static {p1, p5}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v6

    move-object v2, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 183
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->acquired(Lcom/android/server/biometrics/log/OperationContextExt;IIIZIII)V

    return-void
.end method

.method public logOnAuthenticated(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;ZZIZ)V
    .registers 19

    move/from16 v9, p4

    move/from16 v10, p5

    .line 228
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_a

    goto/16 :goto_bf

    .line 232
    :cond_a
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    if-eqz v0, :cond_11

    .line 233
    invoke-virtual {v0, v10, p3}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->authenticate(IZ)V

    :cond_11
    if-nez p3, :cond_16

    const/4 p3, 0x1

    :goto_14
    move v8, p3

    goto :goto_1e

    :cond_16
    if-eqz p6, :cond_1c

    if-eqz v9, :cond_1c

    const/4 p3, 0x2

    goto :goto_14

    :cond_1c
    const/4 p3, 0x3

    goto :goto_14

    .line 249
    :goto_1e
    iget-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2f

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v0, v2

    :goto_2d
    move-wide v6, v0

    goto :goto_32

    :cond_2f
    const-wide/16 v0, -0x1

    goto :goto_2d

    .line 253
    :goto_32
    sget-boolean p3, Lcom/android/server/biometrics/log/BiometricLogger;->VERBOSE:Z

    const-string v0, "Authenticated! Modality: "

    const-string v1, "BiometricLogger"

    if-eqz p3, :cond_9b

    .line 254
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->modalityAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", User: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", IsCrypto: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p2}, Lcom/android/server/biometrics/log/OperationContextExt;->isCrypto()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", Client: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->clientAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", RequireConfirmation: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", State: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {v8}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticatedStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Latency: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", Lux: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 261
    invoke-virtual {v0}, Lcom/android/server/biometrics/log/ALSProbe;->getMostRecentLux()F

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 254
    invoke-static {v1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 263
    :cond_9b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->modalityAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", latency: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_b9
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result p3

    if-eqz p3, :cond_c0

    :goto_bf
    return-void

    .line 271
    :cond_c0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 273
    invoke-static {p1, v10}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v5

    iget-object v11, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    move-object v1, p2

    .line 271
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZILcom/android/server/biometrics/log/ALSProbe;)V

    return-void
.end method

.method public logOnEnrolled(IJZII)V
    .registers 18

    .line 280
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v1, :cond_6

    goto/16 :goto_87

    .line 284
    :cond_6
    sget-boolean v1, Lcom/android/server/biometrics/log/BiometricLogger;->VERBOSE:Z

    const-string v2, "Enrolled! Modality: "

    const-string v3, "BiometricLogger"

    if-eqz v1, :cond_61

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->modalityAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", User: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->clientAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Lux: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 289
    invoke-virtual {v2}, Lcom/android/server/biometrics/log/ALSProbe;->getMostRecentLux()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", Success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", TemplateId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p6

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :cond_61
    move/from16 v10, p6

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->modalityAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_81
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v1

    if-eqz v1, :cond_88

    :goto_87
    return-void

    .line 301
    :cond_88
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-object v2, v1

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    move-object v3, v2

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    move-object v8, v3

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 302
    invoke-virtual {v0}, Lcom/android/server/biometrics/log/ALSProbe;->getMostRecentLux()F

    move-result v0

    move-object v4, v8

    move v8, v0

    move-object v0, v4

    move v4, p1

    move-wide v5, p2

    move v7, p4

    move/from16 v9, p5

    .line 301
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->enroll(IIIIJZFII)V

    return-void
.end method

.method public logOnEnumerated(II[I[I)V
    .registers 12

    .line 331
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_5

    goto :goto_51

    .line 335
    :cond_5
    sget-boolean v0, Lcom/android/server/biometrics/log/BiometricLogger;->VERBOSE:Z

    if-eqz v0, :cond_4b

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enumerated! Modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->modalityAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", templateIdsHal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", templateIdsFramework: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {p4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    const-string v1, "BiometricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_52

    :goto_51
    return-void

    .line 347
    :cond_52
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->enumerated(III[I[I)V

    return-void
.end method

.method public logOnError(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V
    .registers 17

    move/from16 v10, p5

    .line 192
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_8

    goto/16 :goto_a3

    .line 196
    :cond_8
    iget-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v0, v2

    :goto_17
    move-wide v6, v0

    goto :goto_1c

    :cond_19
    const-wide/16 v0, -0x1

    goto :goto_17

    .line 199
    :goto_1c
    sget-boolean v0, Lcom/android/server/biometrics/log/BiometricLogger;->VERBOSE:Z

    const-string v1, "Error! Modality: "

    const-string v2, "BiometricLogger"

    if-eqz v0, :cond_7f

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->modalityAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsCrypto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p2}, Lcom/android/server/biometrics/log/OperationContextExt;->isCrypto()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->actionAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->clientAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", VendorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 209
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->modalityAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_9d
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_a4

    :goto_a3
    return-void

    .line 217
    :cond_a4
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 219
    invoke-static {p1, v10}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v5

    move-object v1, p2

    move v8, p3

    move v9, p4

    .line 217
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V

    return-void
.end method

.method public logOnUnEnrolled(III)V
    .registers 7

    .line 308
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_5

    goto :goto_58

    .line 312
    :cond_5
    sget-boolean v0, Lcom/android/server/biometrics/log/BiometricLogger;->VERBOSE:Z

    const-string v1, "UnEnrolled! Modality: "

    const-string v2, "BiometricLogger"

    if-eqz v0, :cond_3c

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->modalityAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", templateId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 318
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->modalityAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_52
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_59

    :goto_58
    return-void

    .line 325
    :cond_59
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->unenrolled(IIII)V

    return-void
.end method

.method public logUnknownEnrollmentInFramework()V
    .registers 2

    .line 362
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 366
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledFramework(I)V

    return-void
.end method

.method public logUnknownEnrollmentInHal()V
    .registers 2

    .line 353
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 357
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledHal(I)V

    return-void
.end method

.method public final modalityAsString()Ljava/lang/String;
    .registers 1

    .line 394
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->modalityToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final shouldSkipLogging()Z
    .registers 4

    .line 132
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    if-nez v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v1, 0x1

    .line 135
    :goto_c
    const-string v2, "BiometricLogger"

    if-nez v0, :cond_15

    .line 136
    const-string v0, "Unknown field detected: MODALITY_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_15
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    if-nez v0, :cond_1e

    .line 140
    const-string v0, "Unknown field detected: ACTION_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1e
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    if-nez p0, :cond_27

    .line 144
    const-string p0, "Unknown field detected: CLIENT_UNKNOWN"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return v1
.end method

.method public swapAction(Landroid/content/Context;I)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 10

    .line 116
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget-object v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    const/4 v6, 0x0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;Landroid/os/Handler;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    return-object v0
.end method
