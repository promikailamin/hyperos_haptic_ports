.class public Lcom/android/server/adb/AdbConnectionPortPoller;
.super Ljava/lang/Thread;
.source "AdbConnectionPortPoller.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAdbPortProp:Ljava/lang/String;

.field public mCallback:Lcom/android/server/adb/AdbConnectionPortPoller$PortChangedCallback;

.field public mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mDurationSecs:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/android/server/adb/AdbConnectionPortPoller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/adb/AdbConnectionPortPoller;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/adb/AdbConnectionPortPoller$PortChangedCallback;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    const-string/jumbo v0, "service.adb.tls.port"

    iput-object v0, p0, Lcom/android/server/adb/AdbConnectionPortPoller;->mAdbPortProp:Ljava/lang/String;

    const/16 v0, 0xa

    .line 37
    iput v0, p0, Lcom/android/server/adb/AdbConnectionPortPoller;->mDurationSecs:I

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/adb/AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    iput-object p1, p0, Lcom/android/server/adb/AdbConnectionPortPoller;->mCallback:Lcom/android/server/adb/AdbConnectionPortPoller$PortChangedCallback;

    return-void
.end method


# virtual methods
.method public cancelAndWait()V
    .registers 3

    .line 78
    sget-object v0, Lcom/android/server/adb/AdbConnectionPortPoller;->TAG:Ljava/lang/String;

    const-string v1, "Stopping TLS port property poller"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/android/server/adb/AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 82
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return-void
.end method

.method public run()V
    .registers 5

    .line 53
    sget-object v0, Lcom/android/server/adb/AdbConnectionPortPoller;->TAG:Ljava/lang/String;

    const-string v1, "Starting TLS port property poller"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_8
    const/16 v1, 0xa

    const/4 v2, -0x1

    if-ge v0, v1, :cond_4e

    .line 59
    iget-object v1, p0, Lcom/android/server/adb/AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    .line 65
    :cond_16
    const-string/jumbo v1, "service.adb.tls.port"

    const v3, 0x7fffffff

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_32

    if-lez v1, :cond_2a

    const v2, 0xffff

    if-gt v1, v2, :cond_2a

    goto :goto_32

    :cond_2a
    const-wide/16 v1, 0x3e8

    .line 71
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 67
    :cond_32
    :goto_32
    sget-object v0, Lcom/android/server/adb/AdbConnectionPortPoller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System property received TLS port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p0, Lcom/android/server/adb/AdbConnectionPortPoller;->mCallback:Lcom/android/server/adb/AdbConnectionPortPoller$PortChangedCallback;

    invoke-interface {p0, v1}, Lcom/android/server/adb/AdbConnectionPortPoller$PortChangedCallback;->onPortChanged(I)V

    return-void

    .line 73
    :cond_4e
    sget-object v0, Lcom/android/server/adb/AdbConnectionPortPoller;->TAG:Ljava/lang/String;

    const-string v1, "Failed to receive adb connection port from system property"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p0, p0, Lcom/android/server/adb/AdbConnectionPortPoller;->mCallback:Lcom/android/server/adb/AdbConnectionPortPoller$PortChangedCallback;

    invoke-interface {p0, v2}, Lcom/android/server/adb/AdbConnectionPortPoller$PortChangedCallback;->onPortChanged(I)V

    return-void
.end method
