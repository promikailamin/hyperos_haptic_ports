.class public interface abstract Landroid/app/IHandoffTaskDataReceiver;
.super Ljava/lang/Object;
.source "IHandoffTaskDataReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IHandoffTaskDataReceiver$Stub;,
        Landroid/app/IHandoffTaskDataReceiver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IHandoffTaskDataReceiver"


# virtual methods
.method public abstract blacklist onHandoffTaskDataRequestFailed(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onHandoffTaskDataRequestSucceeded(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/HandoffActivityData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
