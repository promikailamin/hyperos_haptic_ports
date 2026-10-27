.class public abstract Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;
.super Landroid/os/Binder;
.source "ICameraExtensionsProxyService.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_advancedExtensionsSupported:I = 0x3

.field static final blacklist TRANSACTION_initializeAdvancedExtension:I = 0x8

.field static final blacklist TRANSACTION_initializeImageExtension:I = 0x7

.field static final blacklist TRANSACTION_initializePreviewExtension:I = 0x6

.field static final blacklist TRANSACTION_initializeSession:I = 0x4

.field static final blacklist TRANSACTION_registerClient:I = 0x1

.field static final blacklist TRANSACTION_releaseSession:I = 0x5

.field static final blacklist TRANSACTION_unregisterClient:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    .registers 3

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_4
    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_13

    .line 70
    check-cast v0, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    return-object v0

    .line 72
    :cond_13
    new-instance v0, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 81
    packed-switch p0, :pswitch_data_1e

    .line 117
    const/4 p0, 0x0

    return-object p0

    .line 113
    :pswitch_5
    const-string p0, "initializeAdvancedExtension"

    return-object p0

    .line 109
    :pswitch_8
    const-string p0, "initializeImageExtension"

    return-object p0

    .line 105
    :pswitch_b
    const-string p0, "initializePreviewExtension"

    return-object p0

    .line 101
    :pswitch_e
    const-string p0, "releaseSession"

    return-object p0

    .line 97
    :pswitch_11
    const-string p0, "initializeSession"

    return-object p0

    .line 93
    :pswitch_14
    const-string p0, "advancedExtensionsSupported"

    return-object p0

    .line 89
    :pswitch_17
    const-string p0, "unregisterClient"

    return-object p0

    .line 85
    :pswitch_1a
    const-string p0, "registerClient"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 376
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 124
    invoke-static {p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 128
    nop

    .line 129
    const-string v0, "android.hardware.camera2.extension.ICameraExtensionsProxyService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v1

    .line 136
    :cond_17
    packed-switch p1, :pswitch_data_9a

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 202
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object p1

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 207
    goto :goto_99

    .line 192
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-result-object p1

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 197
    goto :goto_99

    .line 182
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object p1

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 187
    goto :goto_99

    .line 175
    :pswitch_55
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->releaseSession()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_99

    .line 167
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_99

    .line 159
    :pswitch_6e
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->advancedExtensionsSupported()Z

    move-result p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 162
    goto :goto_99

    .line 151
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->unregisterClient(Landroid/os/IBinder;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_99

    .line 141
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->registerClient(Landroid/os/IBinder;)Z

    move-result p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    nop

    .line 214
    :goto_99
    return v1

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_87
        :pswitch_79
        :pswitch_6e
        :pswitch_5c
        :pswitch_55
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
