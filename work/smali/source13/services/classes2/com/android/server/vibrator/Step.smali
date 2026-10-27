.class abstract Lcom/android/server/vibrator/Step;
.super Ljava/lang/Object;
.source "Step.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/vibrator/Step;",
        ">;"
    }
.end annotation


# instance fields
.field public final conductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final startTime:J


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V
    .registers 4
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 38
    iput-wide p2, p0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 39
    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .registers 3
    .param p1, "vibratorId"    # I

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public calculateWaitTime()J
    .registers 8

    .line 91
    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_e

    .line 94
    return-wide v3

    .line 96
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract cancel()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cancelImmediately()V
.end method

.method public compareTo(Lcom/android/server/vibrator/Step;)I
    .registers 6
    .param p1, "o"    # Lcom/android/server/vibrator/Step;

    .line 101
    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-wide v2, p1, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 32
    check-cast p1, Lcom/android/server/vibrator/Step;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/Step;->compareTo(Lcom/android/server/vibrator/Step;)I

    move-result p1

    return p1
.end method

.method protected getVibration()Lcom/android/server/vibrator/Vibration;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorOnDuration()J
    .registers 3

    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCleanUp()Z
    .registers 2

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public abstract play()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation
.end method
