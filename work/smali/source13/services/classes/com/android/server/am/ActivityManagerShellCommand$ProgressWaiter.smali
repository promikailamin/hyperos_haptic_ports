.class Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;
.super Landroid/os/IProgressListener$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressWaiter"
.end annotation


# instance fields
.field private final mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;)V
    .registers 3

    .line 513
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 514
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 524
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 525
    return-void
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 520
    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 517
    return-void
.end method

.method public waitForFinish(J)Z
    .registers 6
    .param p1, "timeoutMillis"    # J

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 530
    :catch_9
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Thread interrupted unexpectedly."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 532
    const/4 v1, 0x0

    return v1
.end method
