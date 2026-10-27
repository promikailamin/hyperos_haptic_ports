.class public Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
.super Ljava/lang/Object;
.source "SafeOneTimeExecuteAppFunctionCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$BeforeCompletionCallback;,
        Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SafeOneTimeExecuteApp"


# instance fields
.field private final blacklist mBeforeCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$BeforeCompletionCallback;

.field private final blacklist mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

.field private final blacklist mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

.field private final blacklist mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor blacklist <init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .registers 3

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;-><init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$BeforeCompletionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$BeforeCompletionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;)V
    .registers 6

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    iput-object p1, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    .line 57
    iput-object p2, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mBeforeCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$BeforeCompletionCallback;

    .line 58
    iput-object p3, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist disable()V
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    return-void
.end method

.method public blacklist onError(Landroid/app/appfunctions/AppFunctionException;)V
    .registers 6

    .line 84
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "SafeOneTimeExecuteApp"

    if-nez v0, :cond_12

    .line 85
    const-string p1, "Ignore subsequent calls to onResult/onError()"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 89
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 90
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    if-eqz v0, :cond_26

    .line 91
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    iget-object v2, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    .line 92
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 91
    invoke-interface {v0, p1, v2, v3}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;->finalizeOnError(Landroid/app/appfunctions/AppFunctionException;J)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_26} :catch_27

    .line 97
    :cond_26
    goto :goto_2d

    .line 94
    :catch_27
    move-exception p1

    .line 96
    const-string v0, "Failed to invoke the callback"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :goto_2d
    return-void
.end method

.method public blacklist onResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .registers 6

    .line 63
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "SafeOneTimeExecuteApp"

    if-nez v0, :cond_12

    .line 64
    const-string p1, "Ignore subsequent calls to onResult/onError()"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 68
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mBeforeCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$BeforeCompletionCallback;

    if-eqz v0, :cond_1b

    .line 69
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mBeforeCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$BeforeCompletionCallback;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$BeforeCompletionCallback;->beforeOnSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    .line 71
    :cond_1b
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    .line 72
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    if-eqz v0, :cond_2f

    .line 73
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCompletionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;

    iget-object v2, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    .line 74
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 73
    invoke-interface {v0, p1, v2, v3}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;->finalizeOnSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;J)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2f} :catch_30

    .line 79
    :cond_2f
    goto :goto_36

    .line 76
    :catch_30
    move-exception p1

    .line 78
    const-string v0, "Failed to invoke the callback"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_36
    return-void
.end method

.method public blacklist setExecutionStartTimeAfterBindMillis(J)V
    .registers 6

    .line 113
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mExecutionStartTimeAfterBindMillis:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-nez p1, :cond_11

    .line 115
    const-string p1, "SafeOneTimeExecuteApp"

    const-string p2, "Ignore subsequent calls to setExecutionStartTimeAfterBindMillis()"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_11
    return-void
.end method
