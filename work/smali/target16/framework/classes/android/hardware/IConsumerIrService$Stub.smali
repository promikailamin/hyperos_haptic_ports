.class public abstract Landroid/hardware/IConsumerIrService$Stub;
.super Landroid/os/Binder;
.source "IConsumerIrService.java"

# interfaces
.implements Landroid/hardware/IConsumerIrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/IConsumerIrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IConsumerIrService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.IConsumerIrService"

.field static final greylist-max-o TRANSACTION_getCarrierFrequencies:I = 0x3

.field static final greylist-max-o TRANSACTION_hasIrEmitter:I = 0x1

.field static final greylist-max-o TRANSACTION_transmit:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    nop

    .line 49
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/IConsumerIrService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.hardware.IConsumerIrService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/IConsumerIrService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_d

    .line 43
    iput-object p1, p0, Landroid/hardware/IConsumerIrService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 44
    return-void

    .line 41
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/IConsumerIrService;
    .registers 3

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_4
    const-string v0, "android.hardware.IConsumerIrService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/IConsumerIrService;

    if-eqz v1, :cond_13

    .line 62
    check-cast v0, Landroid/hardware/IConsumerIrService;

    return-object v0

    .line 64
    :cond_13
    new-instance v0, Landroid/hardware/IConsumerIrService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/IConsumerIrService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 73
    packed-switch p0, :pswitch_data_10

    .line 89
    const/4 p0, 0x0

    return-object p0

    .line 85
    :pswitch_5
    const-string p0, "getCarrierFrequencies"

    return-object p0

    .line 81
    :pswitch_8
    const-string/jumbo p0, "transmit"

    return-object p0

    .line 77
    :pswitch_c
    const-string p0, "hasIrEmitter"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 68
    return-object p0
.end method

.method protected blacklist getCarrierFrequencies_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroid/hardware/IConsumerIrService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/IConsumerIrService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/IConsumerIrService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 223
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 227
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 96
    invoke-static {p1}, Landroid/hardware/IConsumerIrService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    nop

    .line 101
    const-string v0, "android.hardware.IConsumerIrService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_17
    packed-switch p1, :pswitch_data_4c

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 132
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/IConsumerIrService$Stub;->getCarrierFrequencies()[I

    move-result-object p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 135
    goto :goto_4b

    .line 120
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/IConsumerIrService$Stub;->transmit(Ljava/lang/String;I[I)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    goto :goto_4b

    .line 112
    :pswitch_40
    invoke-virtual {p0}, Landroid/hardware/IConsumerIrService$Stub;->hasIrEmitter()Z

    move-result p1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 115
    nop

    .line 142
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist transmit_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Landroid/hardware/IConsumerIrService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/IConsumerIrService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/IConsumerIrService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 218
    return-void
.end method
