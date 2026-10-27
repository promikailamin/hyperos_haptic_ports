.class final Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;
.super Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccelSensorJudge"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 80.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x50

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0xc8

.field private static final TILT_OVERHEAD_ENTER:I = -0x28

.field private static final TILT_OVERHEAD_EXIT:I = -0xf


# instance fields
.field private mAccelerating:Z

.field private mAccelerationTimestampNanos:J

.field private mFlat:Z

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mOverhead:Z

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mSwinging:Z

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field private final mTiltToleranceConfig:[[I

.field private mTouchEndedTimestampNanos:J

.field private mTouched:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener;Landroid/content/Context;)V
    .registers 13
    .param p1, "this$0"    # Lcom/android/server/wm/WindowOrientationListener;
    .param p2, "context"    # Landroid/content/Context;

    .line 633
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;)V

    .line 588
    const/4 v0, 0x4

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_94

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9c

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a4

    aput-object v3, v1, v2

    new-array v2, v2, [I

    fill-array-data v2, :array_ac

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    .line 621
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 629
    const/16 v1, 0xc8

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 630
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 635
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 637
    .local v1, "tiltTolerance":[I
    array-length v2, v1

    const-string v3, "WindowOrientationListener"

    const/16 v6, 0x8

    if-ne v2, v6, :cond_8d

    .line 638
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4b
    if-ge v2, v0, :cond_8c

    .line 639
    mul-int/lit8 v6, v2, 0x2

    aget v6, v1, v6

    .line 640
    .local v6, "min":I
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v5

    aget v7, v1, v7

    .line 641
    .local v7, "max":I
    const/16 v8, -0x5a

    if-lt v6, v8, :cond_69

    if-gt v6, v7, :cond_69

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_69

    .line 642
    iget-object v8, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v8, v8, v2

    aput v6, v8, v4

    .line 643
    aput v7, v8, v5

    goto :goto_89

    .line 645
    :cond_69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config_autoRotationTiltTolerance contains invalid range: min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v6    # "min":I
    .end local v7    # "max":I
    :goto_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .end local v2    # "i":I
    :cond_8c
    goto :goto_92

    .line 650
    :cond_8d
    const-string v0, "config_autoRotationTiltTolerance should have exactly 8 elements"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_92
    return-void

    nop

    :array_94
    .array-data 4
        -0x19
        0x46
    .end array-data

    :array_9c
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_a4
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_ac
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .registers 8
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .line 1042
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 1043
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aput-wide p1, v0, v1

    .line 1044
    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 1045
    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 1046
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .registers 3

    .line 1020
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 1021
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 1022
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .registers 5

    .line 1037
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 1038
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 1039
    return-void
.end method

.method private getLastTiltLocked()F
    .registers 3

    .line 1080
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    .line 1081
    .local v0, "index":I
    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    goto :goto_f

    :cond_d
    const/high16 v1, 0x7fc00000    # Float.NaN

    :goto_f
    return v1
.end method

.method private isAcceleratingLocked(F)Z
    .registers 3
    .param p1, "magnitude"    # F

    .line 1032
    const v0, 0x40b9d014

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_11

    const v0, 0x415ce80a

    cmpl-float v0, p1, v0

    if-lez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private isFlatLocked(J)Z
    .registers 8
    .param p1, "now"    # J

    .line 1049
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_22

    .line 1050
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42a00000    # 80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_14

    .line 1051
    goto :goto_22

    .line 1053
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_2

    .line 1055
    const/4 v1, 0x1

    return v1

    .line 1058
    .end local v0    # "i":I
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .registers 8
    .param p1, "rotation"    # I
    .param p2, "orientationAngle"    # I

    .line 939
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmCurrentRotation(Lcom/android/server/wm/WindowOrientationListener;)I

    move-result v0

    .line 940
    .local v0, "currentRotation":I
    if-ltz v0, :cond_3d

    .line 945
    const/16 v1, 0x2d

    const/4 v2, 0x0

    if-eq p1, v0, :cond_13

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_26

    .line 947
    :cond_13
    mul-int/lit8 v3, p1, 0x5a

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x16

    .line 949
    .local v3, "lowerBound":I
    if-nez p1, :cond_23

    .line 950
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_26

    add-int/lit16 v4, v3, 0x168

    if-ge p2, v4, :cond_26

    .line 951
    return v2

    .line 954
    :cond_23
    if-ge p2, v3, :cond_26

    .line 955
    return v2

    .line 964
    .end local v3    # "lowerBound":I
    :cond_26
    if-eq p1, v0, :cond_2e

    add-int/lit8 v3, v0, 0x3

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_3d

    .line 966
    :cond_2e
    mul-int/lit8 v3, p1, 0x5a

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x16

    .line 968
    .local v3, "upperBound":I
    if-nez p1, :cond_3a

    .line 969
    if-gt p2, v1, :cond_3d

    if-le p2, v3, :cond_3d

    .line 970
    return v2

    .line 973
    :cond_3a
    if-le p2, v3, :cond_3d

    .line 974
    return v2

    .line 979
    .end local v3    # "upperBound":I
    :cond_3d
    const/4 v1, 0x1

    return v1
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .registers 11
    .param p1, "now"    # J

    .line 988
    iget-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v2, 0x2625a00

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    .line 989
    return v1

    .line 993
    :cond_c
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_17

    .line 994
    return v1

    .line 999
    :cond_17
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v6, 0x11e1a300

    add-long/2addr v2, v6

    cmp-long v0, p1, v2

    if-gez v0, :cond_22

    .line 1000
    return v1

    .line 1004
    :cond_22
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_2a

    .line 1006
    return v1

    .line 1010
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_36

    goto :goto_38

    .line 1016
    :cond_36
    const/4 v0, 0x1

    return v0

    .line 1012
    :cond_38
    :goto_38
    return v1
.end method

.method private isSwingingLocked(JF)Z
    .registers 9
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .line 1062
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_23

    .line 1063
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_16

    .line 1064
    goto :goto_23

    .line 1066
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_2

    .line 1068
    const/4 v1, 0x1

    return v1

    .line 1071
    .end local v0    # "i":I
    :cond_23
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .registers 7
    .param p1, "rotation"    # I
    .param p2, "tiltAngle"    # I

    .line 925
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-lt p2, v2, :cond_f

    aget v0, v0, v3

    if-gt p2, v0, :cond_f

    move v1, v3

    :cond_f
    return v1
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .registers 7
    .param p1, "index"    # I

    .line 1075
    if-nez p1, :cond_5

    const/16 v0, 0xc8

    goto :goto_6

    :cond_5
    move v0, p1

    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 1076
    .end local p1    # "index":I
    .local v0, "index":I
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, p1, v0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, v1, v3

    if-eqz p1, :cond_14

    move p1, v0

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    :goto_15
    return p1
.end method

.method private remainingMS(JJ)F
    .registers 7
    .param p1, "now"    # J
    .param p3, "until"    # J

    .line 1085
    cmp-long v0, p1, p3

    if-ltz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    sub-long v0, p3, p1

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    :goto_d
    return v0
.end method

.method private updatePredictedRotationLocked(JI)V
    .registers 5
    .param p1, "now"    # J
    .param p3, "rotation"    # I

    .line 1025
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-eq v0, p3, :cond_8

    .line 1026
    iput p3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 1027
    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 1029
    :cond_8
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AccelSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mPredictedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastFilteredX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastFilteredY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastFilteredZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    sub-long/2addr v0, v2

    .line 669
    .local v0, "delta":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mLastFilteredTimestampNanos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-float v3, v0

    const v4, 0x358637bd    # 1.0E-6f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mTiltHistory={last: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->getLastTiltLocked()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mFlat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mSwinging="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mAccelerating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mOverhead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mTouched="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mTiltToleranceConfig=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1bd
    const/4 v3, 0x4

    const-string v4, "]"

    if-ge v2, v3, :cond_1eb

    .line 679
    const-string v3, ", "

    if-eqz v2, :cond_1c9

    .line 680
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 682
    :cond_1c9
    const-string v5, "["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 683
    iget-object v5, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v5, v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 684
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v3, v3, v2

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 686
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    add-int/lit8 v2, v2, 0x1

    goto :goto_1bd

    .line 688
    .end local v2    # "i":I
    :cond_1eb
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method public getProposedRotationLocked()I
    .registers 2

    .line 656
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 693
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 28
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 700
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmLock(Lcom/android/server/wm/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 704
    :try_start_b
    iget-object v0, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    .line 705
    .local v0, "x":F
    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 706
    .local v5, "y":F
    iget-object v7, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    .line 708
    .local v7, "z":F
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v8

    if-eqz v8, :cond_63

    .line 709
    const-string v8, "WindowOrientationListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raw acceleration vector: x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", z="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", magnitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-float v10, v0, v0

    mul-float v11, v5, v5

    add-float/2addr v10, v11

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    float-to-double v10, v10

    .line 711
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 709
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_63
    iget-wide v8, v2, Landroid/hardware/SensorEvent;->timestamp:J

    .line 719
    .local v8, "now":J
    iget-wide v10, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 720
    .local v10, "then":J
    sub-long v12, v8, v10

    long-to-float v12, v12

    const v13, 0x358637bd    # 1.0E-6f

    mul-float/2addr v12, v13

    .line 722
    .local v12, "timeDeltaMS":F
    cmp-long v14, v8, v10

    if-ltz v14, :cond_f9

    const-wide/32 v14, 0x3b9aca00

    add-long/2addr v14, v10

    cmp-long v14, v8, v14

    if-gtz v14, :cond_f9

    const/4 v14, 0x0

    cmpl-float v15, v0, v14

    if-nez v15, :cond_88

    cmpl-float v15, v5, v14

    if-nez v15, :cond_88

    cmpl-float v14, v7, v14

    if-nez v14, :cond_88

    goto :goto_f9

    .line 731
    :cond_88
    const/high16 v14, 0x43480000    # 200.0f

    add-float/2addr v14, v12

    div-float v14, v12, v14

    .line 732
    .local v14, "alpha":F
    iget v15, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    sub-float v16, v0, v15

    mul-float v16, v16, v14

    add-float v0, v16, v15

    .line 733
    iget v15, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    sub-float v16, v5, v15

    mul-float v16, v16, v14

    add-float v5, v16, v15

    .line 734
    iget v15, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    sub-float v16, v7, v15

    mul-float v16, v16, v14

    add-float v7, v16, v15

    .line 735
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v15

    if-eqz v15, :cond_f3

    .line 736
    const-string v15, "WindowOrientationListener"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filtered acceleration vector: x="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ", y="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ", z="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ", magnitude="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-float v13, v0, v0

    mul-float v18, v5, v5

    add-float v13, v13, v18

    mul-float v18, v7, v7

    add-float v13, v13, v18

    move/from16 v19, v7

    .end local v7    # "z":F
    .local v19, "z":F
    float-to-double v6, v13

    .line 738
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 736
    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5

    .line 735
    .end local v19    # "z":F
    .restart local v7    # "z":F
    :cond_f3
    move/from16 v19, v7

    .line 740
    .end local v7    # "z":F
    .restart local v19    # "z":F
    :goto_f5
    const/4 v4, 0x0

    move/from16 v7, v19

    .local v4, "skipSample":Z
    goto :goto_10b

    .line 725
    .end local v4    # "skipSample":Z
    .end local v14    # "alpha":F
    .end local v19    # "z":F
    .restart local v7    # "z":F
    :cond_f9
    :goto_f9
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v4

    if-eqz v4, :cond_106

    .line 726
    const-string v4, "WindowOrientationListener"

    const-string v6, "Resetting orientation listener."

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_106
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->resetLocked(Z)V

    .line 729
    const/4 v4, 0x1

    .line 742
    .restart local v4    # "skipSample":Z
    :goto_10b
    iput-wide v8, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 743
    iput v0, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    .line 744
    iput v5, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    .line 745
    iput v7, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    .line 747
    const/4 v6, 0x0

    .line 748
    .local v6, "isAccelerating":Z
    const/4 v13, 0x0

    .line 749
    .local v13, "isFlat":Z
    const/4 v14, 0x0

    .line 750
    .local v14, "isSwinging":Z
    if-nez v4, :cond_2b3

    .line 752
    mul-float v15, v0, v0

    mul-float v19, v5, v5

    add-float v15, v15, v19

    mul-float v19, v7, v7

    add-float v15, v15, v19

    move-wide/from16 v19, v10

    .end local v10    # "then":J
    .local v19, "then":J
    float-to-double v10, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 753
    .local v10, "magnitude":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_149

    .line 754
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v11

    if-eqz v11, :cond_13d

    .line 755
    const-string v11, "WindowOrientationListener"

    const-string v15, "Ignoring sensor data, magnitude too close to zero."

    invoke-static {v11, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_13d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    move/from16 v18, v0

    move/from16 v22, v4

    move/from16 v23, v5

    move v15, v7

    goto/16 :goto_2bc

    .line 761
    :cond_149
    invoke-direct {v1, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isAcceleratingLocked(F)Z

    move-result v11

    if-eqz v11, :cond_152

    .line 762
    const/4 v6, 0x1

    .line 763
    iput-wide v8, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 772
    :cond_152
    div-float v11, v7, v10

    move/from16 v21, v6

    move v15, v7

    .end local v6    # "isAccelerating":Z
    .end local v7    # "z":F
    .local v15, "z":F
    .local v21, "isAccelerating":Z
    float-to-double v6, v11

    .line 773
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v22, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v6, v6, v22

    .line 772
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 774
    .local v6, "tiltAngle":I
    int-to-float v7, v6

    invoke-direct {v1, v8, v9, v7}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->addTiltHistoryEntryLocked(JF)V

    .line 777
    invoke-direct {v1, v8, v9}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isFlatLocked(J)Z

    move-result v7

    if-eqz v7, :cond_175

    .line 778
    const/4 v13, 0x1

    .line 779
    iput-wide v8, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 781
    :cond_175
    int-to-float v7, v6

    invoke-direct {v1, v8, v9, v7}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isSwingingLocked(JF)Z

    move-result v7

    if-eqz v7, :cond_17f

    .line 782
    const/4 v14, 0x1

    .line 783
    iput-wide v8, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 788
    :cond_17f
    const/16 v7, -0x28

    if-gt v6, v7, :cond_187

    .line 789
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    goto :goto_18e

    .line 790
    :cond_187
    const/16 v7, -0xf

    if-lt v6, v7, :cond_18e

    .line 791
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 793
    :cond_18e
    :goto_18e
    iget-boolean v7, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    if-eqz v7, :cond_1be

    .line 794
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v7

    if-eqz v7, :cond_1b0

    .line 795
    const-string v7, "WindowOrientationListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_1b0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    move/from16 v18, v0

    move/from16 v22, v4

    move/from16 v23, v5

    move v2, v13

    move/from16 v17, v14

    goto/16 :goto_2ad

    .line 799
    :cond_1be
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v7, 0x50

    if-le v2, v7, :cond_1f2

    .line 800
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v2

    if-eqz v2, :cond_1e4

    .line 801
    const-string v2, "WindowOrientationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_1e4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    move/from16 v18, v0

    move/from16 v22, v4

    move/from16 v23, v5

    move v2, v13

    move/from16 v17, v14

    goto/16 :goto_2ad

    .line 809
    :cond_1f2
    neg-float v2, v0

    move v7, v10

    .end local v10    # "magnitude":F
    .local v7, "magnitude":F
    float-to-double v10, v2

    move v2, v13

    move/from16 v17, v14

    .end local v13    # "isFlat":Z
    .end local v14    # "isSwinging":Z
    .local v2, "isFlat":Z
    .local v17, "isSwinging":Z
    float-to-double v13, v5

    .line 810
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    neg-double v10, v10

    mul-double v10, v10, v22

    .line 809
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    .line 811
    .local v10, "orientationAngle":I
    if-gez v10, :cond_209

    .line 813
    add-int/lit16 v10, v10, 0x168

    .line 817
    :cond_209
    add-int/lit8 v11, v10, 0x2d

    div-int/lit8 v11, v11, 0x5a

    .line 818
    .local v11, "nearestRotation":I
    const/4 v13, 0x4

    if-ne v11, v13, :cond_211

    .line 819
    const/4 v11, 0x0

    .line 823
    :cond_211
    invoke-direct {v1, v11, v6}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isTiltAngleAcceptableLocked(II)Z

    move-result v13

    if-eqz v13, :cond_27c

    .line 824
    invoke-direct {v1, v11, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isOrientationAngleAcceptableLocked(II)Z

    move-result v13

    if-eqz v13, :cond_275

    .line 826
    invoke-direct {v1, v8, v9, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->updatePredictedRotationLocked(JI)V

    .line 827
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v13

    if-eqz v13, :cond_26e

    .line 828
    const-string v13, "WindowOrientationListener"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    .end local v0    # "x":F
    .local v18, "x":F
    const-string v0, "Predicted: tiltAngle="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ", orientationAngle="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ", predictedRotation="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ", predictedRotationAgeMS="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v22, v4

    move/from16 v23, v5

    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .local v22, "skipSample":Z
    .local v23, "y":F
    iget-wide v4, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    sub-long v4, v8, v4

    long-to-float v4, v4

    const v5, 0x358637bd    # 1.0E-6f

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ad

    .line 827
    .end local v18    # "x":F
    .end local v22    # "skipSample":Z
    .end local v23    # "y":F
    .restart local v0    # "x":F
    .restart local v4    # "skipSample":Z
    .restart local v5    # "y":F
    :cond_26e
    move/from16 v18, v0

    move/from16 v22, v4

    move/from16 v23, v5

    .end local v0    # "x":F
    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .restart local v18    # "x":F
    .restart local v22    # "skipSample":Z
    .restart local v23    # "y":F
    goto :goto_2ad

    .line 824
    .end local v18    # "x":F
    .end local v22    # "skipSample":Z
    .end local v23    # "y":F
    .restart local v0    # "x":F
    .restart local v4    # "skipSample":Z
    .restart local v5    # "y":F
    :cond_275
    move/from16 v18, v0

    move/from16 v22, v4

    move/from16 v23, v5

    .end local v0    # "x":F
    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .restart local v18    # "x":F
    .restart local v22    # "skipSample":Z
    .restart local v23    # "y":F
    goto :goto_282

    .line 823
    .end local v18    # "x":F
    .end local v22    # "skipSample":Z
    .end local v23    # "y":F
    .restart local v0    # "x":F
    .restart local v4    # "skipSample":Z
    .restart local v5    # "y":F
    :cond_27c
    move/from16 v18, v0

    move/from16 v22, v4

    move/from16 v23, v5

    .line 837
    .end local v0    # "x":F
    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .restart local v18    # "x":F
    .restart local v22    # "skipSample":Z
    .restart local v23    # "y":F
    :goto_282
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v0

    if-eqz v0, :cond_2aa

    .line 838
    const-string v0, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orientationAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_2aa
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 847
    .end local v2    # "isFlat":Z
    .end local v6    # "tiltAngle":I
    .end local v7    # "magnitude":F
    .end local v10    # "orientationAngle":I
    .end local v11    # "nearestRotation":I
    .end local v17    # "isSwinging":Z
    .end local v18    # "x":F
    .end local v22    # "skipSample":Z
    .end local v23    # "y":F
    .restart local v0    # "x":F
    .restart local v4    # "skipSample":Z
    .restart local v5    # "y":F
    .restart local v13    # "isFlat":Z
    .restart local v14    # "isSwinging":Z
    :goto_2ad
    move v13, v2

    move/from16 v14, v17

    move/from16 v6, v21

    .end local v0    # "x":F
    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .end local v13    # "isFlat":Z
    .end local v14    # "isSwinging":Z
    .restart local v2    # "isFlat":Z
    .restart local v17    # "isSwinging":Z
    .restart local v18    # "x":F
    .restart local v22    # "skipSample":Z
    .restart local v23    # "y":F
    goto :goto_2bc

    .line 750
    .end local v2    # "isFlat":Z
    .end local v15    # "z":F
    .end local v17    # "isSwinging":Z
    .end local v18    # "x":F
    .end local v19    # "then":J
    .end local v21    # "isAccelerating":Z
    .end local v22    # "skipSample":Z
    .end local v23    # "y":F
    .restart local v0    # "x":F
    .restart local v4    # "skipSample":Z
    .restart local v5    # "y":F
    .local v6, "isAccelerating":Z
    .local v7, "z":F
    .local v10, "then":J
    .restart local v13    # "isFlat":Z
    .restart local v14    # "isSwinging":Z
    :cond_2b3
    move/from16 v18, v0

    move/from16 v22, v4

    move/from16 v23, v5

    move v15, v7

    move-wide/from16 v19, v10

    .line 847
    .end local v0    # "x":F
    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .end local v7    # "z":F
    .end local v10    # "then":J
    .restart local v15    # "z":F
    .restart local v18    # "x":F
    .restart local v19    # "then":J
    .restart local v22    # "skipSample":Z
    .restart local v23    # "y":F
    :goto_2bc
    iput-boolean v13, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 848
    iput-boolean v14, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 849
    iput-boolean v6, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 852
    iget v0, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 853
    .local v0, "oldProposedRotation":I
    iget v2, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-ltz v2, :cond_2ce

    invoke-direct {v1, v8, v9}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isPredictedRotationAcceptableLocked(J)Z

    move-result v2

    if-eqz v2, :cond_2d2

    .line 854
    :cond_2ce
    iget v2, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    iput v2, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 856
    :cond_2d2
    iget v2, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 859
    .local v2, "proposedRotation":I
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v4

    if-eqz v4, :cond_3b1

    .line 860
    const-string v4, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Result: currentRotation="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v7}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmCurrentRotation(Lcom/android/server/wm/WindowOrientationListener;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", proposedRotation="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", predictedRotation="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", timeDeltaMS="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", isAccelerating="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", isFlat="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", isSwinging="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", isOverhead="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", isTouched="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", timeUntilSettledMS="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v16, 0x2625a00

    add-long v10, v10, v16

    .line 869
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    const-wide/32 v16, 0x1dcd6500

    add-long v10, v10, v16

    .line 871
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    add-long v10, v10, v16

    .line 873
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v24, 0x11e1a300

    add-long v10, v10, v24

    .line 875
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", timeUntilTouchDelayExpiredMS="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long v10, v10, v16

    .line 877
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 860
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    .end local v6    # "isAccelerating":Z
    .end local v8    # "now":J
    .end local v12    # "timeDeltaMS":F
    .end local v13    # "isFlat":Z
    .end local v14    # "isSwinging":Z
    .end local v15    # "z":F
    .end local v18    # "x":F
    .end local v19    # "then":J
    .end local v22    # "skipSample":Z
    .end local v23    # "y":F
    :cond_3b1
    monitor-exit v3
    :try_end_3b2
    .catchall {:try_start_b .. :try_end_3b2} :catchall_3e4

    .line 883
    if-eq v2, v0, :cond_3e3

    if-ltz v2, :cond_3e3

    .line 884
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v3

    if-eqz v3, :cond_3de

    .line 885
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldProposedRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_3de
    iget-object v3, v1, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 890
    :cond_3e3
    return-void

    .line 880
    .end local v0    # "oldProposedRotation":I
    .end local v2    # "proposedRotation":I
    :catchall_3e4
    move-exception v0

    :try_start_3e5
    monitor-exit v3
    :try_end_3e6
    .catchall {:try_start_3e5 .. :try_end_3e6} :catchall_3e4

    throw v0
.end method

.method public onTouchEndLocked(J)V
    .registers 4
    .param p1, "whenElapsedNanos"    # J

    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 900
    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 901
    return-void
.end method

.method public onTouchStartLocked()V
    .registers 2

    .line 894
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 895
    return-void
.end method

.method public resetLocked(Z)V
    .registers 5
    .param p1, "clearCurrentRotation"    # Z

    .line 905
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 906
    if-eqz p1, :cond_9

    .line 907
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 909
    :cond_9
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 910
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 911
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 912
    iput-boolean v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 913
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 914
    iput-boolean v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 915
    iput-boolean v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 916
    invoke-direct {p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 917
    invoke-direct {p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearTiltHistoryLocked()V

    .line 918
    return-void
.end method
