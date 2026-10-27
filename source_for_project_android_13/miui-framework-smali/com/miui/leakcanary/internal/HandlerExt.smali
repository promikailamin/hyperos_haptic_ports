.class public Lcom/miui/leakcanary/internal/HandlerExt;
.super Ljava/lang/Object;
.source "HandlerExt.java"


# static fields
.field private static final blacklist mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/leakcanary/internal/HandlerExt;->mainHandler:Landroid/os/Handler;

    .line 12
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMainHandler()Landroid/os/Handler;
    .registers 1

    .line 15
    sget-object v0, Lcom/miui/leakcanary/internal/HandlerExt;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static blacklist runInMainThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "action"    # Ljava/lang/Runnable;

    .line 19
    sget-object v0, Lcom/miui/leakcanary/internal/HandlerExt;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 20
    return-void
.end method
