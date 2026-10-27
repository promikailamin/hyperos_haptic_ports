.class public Lcom/android/server/am/ActivityManagerService$13;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public final synthetic val$dataFile:Ljava/io/File;

.field public final synthetic val$dbox:Landroid/os/DropBoxManager;

.field public final synthetic val$dropboxTag:Ljava/lang/String;

.field public final synthetic val$errorTimestamp:Ljava/time/Instant;

.field public final synthetic val$report:Ljava/lang/String;

.field public final synthetic val$runSynchronously:Z

.field public final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;ZLjava/time/Instant;Landroid/os/DropBoxManager;)V
    .registers 11

    .line 9978
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$13;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-boolean p8, p0, Lcom/android/server/am/ActivityManagerService$13;->val$runSynchronously:Z

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$13;->val$errorTimestamp:Ljava/time/Instant;

    iput-object p10, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 9981
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13;->val$report:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 9982
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9985
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "kernel_logs_for_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9987
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "max_error_bytes_for_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9988
    sget-boolean v3, Landroid/os/Build;->IS_USER:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4c

    move v0, v4

    goto :goto_58

    .line 9990
    :cond_4c
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_58
    if-eqz v3, :cond_5b

    goto :goto_67

    .line 9993
    :cond_5b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 9994
    :goto_67
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 9995
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/high16 v3, 0x30000

    .line 9994
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 9997
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dataFile:Ljava/io/File;

    if-eqz v2, :cond_cd

    .line 10000
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    const-string v3, "Data File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dataFile:Ljava/io/File;

    .line 10001
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10003
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    .line 10004
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v2, v1, v2

    add-int v3, v0, v4

    mul-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xe

    if-lez v2, :cond_c6

    .line 10011
    :try_start_9f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dataFile:Ljava/io/File;

    const-string v6, "\n\n[[TRUNCATED]]\n"

    invoke-static {v5, v2, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_ac} :catch_ad

    goto :goto_c6

    :catch_ad
    move-exception v2

    .line 10014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dataFile:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10019
    :cond_c6
    :goto_c6
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    const-string v3, "End Data File\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10022
    :cond_cd
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_da

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v2, :cond_da

    .line 10023
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_da
    if-gtz v0, :cond_de

    if-lez v4, :cond_f1

    .line 10030
    :cond_de
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10032
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$errorTimestamp:Ljava/time/Instant;

    invoke-static {v2, v1, v3, v0, v4}, Lcom/android/server/am/LogcatFetcher;->appendLogcatLogs(Ljava/lang/StringBuilder;ILjava/time/Instant;II)V

    .line 10046
    :cond_f1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dropboxTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
