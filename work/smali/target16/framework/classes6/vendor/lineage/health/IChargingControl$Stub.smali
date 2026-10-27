.class public abstract Lvendor/lineage/health/IChargingControl$Stub;
.super Landroid/os/Binder;
.source "IChargingControl.java"

# interfaces
.implements Lvendor/lineage/health/IChargingControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/lineage/health/IChargingControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/lineage/health/IChargingControl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getChargingDeadline:I = 0x5

.field static final blacklist TRANSACTION_getChargingEnabled:I = 0x1

.field static final blacklist TRANSACTION_getChargingLimit:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSupportedMode:I = 0x4

.field static final blacklist TRANSACTION_setChargingDeadline:I = 0x3

.field static final blacklist TRANSACTION_setChargingEnabled:I = 0x2

.field static final blacklist TRANSACTION_setChargingLimit:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    invoke-virtual {p0}, Lvendor/lineage/health/IChargingControl$Stub;->markVintfStability()V

    .line 69
    sget-object v0, Lvendor/lineage/health/IChargingControl$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/lineage/health/IChargingControl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/lineage/health/IChargingControl;
    .registers 3

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_4
    sget-object v0, Lvendor/lineage/health/IChargingControl$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_13

    instance-of v1, v0, Lvendor/lineage/health/IChargingControl;

    if-eqz v1, :cond_13

    .line 82
    check-cast v0, Lvendor/lineage/health/IChargingControl;

    return-object v0

    .line 84
    :cond_13
    new-instance v0, Lvendor/lineage/health/IChargingControl$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/lineage/health/IChargingControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 88
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    sget-object v0, Lvendor/lineage/health/IChargingControl$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 93
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v2

    .line 100
    :cond_16
    if-ne p1, v1, :cond_23

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p0}, Lvendor/lineage/health/IChargingControl$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return v2

    .line 105
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p0}, Lvendor/lineage/health/IChargingControl$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v2

    .line 110
    :cond_33
    packed-switch p1, :pswitch_data_96

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 161
    :pswitch_3b
    sget-object p1, Lvendor/lineage/health/ChargingLimitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/lineage/health/ChargingLimitInfo;

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, p1}, Lvendor/lineage/health/IChargingControl$Stub;->setChargingLimit(Lvendor/lineage/health/ChargingLimitInfo;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_95

    .line 153
    :pswitch_4d
    invoke-virtual {p0}, Lvendor/lineage/health/IChargingControl$Stub;->getChargingLimit()Lvendor/lineage/health/ChargingLimitInfo;

    move-result-object p1

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 156
    goto :goto_95

    .line 146
    :pswitch_58
    invoke-virtual {p0}, Lvendor/lineage/health/IChargingControl$Stub;->getChargingDeadline()J

    move-result-wide p1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    goto :goto_95

    .line 139
    :pswitch_63
    invoke-virtual {p0}, Lvendor/lineage/health/IChargingControl$Stub;->getSupportedMode()I

    move-result p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    goto :goto_95

    .line 131
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v0, v1}, Lvendor/lineage/health/IChargingControl$Stub;->setChargingDeadline(J)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    goto :goto_95

    .line 122
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, p1}, Lvendor/lineage/health/IChargingControl$Stub;->setChargingEnabled(Z)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_95

    .line 114
    :pswitch_8a
    invoke-virtual {p0}, Lvendor/lineage/health/IChargingControl$Stub;->getChargingEnabled()Z

    move-result p1

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    nop

    .line 172
    :goto_95
    return v2

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_7c
        :pswitch_6e
        :pswitch_63
        :pswitch_58
        :pswitch_4d
        :pswitch_3b
    .end packed-switch
.end method
