.class public interface abstract Landroid/companion/datatransfer/continuity/IRemoteTaskListener;
.super Ljava/lang/Object;
.source "IRemoteTaskListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/datatransfer/continuity/IRemoteTaskListener$Stub;,
        Landroid/companion/datatransfer/continuity/IRemoteTaskListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.datatransfer.continuity.IRemoteTaskListener"


# virtual methods
.method public abstract blacklist onRemoteTasksChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/companion/datatransfer/continuity/RemoteTask;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
