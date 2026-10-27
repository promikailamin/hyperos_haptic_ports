.class public Lcom/android/server/StorageManagerService$8;
.super Landroid/os/IVoldMountCallback$Stub;
.source "StorageManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public final synthetic val$vol:Lcom/android/server/storage/WatchedVolumeInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/storage/WatchedVolumeInfo;)V
    .registers 3

    .line 2411
    iput-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-direct {p0}, Landroid/os/IVoldMountCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChecking(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 2415
    const-string v0, "Failed to close FUSE device fd"

    const-string v1, "StorageManagerService"

    iget-object v2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-virtual {v2, p2}, Lcom/android/server/storage/WatchedVolumeInfo;->setFsPath(Ljava/lang/String;)V

    .line 2416
    iget-object p2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-virtual {p2, p3}, Lcom/android/server/storage/WatchedVolumeInfo;->setInternalPath(Ljava/lang/String;)V

    .line 2417
    new-instance p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    const-wide/32 v2, 0x80000

    .line 2419
    :try_start_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SMS.startFuseFileSystem: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    .line 2420
    invoke-virtual {p3}, Lcom/android/server/storage/WatchedVolumeInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2419
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2421
    iget-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmStorageSessionController(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-virtual {p3}, Lcom/android/server/storage/WatchedVolumeInfo;->getImmutableVolumeInfo()Lcom/android/server/storage/ImmutableVolumeInfo;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/storage/StorageSessionController;->onVolumeMount(Landroid/os/ParcelFileDescriptor;Lcom/android/server/storage/ImmutableVolumeInfo;)V
    :try_end_3f
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_16 .. :try_end_3f} :catch_4e
    .catchall {:try_start_16 .. :try_end_3f} :catchall_4c

    .line 2433
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    .line 2435
    :try_start_43
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    return p0

    :catch_47
    move-exception p1

    .line 2437
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0

    :catchall_4c
    move-exception p0

    goto :goto_b1

    :catch_4e
    move-exception p1

    .line 2424
    :try_start_4f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mount volume "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2427
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Scheduling reset in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iget-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2429
    iget-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, p3

    .line 2430
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 2429
    invoke-virtual {p1, p0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_a4
    .catchall {:try_start_4f .. :try_end_a4} :catchall_4c

    .line 2433
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2435
    :try_start_a7
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_af

    :catch_ab
    move-exception p0

    .line 2437
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_af
    const/4 p0, 0x0

    return p0

    .line 2433
    :goto_b1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2435
    :try_start_b4
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_bc

    :catch_b8
    move-exception p1

    .line 2437
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2439
    :goto_bc
    throw p0
.end method
