.class Lcom/android/server/am/ActivityManagerService$16;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "name"    # Ljava/lang/String;

    .line 9344
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$16;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$16;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 9347
    const-string v0, "-b"

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->val$report:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 9348
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9351
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logcat_for_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9352
    .local v1, "logcatSetting":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "max_error_bytes_for_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9353
    .local v2, "maxBytesSetting":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 9354
    .local v3, "lines":I
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 9355
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/high16 v6, 0x30000

    .line 9354
    invoke-static {v5, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 9356
    .local v5, "dropboxMaxSize":I
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v7, v3, 0x64

    sub-int/2addr v6, v7

    .line 9359
    .local v6, "maxDataFileSize":I
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dataFile:Ljava/io/File;

    const-string v8, "ActivityManager"

    if-eqz v7, :cond_8a

    if-lez v6, :cond_8a

    .line 9361
    :try_start_65
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    const-string v10, "\n\n[[TRUNCATED]]"

    invoke-static {v7, v6, v10}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_70} :catch_71

    .line 9365
    goto :goto_8a

    .line 9363
    :catch_71
    move-exception v7

    .line 9364
    .local v7, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dataFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9367
    .end local v7    # "e":Ljava/io/IOException;
    :cond_8a
    :goto_8a
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$16;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v7, :cond_9b

    iget-object v7, v7, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v7, :cond_9b

    .line 9368
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$16;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v9, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9371
    :cond_9b
    if-lez v3, :cond_160

    .line 9372
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9374
    const/4 v7, 0x0

    .line 9376
    .local v7, "input":Ljava/io/InputStreamReader;
    :try_start_a5
    new-instance v9, Ljava/lang/ProcessBuilder;

    const/16 v10, 0x12

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "/system/bin/timeout"

    aput-object v11, v10, v4

    const-string v11, "-i"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x2

    const-string v13, "-s"

    aput-object v13, v10, v11

    const/4 v11, 0x3

    const-string v13, "SEGV"

    aput-object v13, v10, v11

    const/4 v11, 0x4

    const-string v13, "10s"

    aput-object v13, v10, v11

    const/4 v11, 0x5

    const-string v13, "/system/bin/logcat"

    aput-object v13, v10, v11

    const/4 v11, 0x6

    const-string v13, "-v"

    aput-object v13, v10, v11

    const/4 v11, 0x7

    const-string/jumbo v13, "threadtime"

    aput-object v13, v10, v11

    const/16 v11, 0x8

    aput-object v0, v10, v11

    const/16 v11, 0x9

    const-string v13, "events"

    aput-object v13, v10, v11

    const/16 v11, 0xa

    aput-object v0, v10, v11

    const/16 v11, 0xb

    const-string/jumbo v13, "system"

    aput-object v13, v10, v11

    const/16 v11, 0xc

    aput-object v0, v10, v11

    const/16 v11, 0xd

    const-string/jumbo v13, "main"

    aput-object v13, v10, v11

    const/16 v11, 0xe

    aput-object v0, v10, v11

    const/16 v0, 0xf

    const-string v11, "crash"

    aput-object v11, v10, v0

    const/16 v0, 0x10

    const-string v11, "-t"

    aput-object v11, v10, v0

    const/16 v0, 0x11

    .line 9382
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-direct {v9, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 9383
    invoke-virtual {v9, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_116} :catch_14b
    .catchall {:try_start_a5 .. :try_end_116} :catchall_149

    .line 9385
    .local v0, "logcat":Ljava/lang/Process;
    :try_start_116
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_11d} :catch_11e
    .catchall {:try_start_116 .. :try_end_11d} :catchall_149

    goto :goto_11f

    :catch_11e
    move-exception v9

    .line 9386
    :goto_11f
    :try_start_11f
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_126} :catch_127
    .catchall {:try_start_11f .. :try_end_126} :catchall_149

    goto :goto_128

    :catch_127
    move-exception v9

    .line 9387
    :goto_128
    :try_start_128
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v7, v9

    .line 9390
    const/16 v9, 0x2000

    new-array v9, v9, [C

    .line 9391
    .local v9, "buf":[C
    :goto_136
    invoke-virtual {v7, v9}, Ljava/io/InputStreamReader;->read([C)I

    move-result v10

    move v11, v10

    .local v11, "num":I
    if-lez v10, :cond_143

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9, v4, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_142} :catch_14b
    .catchall {:try_start_128 .. :try_end_142} :catchall_149

    goto :goto_136

    .line 9395
    .end local v0    # "logcat":Ljava/lang/Process;
    .end local v9    # "buf":[C
    .end local v11    # "num":I
    :cond_143
    :try_start_143
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_146} :catch_147

    goto :goto_160

    :catch_147
    move-exception v0

    goto :goto_160

    :catchall_149
    move-exception v0

    goto :goto_158

    .line 9392
    :catch_14b
    move-exception v0

    .line 9393
    .local v0, "e":Ljava/io/IOException;
    :try_start_14c
    const-string v4, "Error running logcat"

    invoke-static {v8, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_151
    .catchall {:try_start_14c .. :try_end_151} :catchall_149

    .line 9395
    nop

    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_160

    :try_start_154
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_147

    goto :goto_160

    :goto_158
    if-eqz v7, :cond_15f

    :try_start_15a
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15d} :catch_15e

    goto :goto_15f

    :catch_15e
    move-exception v4

    .line 9396
    :cond_15f
    :goto_15f
    throw v0

    .line 9399
    .end local v7    # "input":Ljava/io/InputStreamReader;
    :cond_160
    :goto_160
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dropboxTag:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 9400
    return-void
.end method
