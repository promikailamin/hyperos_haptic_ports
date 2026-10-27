.class public interface abstract Lcom/android/server/am/MiuiProcessStub;
.super Ljava/lang/Object;
.source "MiuiProcessStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/am/MiuiProcessStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/am/MiuiProcessStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MiuiProcessStub;

    return-object v0
.end method


# virtual methods
.method public abstract getLaunchRtSchedDurationMs()J
.end method

.method public abstract getSchedModeAnimatorRt()I
.end method

.method public abstract getSchedModeNormal()I
.end method

.method public abstract getSchedModeTouchRt()I
.end method

.method public abstract getScrollRtSchedDurationMs()J
.end method

.method public abstract getTouchRtSchedDurationMs()J
.end method
