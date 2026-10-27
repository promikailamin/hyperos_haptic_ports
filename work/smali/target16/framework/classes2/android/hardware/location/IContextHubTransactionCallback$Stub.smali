.class public abstract Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.super Landroid/os/Binder;
.source "IContextHubTransactionCallback.java"

# interfaces
.implements Landroid/hardware/location/IContextHubTransactionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubTransactionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubTransactionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubTransactionCallback"

.field static final greylist-max-o TRANSACTION_onQueryResponse:I = 0x1

.field static final greylist-max-o TRANSACTION_onTransactionComplete:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.hardware.location.IContextHubTransactionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 3

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    const-string v0, "android.hardware.location.IContextHubTransactionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/location/IContextHubTransactionCallback;

    if-eqz v1, :cond_13

    .line 55
    check-cast v0, Landroid/hardware/location/IContextHubTransactionCallback;

    return-object v0

    .line 57
    :cond_13
    new-instance v0, Landroid/hardware/location/IContextHubTransactionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 66
    packed-switch p0, :pswitch_data_c

    .line 78
    const/4 p0, 0x0

    return-object p0

    .line 74
    :pswitch_5
    const-string p0, "onTransactionComplete"

    return-object p0

    .line 70
    :pswitch_8
    const-string p0, "onQueryResponse"

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 85
    invoke-static {p1}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 89
    nop

    .line 90
    const-string v0, "android.hardware.location.IContextHubTransactionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 97
    :cond_17
    packed-switch p1, :pswitch_data_3c

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 112
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, p1}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->onTransactionComplete(I)V

    .line 115
    goto :goto_3b

    .line 102
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 104
    sget-object p3, Landroid/hardware/location/NanoAppState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p3

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, p1, p3}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->onQueryResponse(ILjava/util/List;)V

    .line 107
    nop

    .line 122
    :goto_3b
    return v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
