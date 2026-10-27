.class public Landroid/app/IWindowSecureChangeListener$Default;
.super Ljava/lang/Object;
.source "IWindowSecureChangeListener.java"

# interfaces
.implements Landroid/app/IWindowSecureChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWindowSecureChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSecureChangeCallback(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "windowName"    # Ljava/lang/String;
    .param p2, "hasSecure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
