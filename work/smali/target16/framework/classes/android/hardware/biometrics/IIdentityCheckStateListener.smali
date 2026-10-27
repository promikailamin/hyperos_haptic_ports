.class public interface abstract Landroid/hardware/biometrics/IIdentityCheckStateListener;
.super Ljava/lang/Object;
.source "IIdentityCheckStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IIdentityCheckStateListener$WatchRangingState;,
        Landroid/hardware/biometrics/IIdentityCheckStateListener$Stub;,
        Landroid/hardware/biometrics/IIdentityCheckStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.biometrics.IIdentityCheckStateListener"


# virtual methods
.method public abstract blacklist onWatchRangingStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
