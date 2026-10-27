.class final Lcom/android/server/app/GameTaskInfoProvider;
.super Ljava/lang/Object;
.source "GameTaskInfoProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameTaskInfoProvider"

.field private static final TASK_INFO_CACHE_MAX_SIZE:I = 0x32


# instance fields
.field private final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mGameClassifier:Lcom/android/server/app/GameClassifier;

.field private final mGameTaskInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/app/GameTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/os/UserHandle;Landroid/app/IActivityTaskManager;Lcom/android/server/app/GameClassifier;)V
    .registers 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "activityTaskManager"    # Landroid/app/IActivityTaskManager;
    .param p3, "gameClassifier"    # Lcom/android/server/app/GameClassifier;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    .line 50
    iput-object p1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mUserHandle:Landroid/os/UserHandle;

    .line 51
    iput-object p2, p0, Lcom/android/server/app/GameTaskInfoProvider;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 52
    iput-object p3, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameClassifier:Lcom/android/server/app/GameClassifier;

    .line 53
    return-void
.end method

.method private generateGameInfo(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 112
    new-instance v0, Lcom/android/server/app/GameTaskInfo;

    iget-object v1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameClassifier:Lcom/android/server/app/GameClassifier;

    .line 113
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/app/GameTaskInfoProvider;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v1, v2, v3}, Lcom/android/server/app/GameClassifier;->isGame(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/app/GameTaskInfo;-><init>(IZLandroid/content/ComponentName;)V

    .line 115
    .local v0, "gameTaskInfo":Lcom/android/server/app/GameTaskInfo;
    iget-object v1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_14
    iget-object v2, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    monitor-exit v1

    .line 119
    return-object v0

    .line 117
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v2
.end method


# virtual methods
.method get(I)Lcom/android/server/app/GameTaskInfo;
    .registers 5
    .param p1, "taskId"    # I

    .line 57
    iget-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameTaskInfo;

    .line 59
    .local v1, "cachedTaskInfo":Lcom/android/server/app/GameTaskInfo;
    if-eqz v1, :cond_13

    .line 60
    monitor-exit v0

    return-object v1

    .line 62
    .end local v1    # "cachedTaskInfo":Lcom/android/server/app/GameTaskInfo;
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_28

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 65
    .local v0, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v0, :cond_26

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_1f

    goto :goto_26

    .line 69
    :cond_1f
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v1}, Lcom/android/server/app/GameTaskInfoProvider;->generateGameInfo(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;

    move-result-object v1

    return-object v1

    .line 66
    :cond_26
    :goto_26
    const/4 v1, 0x0

    return-object v1

    .line 62
    .end local v0    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method get(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 73
    iget-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameTaskInfo;

    .line 75
    .local v1, "cachedTaskInfo":Lcom/android/server/app/GameTaskInfo;
    if-eqz v1, :cond_4a

    .line 76
    iget-object v2, v1, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 77
    const-string v2, "GameTaskInfoProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found cached task info for taskId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but cached component name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 81
    :cond_48
    monitor-exit v0

    return-object v1

    .line 84
    .end local v1    # "cachedTaskInfo":Lcom/android/server/app/GameTaskInfo;
    :cond_4a
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_50

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameTaskInfoProvider;->generateGameInfo(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;

    move-result-object v0

    return-object v0

    .line 84
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method

.method getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 7
    .param p1, "taskId"    # I

    .line 93
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Landroid/app/IActivityTaskManager;->getTasks(IZZ)Ljava/util/List;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_23

    .line 100
    .local v1, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    nop

    .line 102
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 103
    .local v3, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v4, p1, :cond_21

    .line 104
    return-object v3

    .line 106
    .end local v3    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_21
    goto :goto_10

    .line 108
    :cond_22
    return-object v0

    .line 97
    .end local v1    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_23
    move-exception v1

    .line 98
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "GameTaskInfoProvider"

    const-string v3, "Failed to fetch running tasks"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v0
.end method
