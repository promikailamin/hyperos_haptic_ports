.class public Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "SystemSettingsHelper.java"


# instance fields
.field public final mBaseValuesSupplier:Ljava/util/function/Supplier;

.field public mCachedValue:Landroid/util/ArraySet;

.field public final mContext:Landroid/content/Context;

.field public final mSettingName:Ljava/lang/String;

.field public mValid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .registers 5

    .line 598
    invoke-direct {p0, p4}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 599
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    .line 600
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 601
    iput-object p3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 603
    iput-boolean p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/util/Set;
    .registers 6

    monitor-enter p0

    .line 611
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;

    .line 612
    iget-boolean v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    if-nez v1, :cond_51

    .line 613
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_49

    .line 615
    :try_start_b
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 616
    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 618
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 619
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_38

    goto :goto_3a

    :catchall_38
    move-exception v2

    goto :goto_4d

    .line 622
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    .line 626
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    .line 627
    iput-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;

    goto :goto_4b

    :catchall_49
    move-exception v0

    goto :goto_53

    :cond_4b
    :goto_4b
    move-object v0, v2

    goto :goto_51

    .line 622
    :goto_4d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    throw v2
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_49

    .line 631
    :cond_51
    :goto_51
    monitor-exit p0

    return-object v0

    :goto_53
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_49

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 635
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    const/4 v0, 0x0

    .line 636
    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 637
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 641
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->invalidate()V

    .line 642
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->onChange(ZLandroid/net/Uri;I)V

    return-void
.end method

.method public register()V
    .registers 3

    .line 607
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
