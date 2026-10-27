.class public interface abstract Lmiui/os/IMiuiInitObserver;
.super Ljava/lang/Object;
.source "IMiuiInitObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/IMiuiInitObserver$Stub;,
        Lmiui/os/IMiuiInitObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.os.IMiuiInitObserver"


# virtual methods
.method public abstract blacklist initDone(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
