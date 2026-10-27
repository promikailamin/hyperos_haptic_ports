.class public interface abstract Lcom/android/server/am/ProcessListStub;
.super Ljava/lang/Object;
.source "ProcessListStub.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProcessListStub"


# direct methods
.method public static get()Lcom/android/server/am/ProcessListStub;
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/am/ProcessListStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessListStub;

    return-object v0
.end method


# virtual methods
.method public isAllowRestartProcessLock(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/am/HostingRecord;)Z
    .registers 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "uid"    # I
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "callerPackage"    # Ljava/lang/String;
    .param p6, "hostingRecord"    # Lcom/android/server/am/HostingRecord;

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedTraceProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 38
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    return v0
.end method

.method public abstract notifyAmsProcessKill(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
.end method

.method public abstract notifyLmkProcessKill(IIIIIILjava/lang/String;)V
.end method

.method public abstract notifyProcessDied(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract notifyProcessStarted(Lcom/android/server/am/ProcessRecord;I)V
.end method

.method public restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZZ)Z
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "isHomeApp"    # Z
    .param p3, "allowRestart"    # Z
    .param p4, "fromBinderDied"    # Z

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public abstract setSystemRenderThreadTidLocked(I)V
.end method

.method public abstract updateOomMinFreeIfNeeded(J[I)V
.end method

.method public abstract writePerfEvent(ILjava/lang/String;III)V
.end method
