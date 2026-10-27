.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mCallback:Landroid/media/projection/IMediaProjectionCallback;


# direct methods
.method public constructor <init>(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 2

    .line 1752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1753
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1759
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-interface {p0}, Landroid/media/projection/IMediaProjectionCallback;->onStop()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 1761
    const-string v0, "MediaProjectionManagerService"

    const-string v1, "Failed to notify media projection has stopped"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
