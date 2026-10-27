.class Lcom/android/server/sensorprivacy/SensorState;
.super Ljava/lang/Object;
.source "SensorState.java"


# instance fields
.field private mLastChange:J

.field private mStateType:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "stateType"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 31
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 32
    return-void
.end method

.method constructor <init>(IJ)V
    .registers 6
    .param p1, "stateType"    # I
    .param p2, "lastChange"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 36
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/android/server/sensorprivacy/SensorState;)V
    .registers 4
    .param p1, "sensorState"    # Lcom/android/server/sensorprivacy/SensorState;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 41
    invoke-virtual {p1}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 42
    return-void
.end method

.method constructor <init>(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 68
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorState;->enabledToState(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sensorprivacy/SensorState;-><init>(I)V

    .line 69
    return-void
.end method

.method private static enabledToState(Z)I
    .registers 2
    .param p0, "enabled"    # Z

    .line 64
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    return v0
.end method


# virtual methods
.method getLastChange()J
    .registers 3

    .line 58
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-wide v0
.end method

.method getState()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    return v0
.end method

.method isEnabled()Z
    .registers 3

    .line 76
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method setEnabled(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 72
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorState;->enabledToState(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/SensorState;->setState(I)Z

    move-result v0

    return v0
.end method

.method setState(I)Z
    .registers 4
    .param p1, "stateType"    # I

    .line 45
    iget v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    if-eq v0, p1, :cond_e

    .line 46
    iput p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 47
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 48
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
