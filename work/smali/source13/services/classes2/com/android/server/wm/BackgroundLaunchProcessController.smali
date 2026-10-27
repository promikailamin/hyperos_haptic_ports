.class Lcom/android/server/wm/BackgroundLaunchProcessController;
.super Ljava/lang/Object;
.source "BackgroundLaunchProcessController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

.field private mBackgroundActivityStartTokens:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Binder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mBalOptInBoundClientUids:Landroid/util/IntArray;

.field private final mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;


# direct methods
.method constructor <init>(Ljava/util/function/IntPredicate;Lcom/android/server/wm/BackgroundActivityStartCallback;)V
    .registers 3
    .param p1, "uidHasActiveVisibleWindowPredicate"    # Ljava/util/function/IntPredicate;
    .param p2, "callback"    # Lcom/android/server/wm/BackgroundActivityStartCallback;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;

    .line 73
    iput-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    .line 74
    return-void
.end method

.method private isBackgroundStartAllowedByToken(ILjava/lang/String;Z)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isCheckingForFgsStart"    # Z

    .line 152
    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    if-eqz v0, :cond_23

    .line 154
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_23

    .line 157
    :cond_c
    const/4 v0, 0x1

    if-eqz p3, :cond_11

    .line 159
    monitor-exit p0

    return v0

    .line 162
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    if-nez v1, :cond_17

    .line 164
    monitor-exit p0

    return v0

    .line 167
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    .line 168
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 167
    invoke-interface {v1, v0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartCallback;->isActivityStartAllowed(Ljava/util/Collection;ILjava/lang/String;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 155
    :cond_23
    :goto_23
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 169
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private isBoundByForegroundUid()Z
    .registers 5

    .line 173
    monitor-enter p0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-eqz v0, :cond_20

    .line 175
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_20

    .line 176
    iget-object v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 177
    monitor-exit p0

    return v1

    .line 175
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 181
    .end local v0    # "i":I
    :cond_20
    monitor-exit p0

    .line 182
    const/4 v0, 0x0

    return v0

    .line 181
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method


# virtual methods
.method addBoundClientUid(ILjava/lang/String;I)V
    .registers 6
    .param p1, "clientUid"    # I
    .param p2, "clientPackageName"    # Ljava/lang/String;
    .param p3, "bindFlags"    # I

    .line 196
    and-int/lit16 v0, p3, 0x4000

    if-nez v0, :cond_1d

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-nez v0, :cond_f

    .line 198
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 200
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 204
    :cond_1d
    return-void
.end method

.method addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "entity"    # Landroid/os/Binder;
    .param p2, "originatingToken"    # Landroid/os/IBinder;

    .line 215
    monitor-enter p0

    .line 216
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    if-nez v0, :cond_c

    .line 217
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    .line 219
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    monitor-exit p0

    .line 221
    return-void

    .line 220
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method areBackgroundActivityStartsAllowed(IILjava/lang/String;IZZZJJJ)Z
    .registers 26
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appSwitchState"    # I
    .param p5, "isCheckingForFgsStart"    # Z
    .param p6, "hasActivityInVisibleTask"    # Z
    .param p7, "hasBackgroundActivityStartPrivileges"    # Z
    .param p8, "lastStopAppSwitchesTime"    # J
    .param p10, "lastActivityLaunchTime"    # J
    .param p12, "lastActivityFinishTime"    # J

    .line 83
    move v0, p1

    move/from16 v1, p4

    const/4 v2, 0x2

    const-string v3, "[Process("

    const-string v4, "ActivityTaskManager"

    const/4 v5, 0x1

    if-ne v1, v2, :cond_7a

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 87
    .local v6, "now":J
    sub-long v8, v6, p10

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1d

    sub-long v8, v6, p12

    cmp-long v8, v8, v10

    if-gez v8, :cond_7a

    .line 91
    :cond_1d
    cmp-long v8, p10, p8

    if-gtz v8, :cond_50

    cmp-long v8, p12, p8

    if-lez v8, :cond_26

    goto :goto_50

    .line 100
    :cond_26
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v8, :cond_7a

    .line 101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")] Activity start within "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms grace period but also within stop app switch window"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 93
    :cond_50
    :goto_50
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v2, :cond_79

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")] Activity start allowed: within "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms grace period"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_79
    return v5

    .line 109
    .end local v6    # "now":J
    :cond_7a
    :goto_7a
    if-eqz p7, :cond_9b

    .line 110
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v2, :cond_9a

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")] Activity start allowed: process instrumenting with background activity starts privileges"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_9a
    return v5

    .line 118
    :cond_9b
    if-eqz p6, :cond_c0

    if-eq v1, v2, :cond_a1

    if-ne v1, v5, :cond_c0

    .line 120
    :cond_a1
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v2, :cond_bf

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")] Activity start allowed: process has activity in foreground task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_bf
    return v5

    .line 127
    :cond_c0
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->isBoundByForegroundUid()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 128
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v2, :cond_e4

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")] Activity start allowed: process bound by foreground uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_e4
    return v5

    .line 135
    :cond_e5
    move-object v2, p0

    move v6, p2

    move-object v7, p3

    move/from16 v8, p5

    invoke-direct {p0, p2, p3, v8}, Lcom/android/server/wm/BackgroundLaunchProcessController;->isBackgroundStartAllowedByToken(ILjava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 136
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v9, :cond_10e

    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ")] Activity start allowed: process allowed by token"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_10e
    return v5

    .line 142
    :cond_10f
    const/4 v3, 0x0

    return v3
.end method

.method canCloseSystemDialogsByToken(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 241
    return v1

    .line 243
    :cond_6
    monitor-enter p0

    .line 244
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    if-eqz v0, :cond_20

    .line 245
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_20

    .line 248
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    .line 249
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 248
    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartCallback;->canCloseSystemDialogs(Ljava/util/Collection;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 246
    :cond_20
    :goto_20
    monitor-exit p0

    return v1

    .line 250
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v0
.end method

.method clearBalOptInBoundClientUids()V
    .registers 2

    .line 186
    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-nez v0, :cond_d

    .line 188
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    goto :goto_10

    .line 190
    :cond_d
    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 192
    :goto_10
    monitor-exit p0

    .line 193
    return-void

    .line 192
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 254
    monitor-enter p0

    .line 255
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3f

    .line 256
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 257
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    const-string v0, "Background activity start tokens (token: originating token):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1b
    if-ltz v0, :cond_3f

    .line 260
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 263
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 259
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 267
    .end local v0    # "i":I
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_5e

    .line 268
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    const-string v0, "BoundClientUids:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    :cond_5e
    monitor-exit p0

    .line 273
    return-void

    .line 272
    :catchall_60
    move-exception v0

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_60

    throw v0
.end method

.method removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .registers 3
    .param p1, "entity"    # Landroid/os/Binder;

    .line 228
    monitor-enter p0

    .line 229
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    if-eqz v0, :cond_8

    .line 230
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_8
    monitor-exit p0

    .line 233
    return-void

    .line 232
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method
