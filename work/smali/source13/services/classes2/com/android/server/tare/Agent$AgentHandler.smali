.class final Lcom/android/server/tare/Agent$AgentHandler;
.super Landroid/os/Handler;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AgentHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tare/Agent;


# direct methods
.method constructor <init>(Lcom/android/server/tare/Agent;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1182
    iput-object p1, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    .line 1183
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1184
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 1188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    goto/16 :goto_7f

    .line 1198
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1199
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1200
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v2}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmLock(Lcom/android/server/tare/Agent;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1201
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v3}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmActionAffordabilityNotes(Lcom/android/server/tare/Agent;)Landroid/util/SparseArrayMap;

    move-result-object v3

    .line 1202
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1203
    .local v3, "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    if-eqz v3, :cond_60

    .line 1204
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_60

    .line 1205
    iget-object v4, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v6

    .line 1207
    .local v6, "newBalance":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_60

    .line 1208
    nop

    .line 1209
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    move-object v12, v5

    .line 1210
    .local v12, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    iget-object v5, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    .line 1211
    invoke-static {v12}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v8

    invoke-static {v12}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v10

    .line 1210
    invoke-static/range {v5 .. v11}, Lcom/android/server/tare/Agent;->-$$Nest$misAffordableLocked(Lcom/android/server/tare/Agent;JJJ)Z

    move-result v5

    .line 1212
    .local v5, "isAffordable":Z
    invoke-virtual {v12}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v8

    if-eq v8, v5, :cond_5d

    .line 1213
    invoke-static {v12, v5}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 1214
    iget-object v8, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v8}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmIrs(Lcom/android/server/tare/Agent;)Lcom/android/server/tare/InternalResourceService;

    move-result-object v8

    invoke-virtual {v8, v0, v1, v12}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    .line 1207
    .end local v5    # "isAffordable":Z
    .end local v12    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 1218
    .end local v4    # "i":I
    .end local v6    # "newBalance":J
    :cond_60
    iget-object v4, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v4, v0, v1}, Lcom/android/server/tare/Agent;->-$$Nest$mscheduleBalanceCheckLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;)V

    .line 1219
    .end local v3    # "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    monitor-exit v2

    goto :goto_7f

    :catchall_67
    move-exception v3

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_14 .. :try_end_69} :catchall_67

    throw v3

    .line 1190
    .end local v0    # "userId":I
    .end local v1    # "pkgName":Ljava/lang/String;
    :pswitch_6a
    iget-object v0, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v0}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmLock(Lcom/android/server/tare/Agent;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1191
    const/4 v1, 0x0

    :try_start_72
    invoke-virtual {p0, v1}, Lcom/android/server/tare/Agent$AgentHandler;->removeMessages(I)V

    .line 1192
    iget-object v2, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v2, v1}, Lcom/android/server/tare/Agent;->-$$Nest$monAnythingChangedLocked(Lcom/android/server/tare/Agent;Z)V

    .line 1193
    monitor-exit v0

    .line 1195
    goto :goto_7f

    .line 1193
    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_7c

    throw v1

    .line 1223
    :goto_7f
    return-void

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_7
    .end packed-switch
.end method
