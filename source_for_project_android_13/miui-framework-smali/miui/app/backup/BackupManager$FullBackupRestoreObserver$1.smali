.class Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;
.super Ljava/lang/Thread;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->onBackupStart(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

.field final synthetic blacklist val$feature:I

.field final synthetic blacklist val$pkg:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$1"    # Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    .line 552
    iput-object p1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iput-object p2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$feature:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 556
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v1, v1, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmTransactionLatch(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_4e
    .catchall {:try_start_1 .. :try_end_a} :catchall_4c

    .line 557
    :try_start_a
    iget-object v2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v2, v2, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v2}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$feature:I

    iget-object v5, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v5, v5, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v5}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmPips(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-interface {v2, v3, v4, v5}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onBackupDataTransaction(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;)V

    .line 558
    iget-object v2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v2, v2, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v2}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmTransactionLatch(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 559
    iget-object v2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v2, v2, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v2}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmTransactionLatch(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 560
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_49

    .line 565
    :try_start_3b
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v1, v1, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmPips(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_48} :catch_64

    goto :goto_63

    .line 560
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    .end local p0    # "this":Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;
    :try_start_4b
    throw v2
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4e
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 564
    .restart local p0    # "this":Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;
    :catchall_4c
    move-exception v1

    goto :goto_6a

    .line 561
    :catch_4e
    move-exception v1

    .line 562
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4f
    const-string v2, "Backup:BackupManager"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4c

    .line 565
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_56
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v1, v1, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmPips(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_63} :catch_64

    .line 568
    :goto_63
    goto :goto_69

    .line 566
    :catch_64
    move-exception v0

    .line 567
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 570
    :goto_69
    return-void

    .line 565
    :goto_6a
    :try_start_6a
    iget-object v2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v2, v2, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v2}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmPips(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_77} :catch_78

    .line 568
    goto :goto_7c

    .line 566
    :catch_78
    move-exception v0

    .line 567
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7c
    throw v1
.end method
