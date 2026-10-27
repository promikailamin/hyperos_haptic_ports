.class public interface abstract Lcom/xiaomi/mirror/IMirrorStateListener;
.super Ljava/lang/Object;
.source "IMirrorStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorStateListener$Stub;,
        Lcom/xiaomi/mirror/IMirrorStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.IMirrorStateListener"


# virtual methods
.method public abstract blacklist onDelegateStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onMouseShareModeStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
