.class public abstract Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;
.super Landroid/os/Binder;
.source "IAdvertisingSetCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IAdvertisingSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IAdvertisingSetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IAdvertisingSetCallback"

.field static final greylist-max-o TRANSACTION_onAdvertisingDataSet:I = 0x5

.field static final greylist-max-o TRANSACTION_onAdvertisingEnabled:I = 0x4

.field static final greylist-max-o TRANSACTION_onAdvertisingParametersUpdated:I = 0x7

.field static final greylist-max-o TRANSACTION_onAdvertisingSetStarted:I = 0x1

.field static final greylist-max-o TRANSACTION_onAdvertisingSetStopped:I = 0x3

.field static final greylist-max-o TRANSACTION_onOwnAddressRead:I = 0x2

.field static final greylist-max-o TRANSACTION_onPeriodicAdvertisingDataSet:I = 0x9

.field static final greylist-max-o TRANSACTION_onPeriodicAdvertisingEnabled:I = 0xa

.field static final greylist-max-o TRANSACTION_onPeriodicAdvertisingParametersUpdated:I = 0x8

.field static final greylist-max-o TRANSACTION_onScanResponseDataSet:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/le/IAdvertisingSetCallback;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/le/IAdvertisingSetCallback;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_2e

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_5
    const-string/jumbo v0, "onPeriodicAdvertisingEnabled"

    return-object v0

    .line 115
    :pswitch_9
    const-string/jumbo v0, "onPeriodicAdvertisingDataSet"

    return-object v0

    .line 111
    :pswitch_d
    const-string/jumbo v0, "onPeriodicAdvertisingParametersUpdated"

    return-object v0

    .line 107
    :pswitch_11
    const-string/jumbo v0, "onAdvertisingParametersUpdated"

    return-object v0

    .line 103
    :pswitch_15
    const-string/jumbo v0, "onScanResponseDataSet"

    return-object v0

    .line 99
    :pswitch_19
    const-string/jumbo v0, "onAdvertisingDataSet"

    return-object v0

    .line 95
    :pswitch_1d
    const-string/jumbo v0, "onAdvertisingEnabled"

    return-object v0

    .line 91
    :pswitch_21
    const-string/jumbo v0, "onAdvertisingSetStopped"

    return-object v0

    .line 87
    :pswitch_25
    const-string/jumbo v0, "onOwnAddressRead"

    return-object v0

    .line 83
    :pswitch_29
    const-string/jumbo v0, "onAdvertisingSetStarted"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 427
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const-string v0, "android.bluetooth.le.IAdvertisingSetCallback"

    .line 135
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_d
    packed-switch p1, :pswitch_data_c6

    .line 146
    packed-switch p1, :pswitch_data_cc

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 142
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 247
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 251
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 252
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingEnabled(IZI)V

    .line 254
    goto/16 :goto_c5

    .line 237
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 240
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingDataSet(II)V

    .line 242
    goto/16 :goto_c5

    .line 227
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 230
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingParametersUpdated(II)V

    .line 232
    goto/16 :goto_c5

    .line 215
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 217
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 219
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 220
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingParametersUpdated(III)V

    .line 222
    goto :goto_c5

    .line 205
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onScanResponseDataSet(II)V

    .line 210
    goto :goto_c5

    .line 195
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 198
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingDataSet(II)V

    .line 200
    goto :goto_c5

    .line 183
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 187
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 188
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingEnabled(IZI)V

    .line 190
    goto :goto_c5

    .line 175
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingSetStopped(I)V

    .line 178
    goto :goto_c5

    .line 163
    .end local v2    # "_arg0":I
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onOwnAddressRead(IILjava/lang/String;)V

    .line 170
    goto :goto_c5

    .line 151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 156
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingSetStarted(III)V

    .line 158
    nop

    .line 261
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :goto_c5
    return v1

    :pswitch_data_c6
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_9f
        :pswitch_94
        :pswitch_81
        :pswitch_72
        :pswitch_63
        :pswitch_50
        :pswitch_40
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method
