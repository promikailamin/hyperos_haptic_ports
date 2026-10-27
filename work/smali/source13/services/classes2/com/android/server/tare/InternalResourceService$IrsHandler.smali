.class final Lcom/android/server/tare/InternalResourceService$IrsHandler;
.super Landroid/os/Handler;
.source "InternalResourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/InternalResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IrsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method constructor <init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 772
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    .line 773
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 774
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 778
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_78

    goto :goto_76

    .line 797
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;

    .line 798
    .local v1, "listener":Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;->onTareEnabledStateChanged(Z)V

    .line 799
    .end local v1    # "listener":Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;
    goto :goto_10

    .line 801
    :cond_26
    goto :goto_76

    .line 804
    :pswitch_27
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 805
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 806
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 807
    :try_start_34
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3, v0, v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mprocessUsageEventLocked(Lcom/android/server/tare/InternalResourceService;ILandroid/app/usage/UsageEvents$Event;)V

    .line 808
    monitor-exit v2

    .line 810
    .end local v0    # "userId":I
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    goto :goto_76

    .line 808
    .restart local v0    # "userId":I
    .restart local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    :catchall_3b
    move-exception v3

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3b

    throw v3

    .line 813
    .end local v0    # "userId":I
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    :pswitch_3e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/tare/InternalResourceService$IrsHandler;->removeMessages(I)V

    .line 814
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 815
    :try_start_49
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mscheduleUnusedWealthReclamationLocked(Lcom/android/server/tare/InternalResourceService;)V

    .line 816
    monitor-exit v0

    goto :goto_76

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_50

    throw v1

    .line 780
    :pswitch_53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 781
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 782
    .local v1, "userId":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 783
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 786
    .local v3, "affordabilityNote":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    nop

    .line 787
    invoke-virtual {v3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getListener()Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    move-result-object v4

    .line 788
    .local v4, "listener":Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    nop

    .line 789
    invoke-virtual {v3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getActionBill()Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v5

    .line 790
    invoke-virtual {v3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v6

    .line 788
    invoke-interface {v4, v1, v2, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;->onAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V

    .line 792
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 794
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "userId":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "affordabilityNote":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    .end local v4    # "listener":Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    nop

    .line 820
    :goto_76
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_53
        :pswitch_3e
        :pswitch_27
        :pswitch_6
    .end packed-switch
.end method
