.class public abstract Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onAcquired:I = 0x3

.field static final TRANSACTION_onAuthenticationFailed:I = 0x7

.field static final TRANSACTION_onAuthenticationSucceeded:I = 0x6

.field static final TRANSACTION_onAuthenticatorIdInvalidated:I = 0xf

.field static final TRANSACTION_onAuthenticatorIdRetrieved:I = 0xe

.field static final TRANSACTION_onChallengeGenerated:I = 0x1

.field static final TRANSACTION_onChallengeRevoked:I = 0x2

.field static final TRANSACTION_onEnrollmentProgress:I = 0x5

.field static final TRANSACTION_onEnrollmentsEnumerated:I = 0xc

.field static final TRANSACTION_onEnrollmentsRemoved:I = 0xd

.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onInteractionDetected:I = 0xb

.field static final TRANSACTION_onLockoutCleared:I = 0xa

.field static final TRANSACTION_onLockoutPermanent:I = 0x9

.field static final TRANSACTION_onLockoutTimed:I = 0x8

.field static final TRANSACTION_onSessionClosed:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->markVintfStability()V

    .line 86
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/ISessionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    if-eqz v1, :cond_14

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    return-object v1

    .line 101
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 105
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

    .line 109
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 110
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_d
    sparse-switch p1, :sswitch_data_10c

    .line 133
    packed-switch p1, :pswitch_data_11a

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 117
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 122
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v1

    .line 128
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 268
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onSessionClosed()V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto/16 :goto_10b

    .line 260
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 261
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onAuthenticatorIdInvalidated(J)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_10b

    .line 251
    .end local v2    # "_arg0":J
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 252
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onAuthenticatorIdRetrieved(J)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto/16 :goto_10b

    .line 242
    .end local v2    # "_arg0":J
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 243
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onEnrollmentsRemoved([I)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto/16 :goto_10b

    .line 233
    .end local v2    # "_arg0":[I
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 234
    .restart local v2    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onEnrollmentsEnumerated([I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto/16 :goto_10b

    .line 226
    .end local v2    # "_arg0":[I
    :pswitch_76
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onInteractionDetected()V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto/16 :goto_10b

    .line 220
    :pswitch_7e
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onLockoutCleared()V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto/16 :goto_10b

    .line 214
    :pswitch_86
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onLockoutPermanent()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto/16 :goto_10b

    .line 206
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 207
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onLockoutTimed(J)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto :goto_10b

    .line 199
    .end local v2    # "_arg0":J
    :pswitch_9c
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onAuthenticationFailed()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_10b

    .line 189
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 192
    .local v3, "_arg1":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_10b

    .line 178
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/keymaster/HardwareAuthToken;
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 181
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onEnrollmentProgress(II)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    goto :goto_10b

    .line 167
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 169
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 170
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onError(BI)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    goto :goto_10b

    .line 156
    .end local v2    # "_arg0":B
    .end local v3    # "_arg1":I
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 158
    .restart local v2    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 159
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onAcquired(BI)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    goto :goto_10b

    .line 147
    .end local v2    # "_arg0":B
    .end local v3    # "_arg1":I
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onChallengeRevoked(J)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_10b

    .line 138
    .end local v2    # "_arg0":J
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 139
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onChallengeGenerated(J)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    nop

    .line 277
    .end local v2    # "_arg0":J
    :goto_10b
    return v1

    :sswitch_data_10c
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_ef
        :pswitch_dd
        :pswitch_cb
        :pswitch_b9
        :pswitch_a3
        :pswitch_9c
        :pswitch_8e
        :pswitch_86
        :pswitch_7e
        :pswitch_76
        :pswitch_67
        :pswitch_58
        :pswitch_49
        :pswitch_3a
        :pswitch_32
    .end packed-switch
.end method
