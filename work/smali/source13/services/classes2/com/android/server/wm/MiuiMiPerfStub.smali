.class public interface abstract Lcom/android/server/wm/MiuiMiPerfStub;
.super Ljava/lang/Object;
.source "MiuiMiPerfStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiuiMiPerfStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/wm/MiuiMiPerfStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiMiPerfStub;

    return-object v0
.end method


# virtual methods
.method public abstract onAfterActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
.end method
