.class public final Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 1320
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1323
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "NotificationService"

    const-string v1, "handleSavePolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPolicyFile(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v0

    monitor-enter v0

    .line 1327
    :try_start_12
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPolicyFile(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_50
    .catchall {:try_start_12 .. :try_end_1c} :catchall_2e

    .line 1334
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;ZILandroid/app/backup/BackupRestoreEventLogger;)V

    .line 1335
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPolicyFile(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2d} :catch_30
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2e

    goto :goto_41

    :catchall_2e
    move-exception p0

    goto :goto_5a

    :catch_30
    move-exception v2

    .line 1337
    :try_start_31
    const-string v3, "NotificationService"

    const-string v4, "Failed to save policy file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1338
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPolicyFile(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1340
    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_2e

    .line 1341
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    return-void

    :catch_50
    move-exception p0

    .line 1329
    :try_start_51
    const-string v1, "NotificationService"

    const-string v2, "Failed to save policy file"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1330
    monitor-exit v0

    return-void

    .line 1340
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_2e

    throw p0
.end method
