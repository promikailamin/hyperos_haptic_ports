.class public Lcom/android/server/am/ProcessList$2;
.super Ljava/lang/Object;
.source "ProcessList.java"

# interfaces
.implements Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;)V
    .registers 2

    .line 933
    iput-object p1, p0, Lcom/android/server/am/ProcessList$2;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z
    .registers 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ge p2, v0, :cond_5

    return v1

    .line 965
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq v0, v2, :cond_33

    const/16 p0, 0x8

    if-eq v0, p0, :cond_12

    return v1

    :cond_12
    const/16 p0, 0x56

    if-ge p2, p0, :cond_17

    return v1

    .line 984
    :cond_17
    sget-object p0, Lcom/android/server/am/ActiveServices;->sNumForegroundServices:Ljava/util/concurrent/atomic/AtomicReference;

    .line 985
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 986
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 987
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 988
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 986
    invoke-static {p1, p2, p0}, Lcom/android/server/am/LmkdStatsReporter;->logKillOccurred(Ljava/io/DataInputStream;II)V

    return v3

    :cond_33
    const/16 v0, 0x10

    if-eq p2, v0, :cond_38

    return v1

    .line 970
    :cond_38
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 971
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 972
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 973
    iget-object p0, p0, Lcom/android/server/am/ProcessList$2;->this$0:Lcom/android/server/am/ProcessList;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteLmkdProcKilled(III)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4b} :catch_4c

    return v3

    .line 994
    :catch_4c
    const-string p0, "ActivityManager"

    const-string p1, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isReplyExpected(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z
    .registers 5

    .line 953
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x0

    if-ne p3, p0, :cond_14

    .line 954
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v0
.end method

.method public onConnect(Ljava/io/OutputStream;)Z
    .registers 4

    .line 936
    const-string v0, "ActivityManager"

    const-string v1, "Connection with lmkd established"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object p0, p0, Lcom/android/server/am/ProcessList$2;->this$0:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->onLmkdConnect(Ljava/io/OutputStream;)Z

    move-result p0

    return p0
.end method

.method public onDisconnect()V
    .registers 4

    .line 942
    const-string p0, "ActivityManager"

    const-string v0, "Lost connection to lmkd"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    sget-object p0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v0, 0xfa1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
