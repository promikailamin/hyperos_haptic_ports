.class Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
.super Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullBackupRestoreObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/app/backup/BackupManager;


# direct methods
.method private constructor blacklist <init>(Lmiui/app/backup/BackupManager;)V
    .registers 2

    .line 545
    iput-object p1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-direct {p0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$FullBackupRestoreObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onBackupEnd(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmPips(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 581
    goto :goto_11

    .line 579
    :catch_d
    move-exception v0

    .line 580
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 583
    .end local v0    # "e":Ljava/io/IOException;
    :goto_11
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmTransactionLatch(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 584
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmTransactionLatch(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    .line 585
    :goto_20
    :try_start_20
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmTransactionLatch(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_3d

    if-nez v1, :cond_3b

    .line 587
    :try_start_2c
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmTransactionLatch(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_35} :catch_36
    .catchall {:try_start_2c .. :try_end_35} :catchall_3d

    goto :goto_3a

    .line 588
    :catch_36
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 590
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_3a
    goto :goto_20

    .line 592
    :cond_3b
    monitor-exit v0

    goto :goto_40

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_3d

    throw v1

    .line 595
    :cond_40
    :goto_40
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 596
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onBackupEnd(Ljava/lang/String;I)V

    .line 600
    :cond_51
    :try_start_51
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreLatch(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_58} :catch_66

    .line 601
    :try_start_58
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreLatch(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 602
    monitor-exit v0

    .line 605
    goto :goto_6e

    .line 602
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_63

    .end local p0    # "this":Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "feature":I
    :try_start_65
    throw v1
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_66

    .line 603
    .restart local p0    # "this":Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "feature":I
    :catch_66
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Backup:BackupManager"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6e
    return-void
.end method

.method public blacklist onBackupStart(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {v0, v1}, Lmiui/app/backup/BackupManager;->-$$Nest$fputmTransactionLatch(Lmiui/app/backup/BackupManager;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 550
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 551
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onBackupStart(Ljava/lang/String;I)V

    .line 552
    new-instance v0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;

    invoke-direct {v0, p0, p1, p2}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;-><init>(Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;Ljava/lang/String;I)V

    .line 571
    invoke-virtual {v0}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->start()V

    .line 573
    :cond_24
    return-void
.end method

.method public blacklist onCustomProgressChange(Ljava/lang/String;IIJJ)V
    .registers 18
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "progType"    # I
    .param p4, "prog"    # J
    .param p6, "total"    # J

    .line 651
    move-object v0, p0

    iget-object v1, v0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 652
    iget-object v1, v0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    .line 654
    :cond_18
    return-void
.end method

.method public blacklist onError(Ljava/lang/String;II)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 611
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onError(Ljava/lang/String;II)V

    .line 615
    :cond_11
    :try_start_11
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreLatch(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_26

    .line 616
    :try_start_18
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreLatch(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 617
    monitor-exit v0

    .line 620
    goto :goto_2e

    .line 617
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    .end local p0    # "this":Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "feature":I
    .end local p3    # "err":I
    :try_start_25
    throw v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_26} :catch_26

    .line 618
    .restart local p0    # "this":Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "feature":I
    .restart local p3    # "err":I
    :catch_26
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Backup:BackupManager"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method public blacklist onRestoreEnd(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 633
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onRestoreEnd(Ljava/lang/String;I)V

    .line 637
    :cond_11
    :try_start_11
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreLatch(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_26

    .line 638
    :try_start_18
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreLatch(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 639
    monitor-exit v0

    .line 642
    goto :goto_2e

    .line 639
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    .end local p0    # "this":Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "feature":I
    :try_start_25
    throw v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_26} :catch_26

    .line 640
    .restart local p0    # "this":Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "feature":I
    :catch_26
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Backup:BackupManager"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method public blacklist onRestoreError(Ljava/lang/String;II)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    return-void
.end method

.method public blacklist onRestoreStart(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 626
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onRestoreStart(Ljava/lang/String;I)V

    .line 628
    :cond_11
    return-void
.end method
