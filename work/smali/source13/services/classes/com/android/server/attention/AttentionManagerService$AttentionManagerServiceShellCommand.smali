.class final Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttentionManagerServiceShellCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;,
        Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;
    }
.end annotation


# instance fields
.field final mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

.field final mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 2

    .line 932
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 972
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    .line 974
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    return-void
.end method

.method private cmdCallCancelAttention()I
    .registers 4

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1046
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/attention/AttentionManagerService;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 1047
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    const/4 v1, 0x0

    return v1
.end method

.method private cmdCallCheckAttention()I
    .registers 6

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1039
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/attention/AttentionManagerService;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result v1

    .line 1040
    .local v1, "calledSuccessfully":Z
    if-eqz v1, :cond_14

    const-string/jumbo v2, "true"

    goto :goto_16

    :cond_14
    const-string v2, "false"

    :goto_16
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    const/4 v2, 0x0

    return v2
.end method

.method private cmdCallOnStartProximityUpdates()I
    .registers 4

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1053
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/attention/AttentionManagerService;->onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z

    move-result v1

    .line 1054
    .local v1, "calledSuccessfully":Z
    if-eqz v1, :cond_12

    const-string/jumbo v2, "true"

    goto :goto_14

    :cond_12
    const-string v2, "false"

    :goto_14
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    const/4 v2, 0x0

    return v2
.end method

.method private cmdCallOnStopProximityUpdates()I
    .registers 4

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1060
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/attention/AttentionManagerService;->onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    .line 1061
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    const/4 v1, 0x0

    return v1
.end method

.method private cmdClearTestableAttentionService()I
    .registers 2

    .line 1030
    const-string v0, ""

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$sfputsTestAttentionServicePackage(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->reset()V

    .line 1032
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->reset()V

    .line 1033
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    .line 1034
    const/4 v0, 0x0

    return v0
.end method

.method private cmdGetLastTestCallbackCode()I
    .registers 3

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1074
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->getLastCallbackCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1075
    const/4 v1, 0x0

    return v1
.end method

.method private cmdGetLastTestProximityUpdateCallbackCode()I
    .registers 4

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1080
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->getLastCallbackCode()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(D)V

    .line 1081
    const/4 v1, 0x0

    return v1
.end method

.method private cmdResolveAttentionServiceComponent()I
    .registers 4

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1067
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$smresolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1068
    .local v1, "resolvedComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_15
    const-string v2, ""

    :goto_17
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    const/4 v2, 0x0

    return v2
.end method

.method private cmdSetTestableAttentionService(Ljava/lang/String;)I
    .registers 5
    .param p1, "testingServicePackage"    # Ljava/lang/String;

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1019
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "false"

    if-eqz v1, :cond_10

    .line 1020
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22

    .line 1022
    :cond_10
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$sfputsTestAttentionServicePackage(Ljava/lang/String;)V

    .line 1023
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    .line 1024
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1f

    const-string/jumbo v2, "true"

    :cond_1f
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    :goto_22
    const/4 v1, 0x0

    return v1
.end method

.method private resetStates()V
    .registers 4

    .line 1085
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1086
    :try_start_7
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 1087
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1a

    .line 1088
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$smresolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 1089
    return-void

    .line 1087
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 10
    .param p1, "cmd"    # Ljava/lang/String;

    .line 979
    if-nez p1, :cond_7

    .line 980
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 982
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 984
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_f0

    :cond_17
    goto :goto_55

    :sswitch_18
    const-string v2, "clearTestableAttentionService"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v3

    goto :goto_56

    :sswitch_22
    const-string v2, "getLastTestProximityUpdateCallbackCode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x5

    goto :goto_56

    :sswitch_2c
    const-string v2, "call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v4

    goto :goto_56

    :sswitch_36
    const-string/jumbo v2, "setTestableAttentionService"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v5

    goto :goto_56

    :sswitch_41
    const-string v2, "getAttentionServiceComponent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v6

    goto :goto_56

    :sswitch_4b
    const-string v2, "getLastTestCallbackCode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x4

    goto :goto_56

    :goto_55
    move v2, v1

    :goto_56
    packed-switch v2, :pswitch_data_10a

    .line 1009
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_d2

    .line 1007
    :pswitch_5f
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdGetLastTestProximityUpdateCallbackCode()I

    move-result v1

    return v1

    .line 1005
    :pswitch_64
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdGetLastTestCallbackCode()I

    move-result v1

    return v1

    .line 1003
    :pswitch_69
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdClearTestableAttentionService()I

    move-result v1

    return v1

    .line 1001
    :pswitch_6e
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdSetTestableAttentionService(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 988
    :pswitch_77
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_11a

    :cond_82
    goto :goto_ac

    :sswitch_83
    const-string v3, "checkAttention"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    move v3, v6

    goto :goto_ad

    :sswitch_8d
    const-string v3, "cancelCheckAttention"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    move v3, v4

    goto :goto_ad

    :sswitch_97
    const-string/jumbo v4, "onStopProximityUpdates"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    goto :goto_ad

    :sswitch_a1
    const-string/jumbo v3, "onStartProximityUpdates"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    move v3, v5

    goto :goto_ad

    :goto_ac
    move v3, v1

    :goto_ad
    packed-switch v3, :pswitch_data_12c

    .line 998
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto :goto_c7

    .line 996
    :pswitch_b3
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallOnStopProximityUpdates()I

    move-result v1

    return v1

    .line 994
    :pswitch_b8
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallOnStartProximityUpdates()I

    move-result v1

    return v1

    .line 992
    :pswitch_bd
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallCancelAttention()I

    move-result v1

    return v1

    .line 990
    :pswitch_c2
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallCheckAttention()I

    move-result v1

    return v1

    .line 998
    :goto_c7
    const-string v3, "Invalid argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "err":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v2

    .line 986
    .restart local v0    # "err":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
    .restart local p1    # "cmd":Ljava/lang/String;
    :pswitch_cd
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdResolveAttentionServiceComponent()I

    move-result v1
    :try_end_d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_d1} :catch_d3

    return v1

    .line 1009
    :goto_d2
    return v1

    .line 1011
    :catch_d3
    move-exception v2

    .line 1012
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    return v1

    nop

    :sswitch_data_f0
    .sparse-switch
        -0x480b7350 -> :sswitch_4b
        -0x3bbfc7b0 -> :sswitch_41
        -0x18bd18bb -> :sswitch_36
        0x2e7a5e -> :sswitch_2c
        0x3e7cfd7c -> :sswitch_22
        0x47229030 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_77
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
    .end packed-switch

    :sswitch_data_11a
    .sparse-switch
        -0x5db0dcd2 -> :sswitch_a1
        0x28e0cfec -> :sswitch_97
        0x2d7ba210 -> :sswitch_8d
        0x589284f6 -> :sswitch_83
    .end sparse-switch

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_bd
        :pswitch_b8
        :pswitch_b3
    .end packed-switch
.end method

.method public onHelp()V
    .registers 5

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1094
    .local v0, "out":Ljava/io/PrintWriter;
    const-string v1, "Attention commands: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    const-string v1, "  setTestableAttentionService <service_package>: Bind to a custom implementation of attention service"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    const-string v1, "  ---<service_package>:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    const-string v1, "       := Package containing the Attention Service implementation to bind to"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    const-string v1, "  ---returns:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    const-string v2, "       := true, if was bound successfully"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    const-string v2, "       := false, if was not bound successfully"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    const-string v2, "  clearTestableAttentionService: Undo custom bindings. Revert to previous behavior"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    const-string v2, "  getAttentionServiceComponent: Get the current service component string"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    const-string v2, "       := If valid, the component string (in shorten form) for the currently bound service."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    const-string v2, "       := else, empty string"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    const-string v2, "  call checkAttention: Calls check attention"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    const-string v2, "       := true, if the call was successfully dispatched to the service implementation. (to see the result, call getLastTestCallbackCode)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    const-string v2, "       := false, otherwise"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    const-string v3, "  call cancelCheckAttention: Cancels check attention"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    const-string v3, "  call onStartProximityUpdates: Calls onStartProximityUpdates"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    const-string v3, "       := true, if the request was successfully dispatched to the service implementation. (to see the result, call getLastTestProximityUpdateCallbackCode)"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    const-string v2, "  call onStopProximityUpdates: Cancels proximity updates"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    const-string v2, "  getLastTestCallbackCode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    const-string v2, "       := An integer, representing the last callback code received from the bounded implementation. If none, it will return -1"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    const-string v2, "  getLastTestProximityUpdateCallbackCode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    const-string v1, "       := A double, representing the last proximity value received from the bounded implementation. If none, it will return -1.0"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1136
    return-void
.end method
