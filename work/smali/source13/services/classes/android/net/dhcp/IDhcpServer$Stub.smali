.class public abstract Landroid/net/dhcp/IDhcpServer$Stub;
.super Landroid/os/Binder;
.source "IDhcpServer.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/IDhcpServer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_startWithCallbacks:I = 0x4

.field static final TRANSACTION_stop:I = 0x3

.field static final TRANSACTION_updateParams:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/dhcp/IDhcpServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/dhcp/IDhcpServer;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/net/dhcp/IDhcpServer;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 74
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_d
    sparse-switch p1, :sswitch_data_74

    .line 97
    packed-switch p1, :pswitch_data_82

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 81
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 86
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpServer$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v1

    .line 92
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpServer$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 109
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object v2

    .line 111
    .local v2, "_arg0":Landroid/net/INetworkStackStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/dhcp/IDhcpEventCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpEventCallbacks;

    move-result-object v3

    .line 112
    .local v3, "_arg1":Landroid/net/dhcp/IDhcpEventCallbacks;
    invoke-virtual {p0, v2, v3}, Landroid/net/dhcp/IDhcpServer$Stub;->startWithCallbacks(Landroid/net/INetworkStackStatusCallback;Landroid/net/dhcp/IDhcpEventCallbacks;)V

    .line 113
    goto :goto_72

    .line 127
    .end local v2    # "_arg0":Landroid/net/INetworkStackStatusCallback;
    .end local v3    # "_arg1":Landroid/net/dhcp/IDhcpEventCallbacks;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object v2

    .line 128
    .restart local v2    # "_arg0":Landroid/net/INetworkStackStatusCallback;
    invoke-virtual {p0, v2}, Landroid/net/dhcp/IDhcpServer$Stub;->stop(Landroid/net/INetworkStackStatusCallback;)V

    .line 129
    goto :goto_72

    .line 118
    .end local v2    # "_arg0":Landroid/net/INetworkStackStatusCallback;
    :pswitch_52
    sget-object v2, Landroid/net/dhcp/DhcpServingParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/dhcp/DhcpServingParamsParcel;

    .line 120
    .local v2, "_arg0":Landroid/net/dhcp/DhcpServingParamsParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object v3

    .line 121
    .local v3, "_arg1":Landroid/net/INetworkStackStatusCallback;
    invoke-virtual {p0, v2, v3}, Landroid/net/dhcp/IDhcpServer$Stub;->updateParams(Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/INetworkStackStatusCallback;)V

    .line 122
    goto :goto_72

    .line 102
    .end local v2    # "_arg0":Landroid/net/dhcp/DhcpServingParamsParcel;
    .end local v3    # "_arg1":Landroid/net/INetworkStackStatusCallback;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object v2

    .line 103
    .local v2, "_arg0":Landroid/net/INetworkStackStatusCallback;
    invoke-virtual {p0, v2}, Landroid/net/dhcp/IDhcpServer$Stub;->start(Landroid/net/INetworkStackStatusCallback;)V

    .line 104
    nop

    .line 136
    .end local v2    # "_arg0":Landroid/net/INetworkStackStatusCallback;
    :goto_72
    return v1

    nop

    :sswitch_data_74
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_66
        :pswitch_52
        :pswitch_46
        :pswitch_32
    .end packed-switch
.end method
