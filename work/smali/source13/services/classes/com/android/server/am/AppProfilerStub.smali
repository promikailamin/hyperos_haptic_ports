.class public interface abstract Lcom/android/server/am/AppProfilerStub;
.super Ljava/lang/Object;
.source "AppProfilerStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/am/AppProfilerStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/am/AppProfilerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppProfilerStub;

    return-object v0
.end method


# virtual methods
.method public abstract ctsTestTrimMemActivityBgWk(Ljava/lang/String;)Z
.end method

.method public abstract dumpProcsMemInfo()V
.end method

.method public abstract init(Lcom/android/server/am/ActivityManagerService;)V
.end method

.method public abstract initCloudObserver(Landroid/content/Context;)V
.end method

.method public abstract isSystemLowMem()Z
.end method

.method public abstract isSystemLowMemPsi()Z
.end method

.method public abstract reportKillMessage(Ljava/lang/String;IIJ)V
.end method

.method public abstract reportOomMemRecordIfNeeded(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/ProcessCpuTracker;)V
.end method

.method public abstract reportPackagePss(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
.end method

.method public abstract reportPssRecord(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract reportScoutLowMemory(I)V
.end method

.method public abstract reportScoutLowMemory(Lcom/android/server/am/ScoutMeminfo;)V
.end method

.method public abstract reportScoutLowMemoryState(I)V
.end method
