.class public interface abstract Lcom/android/server/am/SchedBoostManagerInternalStub;
.super Ljava/lang/Object;
.source "SchedBoostManagerInternalStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/am/SchedBoostManagerInternalStub;
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/am/SchedBoostManagerInternalStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SchedBoostManagerInternalStub;

    return-object v0
.end method


# virtual methods
.method public abstract setRenderThreadTid(Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract setSchedMode(Ljava/lang/String;IIIJ)V
.end method
