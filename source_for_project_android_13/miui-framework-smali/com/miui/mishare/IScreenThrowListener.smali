.class public interface abstract Lcom/miui/mishare/IScreenThrowListener;
.super Ljava/lang/Object;
.source "IScreenThrowListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IScreenThrowListener$Stub;,
        Lcom/miui/mishare/IScreenThrowListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.mishare.IScreenThrowListener"


# virtual methods
.method public abstract blacklist onConnectFail()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onConnectSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
