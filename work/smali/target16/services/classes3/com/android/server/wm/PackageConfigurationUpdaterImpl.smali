.class public final Lcom/android/server/wm/PackageConfigurationUpdaterImpl;
.super Ljava/lang/Object;
.source "PackageConfigurationUpdaterImpl.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;


# instance fields
.field public mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mGrammaticalGender:I

.field public mLocales:Landroid/os/LocaleList;

.field public mNightMode:Ljava/lang/Integer;

.field public mPackageName:Ljava/lang/String;

.field public final mPid:Ljava/util/Optional;

.field public mUserId:I


# direct methods
.method public constructor <init>(ILcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    .line 45
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 52
    iput-object p3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 53
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public commit()Z
    .registers 10

    .line 84
    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_4d

    .line 86
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_4f

    .line 89
    :try_start_d
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_60

    .line 90
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

    if-nez v3, :cond_53

    .line 92
    const-string v3, "PackageConfigurationUpdaterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commit: Override application configuration failed: cannot find pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_51

    .line 113
    :try_start_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_4f

    :goto_48
    :try_start_48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4d

    return v4

    :catchall_4d
    move-exception v0

    goto :goto_b4

    :catchall_4f
    move-exception v1

    goto :goto_af

    :catchall_51
    move-exception v3

    goto :goto_ab

    .line 96
    :cond_53
    :try_start_53
    iget v4, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 97
    iget v5, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iput v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 98
    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    goto :goto_91

    .line 100
    :cond_60
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    const-wide/32 v7, 0x20000

    invoke-virtual {v3, v5, v7, v8, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    if-gez v3, :cond_90

    .line 103
    const-string v3, "PackageConfigurationUpdaterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commit: update of application configuration failed: userId or packageName not valid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_53 .. :try_end_8b} :catchall_51

    .line 113
    :try_start_8b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_4f

    goto :goto_48

    :cond_90
    move v4, v3

    .line 108
    :goto_91
    :try_start_91
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->updateConfig(ILjava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    iget-object v4, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 110
    invoke-virtual {v3, v4, v5, p0}, Lcom/android/server/wm/PackageConfigPersister;->updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/PackageConfigurationUpdaterImpl;)Z

    move-result v3
    :try_end_a2
    .catchall {:try_start_91 .. :try_end_a2} :catchall_51

    .line 113
    :try_start_a2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_4f

    :try_start_a6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_4d

    return v3

    :goto_ab
    :try_start_ab
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    throw v3

    .line 115
    :goto_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_4f

    :try_start_b0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 116
    :goto_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_4d

    throw v0
.end method

.method public getGrammaticalGender()Ljava/lang/Integer;
    .registers 1

    .line 146
    iget p0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public getNightMode()Ljava/lang/Integer;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGrammaticalGender(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .registers 2

    .line 76
    monitor-enter p0

    .line 77
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    .line 78
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setLocales(Landroid/os/LocaleList;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .registers 2

    .line 67
    monitor-enter p0

    .line 68
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    .line 69
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setNightMode(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .registers 2

    .line 58
    monitor-enter p0

    .line 59
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    .line 60
    monitor-exit p0

    return-object p0

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final updateConfig(ILjava/lang/String;)V
    .registers 8

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 121
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4e

    .line 122
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 123
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 122
    invoke-static {v0, v1}, Lcom/android/server/wm/LocaleOverlayHelper;->combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_27
    if-ltz v1, :cond_4e

    .line 125
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 126
    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 127
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    iget v4, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    .line 131
    :cond_44
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    iget v4, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    invoke-virtual {v2, p2, v3, v0, v4}, Lcom/android/server/wm/WindowProcessController;->updateAppSpecificSettingsForAllActivitiesInPackage(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/LocaleList;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    :cond_4e
    :goto_4e
    return-void
.end method
