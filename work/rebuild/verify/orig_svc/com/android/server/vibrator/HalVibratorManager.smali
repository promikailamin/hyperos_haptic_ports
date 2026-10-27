.class public interface abstract Lcom/android/server/vibrator/HalVibratorManager;
.super Ljava/lang/Object;
.source "HalVibratorManager.java"


# virtual methods
.method public abstract cancelSynced()Z
.end method

.method public abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract endSession(JZ)Z
.end method

.method public abstract getCapabilities()J
.end method

.method public abstract getVibrator(I)Lcom/android/server/vibrator/HalVibrator;
.end method

.method public abstract getVibratorIds()[I
.end method

.method public hasCapability(J)Z
    .registers 5

    .line 52
    invoke-interface {p0}, Lcom/android/server/vibrator/HalVibratorManager;->getCapabilities()J

    move-result-wide v0

    and-long/2addr v0, p1

    cmp-long p0, v0, p1

    if-nez p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public abstract init(Lcom/android/server/vibrator/HalVibratorManager$Callbacks;Lcom/android/server/vibrator/HalVibrator$Callbacks;)V
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract prepareSynced([I)Z
.end method

.method public abstract startSession(J[I)Z
.end method

.method public abstract triggerSynced(J)Z
.end method
