.class public interface abstract Landroid/media/projection/IAppContentProjectionSession;
.super Ljava/lang/Object;
.source "IAppContentProjectionSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IAppContentProjectionSession$Stub;,
        Landroid/media/projection/IAppContentProjectionSession$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.projection.IAppContentProjectionSession"


# virtual methods
.method public abstract blacklist notifySessionStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
