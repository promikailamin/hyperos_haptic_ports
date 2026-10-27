.class public Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "BiometricFrameworkStatsLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BiometricFrameworkStatsLogger"

.field private static final sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-direct {v0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    return-object v0
.end method

.method private sanitizeLatency(J)J
    .registers 5
    .param p1, "latency"    # J

    .line 132
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_21

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found a negative latency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricFrameworkStatsLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-wide/16 v0, -0x1

    return-wide v0

    .line 136
    :cond_21
    return-wide p1
.end method

.method private static sessionType(B)I
    .registers 3
    .param p0, "reason"    # B

    .line 140
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    .line 141
    return v0

    .line 143
    :cond_5
    if-ne p0, v0, :cond_8

    .line 144
    return v1

    .line 146
    :cond_8
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acquired(Landroid/hardware/biometrics/common/OperationContext;IIIZIII)V
    .registers 23
    .param p1, "operationContext"    # Landroid/hardware/biometrics/common/OperationContext;
    .param p2, "statsModality"    # I
    .param p3, "statsAction"    # I
    .param p4, "statsClient"    # I
    .param p5, "isDebug"    # Z
    .param p6, "acquiredInfo"    # I
    .param p7, "vendorCode"    # I
    .param p8, "targetUserId"    # I

    .line 47
    move-object v0, p1

    iget-boolean v4, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    iget v11, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-byte v1, v0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 58
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sessionType(B)I

    move-result v12

    iget-boolean v13, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 47
    const/16 v1, 0x57

    const/4 v10, -0x1

    move/from16 v2, p2

    move/from16 v3, p8

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p5

    invoke-static/range {v1 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZIIIZ)V

    .line 60
    return-void
.end method

.method public authenticate(Landroid/hardware/biometrics/common/OperationContext;IIIZJIZIF)V
    .registers 31
    .param p1, "operationContext"    # Landroid/hardware/biometrics/common/OperationContext;
    .param p2, "statsModality"    # I
    .param p3, "statsAction"    # I
    .param p4, "statsClient"    # I
    .param p5, "isDebug"    # Z
    .param p6, "latency"    # J
    .param p8, "authState"    # I
    .param p9, "requireConfirmation"    # Z
    .param p10, "targetUserId"    # I
    .param p11, "ambientLightLux"    # F

    .line 67
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 74
    move-object/from16 v15, p0

    move-wide/from16 v13, p6

    invoke-direct {v15, v13, v14}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v8

    iget v12, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-byte v1, v0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 79
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sessionType(B)I

    move-result v16

    iget-boolean v11, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 67
    const/16 v1, 0x58

    const/16 v17, -0x1

    move/from16 v2, p2

    move/from16 v3, p10

    move/from16 v5, p4

    move/from16 v6, p9

    move/from16 v7, p8

    move/from16 v10, p5

    move/from16 v18, v11

    move/from16 v11, v17

    move/from16 v17, v12

    move/from16 v12, p11

    move/from16 v13, v17

    move/from16 v14, v16

    move/from16 v15, v18

    invoke-static/range {v1 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZIFIIZ)V

    .line 81
    return-void
.end method

.method public enroll(IIIIJZF)V
    .registers 20
    .param p1, "statsModality"    # I
    .param p2, "statsAction"    # I
    .param p3, "statsClient"    # I
    .param p4, "targetUserId"    # I
    .param p5, "latency"    # J
    .param p7, "enrollSuccessful"    # Z
    .param p8, "ambientLightLux"    # F

    .line 86
    nop

    .line 89
    move-object v0, p0

    move-wide/from16 v1, p5

    invoke-direct {p0, v1, v2}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v6

    .line 86
    const/16 v3, 0xb8

    const/4 v9, -0x1

    move v4, p1

    move v5, p4

    move/from16 v8, p7

    move/from16 v10, p8

    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJZIF)V

    .line 93
    return-void
.end method

.method public error(Landroid/hardware/biometrics/common/OperationContext;IIIZJIII)V
    .registers 31
    .param p1, "operationContext"    # Landroid/hardware/biometrics/common/OperationContext;
    .param p2, "statsModality"    # I
    .param p3, "statsAction"    # I
    .param p4, "statsClient"    # I
    .param p5, "isDebug"    # Z
    .param p6, "latency"    # J
    .param p8, "error"    # I
    .param p9, "vendorCode"    # I
    .param p10, "targetUserId"    # I

    .line 99
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 108
    move-object/from16 v15, p0

    move-wide/from16 v13, p6

    invoke-direct {v15, v13, v14}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v10

    iget v12, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-byte v1, v0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 111
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sessionType(B)I

    move-result v16

    iget-boolean v9, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 99
    const/16 v1, 0x59

    const/16 v17, -0x1

    move/from16 v2, p2

    move/from16 v3, p10

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v18, v9

    move/from16 v9, p5

    move/from16 v19, v12

    move/from16 v12, v17

    move/from16 v13, v19

    move/from16 v14, v16

    move/from16 v15, v18

    invoke-static/range {v1 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJIIIZ)V

    .line 113
    return-void
.end method

.method public reportUnknownTemplateEnrolledFramework(I)V
    .registers 5
    .param p1, "statsModality"    # I

    .line 125
    const/16 v0, 0x94

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 129
    return-void
.end method

.method public reportUnknownTemplateEnrolledHal(I)V
    .registers 5
    .param p1, "statsModality"    # I

    .line 117
    const/16 v0, 0x94

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 121
    return-void
.end method
