.class public abstract Landroid/net/INetworkMonitor$Stub;
.super Landroid/os/Binder;
.source "INetworkMonitor.java"

# interfaces
.implements Landroid/net/INetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_forceReevaluation:I = 0x5

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_launchCaptivePortalApp:I = 0x2

.field static final TRANSACTION_notifyCaptivePortalAppFinished:I = 0x3

.field static final TRANSACTION_notifyDnsResponse:I = 0x7

.field static final TRANSACTION_notifyLinkPropertiesChanged:I = 0xa

.field static final TRANSACTION_notifyNetworkCapabilitiesChanged:I = 0xb

.field static final TRANSACTION_notifyNetworkConnected:I = 0x8

.field static final TRANSACTION_notifyNetworkConnectedParcel:I = 0xc

.field static final TRANSACTION_notifyNetworkDisconnected:I = 0x9

.field static final TRANSACTION_notifyPrivateDnsChanged:I = 0x6

.field static final TRANSACTION_setAcceptPartialConnectivity:I = 0x4

.field static final TRANSACTION_start:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    sget-object v0, Landroid/net/INetworkMonitor$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkMonitor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_4

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_4
    sget-object v0, Landroid/net/INetworkMonitor$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkMonitor;

    if-eqz v1, :cond_14

    .line 87
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkMonitor;

    return-object v1

    .line 89
    :cond_14
    new-instance v1, Landroid/net/INetworkMonitor$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 93
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

    .line 97
    sget-object v0, Landroid/net/INetworkMonitor$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 98
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    :cond_d
    sparse-switch p1, :sswitch_data_a0

    .line 121
    packed-switch p1, :pswitch_data_ae

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 105
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 110
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v1

    .line 116
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 197
    :pswitch_32
    sget-object v2, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    .line 198
    .local v2, "_arg0":Landroid/net/networkstack/aidl/NetworkMonitorParameters;
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkConnectedParcel(Landroid/net/networkstack/aidl/NetworkMonitorParameters;)V

    .line 199
    goto :goto_9e

    .line 190
    .end local v2    # "_arg0":Landroid/net/networkstack/aidl/NetworkMonitorParameters;
    :pswitch_3e
    sget-object v2, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 191
    .local v2, "_arg0":Landroid/net/NetworkCapabilities;
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    .line 192
    goto :goto_9e

    .line 183
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    :pswitch_4a
    sget-object v2, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 184
    .local v2, "_arg0":Landroid/net/LinkProperties;
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitor$Stub;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    .line 185
    goto :goto_9e

    .line 177
    .end local v2    # "_arg0":Landroid/net/LinkProperties;
    :pswitch_56
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkDisconnected()V

    .line 178
    goto :goto_9e

    .line 169
    :pswitch_5a
    sget-object v2, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 171
    .restart local v2    # "_arg0":Landroid/net/LinkProperties;
    sget-object v3, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkCapabilities;

    .line 172
    .local v3, "_arg1":Landroid/net/NetworkCapabilities;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 173
    goto :goto_9e

    .line 162
    .end local v2    # "_arg0":Landroid/net/LinkProperties;
    .end local v3    # "_arg1":Landroid/net/NetworkCapabilities;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitor$Stub;->notifyDnsResponse(I)V

    .line 164
    goto :goto_9e

    .line 155
    .end local v2    # "_arg0":I
    :pswitch_76
    sget-object v2, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/PrivateDnsConfigParcel;

    .line 156
    .local v2, "_arg0":Landroid/net/PrivateDnsConfigParcel;
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitor$Stub;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V

    .line 157
    goto :goto_9e

    .line 148
    .end local v2    # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitor$Stub;->forceReevaluation(I)V

    .line 150
    goto :goto_9e

    .line 142
    .end local v2    # "_arg0":I
    :pswitch_8a
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->setAcceptPartialConnectivity()V

    .line 143
    goto :goto_9e

    .line 136
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitor$Stub;->notifyCaptivePortalAppFinished(I)V

    .line 138
    goto :goto_9e

    .line 130
    .end local v2    # "_arg0":I
    :pswitch_96
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->launchCaptivePortalApp()V

    .line 131
    goto :goto_9e

    .line 125
    :pswitch_9a
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->start()V

    .line 126
    nop

    .line 206
    :goto_9e
    return v1

    nop

    :sswitch_data_a0
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_96
        :pswitch_8e
        :pswitch_8a
        :pswitch_82
        :pswitch_76
        :pswitch_6e
        :pswitch_5a
        :pswitch_56
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
    .end packed-switch
.end method
