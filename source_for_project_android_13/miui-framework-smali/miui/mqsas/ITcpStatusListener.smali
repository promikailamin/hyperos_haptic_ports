.class public interface abstract Lmiui/mqsas/ITcpStatusListener;
.super Ljava/lang/Object;
.source "ITcpStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/ITcpStatusListener$Stub;,
        Lmiui/mqsas/ITcpStatusListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.mqsas.ITcpStatusListener"


# virtual methods
.method public abstract blacklist onRttInfoEvent(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
