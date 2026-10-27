.class final Lcom/android/server/tare/InternalResourceService$LocalService;
.super Ljava/lang/Object;
.source "InternalResourceService.java"

# interfaces
.implements Lcom/android/server/tare/EconomyManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/InternalResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# static fields
.field private static final FOREVER_MS:J = 0xc63fafa400L


# instance fields
.field final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method private constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 2

    .line 859
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/InternalResourceService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tare/InternalResourceService$LocalService;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    return-void
.end method


# virtual methods
.method public canPayFor(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z
    .registers 23
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 905
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_10

    .line 906
    return v4

    .line 908
    :cond_10
    iget-object v0, v1, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 911
    return v4

    .line 914
    :cond_19
    const-wide/16 v5, 0x0

    .line 915
    .local v5, "requiredBalance":J
    nop

    .line 916
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object v7

    .line 917
    .local v7, "projectedActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;>;"
    iget-object v0, v1, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 918
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    :try_start_28
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_57

    .line 919
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 920
    .local v9, "action":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    iget-object v10, v1, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v10}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v10

    iget v11, v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {v10, v11, v2, v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v10

    .line 922
    .local v10, "cost":Lcom/android/server/tare/EconomicPolicy$Cost;
    iget-wide v11, v10, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget v13, v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    int-to-long v13, v13

    mul-long/2addr v11, v13

    iget-wide v13, v10, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J
    :try_end_48
    .catchall {:try_start_28 .. :try_end_48} :catchall_79

    move-wide v15, v5

    .end local v5    # "requiredBalance":J
    .local v15, "requiredBalance":J
    :try_start_49
    iget-wide v4, v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    const-wide/16 v17, 0x3e8

    div-long v4, v4, v17

    mul-long/2addr v13, v4

    add-long/2addr v11, v13

    add-long v5, v15, v11

    .line 918
    .end local v9    # "action":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    .end local v10    # "cost":Lcom/android/server/tare/EconomicPolicy$Cost;
    .end local v15    # "requiredBalance":J
    .restart local v5    # "requiredBalance":J
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    goto :goto_28

    :cond_57
    move-wide v15, v5

    .line 925
    .end local v0    # "i":I
    .end local v5    # "requiredBalance":J
    .restart local v15    # "requiredBalance":J
    iget-object v0, v1, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v15

    if-ltz v0, :cond_76

    iget-object v0, v1, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v4

    cmp-long v0, v4, v15

    if-ltz v0, :cond_76

    const/4 v4, 0x1

    goto :goto_77

    :cond_76
    const/4 v4, 0x0

    :goto_77
    monitor-exit v8

    .line 925
    return v4

    .line 927
    .end local v15    # "requiredBalance":J
    .restart local v5    # "requiredBalance":J
    :catchall_79
    move-exception v0

    move-wide v15, v5

    .end local v5    # "requiredBalance":J
    .restart local v15    # "requiredBalance":J
    :goto_7b
    monitor-exit v8
    :try_end_7c
    .catchall {:try_start_49 .. :try_end_7c} :catchall_7d

    throw v0

    :catchall_7d
    move-exception v0

    goto :goto_7b
.end method

.method public getMaxDurationMs(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)J
    .registers 15
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 933
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    const-wide v1, 0xc63fafa400L

    if-nez v0, :cond_e

    .line 934
    return-wide v1

    .line 936
    :cond_e
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 937
    return-wide v1

    .line 939
    :cond_17
    const-wide/16 v3, 0x0

    .line 940
    .local v3, "totalCostPerSecond":J
    nop

    .line 941
    invoke-virtual {p3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object v0

    .line 942
    .local v0, "projectedActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;>;"
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 943
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_26
    :try_start_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_44

    .line 944
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 945
    .local v7, "action":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    iget-object v8, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v8}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v8

    iget v9, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {v8, v9, p1, p2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v8

    .line 947
    .local v8, "cost":Lcom/android/server/tare/EconomicPolicy$Cost;
    iget-wide v9, v8, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    add-long/2addr v3, v9

    .line 943
    .end local v7    # "action":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    .end local v8    # "cost":Lcom/android/server/tare/EconomicPolicy$Cost;
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 949
    .end local v6    # "i":I
    :cond_44
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-nez v6, :cond_4c

    .line 950
    monitor-exit v5

    return-wide v1

    .line 952
    :cond_4c
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v1

    .line 953
    invoke-virtual {v1, p1, p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v1

    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v6}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;

    move-result-object v6

    .line 954
    invoke-virtual {v6}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v6

    .line 952
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 955
    .local v1, "minBalance":J
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v1

    div-long/2addr v6, v3

    monitor-exit v5

    return-wide v6

    .line 956
    .end local v1    # "minBalance":J
    :catchall_6a
    move-exception v1

    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_26 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public isEnabled()Z
    .registers 2

    .line 961
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    return v0
.end method

.method public noteInstantaneousEvent(ILjava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "eventId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 967
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 968
    return-void

    .line 970
    :cond_9
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 971
    :try_start_10
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/tare/Agent;->noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V

    .line 972
    monitor-exit v0

    .line 973
    return-void

    .line 972
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public noteOngoingEventStarted(ILjava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "eventId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 978
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 979
    return-void

    .line 981
    :cond_9
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 982
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 983
    .local v6, "nowElapsed":J
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;J)V

    .line 984
    .end local v6    # "nowElapsed":J
    monitor-exit v0

    .line 985
    return-void

    .line 984
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public noteOngoingEventStopped(ILjava/lang/String;ILjava/lang/String;)V
    .registers 21
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "eventId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 990
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 991
    return-void

    .line 993
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 994
    .local v11, "nowElapsed":J
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v13

    .line 995
    .local v13, "now":J
    iget-object v0, v1, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 996
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-wide v7, v11

    move-wide v9, v13

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJ)V

    .line 997
    monitor-exit v15

    .line 998
    return-void

    .line 997
    :catchall_2f
    move-exception v0

    monitor-exit v15
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public registerAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    .param p4, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 872
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 874
    return-void

    .line 876
    :cond_9
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 877
    :try_start_10
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/tare/Agent;->registerAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 878
    monitor-exit v0

    .line 879
    return-void

    .line 878
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public registerTareStateChangeListener(Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;

    .line 895
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 896
    return-void
.end method

.method public unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    .param p4, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 884
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 886
    return-void

    .line 888
    :cond_9
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 889
    :try_start_10
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/tare/Agent;->unregisterAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 890
    monitor-exit v0

    .line 891
    return-void

    .line 890
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public unregisterTareStateChangeListener(Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;

    .line 900
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 901
    return-void
.end method
