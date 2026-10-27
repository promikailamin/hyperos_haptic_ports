.class public Lcom/android/server/biometrics/log/BiometricLogger;
.super Ljava/lang/Object;
.source "BiometricLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BiometricLogger"


# instance fields
.field private mFirstAcquireTimeMs:J

.field private volatile mLastAmbientLux:F

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldLogMetrics:Z

.field private final mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field private final mStatsAction:I

.field private final mStatsClient:I

.field private final mStatsModality:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/android/server/biometrics/log/BiometricLogger;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastAmbientLux(Lcom/android/server/biometrics/log/BiometricLogger;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLightSensorLoggingEnabled(Lcom/android/server/biometrics/log/BiometricLogger;Landroid/hardware/Sensor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/log/BiometricLogger;->setLightSensorLoggingEnabled(Landroid/hardware/Sensor;)V

    return-void
.end method

.method constructor <init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Landroid/hardware/SensorManager;)V
    .registers 7
    .param p1, "statsModality"    # I
    .param p2, "statsAction"    # I
    .param p3, "statsClient"    # I
    .param p4, "logSink"    # Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;
    .param p5, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    .line 83
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricLogger$1;-><init>(Lcom/android/server/biometrics/log/BiometricLogger;)V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 118
    iput p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 119
    iput p2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 120
    iput p3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 121
    iput-object p4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 122
    iput-object p5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statsModality"    # I
    .param p3, "statsAction"    # I
    .param p4, "statsClient"    # I

    .line 109
    nop

    .line 110
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v4

    const-class v0, Landroid/hardware/SensorManager;

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/SensorManager;

    .line 109
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Landroid/hardware/SensorManager;)V

    .line 112
    return-void
.end method

.method public static ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method private setLightSensorLoggingEnabled(Landroid/hardware/Sensor;)V
    .registers 5
    .param p1, "lightSensor"    # Landroid/hardware/Sensor;

    .line 354
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 355
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    if-nez v1, :cond_21

    .line 356
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    .line 357
    iput v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    .line 358
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_21

    .line 362
    :cond_15
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    .line 363
    iput v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    .line 364
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 366
    :cond_21
    :goto_21
    return-void
.end method

.method private shouldSkipLogging()Z
    .registers 4

    .line 151
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

    .line 154
    .local v1, "shouldSkipLogging":Z
    :goto_c
    const-string v2, "BiometricLogger"

    if-nez v0, :cond_15

    .line 155
    const-string v0, "Unknown field detected: MODALITY_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_15
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    if-nez v0, :cond_1e

    .line 159
    const-string v0, "Unknown field detected: ACTION_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1e
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    if-nez v0, :cond_27

    .line 163
    const-string v0, "Unknown field detected: CLIENT_UNKNOWN"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_27
    return v1
.end method


# virtual methods
.method public createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;
    .registers 5
    .param p1, "startWithClient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/server/biometrics/log/CallbackWithProbe<",
            "Lcom/android/server/biometrics/log/Probe;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Lcom/android/server/biometrics/log/CallbackWithProbe;

    new-instance v1, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;-><init>(Lcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe-IA;)V

    invoke-direct {v0, v1, p1}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/Probe;Z)V

    return-object v0
.end method

.method public disableMetrics()V
    .registers 2

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 133
    return-void
.end method

.method protected getAmbientLightSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .registers 3
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 345
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method public getStatsAction()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    return v0
.end method

.method public getStatsClient()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    return v0
.end method

.method public logOnAcquired(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "operationContext"    # Landroid/hardware/biometrics/common/OperationContext;
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I
    .param p5, "targetUserId"    # I

    .line 172
    move-object v0, p0

    move/from16 v10, p3

    iget-boolean v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v1, :cond_8

    .line 173
    return-void

    .line 176
    :cond_8
    iget v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_11

    move v2, v4

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    move v11, v2

    .line 177
    .local v11, "isFace":Z
    if-ne v1, v4, :cond_16

    move v3, v4

    :cond_16
    move v12, v3

    .line 178
    .local v12, "isFingerprint":Z
    if-nez v11, :cond_2d

    if-eqz v12, :cond_1c

    goto :goto_2d

    .line 183
    :cond_1c
    if-nez v10, :cond_3e

    .line 184
    iget-wide v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3e

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    goto :goto_3e

    .line 179
    :cond_2d
    :goto_2d
    if-eqz v12, :cond_32

    const/4 v1, 0x7

    if-eq v10, v1, :cond_38

    :cond_32
    if-eqz v11, :cond_3e

    const/16 v1, 0x14

    if-ne v10, v1, :cond_3e

    .line 181
    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 198
    :cond_3e
    :goto_3e
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 199
    return-void

    .line 202
    :cond_45
    iget-object v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v4, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v5, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 203
    move-object/from16 v13, p1

    move/from16 v14, p5

    invoke-static {v13, v14}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v6

    .line 202
    move-object/from16 v2, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->acquired(Landroid/hardware/biometrics/common/OperationContext;IIIZIII)V

    .line 205
    return-void
.end method

.method public logOnAuthenticated(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;ZZIZ)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "operationContext"    # Landroid/hardware/biometrics/common/OperationContext;
    .param p3, "authenticated"    # Z
    .param p4, "requireConfirmation"    # Z
    .param p5, "targetUserId"    # I
    .param p6, "isBiometricPrompt"    # Z

    .line 243
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v1, :cond_7

    .line 244
    return-void

    .line 247
    :cond_7
    const/4 v1, 0x0

    .line 248
    .local v1, "authState":I
    if-nez p3, :cond_c

    .line 249
    const/4 v1, 0x1

    goto :goto_13

    .line 252
    :cond_c
    if-eqz p6, :cond_12

    if-eqz p4, :cond_12

    .line 253
    const/4 v1, 0x2

    goto :goto_13

    .line 255
    :cond_12
    const/4 v1, 0x3

    .line 260
    :goto_13
    iget-wide v2, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_23

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v2, v4

    goto :goto_25

    .line 262
    :cond_23
    const-wide/16 v2, -0x1

    :goto_25
    move-wide v14, v2

    .line 274
    .local v14, "latency":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication latency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricLogger"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 278
    return-void

    .line 281
    :cond_45
    iget-object v2, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v4, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v5, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v6, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 282
    move-object/from16 v13, p1

    move/from16 v12, p5

    invoke-static {v13, v12}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v7

    iget v11, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    .line 281
    move-object/from16 v3, p2

    move-wide v8, v14

    move v10, v1

    move/from16 v16, v11

    move/from16 v11, p4

    move/from16 v13, v16

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Landroid/hardware/biometrics/common/OperationContext;IIIZJIZIF)V

    .line 284
    return-void
.end method

.method public logOnEnrolled(IJZ)V
    .registers 15
    .param p1, "targetUserId"    # I
    .param p2, "latency"    # J
    .param p4, "enrollSuccessful"    # Z

    .line 288
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_5

    .line 289
    return-void

    .line 300
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enroll latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 304
    return-void

    .line 307
    :cond_24
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    iget v9, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    move v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->enroll(IIIIJZF)V

    .line 309
    return-void
.end method

.method public logOnError(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "operationContext"    # Landroid/hardware/biometrics/common/OperationContext;
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I
    .param p5, "targetUserId"    # I

    .line 210
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v1, :cond_7

    .line 211
    return-void

    .line 214
    :cond_7
    iget-wide v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_17

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v1, v3

    goto :goto_19

    :cond_17
    const-wide/16 v1, -0x1

    .line 227
    .local v1, "latency":J
    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error latency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricLogger"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 231
    return-void

    .line 234
    :cond_38
    iget-object v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v5, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v6, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v7, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 235
    move-object/from16 v14, p1

    move/from16 v15, p5

    invoke-static {v14, v15}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v8

    .line 234
    move-object/from16 v4, p2

    move-wide v9, v1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Landroid/hardware/biometrics/common/OperationContext;IIIZJIII)V

    .line 237
    return-void
.end method

.method public logUnknownEnrollmentInFramework()V
    .registers 3

    .line 322
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    return-void

    .line 326
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledFramework(I)V

    .line 327
    return-void
.end method

.method public logUnknownEnrollmentInHal()V
    .registers 3

    .line 313
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 314
    return-void

    .line 317
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledHal(I)V

    .line 318
    return-void
.end method

.method public statsModality()I
    .registers 2

    .line 137
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    return v0
.end method

.method public swapAction(Landroid/content/Context;I)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statsAction"    # I

    .line 127
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method
