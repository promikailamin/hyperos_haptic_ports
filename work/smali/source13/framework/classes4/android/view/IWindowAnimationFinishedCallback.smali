.class public interface abstract Landroid/view/IWindowAnimationFinishedCallback;
.super Ljava/lang/Object;
.source "IWindowAnimationFinishedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowAnimationFinishedCallback$Stub;,
        Landroid/view/IWindowAnimationFinishedCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowAnimationFinishedCallback"


# virtual methods
.method public abstract greylist onWindowAnimFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
