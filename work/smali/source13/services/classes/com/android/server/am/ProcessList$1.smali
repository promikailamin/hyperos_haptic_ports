.class Lcom/android/server/am/ProcessList$1;
.super Ljava/lang/Object;
.source "ProcessList.java"

# interfaces
.implements Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessList;->init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ProcessList;

    .line 805
    iput-object p1, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z
    .registers 8
    .param p1, "inputData"    # Ljava/io/DataInputStream;
    .param p2, "receivedLen"    # I

    .line 832
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ge p2, v1, :cond_5

    .line 833
    return v0

    .line 837
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_46

    .line 864
    :pswitch_d
    return v0

    .line 856
    :pswitch_e
    const/16 v1, 0x8

    if-eq p2, v1, :cond_13

    .line 858
    return v0

    .line 860
    :cond_13
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 861
    .local v1, "state":I
    invoke-static {v1}, Lcom/android/server/am/LmkdStatsReporter;->logStateChanged(I)V

    .line 862
    return v2

    .line 849
    .end local v1    # "state":I
    :pswitch_1b
    const/16 v1, 0x50

    if-ge p2, v1, :cond_20

    .line 851
    return v0

    .line 853
    :cond_20
    invoke-static {p1}, Lcom/android/server/am/LmkdStatsReporter;->logKillOccurred(Ljava/io/DataInputStream;)V

    .line 854
    return v2

    .line 839
    :pswitch_24
    const/16 v1, 0xc

    if-eq p2, v1, :cond_29

    .line 840
    return v0

    .line 842
    :cond_29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 843
    .local v1, "pid":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 845
    .local v3, "uid":I
    invoke-static {v3, v1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 846
    iget-object v4, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteLmkdProcKilled(II)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 847
    return v2

    .line 866
    .end local v1    # "pid":I
    .end local v3    # "uid":I
    :catch_3c
    move-exception v1

    .line 867
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    .end local v1    # "e":Ljava/io/IOException;
    return v0

    nop

    :pswitch_data_46
    .packed-switch 0x6
        :pswitch_24
        :pswitch_d
        :pswitch_1b
        :pswitch_e
    .end packed-switch
.end method

.method public isReplyExpected(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z
    .registers 7
    .param p1, "replyBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "dataReceived"    # Ljava/nio/ByteBuffer;
    .param p3, "receivedLen"    # I

    .line 825
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p3, v0, :cond_14

    .line 826
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    if-ne v0, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    nop

    .line 825
    :goto_15
    return v1
.end method

.method public onConnect(Ljava/io/OutputStream;)Z
    .registers 4
    .param p1, "ostream"    # Ljava/io/OutputStream;

    .line 808
    const-string v0, "ActivityManager"

    const-string v1, "Connection with lmkd established"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->onLmkdConnect(Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public onDisconnect()V
    .registers 5

    .line 814
    const-string v0, "ActivityManager"

    const-string v1, "Lost connection to lmkd"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v2, 0xfa1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 818
    return-void
.end method
