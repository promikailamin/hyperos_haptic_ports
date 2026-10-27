.class public final Landroid/os/statistics/E2EScenarioPerfTracer;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracer.java"


# static fields
.field private static final blacklist VERSION:I = 0x1

.field private static final blacklist executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 21
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static blacklist abortScenario(Landroid/os/Bundle;)V
    .registers 13
    .param p0, "scenarioBundle"    # Landroid/os/Bundle;

    .line 126
    if-nez p0, :cond_3

    .line 127
    return-void

    .line 129
    :cond_3
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v6

    .line 130
    .local v6, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v6, :cond_a

    .line 131
    return-void

    .line 133
    :cond_a
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    .line 134
    .local v7, "tid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 135
    .local v8, "uptimeMs":J
    sget-object v10, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v11, Landroid/os/statistics/E2EScenarioPerfTracer$3;

    move-object v0, v11

    move-object v1, v6

    move-object v2, p0

    move v3, v7

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/os/statistics/E2EScenarioPerfTracer$3;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/Bundle;IJ)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public static blacklist abortScenario(Landroid/os/statistics/E2EScenario;)V
    .registers 2
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;

    .line 101
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->abortScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static blacklist abortScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V
    .registers 15
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "tag"    # Ljava/lang/String;

    .line 105
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_29

    .line 108
    :cond_9
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    .line 109
    .local v0, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v0, :cond_10

    .line 110
    return-void

    .line 112
    :cond_10
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    .line 113
    .local v8, "tid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 114
    .local v9, "uptimeMs":J
    sget-object v11, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v12, Landroid/os/statistics/E2EScenarioPerfTracer$2;

    move-object v1, v12

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, v8

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/E2EScenarioPerfTracer$2;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 123
    return-void

    .line 106
    .end local v0    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    .end local v8    # "tid":I
    .end local v9    # "uptimeMs":J
    :cond_29
    :goto_29
    return-void
.end method

.method public static blacklist asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;)V
    .registers 4
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;

    .line 62
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 63
    return-void
.end method

.method public static blacklist asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Landroid/os/statistics/E2EScenarioPayload;)V
    .registers 4
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .line 72
    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 73
    return-void
.end method

.method public static blacklist asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;)V
    .registers 4
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 68
    return-void
.end method

.method public static blacklist asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V
    .registers 19
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .line 77
    if-eqz p0, :cond_38

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_38

    .line 80
    :cond_9
    if-eqz p1, :cond_37

    invoke-virtual/range {p1 .. p1}, Landroid/os/statistics/E2EScenarioSettings;->isValid()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_37

    .line 83
    :cond_12
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v9

    .line 84
    .local v9, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v9, :cond_19

    .line 85
    return-void

    .line 87
    :cond_19
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    .line 88
    .local v10, "tid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 89
    .local v11, "uptimeMs":J
    sget-object v13, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v14, Landroid/os/statistics/E2EScenarioPerfTracer$1;

    move-object v0, v14

    move-object v1, v9

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v6, v10

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Landroid/os/statistics/E2EScenarioPerfTracer$1;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void

    .line 81
    .end local v9    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    .end local v10    # "tid":I
    .end local v11    # "uptimeMs":J
    :cond_37
    :goto_37
    return-void

    .line 78
    :cond_38
    :goto_38
    return-void
.end method

.method public static blacklist beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;)Landroid/os/Bundle;
    .registers 4
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;

    .line 32
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/E2EScenarioPerfTracer;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;
    .registers 4
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .line 40
    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/E2EScenarioPerfTracer;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;
    .registers 15
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .line 44
    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2e

    .line 47
    :cond_a
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/os/statistics/E2EScenarioSettings;->isValid()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_2d

    .line 50
    :cond_13
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    .line 51
    .local v1, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v1, :cond_1a

    .line 52
    return-object v0

    .line 55
    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/app/IPerfShielder;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2a} :catch_2b

    return-object v0

    .line 56
    :catch_2b
    move-exception v2

    .line 57
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v0

    .line 48
    .end local v1    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    return-object v0

    .line 45
    :cond_2e
    :goto_2e
    return-object v0
.end method

.method public static blacklist finishScenario(Landroid/os/Bundle;)V
    .registers 2
    .param p0, "scenarioBundle"    # Landroid/os/Bundle;

    .line 180
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 181
    return-void
.end method

.method public static blacklist finishScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;)V
    .registers 15
    .param p0, "scenarioBundle"    # Landroid/os/Bundle;
    .param p1, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .line 184
    if-nez p0, :cond_3

    .line 185
    return-void

    .line 187
    :cond_3
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v7

    .line 188
    .local v7, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v7, :cond_a

    .line 189
    return-void

    .line 191
    :cond_a
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    .line 192
    .local v8, "tid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 193
    .local v9, "uptimeMs":J
    sget-object v11, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v12, Landroid/os/statistics/E2EScenarioPerfTracer$5;

    move-object v0, v12

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move-wide v5, v9

    invoke-direct/range {v0 .. v6}, Landroid/os/statistics/E2EScenarioPerfTracer$5;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public static blacklist finishScenario(Landroid/os/statistics/E2EScenario;)V
    .registers 3
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;

    .line 147
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 148
    return-void
.end method

.method public static blacklist finishScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioPayload;)V
    .registers 3
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .line 151
    const-string v0, ""

    invoke-static {p0, v0, p1}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 152
    return-void
.end method

.method public static blacklist finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V
    .registers 3
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "tag"    # Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 156
    return-void
.end method

.method public static blacklist finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V
    .registers 17
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .line 159
    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2b

    .line 162
    :cond_9
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v8

    .line 163
    .local v8, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v8, :cond_10

    .line 164
    return-void

    .line 166
    :cond_10
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    .line 167
    .local v9, "tid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 168
    .local v10, "uptimeMs":J
    sget-object v12, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v13, Landroid/os/statistics/E2EScenarioPerfTracer$4;

    move-object v0, v13

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move v5, v9

    move-wide v6, v10

    invoke-direct/range {v0 .. v7}, Landroid/os/statistics/E2EScenarioPerfTracer$4;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void

    .line 160
    .end local v8    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    .end local v9    # "tid":I
    .end local v10    # "uptimeMs":J
    :cond_2b
    :goto_2b
    return-void
.end method

.method public static blacklist getVersion()I
    .registers 1

    .line 28
    const/4 v0, 0x1

    return v0
.end method
