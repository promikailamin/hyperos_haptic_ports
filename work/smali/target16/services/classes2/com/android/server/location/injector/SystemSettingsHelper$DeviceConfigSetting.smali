.class public abstract Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;
.super Ljava/lang/Object;
.source "SystemSettingsHelper.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mName:Ljava/lang/String;

.field public mRegistered:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mName:Ljava/lang/String;

    .line 656
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 674
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized isRegistered()Z
    .registers 2

    monitor-enter p0

    .line 660
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public onPropertiesChanged()V
    .registers 3

    .line 691
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_1c

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "location device config setting changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_1c
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    const/4 v1, -0x1

    .line 696
    invoke-interface {v0, v1}, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    goto :goto_22

    :cond_33
    return-void
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 683
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 687
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->onPropertiesChanged()V

    return-void
.end method

.method public declared-synchronized register()V
    .registers 3

    monitor-enter p0

    .line 664
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 665
    monitor-exit p0

    return-void

    .line 668
    :cond_7
    :try_start_7
    const-string v0, "location"

    .line 669
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 668
    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 v0, 0x1

    .line 670
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mRegistered:Z
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    .line 671
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public removeListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 678
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
