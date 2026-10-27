.class Lcom/android/server/net/NetworkPolicyManagerService$4;
.super Landroid/app/IUidObserver$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1125
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1149
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 1155
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 1145
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1146
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 1152
    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1158
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 1128
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1129
    :try_start_7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    .line 1130
    .local v1, "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    if-nez v1, :cond_25

    .line 1131
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;-><init>(Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo-IA;)V

    move-object v1, v2

    .line 1132
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1134
    :cond_25
    iget-wide v2, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    iget-wide v2, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    cmp-long v2, p3, v2

    if-lez v2, :cond_3b

    .line 1135
    :cond_33
    move-object v2, v1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->update(IIJI)V

    .line 1137
    :cond_3b
    iget-boolean v2, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    if-nez v2, :cond_4c

    .line 1138
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1139
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1141
    .end local v1    # "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    :cond_4c
    monitor-exit v0

    .line 1142
    return-void

    .line 1141
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_4e

    throw v1
.end method
