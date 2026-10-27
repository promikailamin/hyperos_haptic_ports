.class public interface abstract Lmiui/dfc/IDupCompressCallback;
.super Ljava/lang/Object;
.source "IDupCompressCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/dfc/IDupCompressCallback$Stub;,
        Lmiui/dfc/IDupCompressCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.dfc.IDupCompressCallback"


# virtual methods
.method public abstract blacklist onFinish(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
