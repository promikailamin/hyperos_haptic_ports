.class public abstract Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IOutputSurfaceConfiguration.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getImageAnalysisOutputSurface:I = 0x3

.field static final blacklist TRANSACTION_getImageCaptureOutputSurface:I = 0x2

.field static final blacklist TRANSACTION_getPostviewOutputSurface:I = 0x4

.field static final blacklist TRANSACTION_getPreviewOutputSurface:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.hardware.camera2.extension.IOutputSurfaceConfiguration"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IOutputSurfaceConfiguration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 68
    packed-switch p0, :pswitch_data_12

    .line 88
    const/4 p0, 0x0

    return-object p0

    .line 84
    :pswitch_5
    const-string p0, "getPostviewOutputSurface"

    return-object p0

    .line 80
    :pswitch_8
    const-string p0, "getImageAnalysisOutputSurface"

    return-object p0

    .line 76
    :pswitch_b
    const-string p0, "getImageCaptureOutputSurface"

    return-object p0

    .line 72
    :pswitch_e
    const-string p0, "getPreviewOutputSurface"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 235
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 95
    invoke-static {p1}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    nop

    .line 100
    const-string v0, "android.hardware.camera2.extension.IOutputSurfaceConfiguration"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_17
    packed-switch p1, :pswitch_data_4c

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 132
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->getPostviewOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    goto :goto_4b

    .line 125
    :pswitch_2a
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->getImageAnalysisOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 128
    goto :goto_4b

    .line 118
    :pswitch_35
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->getImageCaptureOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 121
    goto :goto_4b

    .line 111
    :pswitch_40
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->getPreviewOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 114
    nop

    .line 142
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
