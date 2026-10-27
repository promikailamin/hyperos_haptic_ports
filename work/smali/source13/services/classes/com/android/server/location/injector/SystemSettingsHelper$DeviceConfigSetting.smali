.class Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;
.super Ljava/lang/Object;
.source "SystemSettingsHelper.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceConfigSetting"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mName:Ljava/lang/String;

.field private mRegistered:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mName:Ljava/lang/String;

    .line 673
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 674
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 691
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    return-void
.end method

.method protected declared-synchronized isRegistered()Z
    .registers 2

    monitor-enter p0

    .line 677
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 677
    .end local p0    # "this":Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPropertiesChanged()V
    .registers 4

    .line 708
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_1f

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "location device config setting changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_1f
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 713
    .local v1, "listener":Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    .line 714
    .end local v1    # "listener":Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;
    goto :goto_25

    .line 715
    :cond_36
    return-void
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 700
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 701
    return-void

    .line 704
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->onPropertiesChanged()V

    .line 705
    return-void
.end method

.method protected declared-synchronized register()V
    .registers 3

    monitor-enter p0

    .line 681
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-eqz v0, :cond_7

    .line 682
    monitor-exit p0

    return-void

    .line 685
    :cond_7
    :try_start_7
    const-string/jumbo v0, "location"

    .line 686
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 685
    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mRegistered:Z
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_16

    .line 688
    monitor-exit p0

    return-void

    .line 680
    .end local p0    # "this":Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 695
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 696
    return-void
.end method
