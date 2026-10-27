.class public interface abstract Lmiui/swap/ISwap;
.super Ljava/lang/Object;
.source "ISwap.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/swap/ISwap$Stub;,
        Lmiui/swap/ISwap$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.swap.ISwap"


# virtual methods
.method public abstract blacklist SWAP_isSupport()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist SWAP_trigger()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
