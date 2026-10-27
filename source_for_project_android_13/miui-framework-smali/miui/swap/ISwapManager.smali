.class public interface abstract Lmiui/swap/ISwapManager;
.super Ljava/lang/Object;
.source "ISwapManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/swap/ISwapManager$Stub;,
        Lmiui/swap/ISwapManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.swap.ISwapManager"


# virtual methods
.method public abstract blacklist swapControl()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
