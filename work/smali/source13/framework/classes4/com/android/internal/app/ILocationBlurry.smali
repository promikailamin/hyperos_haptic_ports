.class public interface abstract Lcom/android/internal/app/ILocationBlurry;
.super Ljava/lang/Object;
.source "ILocationBlurry.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ILocationBlurry$Stub;,
        Lcom/android/internal/app/ILocationBlurry$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.ILocationBlurry"


# virtual methods
.method public abstract blacklist pushBlurryCellLocation(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendSvStatusData(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
