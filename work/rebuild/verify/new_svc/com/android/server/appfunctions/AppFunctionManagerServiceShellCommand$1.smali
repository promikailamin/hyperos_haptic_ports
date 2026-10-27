.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$1;
.super Landroid/app/appfunctions/IAppFunctionEnabledCallback$Stub;
.source "AppFunctionManagerServiceShellCommand.java"


# instance fields
.field public final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 332
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$1;->val$pw:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/app/appfunctions/IAppFunctionEnabledCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/ParcelableException;)V
    .registers 5

    .line 341
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$1;->val$pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting app function state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$1;->val$pw:Ljava/io/PrintWriter;

    const-string v1, "App function enabled state updated successfully."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
