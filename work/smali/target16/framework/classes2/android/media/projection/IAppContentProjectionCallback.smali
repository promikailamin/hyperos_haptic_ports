.class public interface abstract Landroid/media/projection/IAppContentProjectionCallback;
.super Ljava/lang/Object;
.source "IAppContentProjectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IAppContentProjectionCallback$Stub;,
        Landroid/media/projection/IAppContentProjectionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.projection.IAppContentProjectionCallback"


# virtual methods
.method public abstract blacklist onContentRequest(Landroid/os/RemoteCallback;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onContentRequestCanceled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onLoopbackProjectionStarted(Landroid/media/projection/IAppContentProjectionSession;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSessionStopped()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
