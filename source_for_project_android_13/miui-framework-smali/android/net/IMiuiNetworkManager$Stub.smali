.class public abstract Landroid/net/IMiuiNetworkManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiNetworkManager.java"

# interfaces
.implements Landroid/net/IMiuiNetworkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IMiuiNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IMiuiNetworkManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getMiuiSlmVoipUdpAddress:I = 0x5

.field static final blacklist TRANSACTION_getMiuiSlmVoipUdpPort:I = 0x6

.field static final blacklist TRANSACTION_setMiuiSlmBpfUid:I = 0x4

.field static final blacklist TRANSACTION_setMobileTrafficLimit:I = 0x3

.field static final blacklist TRANSACTION_setNetworkTrafficPolicy:I = 0x1

.field static final blacklist TRANSACTION_setRpsStatus:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.net.IMiuiNetworkManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IMiuiNetworkManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/IMiuiNetworkManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "android.net.IMiuiNetworkManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IMiuiNetworkManager;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/net/IMiuiNetworkManager;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Landroid/net/IMiuiNetworkManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IMiuiNetworkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string v0, "android.net.IMiuiNetworkManager"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_d
    packed-switch p1, :pswitch_data_8e

    .line 89
    packed-switch p1, :pswitch_data_94

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 85
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 146
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2}, Landroid/net/IMiuiNetworkManager$Stub;->getMiuiSlmVoipUdpPort(I)I

    move-result v3

    .line 149
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    goto :goto_8c

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Landroid/net/IMiuiNetworkManager$Stub;->getMiuiSlmVoipUdpAddress(I)J

    move-result-wide v3

    .line 139
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    goto :goto_8c

    .line 126
    .end local v2    # "_arg0":I
    .end local v3    # "_result":J
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/net/IMiuiNetworkManager$Stub;->setMiuiSlmBpfUid(I)Z

    move-result v3

    .line 129
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    goto :goto_8c

    .line 114
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 116
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 117
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IMiuiNetworkManager$Stub;->setMobileTrafficLimit(ZJ)I

    move-result v5

    .line 119
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    goto :goto_8c

    .line 104
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":J
    .end local v5    # "_result":I
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 105
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2}, Landroid/net/IMiuiNetworkManager$Stub;->setRpsStatus(Z)Z

    move-result v3

    .line 107
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    goto :goto_8c

    .line 94
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, v2}, Landroid/net/IMiuiNetworkManager$Stub;->setNetworkTrafficPolicy(I)Z

    move-result v3

    .line 97
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 99
    nop

    .line 158
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :goto_8c
    return v1

    nop

    :pswitch_data_8e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_68
        :pswitch_52
        :pswitch_40
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
