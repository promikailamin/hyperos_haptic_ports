.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;
.super Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;
.source "AppFunctionManagerServiceShellCommand.java"


# instance fields
.field public final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$finalBriefYaml:Z

.field public final synthetic val$pw:Ljava/io/PrintWriter;

.field public final synthetic val$resultCode:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;ZLjava/io/PrintWriter;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .registers 6

    .line 449
    iput-boolean p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$finalBriefYaml:Z

    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$pw:Ljava/io/PrintWriter;

    iput-object p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$resultCode:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/app/appfunctions/AppFunctionException;)V
    .registers 4

    .line 479
    const-string v0, "ShellCommand"

    const-string/jumbo v1, "onError: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$pw:Ljava/io/PrintWriter;

    const-string v1, "Error executing app function: %s. See logcat for more details. %n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 483
    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$resultCode:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 484
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .registers 4

    .line 456
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$finalBriefYaml:Z

    if-eqz v0, :cond_15

    .line 459
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->getResultDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object p1

    const/4 v0, 0x0

    .line 458
    invoke-static {p1, v0, v0, v0}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter;->convertGenericDocumentToYaml(Landroid/app/appsearch/GenericDocument;ZZZ)Ljava/lang/String;

    move-result-object p1

    .line 463
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    :catchall_13
    move-exception p1

    goto :goto_3b

    .line 466
    :cond_15
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->getResultDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/appfunctions/AppSearchDataJsonConverter;->convertGenericDocumentToJson(Landroid/app/appsearch/GenericDocument;)Lorg/json/JSONObject;

    move-result-object p1

    .line 467
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$pw:Ljava/io/PrintWriter;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_27} :catch_2d
    .catchall {:try_start_0 .. :try_end_27} :catchall_13

    .line 473
    :goto_27
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 470
    :catch_2d
    :try_start_2d
    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$pw:Ljava/io/PrintWriter;

    const-string v0, "Failed to convert the function response to JSON."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$resultCode:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_13

    goto :goto_27

    .line 473
    :goto_3b
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 474
    throw p1
.end method
