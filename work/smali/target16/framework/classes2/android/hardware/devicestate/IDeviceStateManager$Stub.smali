.class public abstract Landroid/hardware/devicestate/IDeviceStateManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceStateManager.java"

# interfaces
.implements Landroid/hardware/devicestate/IDeviceStateManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/IDeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelBaseStateOverride:I = 0x6

.field static final blacklist TRANSACTION_cancelStateRequest:I = 0x4

.field static final blacklist TRANSACTION_getDeviceStateInfo:I = 0x1

.field static final blacklist TRANSACTION_onStateRequestOverlayDismissed:I = 0x7

.field static final blacklist TRANSACTION_registerCallback:I = 0x2

.field static final blacklist TRANSACTION_requestBaseStateOverride:I = 0x5

.field static final blacklist TRANSACTION_requestState:I = 0x3


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    nop

    .line 146
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 147
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 135
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 136
    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 137
    if-eqz p1, :cond_d

    .line 140
    iput-object p1, p0, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 141
    return-void

    .line 138
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManager;
    .registers 3

    .line 154
    if-nez p0, :cond_4

    .line 155
    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_4
    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/devicestate/IDeviceStateManager;

    if-eqz v1, :cond_13

    .line 159
    check-cast v0, Landroid/hardware/devicestate/IDeviceStateManager;

    return-object v0

    .line 161
    :cond_13
    new-instance v0, Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 170
    packed-switch p0, :pswitch_data_1a

    .line 202
    const/4 p0, 0x0

    return-object p0

    .line 198
    :pswitch_5
    const-string p0, "onStateRequestOverlayDismissed"

    return-object p0

    .line 194
    :pswitch_8
    const-string p0, "cancelBaseStateOverride"

    return-object p0

    .line 190
    :pswitch_b
    const-string p0, "requestBaseStateOverride"

    return-object p0

    .line 186
    :pswitch_e
    const-string p0, "cancelStateRequest"

    return-object p0

    .line 182
    :pswitch_11
    const-string p0, "requestState"

    return-object p0

    .line 178
    :pswitch_14
    const-string p0, "registerCallback"

    return-object p0

    .line 174
    :pswitch_17
    const-string p0, "getDeviceStateInfo"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 165
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 521
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 209
    invoke-static {p1}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onStateRequestOverlayDismissed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DEVICE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 517
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    nop

    .line 214
    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 215
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 218
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    return v1

    .line 221
    :cond_17
    packed-switch p1, :pswitch_data_8a

    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 281
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->onStateRequestOverlayDismissed(Z)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto :goto_88

    .line 274
    :pswitch_2d
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->cancelBaseStateOverride()V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto :goto_88

    .line 262
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->requestBaseStateOverride(Landroid/os/IBinder;II)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto :goto_88

    .line 255
    :pswitch_4a
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->cancelStateRequest()V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto :goto_88

    .line 243
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->requestState(Landroid/os/IBinder;II)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    goto :goto_88

    .line 233
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    move-result-object p1

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p1

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 238
    goto :goto_88

    .line 225
    :pswitch_7d
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p1

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 228
    nop

    .line 292
    :goto_88
    return v1

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_67
        :pswitch_51
        :pswitch_4a
        :pswitch_34
        :pswitch_2d
        :pswitch_1f
    .end packed-switch
.end method
