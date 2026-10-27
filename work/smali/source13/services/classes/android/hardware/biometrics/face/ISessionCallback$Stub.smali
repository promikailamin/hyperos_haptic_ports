.class public abstract Landroid/hardware/biometrics/face/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/face/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onAuthenticationFailed:I = 0x8

.field static final TRANSACTION_onAuthenticationFrame:I = 0x3

.field static final TRANSACTION_onAuthenticationSucceeded:I = 0x7

.field static final TRANSACTION_onAuthenticatorIdInvalidated:I = 0x12

.field static final TRANSACTION_onAuthenticatorIdRetrieved:I = 0x11

.field static final TRANSACTION_onChallengeGenerated:I = 0x1

.field static final TRANSACTION_onChallengeRevoked:I = 0x2

.field static final TRANSACTION_onEnrollmentFrame:I = 0x4

.field static final TRANSACTION_onEnrollmentProgress:I = 0x6

.field static final TRANSACTION_onEnrollmentsEnumerated:I = 0xd

.field static final TRANSACTION_onEnrollmentsRemoved:I = 0x10

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onFeatureSet:I = 0xf

.field static final TRANSACTION_onFeaturesRetrieved:I = 0xe

.field static final TRANSACTION_onInteractionDetected:I = 0xc

.field static final TRANSACTION_onLockoutCleared:I = 0xb

.field static final TRANSACTION_onLockoutPermanent:I = 0xa

.field static final TRANSACTION_onLockoutTimed:I = 0x9

.field static final TRANSACTION_onSessionClosed:I = 0x13


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->markVintfStability()V

    .line 95
    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISessionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 103
    if-nez p0, :cond_4

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/face/ISessionCallback;

    if-eqz v1, :cond_14

    .line 108
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/face/ISessionCallback;

    return-object v1

    .line 110
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 114
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

    .line 118
    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 119
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    :cond_d
    sparse-switch p1, :sswitch_data_13e

    .line 142
    packed-switch p1, :pswitch_data_14c

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 126
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 131
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return v1

    .line 137
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v1

    .line 302
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onSessionClosed()V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto/16 :goto_13d

    .line 294
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 295
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticatorIdInvalidated(J)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto/16 :goto_13d

    .line 285
    .end local v2    # "_arg0":J
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 286
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticatorIdRetrieved(J)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    goto/16 :goto_13d

    .line 276
    .end local v2    # "_arg0":J
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 277
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentsRemoved([I)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    goto/16 :goto_13d

    .line 267
    .end local v2    # "_arg0":[I
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 268
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onFeatureSet(B)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_13d

    .line 258
    .end local v2    # "_arg0":B
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 259
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onFeaturesRetrieved([B)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto/16 :goto_13d

    .line 249
    .end local v2    # "_arg0":[B
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 250
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentsEnumerated([I)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto/16 :goto_13d

    .line 242
    .end local v2    # "_arg0":[I
    :pswitch_94
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onInteractionDetected()V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_13d

    .line 236
    :pswitch_9c
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onLockoutCleared()V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto/16 :goto_13d

    .line 230
    :pswitch_a4
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onLockoutPermanent()V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto/16 :goto_13d

    .line 222
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 223
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onLockoutTimed(J)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    goto/16 :goto_13d

    .line 215
    .end local v2    # "_arg0":J
    :pswitch_bb
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticationFailed()V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto/16 :goto_13d

    .line 205
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 208
    .local v3, "_arg1":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_13d

    .line 194
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/keymaster/HardwareAuthToken;
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 197
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentProgress(II)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_13d

    .line 183
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 185
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onError(BI)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_13d

    .line 174
    .end local v2    # "_arg0":B
    .end local v3    # "_arg1":I
    :pswitch_fd
    sget-object v2, Landroid/hardware/biometrics/face/EnrollmentFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/face/EnrollmentFrame;

    .line 175
    .local v2, "_arg0":Landroid/hardware/biometrics/face/EnrollmentFrame;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_13d

    .line 165
    .end local v2    # "_arg0":Landroid/hardware/biometrics/face/EnrollmentFrame;
    :pswitch_10f
    sget-object v2, Landroid/hardware/biometrics/face/AuthenticationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 166
    .local v2, "_arg0":Landroid/hardware/biometrics/face/AuthenticationFrame;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_13d

    .line 156
    .end local v2    # "_arg0":Landroid/hardware/biometrics/face/AuthenticationFrame;
    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 157
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onChallengeRevoked(J)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_13d

    .line 147
    .end local v2    # "_arg0":J
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onChallengeGenerated(J)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    nop

    .line 311
    .end local v2    # "_arg0":J
    :goto_13d
    return v1

    :sswitch_data_13e
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_12f
        :pswitch_121
        :pswitch_10f
        :pswitch_fd
        :pswitch_eb
        :pswitch_d9
        :pswitch_c3
        :pswitch_bb
        :pswitch_ac
        :pswitch_a4
        :pswitch_9c
        :pswitch_94
        :pswitch_85
        :pswitch_76
        :pswitch_67
        :pswitch_58
        :pswitch_49
        :pswitch_3a
        :pswitch_32
    .end packed-switch
.end method
