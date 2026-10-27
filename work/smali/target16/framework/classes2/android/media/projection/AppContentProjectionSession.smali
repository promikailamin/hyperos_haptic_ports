.class public Landroid/media/projection/AppContentProjectionSession;
.super Ljava/lang/Object;
.source "AppContentProjectionSession.java"


# instance fields
.field private final blacklist mSessionInternal:Landroid/media/projection/IAppContentProjectionSession;


# direct methods
.method public constructor blacklist <init>(Landroid/media/projection/IAppContentProjectionSession;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/media/projection/AppContentProjectionSession;->mSessionInternal:Landroid/media/projection/IAppContentProjectionSession;

    .line 41
    return-void
.end method


# virtual methods
.method public blacklist notifySessionStop()V
    .registers 3

    .line 49
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/AppContentProjectionSession;->mSessionInternal:Landroid/media/projection/IAppContentProjectionSession;

    invoke-interface {v0}, Landroid/media/projection/IAppContentProjectionSession;->notifySessionStop()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 52
    nop

    .line 54
    return-void

    .line 50
    :catch_7
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
