.class public interface abstract Lcom/android/server/am/BroadcastQueueStub;
.super Ljava/lang/Object;
.source "BroadcastQueueStub.java"


# direct methods
.method public static get()Lcom/android/server/am/BroadcastQueueStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/am/BroadcastQueueStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastQueueStub;

    return-object v0
.end method


# virtual methods
.method public checkApplicationAutoStart(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .registers 5
    .param p1, "bq"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public checkReceiverAppDealBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 6
    .param p1, "bq"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "isStatic"    # Z

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isNeedCachedBroadcast(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract isSkip(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;I)Z
.end method

.method public abstract isSkip(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)Z
.end method

.method public abstract notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
.end method
