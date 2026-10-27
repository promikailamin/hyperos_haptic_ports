.class public interface abstract Landroid/companion/IOnActionResultListener;
.super Ljava/lang/Object;
.source "IOnActionResultListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/IOnActionResultListener$Stub;,
        Landroid/companion/IOnActionResultListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.IOnActionResultListener"


# virtual methods
.method public abstract blacklist onActionResult(ILandroid/companion/ActionResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
