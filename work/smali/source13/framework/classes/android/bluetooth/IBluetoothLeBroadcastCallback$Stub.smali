.class public abstract Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLeBroadcastCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeBroadcastCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeBroadcastCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBroadcastMetadataChanged:I = 0x9

.field static final blacklist TRANSACTION_onBroadcastStartFailed:I = 0x2

.field static final blacklist TRANSACTION_onBroadcastStarted:I = 0x1

.field static final blacklist TRANSACTION_onBroadcastStopFailed:I = 0x4

.field static final blacklist TRANSACTION_onBroadcastStopped:I = 0x3

.field static final blacklist TRANSACTION_onBroadcastUpdateFailed:I = 0x8

.field static final blacklist TRANSACTION_onBroadcastUpdated:I = 0x7

.field static final blacklist TRANSACTION_onPlaybackStarted:I = 0x5

.field static final blacklist TRANSACTION_onPlaybackStopped:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeBroadcastCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_2a

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 112
    :pswitch_5
    const-string/jumbo v0, "onBroadcastMetadataChanged"

    return-object v0

    .line 108
    :pswitch_9
    const-string/jumbo v0, "onBroadcastUpdateFailed"

    return-object v0

    .line 104
    :pswitch_d
    const-string/jumbo v0, "onBroadcastUpdated"

    return-object v0

    .line 100
    :pswitch_11
    const-string/jumbo v0, "onPlaybackStopped"

    return-object v0

    .line 96
    :pswitch_15
    const-string/jumbo v0, "onPlaybackStarted"

    return-object v0

    .line 92
    :pswitch_19
    const-string/jumbo v0, "onBroadcastStopFailed"

    return-object v0

    .line 88
    :pswitch_1d
    const-string/jumbo v0, "onBroadcastStopped"

    return-object v0

    .line 84
    :pswitch_21
    const-string/jumbo v0, "onBroadcastStartFailed"

    return-object v0

    .line 80
    :pswitch_25
    const-string/jumbo v0, "onBroadcastStarted"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 377
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 123
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 127
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastCallback"

    .line 128
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_d
    packed-switch p1, :pswitch_data_a2

    .line 139
    packed-switch p1, :pswitch_data_a8

    .line 229
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 135
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v1

    .line 220
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .local v2, "_arg0":I
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 223
    .local v3, "_arg1":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    .line 225
    goto/16 :goto_a0

    .line 210
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastUpdateFailed(II)V

    .line 215
    goto :goto_a0

    .line 200
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastUpdated(II)V

    .line 205
    goto :goto_a0

    .line 190
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 193
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onPlaybackStopped(II)V

    .line 195
    goto :goto_a0

    .line 180
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 183
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onPlaybackStarted(II)V

    .line 185
    goto :goto_a0

    .line 172
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStopFailed(I)V

    .line 175
    goto :goto_a0

    .line 162
    .end local v2    # "_arg0":I
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 165
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStopped(II)V

    .line 167
    goto :goto_a0

    .line 154
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStartFailed(I)V

    .line 157
    goto :goto_a0

    .line 144
    .end local v2    # "_arg0":I
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStarted(II)V

    .line 149
    nop

    .line 232
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_a0
    return v1

    nop

    :pswitch_data_a2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_91
        :pswitch_86
        :pswitch_77
        :pswitch_6c
        :pswitch_5d
        :pswitch_4e
        :pswitch_3f
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method
