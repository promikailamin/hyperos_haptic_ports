.class final Lcom/android/server/wm/PackageConfigurationUpdaterImpl;
.super Ljava/lang/Object;
.source "PackageConfigurationUpdaterImpl.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageConfigurationUpdaterImpl"


# instance fields
.field private mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mLocales:Landroid/os/LocaleList;

.field private mNightMode:Ljava/lang/Integer;

.field private mPackageName:Ljava/lang/String;

.field private final mPid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method constructor <init>(ILcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    .line 42
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 49
    iput-object p3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    .line 51
    return-void
.end method

.method private updateConfig(ILjava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 109
    .local v0, "processes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_47

    .line 110
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    iget-object v2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 111
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Lcom/android/server/wm/LocaleOverlayHelper;->combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object v1

    .line 112
    .local v1, "localesOverride":Landroid/os/LocaleList;
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_27
    if-ltz v2, :cond_46

    .line 113
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    .line 114
    .local v3, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v4, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 115
    iget-object v4, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/WindowProcessController;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;)Z

    .line 119
    :cond_3e
    iget-object v4, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {v3, p2, v4, v1}, Lcom/android/server/wm/WindowProcessController;->updateAppSpecificSettingsForAllActivitiesInPackage(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/LocaleList;)V

    .line 112
    .end local v3    # "wpc":Lcom/android/server/wm/WindowProcessController;
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 122
    .end local v2    # "i":I
    :cond_46
    return-void

    .line 109
    .end local v1    # "localesOverride":Landroid/os/LocaleList;
    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public commit()Z
    .registers 10

    .line 72
    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_bb

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b5

    .line 77
    .local v1, "ident":J
    :try_start_d
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5d

    .line 78
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 79
    .local v3, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-nez v3, :cond_50

    .line 80
    const-string v5, "PackageConfigurationUpdaterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commit: Override application configuration failed: cannot find pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_af

    .line 82
    nop

    .line 101
    :try_start_47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_b5

    :try_start_4b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_bb

    .line 82
    return v4

    .line 84
    :cond_50
    :try_start_50
    iget v4, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 85
    .local v4, "uid":I
    iget v5, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iput v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 86
    iget-object v5, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    .line 87
    .end local v3    # "wpc":Lcom/android/server/wm/WindowProcessController;
    goto :goto_95

    .line 88
    .end local v4    # "uid":I
    :cond_5d
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    const-wide/32 v6, 0x20000

    iget v8, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 90
    .local v3, "uid":I
    if-gez v3, :cond_94

    .line 91
    const-string v5, "PackageConfigurationUpdaterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commit: update of application configuration failed: userId or packageName not valid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_50 .. :try_end_8a} :catchall_af

    .line 93
    nop

    .line 101
    :try_start_8b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_b5

    :try_start_8f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    monitor-exit p0
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_bb

    .line 93
    return v4

    .line 90
    :cond_94
    move v4, v3

    .line 96
    .end local v3    # "uid":I
    .restart local v4    # "uid":I
    :goto_95
    :try_start_95
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->updateConfig(ILjava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 98
    invoke-virtual {v3, v5, v6, p0}, Lcom/android/server/wm/PackageConfigPersister;->updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/PackageConfigurationUpdaterImpl;)Z

    move-result v3
    :try_end_a6
    .catchall {:try_start_95 .. :try_end_a6} :catchall_af

    .line 101
    :try_start_a6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_b5

    :try_start_aa
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_bb

    .line 97
    return v3

    .line 101
    .end local v4    # "uid":I
    :catchall_af
    move-exception v3

    :try_start_b0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    nop

    .end local p0    # "this":Lcom/android/server/wm/PackageConfigurationUpdaterImpl;
    throw v3

    .line 103
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/PackageConfigurationUpdaterImpl;
    :catchall_b5
    move-exception v1

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_b5

    :try_start_b7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/PackageConfigurationUpdaterImpl;
    throw v1

    .line 104
    .restart local p0    # "this":Lcom/android/server/wm/PackageConfigurationUpdaterImpl;
    :catchall_bb
    move-exception v0

    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_bb

    throw v0
.end method

.method getLocales()Landroid/os/LocaleList;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method getNightMode()Ljava/lang/Integer;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public setLocales(Landroid/os/LocaleList;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .registers 3
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 64
    monitor-enter p0

    .line 65
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    .line 66
    monitor-exit p0

    .line 67
    return-object p0

    .line 66
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setNightMode(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .registers 3
    .param p1, "nightMode"    # I

    .line 55
    monitor-enter p0

    .line 56
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    .line 57
    monitor-exit p0

    .line 58
    return-object p0

    .line 57
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method
