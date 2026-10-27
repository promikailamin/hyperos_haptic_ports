.class public interface abstract Lcom/android/server/am/ActiveServiceManagementStub;
.super Ljava/lang/Object;
.source "ActiveServiceManagementStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/am/ActiveServiceManagementStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/am/ActiveServiceManagementStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServiceManagementStub;

    return-object v0
.end method


# virtual methods
.method public abstract canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
.end method

.method public canRestartServiceLocked(Lcom/android/server/am/ServiceRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public abstract updateWallPaperPackageName(Ljava/lang/String;)V
.end method
