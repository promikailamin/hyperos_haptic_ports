.class final Lcom/android/server/am/AppMediaSessionTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "AppMediaSessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateDurationsTracker<",
        "Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;",
        "Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG_MEDIA_SESSION_TRACKER:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field private final mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private final mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$S5NmnIAuvvjt74bgXwXoFe71Yjc(Lcom/android/server/am/AppMediaSessionTracker;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppMediaSessionTracker;->handleMediaSessionChanged(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBgMediaSessionMonitorEnabled(Lcom/android/server/am/AppMediaSessionTracker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppMediaSessionTracker;->onBgMediaSessionMonitorEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtrimDurations(Lcom/android/server/am/AppMediaSessionTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppMediaSessionTracker;->trimDurations()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/am/AppRestrictionController;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppMediaSessionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/am/AppRestrictionController;
    .param p4, "outerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/AppRestrictionController;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 69
    .local p3, "injector":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/server/am/BaseAppStateTracker$Injector<Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 57
    new-instance v0, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppMediaSessionTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppMediaSessionTracker;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 61
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    .line 70
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/AppMediaSessionTracker;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 71
    iget-object v0, p0, Lcom/android/server/am/AppMediaSessionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance v1, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;

    iget-object v2, p0, Lcom/android/server/am/AppMediaSessionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {v1, v2, p0}, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppMediaSessionTracker;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    .line 72
    return-void
.end method

.method private handleMediaSessionChanged(Ljava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    move-object/from16 v8, p0

    const/4 v9, 0x1

    if-eqz p1, :cond_cc

    .line 96
    iget-object v10, v8, Lcom/android/server/am/AppMediaSessionTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 97
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-wide v11, v1

    .line 98
    .local v11, "now":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    move-object v14, v1

    .line 99
    .local v14, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v14}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .line 100
    .local v15, "packageName":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result v1

    move v7, v1

    .line 101
    .local v7, "uid":I
    iget-object v1, v8, Lcom/android/server/am/AppMediaSessionTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, v7, v15}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 102
    .local v1, "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    if-nez v1, :cond_42

    .line 103
    invoke-virtual {v8, v7, v15}, Lcom/android/server/am/AppMediaSessionTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    move-result-object v2

    move-object v1, v2

    .line 104
    iget-object v2, v8, Lcom/android/server/am/AppMediaSessionTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v2, v7, v15, v1}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    goto :goto_43

    .line 102
    :cond_42
    move-object v5, v1

    .line 106
    .end local v1    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .local v5, "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    :goto_43
    invoke-virtual {v5}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->isActive()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 107
    invoke-virtual {v5, v9, v11, v12}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->addEvent(ZJ)V

    .line 108
    iget v2, v5, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->mUid:I

    iget-object v3, v5, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v17, v5

    .end local v5    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .local v17, "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    move-wide v5, v11

    move v0, v7

    .end local v7    # "uid":I
    .local v0, "uid":I
    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppMediaSessionTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    goto :goto_62

    .line 106
    .end local v0    # "uid":I
    .end local v17    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .restart local v5    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .restart local v7    # "uid":I
    :cond_5f
    move-object/from16 v17, v5

    move v0, v7

    .line 112
    .end local v5    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .end local v7    # "uid":I
    .restart local v0    # "uid":I
    .restart local v17    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    :goto_62
    iget-object v1, v8, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v15, v0, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    nop

    .end local v0    # "uid":I
    .end local v14    # "controller":Landroid/media/session/MediaController;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v17    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    goto :goto_11

    .line 121
    :cond_6b
    iget-object v0, v8, Lcom/android/server/am/AppMediaSessionTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 122
    invoke-virtual {v0}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v0

    .line 123
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;>;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v9

    move v13, v1

    .local v13, "i":I
    :goto_77
    if-ltz v13, :cond_c2

    .line 124
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move-object v14, v1

    .line 125
    .local v14, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v9

    move v15, v1

    .local v15, "j":I
    :goto_86
    if-ltz v15, :cond_bf

    .line 126
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    move-object v7, v1

    .line 127
    .local v7, "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    invoke-virtual {v7}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->isActive()Z

    move-result v1

    if-eqz v1, :cond_ba

    iget-object v1, v8, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v7, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->mPackageName:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->mUid:I

    .line 128
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b7

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v7, v1, v11, v12}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->addEvent(ZJ)V

    .line 131
    iget v2, v7, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->mUid:I

    iget-object v3, v7, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-wide v5, v11

    move-object/from16 v17, v7

    .end local v7    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .restart local v17    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppMediaSessionTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    goto :goto_bc

    .line 128
    .end local v17    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .restart local v7    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    :cond_b7
    move-object/from16 v17, v7

    .end local v7    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .restart local v17    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    goto :goto_bc

    .line 127
    .end local v17    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .restart local v7    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    :cond_ba
    move-object/from16 v17, v7

    .line 125
    .end local v7    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    :goto_bc
    add-int/lit8 v15, v15, -0x1

    goto :goto_86

    .line 123
    .end local v14    # "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;>;"
    .end local v15    # "j":I
    :cond_bf
    add-int/lit8 v13, v13, -0x1

    goto :goto_77

    .line 136
    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;>;>;"
    .end local v11    # "now":J
    .end local v13    # "i":I
    :cond_c2
    monitor-exit v10
    :try_end_c3
    .catchall {:try_start_8 .. :try_end_c3} :catchall_c9

    .line 137
    iget-object v0, v8, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->clear()V

    goto :goto_123

    .line 136
    :catchall_c9
    move-exception v0

    :try_start_ca
    monitor-exit v10
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v0

    .line 139
    :cond_cc
    iget-object v10, v8, Lcom/android/server/am/AppMediaSessionTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 141
    :try_start_cf
    iget-object v0, v8, Lcom/android/server/am/AppMediaSessionTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 142
    invoke-virtual {v0}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v0

    .line 143
    .restart local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;>;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-wide v11, v1

    .line 144
    .restart local v11    # "now":J
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v9

    move v13, v1

    .restart local v13    # "i":I
    :goto_e0
    if-ltz v13, :cond_122

    .line 145
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move-object v14, v1

    .line 146
    .restart local v14    # "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v9

    move v15, v1

    .restart local v15    # "j":I
    :goto_ef
    if-ltz v15, :cond_11d

    .line 147
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    move-object v7, v1

    .line 148
    .restart local v7    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    invoke-virtual {v7}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->isActive()Z

    move-result v1

    if-eqz v1, :cond_116

    .line 149
    const/4 v5, 0x0

    invoke-virtual {v7, v5, v11, v12}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->addEvent(ZJ)V

    .line 150
    iget v2, v7, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->mUid:I

    iget-object v3, v7, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move/from16 v17, v5

    move-wide v5, v11

    move-object/from16 v18, v7

    .end local v7    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .local v18, "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppMediaSessionTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    goto :goto_11a

    .line 148
    .end local v18    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .restart local v7    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    :cond_116
    move-object/from16 v18, v7

    const/16 v17, 0x0

    .line 146
    .end local v7    # "pkg":Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    :goto_11a
    add-int/lit8 v15, v15, -0x1

    goto :goto_ef

    :cond_11d
    const/16 v17, 0x0

    .line 144
    .end local v14    # "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;>;"
    .end local v15    # "j":I
    add-int/lit8 v13, v13, -0x1

    goto :goto_e0

    .line 155
    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;>;>;"
    .end local v11    # "now":J
    .end local v13    # "i":I
    :cond_122
    monitor-exit v10

    .line 157
    :goto_123
    return-void

    .line 155
    :catchall_124
    move-exception v0

    monitor-exit v10
    :try_end_126
    .catchall {:try_start_cf .. :try_end_126} :catchall_124

    throw v0
.end method

.method private onBgMediaSessionMonitorEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 85
    if-eqz p1, :cond_13

    .line 86
    iget-object v0, p0, Lcom/android/server/am/AppMediaSessionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/am/AppMediaSessionTracker;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    iget-object v4, p0, Lcom/android/server/am/AppMediaSessionTracker;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    goto :goto_1e

    .line 89
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/AppMediaSessionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 92
    :goto_1e
    return-void
.end method

.method private trimDurations()V
    .registers 7

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 161
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/AppMediaSessionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;->getMaxTrackingDuration()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/AppMediaSessionTracker;->trim(J)V

    .line 162
    return-void
.end method


# virtual methods
.method public createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    iget-object v1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-object v0
.end method

.method public createAppStateEvents(Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .registers 3
    .param p1, "other"    # Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 81
    new-instance v0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    invoke-direct {v0, p1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;)V

    return-object v0
.end method

.method public bridge synthetic createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .registers 3

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppMediaSessionTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
    .registers 2

    .line 50
    check-cast p1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppMediaSessionTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    move-result-object p1

    return-object p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 171
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    const-string v0, "APP MEDIA SESSION TRACKER:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method getType()I
    .registers 2

    .line 166
    const/4 v0, 0x4

    return v0
.end method
