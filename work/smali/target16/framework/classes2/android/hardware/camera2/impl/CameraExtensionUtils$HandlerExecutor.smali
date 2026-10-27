.class public final Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;
.super Ljava/lang/Object;
.source "CameraExtensionUtils.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlerExecutor"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    .line 82
    goto :goto_e

    .line 80
    :catch_6
    move-exception p1

    .line 81
    const-string p1, "CameraExtensionUtils"

    const-string v0, "Handler thread unavailable, skipping message!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_e
    return-void
.end method
