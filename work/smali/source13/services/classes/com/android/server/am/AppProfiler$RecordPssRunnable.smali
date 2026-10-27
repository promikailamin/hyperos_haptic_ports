.class final Lcom/android/server/am/AppProfiler$RecordPssRunnable;
.super Ljava/lang/Object;
.source "AppProfiler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecordPssRunnable"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDumpUri:Landroid/net/Uri;

.field private final mProfile:Lcom/android/server/am/ProcessProfileRecord;

.field final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .registers 5
    .param p2, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p3, "dumpUri"    # Landroid/net/Uri;
    .param p4, "contentResolver"    # Landroid/content/ContentResolver;

    .line 666
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 668
    iput-object p3, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 669
    iput-object p4, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    .line 670
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 674
    const-string v0, "ActivityManager"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    const-string/jumbo v3, "rw"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_67

    .line 675
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_d
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_5b

    move-object v9, v2

    .line 676
    .local v9, "thread":Landroid/app/IApplicationThread;
    if-eqz v9, :cond_55

    .line 678
    :try_start_16
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_44

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting dump heap from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 680
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 679
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_44
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 684
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 682
    move-object v2, v9

    move-object v7, v1

    invoke-interface/range {v2 .. v8}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_53} :catch_54
    .catchall {:try_start_16 .. :try_end_53} :catchall_5b

    .line 687
    goto :goto_55

    .line 686
    :catch_54
    move-exception v2

    .line 689
    .end local v9    # "thread":Landroid/app/IApplicationThread;
    :cond_55
    :goto_55
    if-eqz v1, :cond_5a

    :try_start_57
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_67

    .line 694
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_5a
    goto :goto_78

    .line 674
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_5b
    move-exception v2

    if-eqz v1, :cond_66

    :try_start_5e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v3

    :try_start_63
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/am/AppProfiler$RecordPssRunnable;
    :cond_66
    :goto_66
    throw v2
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_67

    .line 689
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler$RecordPssRunnable;
    :catch_67
    move-exception v1

    .line 690
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to dump heap"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object v2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/am/AppProfiler;->-$$Nest$mabortHeapDump(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V

    .line 695
    .end local v1    # "e":Ljava/io/IOException;
    :goto_78
    return-void
.end method
