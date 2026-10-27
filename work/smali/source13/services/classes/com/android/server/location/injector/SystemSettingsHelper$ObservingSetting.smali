.class abstract Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.super Landroid/database/ContentObserver;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ObservingSetting"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistered:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 415
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 416
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 417
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 434
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method protected declared-synchronized isRegistered()Z
    .registers 2

    monitor-enter p0

    .line 420
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 420
    .end local p0    # "this":Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 443
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_27

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "location setting changed [u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_27
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 448
    .local v1, "listener":Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;
    invoke-interface {v1, p3}, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    .line 452
    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->isXSpaceActive()Z

    move-result v2

    if-eqz v2, :cond_53

    if-nez p3, :cond_53

    .line 453
    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getXSpaceUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    .line 456
    .end local v1    # "listener":Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;
    :cond_53
    goto :goto_2d

    .line 457
    :cond_54
    return-void
.end method

.method protected declared-synchronized register(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    monitor-enter p0

    .line 424
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 425
    monitor-exit p0

    return-void

    .line 428
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p2, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    .line 431
    monitor-exit p0

    return-void

    .line 423
    .end local p0    # "this":Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 438
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 439
    return-void
.end method
