.class Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageTagsListSetting"
.end annotation


# instance fields
.field private final mBaseValuesSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCachedValue:Landroid/os/PackageTagsList;

.field private mValid:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 729
    .local p2, "baseValuesSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;>;"
    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;-><init>(Ljava/lang/String;)V

    .line 730
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    .line 731
    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Landroid/os/PackageTagsList;
    .registers 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 734
    :try_start_3
    iget-object v0, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;

    move-object v2, v0

    .line 735
    .local v2, "value":Landroid/os/PackageTagsList;
    iget-boolean v0, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    if-nez v0, :cond_94

    .line 736
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_96

    .line 738
    .local v3, "identity":J
    :try_start_e
    new-instance v0, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v0}, Landroid/os/PackageTagsList$Builder;-><init>()V

    iget-object v5, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    .line 739
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 738
    invoke-virtual {v0, v5}, Landroid/os/PackageTagsList$Builder;->add(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;

    move-result-object v0

    .line 741
    .local v0, "builder":Landroid/os/PackageTagsList$Builder;
    const-string/jumbo v5, "location"

    iget-object v6, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, "setting":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_8f

    const/4 v7, 0x1

    if-nez v6, :cond_7b

    .line 744
    :try_start_2f
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x0

    move v10, v9

    :goto_38
    if-ge v10, v8, :cond_7b

    aget-object v11, v6, v10

    .line 745
    .local v11, "packageAndTags":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_43

    .line 746
    goto :goto_75

    .line 749
    :cond_43
    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 750
    .local v12, "packageThenTags":[Ljava/lang/String;
    aget-object v13, v12, v9

    .line 751
    .local v13, "packageName":Ljava/lang/String;
    array-length v14, v12

    if-ne v14, v7, :cond_52

    .line 752
    invoke-virtual {v0, v13}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_75

    .line 754
    :cond_52
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_53
    array-length v15, v12

    if-ge v14, v15, :cond_75

    .line 755
    aget-object v15, v12, v14

    .line 756
    .local v15, "attributionTag":Ljava/lang/String;
    const-string/jumbo v9, "null"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 757
    const/4 v15, 0x0

    .line 760
    :cond_62
    const-string v9, "*"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 761
    invoke-virtual {v0, v13}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_71

    .line 763
    :cond_6e
    invoke-virtual {v0, v13, v15}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;
    :try_end_71
    .catchall {:try_start_2f .. :try_end_71} :catchall_79

    .line 754
    .end local v15    # "attributionTag":Ljava/lang/String;
    :goto_71
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_53

    .line 744
    .end local v11    # "packageAndTags":Ljava/lang/String;
    .end local v12    # "packageThenTags":[Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "i":I
    :cond_75
    :goto_75
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_38

    .line 772
    .end local v0    # "builder":Landroid/os/PackageTagsList$Builder;
    .end local v5    # "setting":Ljava/lang/String;
    :catchall_79
    move-exception v0

    goto :goto_90

    .line 770
    .restart local v0    # "builder":Landroid/os/PackageTagsList$Builder;
    .restart local v5    # "setting":Ljava/lang/String;
    :cond_7b
    :try_start_7b
    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v6
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_8f

    move-object v2, v6

    .line 772
    .end local v0    # "builder":Landroid/os/PackageTagsList$Builder;
    .end local v5    # "setting":Ljava/lang/String;
    :try_start_80
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 773
    nop

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 776
    iput-boolean v7, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    .line 777
    iput-object v2, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;

    goto :goto_94

    .line 772
    .end local p0    # "this":Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;
    :catchall_8f
    move-exception v0

    :goto_90
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 773
    throw v0
    :try_end_94
    .catchall {:try_start_80 .. :try_end_94} :catchall_96

    .line 781
    .end local v3    # "identity":J
    :cond_94
    :goto_94
    monitor-exit p0

    return-object v2

    .line 733
    .end local v2    # "value":Landroid/os/PackageTagsList;
    :catchall_96
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .registers 2

    monitor-enter p0

    .line 785
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 787
    monitor-exit p0

    return-void

    .line 784
    .end local p0    # "this":Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPropertiesChanged()V
    .registers 1

    .line 791
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->invalidate()V

    .line 792
    invoke-super {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->onPropertiesChanged()V

    .line 793
    return-void
.end method
