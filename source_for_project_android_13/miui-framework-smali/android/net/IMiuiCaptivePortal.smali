.class public interface abstract Landroid/net/IMiuiCaptivePortal;
.super Ljava/lang/Object;
.source "IMiuiCaptivePortal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IMiuiCaptivePortal$Stub;,
        Landroid/net/IMiuiCaptivePortal$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.IMiuiCaptivePortal"


# virtual methods
.method public abstract blacklist appResponse(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
