.class public Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;
.source "SystemSettingsHelper.java"


# instance fields
.field public final mBaseValuesSupplier:Ljava/util/function/Supplier;

.field public mCachedValue:Landroid/os/PackageTagsList;

.field public mValid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .registers 3

    .line 712
    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;-><init>(Ljava/lang/String;)V

    .line 713
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Landroid/os/PackageTagsList;
    .registers 14

    monitor-enter p0

    .line 717
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;

    .line 718
    iget-boolean v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    if-nez v1, :cond_8f

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_87

    .line 721
    :try_start_b
    new-instance v2, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v2}, Landroid/os/PackageTagsList$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    .line 722
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 721
    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->addAll(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;

    move-result-object v2

    .line 724
    const-string v3, "location"

    iget-object v4, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_75

    .line 727
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_34
    if-ge v7, v4, :cond_75

    aget-object v8, v3, v7

    .line 728
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3f

    goto :goto_72

    .line 732
    :cond_3f
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 733
    aget-object v9, v8, v6

    .line 734
    array-length v10, v8

    if-ne v10, v5, :cond_50

    .line 735
    invoke-virtual {v2, v9}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_72

    :catchall_4e
    move-exception v2

    goto :goto_8b

    :cond_50
    move v10, v5

    .line 737
    :goto_51
    array-length v11, v8

    if-ge v10, v11, :cond_72

    .line 738
    aget-object v11, v8, v10

    .line 739
    const-string/jumbo v12, "null"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_60

    const/4 v11, 0x0

    .line 743
    :cond_60
    const-string v12, "*"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6c

    .line 744
    invoke-virtual {v2, v9}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_6f

    .line 746
    :cond_6c
    invoke-virtual {v2, v9, v11}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    :goto_6f
    add-int/lit8 v10, v10, 0x1

    goto :goto_51

    :cond_72
    :goto_72
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 753
    :cond_75
    invoke-virtual {v2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v2
    :try_end_79
    .catchall {:try_start_b .. :try_end_79} :catchall_4e

    .line 755
    :try_start_79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 759
    iput-boolean v5, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    .line 760
    iput-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;

    goto :goto_89

    :catchall_87
    move-exception v0

    goto :goto_91

    :cond_89
    :goto_89
    move-object v0, v2

    goto :goto_8f

    .line 755
    :goto_8b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 756
    throw v2
    :try_end_8f
    .catchall {:try_start_79 .. :try_end_8f} :catchall_87

    .line 764
    :cond_8f
    :goto_8f
    monitor-exit p0

    return-object v0

    :goto_91
    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_87

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 768
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    const/4 v0, 0x0

    .line 769
    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 770
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

.method public onPropertiesChanged()V
    .registers 1

    .line 774
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->invalidate()V

    .line 775
    invoke-super {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->onPropertiesChanged()V

    return-void
.end method
