.class public interface abstract Landroid/location/ILocationPolicyListener;
.super Ljava/lang/Object;
.source "ILocationPolicyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationPolicyListener$Stub;,
        Landroid/location/ILocationPolicyListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationPolicyListener"


# virtual methods
.method public abstract blacklist onRestrictBackgroundChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUidRulesChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
