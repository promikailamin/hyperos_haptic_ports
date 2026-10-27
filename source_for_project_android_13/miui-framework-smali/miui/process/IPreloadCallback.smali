.class public interface abstract Lmiui/process/IPreloadCallback;
.super Ljava/lang/Object;
.source "IPreloadCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/IPreloadCallback$Stub;,
        Lmiui/process/IPreloadCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.process.IPreloadCallback"


# virtual methods
.method public abstract blacklist onPreloadAppStarted(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPreloadComplete(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
