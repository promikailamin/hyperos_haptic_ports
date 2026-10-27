.class public Lcom/android/server/wm/ActivityRefresher;
.super Ljava/lang/Object;
.source "ActivityRefresher.java"


# instance fields
.field public final mEvaluators:Ljava/util/ArrayList;

.field public final mHandler:Landroid/os/Handler;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$ZwO7VpmwnP9FlPRmGMzyHmcJCmE(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Ljava/lang/Object;)Z
    .registers 4

    .line 196
    check-cast p3, Lcom/android/server/wm/ActivityRefresher$Evaluator;

    .line 197
    invoke-interface {p3, p0, p1, p2}, Lcom/android/server/wm/ActivityRefresher$Evaluator;->shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hQnadXH_Obl1RrLH3_tQ23rhcZc(Lcom/android/server/wm/ActivityRefresher;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->lambda$scheduleClearIsRefreshing$0(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 57
    iput-object p2, p0, Lcom/android/server/wm/ActivityRefresher;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearRefreshState(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 165
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->setActivityRefreshState(I)V

    .line 167
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->setIsRefreshRequested(Z)V

    return-void
.end method

.method public final getActivityRefreshState(Lcom/android/server/wm/ActivityRecord;)I
    .registers 2

    .line 202
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->getActivityRefreshState()I

    move-result p0

    return p0
.end method

.method public isActivityRefreshing(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->getActivityRefreshState(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$scheduleClearIsRefreshing$0(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 158
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V

    .line 159
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onActivityConfigurationChanging(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityRefresher;->shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 106
    :cond_7
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/android/server/wm/AppCompatCameraOverrides;->setIsRefreshRequested(Z)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->refreshActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->scheduleClearIsRefreshing(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 110
    :cond_1b
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraOverrides;->setIsRefreshRequested(Z)V

    return-void
.end method

.method public onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->clearRefreshState(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onActivityRelaunching(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->getActivityRefreshState(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 85
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraOverrides;->setActivityRefreshState(I)V

    :cond_11
    return-void
.end method

.method public final refreshActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 8

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 140
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatRefreshCycleThroughStopEnabled()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1a

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityViaPauseForCameraCompat()Z

    move-result p0

    if-nez p0, :cond_1a

    move p0, v0

    goto :goto_1b

    :cond_1a
    move p0, v1

    .line 143
    :goto_1b
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_33

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x6413691bf2e03f6eL    # 1.200206803860267E174

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, v5, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 146
    :cond_33
    new-instance v2, Landroid/app/servertransaction/RefreshCallbackItem;

    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz p0, :cond_3b

    const/4 p0, 0x5

    goto :goto_3c

    :cond_3b
    const/4 p0, 0x4

    .line 147
    :goto_3c
    invoke-direct {v2, v3, p0}, Landroid/app/servertransaction/RefreshCallbackItem;-><init>(Landroid/os/IBinder;I)V

    .line 148
    new-instance p0, Landroid/app/servertransaction/ResumeActivityItem;

    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p0, v3, v1, v1}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;ZZ)V

    .line 150
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v3

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 151
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/app/servertransaction/ClientTransactionItem;

    aput-object v2, v4, v1

    aput-object p0, v4, v0

    .line 150
    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItems(Landroid/app/IApplicationThread;[Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result p0

    return p0
.end method

.method public refreshActivityIfEnabled(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 122
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraOverrides;->setActivityRefreshState(I)V

    return-void

    .line 126
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->getActivityRefreshState(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 127
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatCameraOverrides;->setActivityRefreshState(I)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->refreshActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->clearRefreshState(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 134
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->scheduleClearIsRefreshing(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public removeEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestRefresh(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 90
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraOverrides;->setActivityRefreshState(I)V

    return-void
.end method

.method public final scheduleClearIsRefreshing(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRefresher;Lcom/android/server/wm/ActivityRecord;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 184
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityForCameraCompat()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->getActivityRefreshState(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 193
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityForCameraCompat()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method
