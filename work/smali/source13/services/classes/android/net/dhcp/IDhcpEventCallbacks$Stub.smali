.class public abstract Landroid/net/dhcp/IDhcpEventCallbacks$Stub;
.super Landroid/os/Binder;
.source "IDhcpEventCallbacks.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpEventCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpEventCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onLeasesChanged:I = 0x1

.field static final TRANSACTION_onNewPrefixRequest:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpEventCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/dhcp/IDhcpEventCallbacks;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/net/dhcp/IDhcpEventCallbacks;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 67
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    :cond_d
    sparse-switch p1, :sswitch_data_4a

    .line 90
    packed-switch p1, :pswitch_data_58

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 74
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v1

    .line 79
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v1

    .line 85
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v1

    .line 102
    :pswitch_32
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 103
    .local v2, "_arg0":Landroid/net/IpPrefix;
    invoke-virtual {p0, v2}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->onNewPrefixRequest(Landroid/net/IpPrefix;)V

    .line 104
    goto :goto_48

    .line 95
    .end local v2    # "_arg0":Landroid/net/IpPrefix;
    :pswitch_3e
    sget-object v2, Landroid/net/dhcp/DhcpLeaseParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 96
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/dhcp/DhcpLeaseParcelable;>;"
    invoke-virtual {p0, v2}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->onLeasesChanged(Ljava/util/List;)V

    .line 97
    nop

    .line 111
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/dhcp/DhcpLeaseParcelable;>;"
    :goto_48
    return v1

    nop

    :sswitch_data_4a
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_32
    .end packed-switch
.end method
