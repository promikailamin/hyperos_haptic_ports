.class public interface abstract Lcom/android/server/am/AutoStartManagerServiceStub;
.super Ljava/lang/Object;
.source "AutoStartManagerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/am/AutoStartManagerServiceStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/am/AutoStartManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AutoStartManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z
.end method

.method public abstract signalStopProcessesLocked(Ljava/util/ArrayList;ZLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Boolean;",
            ">;>;Z",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method
