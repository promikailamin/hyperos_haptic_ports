.class public interface abstract Lcom/android/server/am/PendingIntentRecordStub;
.super Ljava/lang/Object;
.source "PendingIntentRecordStub.java"


# direct methods
.method public static get()Lcom/android/server/am/PendingIntentRecordStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/am/PendingIntentRecordStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PendingIntentRecordStub;

    return-object v0
.end method


# virtual methods
.method public checkRunningCompatibility(Landroid/content/Intent;Ljava/lang/String;III)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "userId"    # I

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public abstract exemptTemporarily(Ljava/lang/String;)V
.end method

.method public abstract preSendPendingIntentInner(Lcom/android/server/am/PendingIntentRecord$Key;Landroid/content/Intent;)V
.end method
