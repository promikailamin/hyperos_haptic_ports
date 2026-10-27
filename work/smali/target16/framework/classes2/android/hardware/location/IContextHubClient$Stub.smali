.class public abstract Landroid/hardware/location/IContextHubClient$Stub;
.super Landroid/os/Binder;
.source "IContextHubClient.java"

# interfaces
.implements Landroid/hardware/location/IContextHubClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubClient"

.field static final blacklist TRANSACTION_callbackFinished:I = 0x4

.field static final greylist-max-o TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_getId:I = 0x3

.field static final blacklist TRANSACTION_reliableMessageCallbackFinished:I = 0x5

.field static final greylist-max-o TRANSACTION_sendMessageToNanoApp:I = 0x1

.field static final blacklist TRANSACTION_sendReliableMessageToNanoApp:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.hardware.location.IContextHubClient"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;
    .registers 3

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_4
    const-string v0, "android.hardware.location.IContextHubClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/location/IContextHubClient;

    if-eqz v1, :cond_13

    .line 74
    check-cast v0, Landroid/hardware/location/IContextHubClient;

    return-object v0

    .line 76
    :cond_13
    new-instance v0, Landroid/hardware/location/IContextHubClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/location/IContextHubClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 85
    packed-switch p0, :pswitch_data_18

    .line 113
    const/4 p0, 0x0

    return-object p0

    .line 109
    :pswitch_5
    const-string p0, "sendReliableMessageToNanoApp"

    return-object p0

    .line 105
    :pswitch_8
    const-string p0, "reliableMessageCallbackFinished"

    return-object p0

    .line 101
    :pswitch_b
    const-string p0, "callbackFinished"

    return-object p0

    .line 97
    :pswitch_e
    const-string p0, "getId"

    return-object p0

    .line 93
    :pswitch_11
    const-string p0, "close"

    return-object p0

    .line 89
    :pswitch_14
    const-string p0, "sendMessageToNanoApp"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 330
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 120
    invoke-static {p1}, Landroid/hardware/location/IContextHubClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 124
    nop

    .line 125
    const-string v0, "android.hardware.location.IContextHubClient"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 132
    :cond_17
    packed-switch p1, :pswitch_data_80

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 177
    :pswitch_1f
    sget-object p1, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/location/NanoAppMessage;

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object p4

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, p1, p4}, Landroid/hardware/location/IContextHubClient$Stub;->sendReliableMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    goto :goto_7e

    .line 166
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, p1, p4}, Landroid/hardware/location/IContextHubClient$Stub;->reliableMessageCallbackFinished(IB)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_7e

    .line 159
    :pswitch_4f
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubClient$Stub;->callbackFinished()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_7e

    .line 152
    :pswitch_56
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubClient$Stub;->getId()I

    move-result p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    goto :goto_7e

    .line 146
    :pswitch_61
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubClient$Stub;->close()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    goto :goto_7e

    .line 137
    :pswitch_68
    sget-object p1, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/location/NanoAppMessage;

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, p1}, Landroid/hardware/location/IContextHubClient$Stub;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    nop

    .line 191
    :goto_7e
    return v1

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_68
        :pswitch_61
        :pswitch_56
        :pswitch_4f
        :pswitch_3d
        :pswitch_1f
    .end packed-switch
.end method
