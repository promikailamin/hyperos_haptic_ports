.class public final Lcom/android/server/am/AppProfiler$RecordPssRunnable;
.super Ljava/lang/Object;
.source "AppProfiler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDumpUri:Landroid/net/Uri;

.field public final mProfile:Lcom/android/server/am/ProcessProfileRecord;

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .registers 5

    .line 1015
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    iput-object p2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1017
    iput-object p3, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 1018
    iput-object p4, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1023
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    const-string/jumbo v2, "rw"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_2b

    .line 1024
    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_22

    if-eqz v3, :cond_25

    .line 1031
    :try_start_13
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 1035
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1031
    invoke-interface/range {v3 .. v10}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_21} :catch_25
    .catchall {:try_start_13 .. :try_end_21} :catchall_22

    goto :goto_25

    :catchall_22
    move-exception v0

    move-object v1, v0

    goto :goto_2d

    :catch_25
    :cond_25
    :goto_25
    if-eqz v9, :cond_4a

    .line 1040
    :try_start_27
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_4a

    :catch_2b
    move-exception v0

    goto :goto_38

    :goto_2d
    if-eqz v9, :cond_37

    .line 1023
    :try_start_2f
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v0

    :try_start_34
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    throw v1
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_2b

    .line 1041
    :goto_38
    const-string v1, "ActivityManager"

    const-string v2, "Failed to dump heap"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1044
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mabortHeapDump(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method
