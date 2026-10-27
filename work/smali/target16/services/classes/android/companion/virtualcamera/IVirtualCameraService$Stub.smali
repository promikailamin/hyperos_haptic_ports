.class public abstract Landroid/companion/virtualcamera/IVirtualCameraService$Stub;
.super Landroid/os/Binder;
.source "IVirtualCameraService.java"

# interfaces
.implements Landroid/companion/virtualcamera/IVirtualCameraService;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/companion/virtualcamera/IVirtualCameraService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_4
    const-string v0, "android.companion.virtualcamera.IVirtualCameraService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 66
    instance-of v1, v0, Landroid/companion/virtualcamera/IVirtualCameraService;

    if-eqz v1, :cond_13

    .line 67
    check-cast v0, Landroid/companion/virtualcamera/IVirtualCameraService;

    return-object v0

    .line 69
    :cond_13
    new-instance v0, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
