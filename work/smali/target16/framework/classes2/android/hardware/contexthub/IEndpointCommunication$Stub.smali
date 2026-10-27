.class public abstract Landroid/hardware/contexthub/IEndpointCommunication$Stub;
.super Landroid/os/Binder;
.source "IEndpointCommunication.java"

# interfaces
.implements Landroid/hardware/contexthub/IEndpointCommunication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IEndpointCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IEndpointCommunication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_closeEndpointSession:I = 0x7

.field static final blacklist TRANSACTION_endpointSessionOpenComplete:I = 0x8

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_openEndpointSession:I = 0x4

.field static final blacklist TRANSACTION_registerEndpoint:I = 0x1

.field static final blacklist TRANSACTION_requestSessionIdRange:I = 0x3

.field static final blacklist TRANSACTION_sendMessageDeliveryStatusToEndpoint:I = 0x6

.field static final blacklist TRANSACTION_sendMessageToEndpoint:I = 0x5

.field static final blacklist TRANSACTION_unregister:I = 0x9

.field static final blacklist TRANSACTION_unregisterEndpoint:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->markVintfStability()V

    .line 72
    sget-object v0, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IEndpointCommunication;
    .registers 3

    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_4
    sget-object v0, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/contexthub/IEndpointCommunication;

    if-eqz v1, :cond_13

    .line 85
    check-cast v0, Landroid/hardware/contexthub/IEndpointCommunication;

    return-object v0

    .line 87
    :cond_13
    new-instance v0, Landroid/hardware/contexthub/IEndpointCommunication$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/contexthub/IEndpointCommunication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 91
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    sget-object v0, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 96
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v2

    .line 103
    :cond_16
    if-ne p1, v1, :cond_23

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p0}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v2

    .line 108
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p0}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v2

    .line 113
    :cond_33
    packed-switch p1, :pswitch_data_f0

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 202
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->unregister()V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto/16 :goto_ee

    .line 194
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->endpointSessionOpenComplete(I)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto/16 :goto_ee

    .line 183
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1, p4}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->closeEndpointSession(IB)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto/16 :goto_ee

    .line 172
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 174
    sget-object p4, Landroid/hardware/contexthub/MessageDeliveryStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/contexthub/MessageDeliveryStatus;

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, p1, p4}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->sendMessageDeliveryStatusToEndpoint(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_ee

    .line 161
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 163
    sget-object p4, Landroid/hardware/contexthub/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/contexthub/Message;

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, p1, p4}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->sendMessageToEndpoint(ILandroid/hardware/contexthub/Message;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_ee

    .line 146
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 148
    sget-object p4, Landroid/hardware/contexthub/EndpointId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/contexthub/EndpointId;

    .line 150
    sget-object v0, Landroid/hardware/contexthub/EndpointId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contexthub/EndpointId;

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, p1, p4, v0, v1}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->openEndpointSession(ILandroid/hardware/contexthub/EndpointId;Landroid/hardware/contexthub/EndpointId;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    goto :goto_ee

    .line 136
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->requestSessionIdRange(I)[I

    move-result-object p1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/4 p2, 0x2

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p3, p1, v2, p2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 141
    goto :goto_ee

    .line 127
    :pswitch_ca
    sget-object p1, Landroid/hardware/contexthub/EndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/contexthub/EndpointInfo;

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->unregisterEndpoint(Landroid/hardware/contexthub/EndpointInfo;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_ee

    .line 118
    :pswitch_dc
    sget-object p1, Landroid/hardware/contexthub/EndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/contexthub/EndpointInfo;

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/IEndpointCommunication$Stub;->registerEndpoint(Landroid/hardware/contexthub/EndpointInfo;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    nop

    .line 211
    :goto_ee
    return v2

    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_dc
        :pswitch_ca
        :pswitch_b3
        :pswitch_91
        :pswitch_7b
        :pswitch_65
        :pswitch_52
        :pswitch_43
        :pswitch_3b
    .end packed-switch
.end method
