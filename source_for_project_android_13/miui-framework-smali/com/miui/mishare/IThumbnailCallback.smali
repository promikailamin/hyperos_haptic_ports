.class public interface abstract Lcom/miui/mishare/IThumbnailCallback;
.super Ljava/lang/Object;
.source "IThumbnailCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IThumbnailCallback$Stub;,
        Lcom/miui/mishare/IThumbnailCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.mishare.IThumbnailCallback"


# virtual methods
.method public abstract blacklist onThumbnail([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
