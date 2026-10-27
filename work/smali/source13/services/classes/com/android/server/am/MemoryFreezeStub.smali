.class public interface abstract Lcom/android/server/am/MemoryFreezeStub;
.super Ljava/lang/Object;
.source "MemoryFreezeStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/am/MemoryFreezeStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/am/MemoryFreezeStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MemoryFreezeStub;

    return-object v0
.end method


# virtual methods
.method public abstract activityResumed(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract activityStopped(IILjava/lang/String;)V
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
.end method

.method public abstract isEnable()Z
.end method

.method public abstract isMemoryFreezeWhiteList(Ljava/lang/String;)Z
.end method

.method public abstract isNeedProtect(Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract logLaunchingDelay(Ljava/lang/String;II)V
.end method

.method public abstract reportAppDied(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract updateFrozedUids(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
