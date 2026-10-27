.class public abstract Landroid/hardware/gnss/IAGnss$Stub;
.super Landroid/os/Binder;
.source "IAGnss.java"

# interfaces
.implements Landroid/hardware/gnss/IAGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dataConnClosed:I = 0x2

.field static final blacklist TRANSACTION_dataConnFailed:I = 0x3

.field static final blacklist TRANSACTION_dataConnOpen:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setServer:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub;->markVintfStability()V

    .line 60
    sget-object v0, Landroid/hardware/gnss/IAGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IAGnss$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IAGnss;
    .registers 3

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IAGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/gnss/IAGnss;

    if-eqz v1, :cond_13

    .line 73
    check-cast v0, Landroid/hardware/gnss/IAGnss;

    return-object v0

    .line 75
    :cond_13
    new-instance v0, Landroid/hardware/gnss/IAGnss$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/gnss/IAGnss$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 84
    sparse-switch p0, :sswitch_data_1a

    .line 116
    const/4 p0, 0x0

    return-object p0

    .line 108
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 112
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 104
    :sswitch_b
    const-string p0, "dataConnOpen"

    return-object p0

    .line 100
    :sswitch_e
    const-string p0, "setServer"

    return-object p0

    .line 96
    :sswitch_11
    const-string p0, "dataConnFailed"

    return-object p0

    .line 92
    :sswitch_14
    const-string p0, "dataConnClosed"

    return-object p0

    .line 88
    :sswitch_17
    const-string p0, "setCallback"

    return-object p0

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_14
        0x3 -> :sswitch_11
        0x4 -> :sswitch_e
        0x5 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 79
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 355
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 123
    invoke-static {p1}, Landroid/hardware/gnss/IAGnss$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    sget-object v0, Landroid/hardware/gnss/IAGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 128
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v2

    .line 135
    :cond_16
    if-ne p1, v1, :cond_23

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v2

    .line 140
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v2

    .line 145
    :cond_33
    packed-switch p1, :pswitch_data_88

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 184
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v0, v1, p1, p4}, Landroid/hardware/gnss/IAGnss$Stub;->dataConnOpen(JLjava/lang/String;I)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_87

    .line 171
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/gnss/IAGnss$Stub;->setServer(ILjava/lang/String;I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_87

    .line 164
    :pswitch_67
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub;->dataConnFailed()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_87

    .line 158
    :pswitch_6e
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub;->dataConnClosed()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_87

    .line 150
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/gnss/IAGnssCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IAGnssCallback;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IAGnss$Stub;->setCallback(Landroid/hardware/gnss/IAGnssCallback;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    nop

    .line 199
    :goto_87
    return v2

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6e
        :pswitch_67
        :pswitch_51
        :pswitch_3b
    .end packed-switch
.end method
