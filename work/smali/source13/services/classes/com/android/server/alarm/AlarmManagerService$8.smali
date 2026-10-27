.class Lcom/android/server/alarm/AlarmManagerService$8;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 5311
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    .param p4, "canAfford"    # Z

    .line 5321
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5322
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAffordabilityCache(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArrayMap;

    move-result-object v1

    .line 5323
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 5324
    .local v1, "actionAffordability":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Ljava/lang/Boolean;>;"
    if-nez v1, :cond_22

    .line 5325
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 5326
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAffordabilityCache(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5328
    :cond_22
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5329
    nop

    .end local v1    # "actionAffordability":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Ljava/lang/Boolean;>;"
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_3a

    .line 5331
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v1, 0xc

    .line 5332
    nop

    .line 5331
    invoke-virtual {v0, v1, p1, p4, p2}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5333
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5334
    return-void

    .line 5329
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method
