.class public interface abstract Landroid/companion/IOnTransportEventListener;
.super Ljava/lang/Object;
.source "IOnTransportEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/IOnTransportEventListener$Stub;,
        Landroid/companion/IOnTransportEventListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.IOnTransportEventListener"


# virtual methods
.method public abstract blacklist onTransportEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
