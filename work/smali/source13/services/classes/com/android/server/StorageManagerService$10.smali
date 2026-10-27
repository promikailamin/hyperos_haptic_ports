.class Lcom/android/server/StorageManagerService$10;
.super Landroid/os/IVoldMountCallback$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field final synthetic val$vol:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 2565
    iput-object p1, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$10;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Landroid/os/IVoldMountCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChecking(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "internalPath"    # Ljava/lang/String;

    .line 2569
    const-string v0, "Failed to close FUSE device fd"

    const-string v1, "StorageManagerService"

    iget-object v2, p0, Lcom/android/server/StorageManagerService$10;->val$vol:Landroid/os/storage/VolumeInfo;

    iput-object p2, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 2570
    iget-object v2, p0, Lcom/android/server/StorageManagerService$10;->val$vol:Landroid/os/storage/VolumeInfo;

    iput-object p3, v2, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 2571
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 2573
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_11
    iget-object v3, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmStorageSessionController(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/StorageManagerService$10;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/storage/StorageSessionController;->onVolumeMount(Landroid/os/ParcelFileDescriptor;Landroid/os/storage/VolumeInfo;)V
    :try_end_1c
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_11 .. :try_end_1c} :catch_28
    .catchall {:try_start_11 .. :try_end_1c} :catchall_26

    .line 2574
    const/4 v3, 0x1

    .line 2586
    :try_start_1d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    .line 2589
    goto :goto_25

    .line 2587
    :catch_21
    move-exception v4

    .line 2588
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2574
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_25
    return v3

    .line 2585
    :catchall_26
    move-exception v3

    goto :goto_8f

    .line 2575
    :catch_28
    move-exception v3

    .line 2576
    .local v3, "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    :try_start_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mount volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/StorageManagerService$10;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2578
    const/16 v4, 0xa

    .line 2579
    .local v4, "nextResetSeconds":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling reset in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    iget-object v5, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2581
    iget-object v5, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v7}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v4

    .line 2582
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 2581
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_85
    .catchall {:try_start_29 .. :try_end_85} :catchall_26

    .line 2583
    const/4 v5, 0x0

    .line 2586
    :try_start_86
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    .line 2589
    goto :goto_8e

    .line 2587
    :catch_8a
    move-exception v6

    .line 2588
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2583
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_8e
    return v5

    .line 2586
    .end local v3    # "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    .end local v4    # "nextResetSeconds":I
    :goto_8f
    :try_start_8f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_93

    .line 2589
    goto :goto_97

    .line 2587
    :catch_93
    move-exception v4

    .line 2588
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2590
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_97
    throw v3
.end method
