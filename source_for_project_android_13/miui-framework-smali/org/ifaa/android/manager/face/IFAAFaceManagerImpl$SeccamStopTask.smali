.class Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;
.super Landroid/os/AsyncTask;
.source "IFAAFaceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeccamStopTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;


# direct methods
.method private constructor blacklist <init>(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)V
    .registers 2

    .line 444
    iput-object p1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;-><init>(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "tmpStr"    # [Ljava/lang/String;

    .line 451
    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "doInBackground"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :try_start_7
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$fgetmCameraOperationLock(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 455
    const-string v1, "seccam closeCamera+++"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$fgetpreviewCamera_(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 457
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$fgetpreviewCamera_(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->stop()Ljava/lang/Boolean;

    .line 458
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$fputpreviewCamera_(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)V

    goto :goto_32

    .line 460
    :cond_2d
    const-string v1, "Secure camera already stopped.. ignoring stoptask"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_32
    const-string v1, "seccam closeCamera---"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_37} :catch_4f
    .catchall {:try_start_7 .. :try_end_37} :catchall_4d

    .line 467
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$fgetmSeccamStopping(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 468
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$fgetmCameraOperationLock(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 469
    nop

    .line 470
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 467
    :catchall_4d
    move-exception v0

    goto :goto_58

    .line 464
    :catch_4f
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_50
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to lock closeCamera."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;
    .end local p1    # "tmpStr":[Ljava/lang/String;
    throw v1
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_4d

    .line 467
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;
    .restart local p1    # "tmpStr":[Ljava/lang/String;
    :goto_58
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$fgetmSeccamStopping(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 468
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$fgetmCameraOperationLock(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 469
    throw v0
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 444
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 475
    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 444
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected whitelist onPreExecute()V
    .registers 3

    .line 447
    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method
