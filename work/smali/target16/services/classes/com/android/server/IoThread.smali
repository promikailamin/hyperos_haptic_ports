.class public final Lcom/android/server/IoThread;
.super Lcom/android/server/ServiceThread;
.source "IoThread.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 40
    const-string v0, "android.io"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->start()V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v3, 0x80000

    .line 43
    invoke-virtual {v0, v3, v4}, Landroid/os/Looper;->setTraceTag(J)V

    .line 44
    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V

    iput-object v3, p0, Lcom/android/server/IoThread;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/IoThread;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/IoThread-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/IoThread;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/IoThread;
    .registers 1

    .line 49
    invoke-static {}, Lcom/android/server/IoThread$NoPreloadHolder;->-$$Nest$sfgetsInstance()Lcom/android/server/IoThread;

    move-result-object v0

    return-object v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 57
    invoke-static {}, Lcom/android/server/IoThread$NoPreloadHolder;->-$$Nest$sfgetsInstance()Lcom/android/server/IoThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IoThread;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 1

    .line 53
    invoke-static {}, Lcom/android/server/IoThread$NoPreloadHolder;->-$$Nest$sfgetsInstance()Lcom/android/server/IoThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IoThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
