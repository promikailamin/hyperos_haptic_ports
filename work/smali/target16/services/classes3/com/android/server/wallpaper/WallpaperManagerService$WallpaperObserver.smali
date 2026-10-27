.class public Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# instance fields
.field public final mUserId:I

.field public final mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field public final mWallpaperDir:Ljava/io/File;

.field public final mWallpaperFile:Ljava/io/File;

.field public final mWallpaperLockFile:Ljava/io/File;

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 4

    .line 243
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 244
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x688

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 246
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 247
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 248
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 249
    new-instance p2, Ljava/io/File;

    const-string v0, "wallpaper_orig"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 250
    new-instance p2, Ljava/io/File;

    const-string v0, "wallpaper_lock_orig"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public dataForEvent(Z)Lcom/android/server/wallpaper/WallpaperData;
    .registers 4

    .line 255
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1a

    .line 257
    :try_start_9
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object p1

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_1b

    :catchall_18
    move-exception p0

    goto :goto_32

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-nez p1, :cond_2b

    .line 261
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object p1

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperData;

    .line 263
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_18

    if-eqz p1, :cond_2f

    return-object p1

    .line 264
    :cond_2f
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    return-object p0

    .line 263
    :goto_32
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_18

    throw p0
.end method

.method public onEvent(ILjava/lang/String;)V
    .registers 3

    if-eqz p2, :cond_5

    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->updateWallpapers(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final updateWallpapers(ILjava/lang/String;)V
    .registers 15

    .line 272
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 274
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 275
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->dataForEvent(Z)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v6

    const/16 v2, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1f

    move v2, v4

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    const/16 v5, 0x8

    if-eq p1, v5, :cond_29

    if-eqz v2, :cond_27

    goto :goto_29

    :cond_27
    move v7, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v7, v4

    :goto_2a
    if-eqz v2, :cond_30

    if-eqz v1, :cond_30

    move v8, v4

    goto :goto_31

    :cond_30
    move v8, v3

    :goto_31
    if-eqz v2, :cond_37

    if-nez v8, :cond_37

    move v2, v4

    goto :goto_38

    :cond_37
    move v2, v3

    .line 281
    :goto_38
    iget v9, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-eqz v9, :cond_40

    move v9, v4

    goto :goto_41

    :cond_40
    move v9, v3

    .line 282
    :goto_41
    invoke-virtual {v6}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_4f

    if-ne p1, v5, :cond_4f

    .line 284
    invoke-virtual {v6}, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending()Z

    move-result p1

    if-eqz p1, :cond_50

    :cond_4f
    move v3, v4

    :cond_50
    if-eqz v8, :cond_53

    goto :goto_57

    :cond_53
    if-nez p2, :cond_58

    if-nez v1, :cond_58

    :goto_57
    return-void

    .line 309
    :cond_58
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 310
    :try_start_5f
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    if-eqz v7, :cond_114

    if-nez v3, :cond_6a

    goto/16 :goto_114

    .line 320
    :cond_6a
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    const/4 v5, 0x0

    .line 321
    iput-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    .line 326
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    if-eqz v2, :cond_83

    .line 334
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v6, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    const/4 v3, 0x3

    invoke-static {v0, v2, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mloadSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IZI)V

    goto :goto_83

    :catchall_7f
    move-exception v0

    move-object p0, v0

    goto/16 :goto_116

    .line 339
    :cond_83
    :goto_83
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {v0, v6}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 344
    iget-object v0, v6, Lcom/android/server/wallpaper/WallpaperData;->mPendingStaticDescription:Landroid/app/wallpaper/WallpaperDescription;

    if-eqz v0, :cond_a2

    .line 345
    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription;->toBuilder()Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    .line 346
    invoke-virtual {v0, v2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0

    :goto_a0
    move-object v3, v0

    goto :goto_b6

    .line 348
    :cond_a2
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0

    goto :goto_a0

    .line 351
    :goto_b6
    iput-object v5, v6, Lcom/android/server/wallpaper/WallpaperData;->mPendingStaticDescription:Landroid/app/wallpaper/WallpaperDescription;

    if-eqz p2, :cond_ca

    .line 357
    new-instance v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;

    invoke-direct {v7, p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 369
    sget-object p2, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object p2, v6, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 371
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_ca
    if-eqz v1, :cond_dd

    .line 384
    new-instance v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;

    invoke-direct {v7, p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 395
    sget-object p2, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object p2, v6, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 397
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_106

    :cond_dd
    if-eqz v9, :cond_106

    .line 409
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    invoke-static {p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mdetachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 410
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {p2, v0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mclearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    .line 411
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object p2

    iget v0, v6, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 414
    :cond_106
    :goto_106
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget p2, v6, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    if-eqz v8, :cond_112

    .line 416
    invoke-virtual {v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->complete()V

    .line 418
    :cond_112
    monitor-exit p1

    return-void

    .line 313
    :cond_114
    :goto_114
    monitor-exit p1

    return-void

    .line 418
    :goto_116
    monitor-exit p1
    :try_end_117
    .catchall {:try_start_5f .. :try_end_117} :catchall_7f

    throw p0
.end method
