.class public abstract Landroid/net/INetworkMonitorCallbacks$Stub;
.super Landroid/os/Binder;
.source "INetworkMonitorCallbacks.java"

# interfaces
.implements Landroid/net/INetworkMonitorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitorCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_hideProvisioningNotification:I = 0x5

.field static final TRANSACTION_notifyCaptivePortalDataChanged:I = 0x9

.field static final TRANSACTION_notifyDataStallSuspected:I = 0x8

.field static final TRANSACTION_notifyNetworkTested:I = 0x2

.field static final TRANSACTION_notifyNetworkTestedWithExtras:I = 0x7

.field static final TRANSACTION_notifyPrivateDnsConfigResolved:I = 0x3

.field static final TRANSACTION_notifyProbeStatusChanged:I = 0x6

.field static final TRANSACTION_onNetworkMonitorCreated:I = 0x1

.field static final TRANSACTION_showProvisioningNotification:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkMonitorCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkMonitorCallbacks;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkMonitorCallbacks;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
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

    .line 88
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_d
    sparse-switch p1, :sswitch_data_98

    .line 112
    packed-switch p1, :pswitch_data_a6

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 101
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return v1

    .line 107
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 177
    :pswitch_32
    sget-object v2, Landroid/net/CaptivePortalData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/CaptivePortalData;

    .line 178
    .local v2, "_arg0":Landroid/net/CaptivePortalData;
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyCaptivePortalDataChanged(Landroid/net/CaptivePortalData;)V

    .line 179
    goto :goto_96

    .line 170
    .end local v2    # "_arg0":Landroid/net/CaptivePortalData;
    :pswitch_3e
    sget-object v2, Landroid/net/DataStallReportParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/DataStallReportParcelable;

    .line 171
    .local v2, "_arg0":Landroid/net/DataStallReportParcelable;
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;)V

    .line 172
    goto :goto_96

    .line 163
    .end local v2    # "_arg0":Landroid/net/DataStallReportParcelable;
    :pswitch_4a
    sget-object v2, Landroid/net/NetworkTestResultParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTestResultParcelable;

    .line 164
    .local v2, "_arg0":Landroid/net/NetworkTestResultParcelable;
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;)V

    .line 165
    goto :goto_96

    .line 154
    .end local v2    # "_arg0":Landroid/net/NetworkTestResultParcelable;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 157
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyProbeStatusChanged(II)V

    .line 158
    goto :goto_96

    .line 148
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_62
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->hideProvisioningNotification()V

    .line 149
    goto :goto_96

    .line 140
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkMonitorCallbacks$Stub;->showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    goto :goto_96

    .line 133
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_72
    sget-object v2, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/PrivateDnsConfigParcel;

    .line 134
    .local v2, "_arg0":Landroid/net/PrivateDnsConfigParcel;
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V

    .line 135
    goto :goto_96

    .line 124
    .end local v2    # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyNetworkTested(ILjava/lang/String;)V

    .line 128
    goto :goto_96

    .line 117
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;

    move-result-object v2

    .line 118
    .local v2, "_arg0":Landroid/net/INetworkMonitor;
    invoke-virtual {p0, v2}, Landroid/net/INetworkMonitorCallbacks$Stub;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V

    .line 119
    nop

    .line 186
    .end local v2    # "_arg0":Landroid/net/INetworkMonitor;
    :goto_96
    return v1

    nop

    :sswitch_data_98
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_62
        :pswitch_56
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
    .end packed-switch
.end method
