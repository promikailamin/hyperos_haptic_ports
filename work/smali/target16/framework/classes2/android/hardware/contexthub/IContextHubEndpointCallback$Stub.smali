.class public abstract Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;
.super Landroid/os/Binder;
.source "IContextHubEndpointCallback.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHubEndpointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHubEndpointCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onMessageReceived:I = 0x4

.field static final blacklist TRANSACTION_onSessionClosed:I = 0x2

.field static final blacklist TRANSACTION_onSessionOpenComplete:I = 0x3

.field static final blacklist TRANSACTION_onSessionOpenRequest:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.hardware.contexthub.IContextHubEndpointCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpointCallback;
    .registers 3

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_4
    const-string v0, "android.hardware.contexthub.IContextHubEndpointCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/contexthub/IContextHubEndpointCallback;

    if-eqz v1, :cond_13

    .line 80
    check-cast v0, Landroid/hardware/contexthub/IContextHubEndpointCallback;

    return-object v0

    .line 82
    :cond_13
    new-instance v0, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 91
    packed-switch p0, :pswitch_data_12

    .line 111
    const/4 p0, 0x0

    return-object p0

    .line 107
    :pswitch_5
    const-string p0, "onMessageReceived"

    return-object p0

    .line 103
    :pswitch_8
    const-string p0, "onSessionOpenComplete"

    return-object p0

    .line 99
    :pswitch_b
    const-string p0, "onSessionClosed"

    return-object p0

    .line 95
    :pswitch_e
    const-string p0, "onSessionOpenRequest"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 281
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 118
    invoke-static {p1}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 122
    nop

    .line 123
    const-string v0, "android.hardware.contexthub.IContextHubEndpointCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 130
    :cond_17
    packed-switch p1, :pswitch_data_64

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 165
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 167
    sget-object p3, Landroid/hardware/contexthub/HubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/contexthub/HubMessage;

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1, p3}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V

    .line 170
    goto :goto_63

    .line 157
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->onSessionOpenComplete(I)V

    .line 160
    goto :goto_63

    .line 147
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, p1, p3}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->onSessionClosed(II)V

    .line 152
    goto :goto_63

    .line 135
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 137
    sget-object p3, Landroid/hardware/contexthub/HubEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 142
    nop

    .line 177
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_3d
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
