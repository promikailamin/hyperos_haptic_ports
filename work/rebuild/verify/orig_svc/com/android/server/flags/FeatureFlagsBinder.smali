.class Lcom/android/server/flags/FeatureFlagsBinder;
.super Landroid/flags/IFeatureFlags$Stub;
.source "FeatureFlagsBinder.java"


# instance fields
.field public final mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

.field public final mFlagCache:Lcom/android/server/flags/FlagCache;

.field public final mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

.field public final mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

.field public final mShellCommand:Lcom/android/server/flags/FlagsShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/FlagOverrideStore;Lcom/android/server/flags/FlagsShellCommand;Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Landroid/flags/IFeatureFlags$Stub;-><init>()V

    .line 37
    new-instance v0, Lcom/android/server/flags/FlagCache;

    invoke-direct {v0}, Lcom/android/server/flags/FlagCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    .line 45
    iput-object p1, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 46
    iput-object p2, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    .line 47
    new-instance p2, Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-direct {p2, p1}, Lcom/android/server/flags/DynamicFlagBinderDelegate;-><init>(Lcom/android/server/flags/FlagOverrideStore;)V

    iput-object p2, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 48
    iput-object p3, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    return-void
.end method


# virtual methods
.method public final assertSyncPermission()V
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertSyncPermission()V

    .line 148
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    return-void
.end method

.method public final assertWritePermission()V
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertWritePermission()V

    .line 153
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    return-void
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 163
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 164
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 166
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/flags/FlagsShellCommand;->process([Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method public overrideFlag(Landroid/flags/SyncableFlag;)V
    .registers 4

    .line 107
    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsBinder;->assertWritePermission()V

    .line 108
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/flags/FlagOverrideStore;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryFlags(Ljava/util/List;)Ljava/util/List;
    .registers 14

    .line 119
    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsBinder;->assertSyncPermission()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/flags/SyncableFlag;

    .line 122
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v3

    .line 125
    iget-object v4, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2b

    const/4 v5, 0x1

    :goto_29
    move v11, v5

    goto :goto_2d

    :cond_2b
    const/4 v5, 0x0

    goto :goto_29

    .line 128
    :goto_2d
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 129
    iget-object v4, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->getFlagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3d
    :goto_3d
    move-object v9, v2

    goto :goto_56

    .line 131
    :cond_3f
    iget-object v5, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3d

    .line 133
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-eqz v2, :cond_4e

    const/4 v4, 0x0

    :cond_4e
    if-nez v4, :cond_55

    .line 135
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_55
    move-object v9, v4

    .line 139
    :goto_56
    new-instance v6, Landroid/flags/SyncableFlag;

    .line 140
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->isDynamic()Z

    move-result v10

    invoke-direct/range {v6 .. v11}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 139
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_6b
    return-object v0
.end method

.method public registerCallback(Landroid/flags/IFeatureFlagsCallback;)V
    .registers 3

    .line 53
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->registerCallback(ILandroid/flags/IFeatureFlagsCallback;)V

    return-void
.end method

.method public resetFlag(Landroid/flags/SyncableFlag;)V
    .registers 3

    .line 113
    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsBinder;->assertWritePermission()V

    .line 114
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/flags/FlagOverrideStore;->erase(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public syncFlags(Ljava/util/List;)Ljava/util/List;
    .registers 14

    .line 67
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    move-result v0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 73
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsBinder;->assertSyncPermission()V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_11

    const/4 v4, 0x1

    move-object v5, v3

    goto :goto_14

    :catch_11
    move-exception v4

    move-object v5, v4

    move v4, v2

    .line 79
    :goto_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/flags/SyncableFlag;

    if-nez v4, :cond_2e

    .line 80
    invoke-static {v6}, Lcom/android/internal/flags/CoreFlags;->isCoreFlag(Landroid/flags/SyncableFlag;)Z

    move-result v7

    if-eqz v7, :cond_2d

    goto :goto_2e

    .line 81
    :cond_2d
    throw v5

    .line 84
    :cond_2e
    :goto_2e
    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v8

    .line 87
    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->isDynamic()Z

    move-result v9

    if-eqz v9, :cond_43

    .line 88
    iget-object v7, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-virtual {v7, v0, v6}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->syncDynamicFlag(ILandroid/flags/SyncableFlag;)Landroid/flags/SyncableFlag;

    move-result-object v6

    goto :goto_7a

    .line 90
    :cond_43
    iget-object v9, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    monitor-enter v9

    .line 91
    :try_start_46
    iget-object v10, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v10, v7, v8}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_6b

    .line 93
    sget-boolean v10, Landroid/os/Build;->IS_USER:Z

    if-eqz v10, :cond_56

    move-object v10, v3

    goto :goto_5c

    :cond_56
    iget-object v10, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {v10, v7, v8}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_5c
    if-eqz v10, :cond_5f

    goto :goto_63

    .line 94
    :cond_5f
    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 95
    :goto_63
    iget-object v11, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v11, v7, v8, v10}, Lcom/android/server/flags/FlagCache;->setIfChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_6b

    :catchall_69
    move-exception p0

    goto :goto_7e

    .line 97
    :cond_6b
    :goto_6b
    new-instance v7, Landroid/flags/SyncableFlag;

    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v6, v10, v2}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    monitor-exit v9
    :try_end_79
    .catchall {:try_start_46 .. :try_end_79} :catchall_69

    move-object v6, v7

    .line 100
    :goto_7a
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 98
    :goto_7e
    :try_start_7e
    monitor-exit v9
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_69

    throw p0

    :cond_80
    return-object v1
.end method

.method public unregisterCallback(Landroid/flags/IFeatureFlagsCallback;)V
    .registers 3

    .line 58
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->unregisterCallback(ILandroid/flags/IFeatureFlagsCallback;)V

    return-void
.end method
