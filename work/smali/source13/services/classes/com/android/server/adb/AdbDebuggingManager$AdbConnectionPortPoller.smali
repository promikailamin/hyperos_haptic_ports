.class Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;
.super Ljava/lang/Thread;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdbConnectionPortPoller"
.end annotation


# instance fields
.field private final mAdbPortProp:Ljava/lang/String;

.field private mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDurationSecs:I

.field private mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    .line 327
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 322
    const-string/jumbo v0, "service.adb.tls.port"

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mAdbPortProp:Ljava/lang/String;

    .line 324
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mDurationSecs:I

    .line 325
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 328
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    .line 329
    return-void
.end method


# virtual methods
.method public cancelAndWait()V
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 358
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 360
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    .line 362
    goto :goto_11

    .line 361
    :catch_10
    move-exception v0

    .line 364
    :cond_11
    :goto_11
    return-void
.end method

.method public run()V
    .registers 5

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    const/4 v2, -0x1

    if-ge v0, v1, :cond_31

    .line 339
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 340
    return-void

    .line 345
    :cond_f
    const v1, 0x7fffffff

    const-string/jumbo v3, "service.adb.tls.port"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 346
    .local v1, "port":I
    if-eq v1, v2, :cond_2b

    if-lez v1, :cond_23

    const v2, 0xffff

    if-gt v1, v2, :cond_23

    goto :goto_2b

    .line 350
    :cond_23
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 338
    .end local v1    # "port":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    .restart local v1    # "port":I
    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    invoke-interface {v2, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;->onPortReceived(I)V

    .line 348
    return-void

    .line 352
    .end local v0    # "i":I
    .end local v1    # "port":I
    :cond_31
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to receive adb connection port"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    invoke-interface {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;->onPortReceived(I)V

    .line 354
    return-void
.end method
