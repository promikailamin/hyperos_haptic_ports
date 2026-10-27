.class public interface abstract Lcom/lguplus/IMiuiFiveGServiceStateCallback;
.super Ljava/lang/Object;
.source "IMiuiFiveGServiceStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;,
        Lcom/lguplus/IMiuiFiveGServiceStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.lguplus.IMiuiFiveGServiceStateCallback"


# virtual methods
.method public abstract blacklist on5GAvailable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist on5GBearerAdded(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist on5GBearerDeleted(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist on5GUnavailable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
