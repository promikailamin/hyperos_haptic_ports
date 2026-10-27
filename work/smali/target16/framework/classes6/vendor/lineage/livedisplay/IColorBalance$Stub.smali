.class public abstract Lvendor/lineage/livedisplay/IColorBalance$Stub;
.super Landroid/os/Binder;
.source "IColorBalance.java"

# interfaces
.implements Lvendor/lineage/livedisplay/IColorBalance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/lineage/livedisplay/IColorBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/lineage/livedisplay/IColorBalance$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getColorBalance:I = 0x2

.field static final blacklist TRANSACTION_getColorBalanceRange:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_setColorBalance:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IColorBalance$Stub;->markVintfStability()V

    .line 55
    sget-object v0, Lvendor/lineage/livedisplay/IColorBalance$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/lineage/livedisplay/IColorBalance$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/lineage/livedisplay/IColorBalance;
    .registers 3

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    sget-object v0, Lvendor/lineage/livedisplay/IColorBalance$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_13

    instance-of v1, v0, Lvendor/lineage/livedisplay/IColorBalance;

    if-eqz v1, :cond_13

    .line 68
    check-cast v0, Lvendor/lineage/livedisplay/IColorBalance;

    return-object v0

    .line 70
    :cond_13
    new-instance v0, Lvendor/lineage/livedisplay/IColorBalance$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/lineage/livedisplay/IColorBalance$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 74
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    sget-object v0, Lvendor/lineage/livedisplay/IColorBalance$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 79
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v2

    .line 86
    :cond_16
    if-ne p1, v1, :cond_23

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IColorBalance$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return v2

    .line 91
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IColorBalance$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v2

    .line 96
    :cond_33
    packed-switch p1, :pswitch_data_60

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 115
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, p1}, Lvendor/lineage/livedisplay/IColorBalance$Stub;->setColorBalance(I)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    goto :goto_5f

    .line 107
    :pswitch_49
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IColorBalance$Stub;->getColorBalance()I

    move-result p1

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    goto :goto_5f

    .line 100
    :pswitch_54
    invoke-virtual {p0}, Lvendor/lineage/livedisplay/IColorBalance$Stub;->getColorBalanceRange()Lvendor/lineage/livedisplay/Range;

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 103
    nop

    .line 126
    :goto_5f
    return v2

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_54
        :pswitch_49
        :pswitch_3b
    .end packed-switch
.end method
