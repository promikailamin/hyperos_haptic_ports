.class Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;
.super Ljava/lang/Object;
.source "AmbientContextShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ambientcontext/AmbientContextShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TestableCallbackInternal"
.end annotation


# instance fields
.field private mLastResult:Landroid/service/ambientcontext/AmbientContextDetectionResult;

.field private mLastStatus:Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;


# direct methods
.method static bridge synthetic -$$Nest$mcreateRemoteDetectionResultCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->createRemoteDetectionResultCallback()Landroid/os/RemoteCallback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateRemoteStatusCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->createRemoteStatusCallback()Landroid/os/RemoteCallback;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createRemoteDetectionResultCallback()Landroid/os/RemoteCallback;
    .registers 3

    .line 66
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method private createRemoteStatusCallback()Landroid/os/RemoteCallback;
    .registers 3

    .line 82
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method


# virtual methods
.method public getLastResult()Landroid/service/ambientcontext/AmbientContextDetectionResult;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastResult:Landroid/service/ambientcontext/AmbientContextDetectionResult;

    return-object v0
.end method

.method public getLastStatus()Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastStatus:Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    return-object v0
.end method

.method synthetic lambda$createRemoteDetectionResultCallback$0$com-android-server-ambientcontext-AmbientContextShellCommand$TestableCallbackInternal(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "result"    # Landroid/os/Bundle;

    .line 67
    nop

    .line 68
    const-string v0, "android.app.ambientcontext.AmbientContextDetectionResultBundleKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/ambientcontext/AmbientContextDetectionResult;

    .line 70
    .local v0, "detectionResult":Landroid/service/ambientcontext/AmbientContextDetectionResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 72
    .local v1, "token":J
    :try_start_d
    iput-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastResult:Landroid/service/ambientcontext/AmbientContextDetectionResult;

    .line 73
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detection result available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2c

    .line 75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    nop

    .line 77
    return-void

    .line 75
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    throw v3
.end method

.method synthetic lambda$createRemoteStatusCallback$1$com-android-server-ambientcontext-AmbientContextShellCommand$TestableCallbackInternal(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "result"    # Landroid/os/Bundle;

    .line 83
    nop

    .line 84
    const-string v0, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    .line 86
    .local v0, "status":Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 88
    .local v1, "token":J
    :try_start_d
    iput-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastStatus:Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    .line 89
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2c

    .line 91
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    throw v3
.end method
