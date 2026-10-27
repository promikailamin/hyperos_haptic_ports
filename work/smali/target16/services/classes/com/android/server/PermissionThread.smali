.class public final Lcom/android/server/PermissionThread;
.super Lcom/android/server/ServiceThread;
.source "PermissionThread.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    const-string v2, "android.perm"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 44
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->start()V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v1, 0x64

    const-wide/16 v3, 0xc8

    .line 47
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 48
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/PermissionThread;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/PermissionThread;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/PermissionThread-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/PermissionThread;-><init>()V

    return-void
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 70
    invoke-static {}, Lcom/android/server/PermissionThread$NoPreloadHolder;->-$$Nest$sfgetsInstance()Lcom/android/server/PermissionThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/PermissionThread;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 1

    .line 63
    invoke-static {}, Lcom/android/server/PermissionThread$NoPreloadHolder;->-$$Nest$sfgetsInstance()Lcom/android/server/PermissionThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/PermissionThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
