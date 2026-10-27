.class public abstract Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;
.super Landroid/os/Binder;
.source "IDisplayColorCalibration.java"

# interfaces
.implements Lvendor/lineage/livedisplay/IDisplayColorCalibration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/lineage/livedisplay/IDisplayColorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCalibration:I = 0x3

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getMaxValue:I = 0x1

.field static final blacklist TRANSACTION_getMinValue:I = 0x2

.field static final blacklist TRANSACTION_setCalibration:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->markVintfStability()V

    .line 59
    sget-object v0, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IDisplayColorCalibration;
    .registers 3

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_4
    sget-object v0, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_13

    instance-of v1, v0, Lvendor/lineage/livedisplay/IDisplayColorCalibration;

    if-eqz v1, :cond_13

    .line 72
    check-cast v0, Lvendor/lineage/livedisplay/IDisplayColorCalibration;

    return-object v0

    .line 74
    :cond_13
    new-instance v0, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    sget-object v0, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 83
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v2

    .line 90
    :cond_16
    if-ne p1, v1, :cond_23

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v2

    .line 95
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v2

    .line 100
    :cond_33
    packed-switch p1, :pswitch_data_6c

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 126
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, p1}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->setCalibration([I)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_6a

    .line 118
    :pswitch_49
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->getCalibration()[I

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 121
    goto :goto_6a

    .line 111
    :pswitch_54
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->getMinValue()I

    move-result p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    goto :goto_6a

    .line 104
    :pswitch_5f
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IDisplayColorCalibration$Stub;->getMaxValue()I

    move-result p1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    nop

    .line 137
    :goto_6a
    return v2

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_54
        :pswitch_49
        :pswitch_3b
    .end packed-switch
.end method
