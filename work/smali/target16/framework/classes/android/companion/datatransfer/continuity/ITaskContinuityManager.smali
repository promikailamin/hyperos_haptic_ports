.class public interface abstract Landroid/companion/datatransfer/continuity/ITaskContinuityManager;
.super Ljava/lang/Object;
.source "ITaskContinuityManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/datatransfer/continuity/ITaskContinuityManager$Stub;,
        Landroid/companion/datatransfer/continuity/ITaskContinuityManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.datatransfer.continuity.ITaskContinuityManager"


# virtual methods
.method public abstract blacklist registerRemoteTaskListener(Landroid/companion/datatransfer/continuity/IRemoteTaskListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestHandoff(IILandroid/companion/datatransfer/continuity/IHandoffRequestCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterRemoteTaskListener(Landroid/companion/datatransfer/continuity/IRemoteTaskListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
