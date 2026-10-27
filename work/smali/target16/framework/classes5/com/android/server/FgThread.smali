.class public final Lcom/android/server/FgThread;
.super Lcom/android/server/ServiceThread;
.source "FgThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FgThread$NoPreloadHolder;
    }
.end annotation


# static fields
.field private static final blacklist SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final blacklist SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerExecutor:Landroid/os/HandlerExecutor;


# direct methods
.method private constructor blacklist <init>()V
    .registers 6

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "android.fg"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/FgThread;->start()V

    .line 51
    invoke-virtual {p0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 52
    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 53
    const-wide/16 v1, 0x64

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 54
    invoke-static {v0}, Lcom/android/server/FgThread;->makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/FgThread;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/FgThread;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/FgThread;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/FgThread-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/FgThread;-><init>()V

    return-void
.end method

.method public static blacklist get()Lcom/android/server/FgThread;
    .registers 1

    .line 59
    invoke-static {}, Lcom/android/server/FgThread$NoPreloadHolder;->-$$Nest$sfgetsInstance()Lcom/android/server/FgThread;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 67
    invoke-static {}, Lcom/android/server/FgThread$NoPreloadHolder;->-$$Nest$sfgetsInstance()Lcom/android/server/FgThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/FgThread;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    return-object v0
.end method

.method public static blacklist getHandler()Landroid/os/Handler;
    .registers 1

    .line 63
    invoke-static {}, Lcom/android/server/FgThread$NoPreloadHolder;->-$$Nest$sfgetsInstance()Lcom/android/server/FgThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/FgThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
