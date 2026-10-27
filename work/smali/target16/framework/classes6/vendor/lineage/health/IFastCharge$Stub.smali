.class public abstract Lvendor/lineage/health/IFastCharge$Stub;
.super Landroid/os/Binder;
.source "IFastCharge.java"

# interfaces
.implements Lvendor/lineage/health/IFastCharge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/lineage/health/IFastCharge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/lineage/health/IFastCharge$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFastChargeMode:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSupportedFastChargeModes:I = 0x1

.field static final blacklist TRANSACTION_setFastChargeMode:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    invoke-virtual {p0}, Lvendor/lineage/health/IFastCharge$Stub;->markVintfStability()V

    .line 56
    sget-object v0, Lvendor/lineage/health/IFastCharge$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/lineage/health/IFastCharge$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/lineage/health/IFastCharge;
    .registers 3

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    sget-object v0, Lvendor/lineage/health/IFastCharge$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_13

    instance-of v1, v0, Lvendor/lineage/health/IFastCharge;

    if-eqz v1, :cond_13

    .line 69
    check-cast v0, Lvendor/lineage/health/IFastCharge;

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Lvendor/lineage/health/IFastCharge$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/lineage/health/IFastCharge$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    sget-object v0, Lvendor/lineage/health/IFastCharge$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 80
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v2

    .line 87
    :cond_16
    if-ne p1, v1, :cond_23

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p0}, Lvendor/lineage/health/IFastCharge$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v2

    .line 92
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p0}, Lvendor/lineage/health/IFastCharge$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v2

    .line 97
    :cond_33
    packed-switch p1, :pswitch_data_64

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 116
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, p1}, Lvendor/lineage/health/IFastCharge$Stub;->setFastChargeMode(I)I

    move-result p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    goto :goto_63

    .line 108
    :pswitch_4d
    invoke-virtual {p0}, Lvendor/lineage/health/IFastCharge$Stub;->getFastChargeMode()I

    move-result p1

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    goto :goto_63

    .line 101
    :pswitch_58
    invoke-virtual {p0}, Lvendor/lineage/health/IFastCharge$Stub;->getSupportedFastChargeModes()J

    move-result-wide p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    nop

    .line 128
    :goto_63
    return v2

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_58
        :pswitch_4d
        :pswitch_3b
    .end packed-switch
.end method
