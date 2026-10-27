.class public interface abstract Landroid/companion/datatransfer/continuity/IHandoffRequestCallback;
.super Ljava/lang/Object;
.source "IHandoffRequestCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/datatransfer/continuity/IHandoffRequestCallback$Stub;,
        Landroid/companion/datatransfer/continuity/IHandoffRequestCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.datatransfer.continuity.IHandoffRequestCallback"


# virtual methods
.method public abstract blacklist onHandoffRequestFinished(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
