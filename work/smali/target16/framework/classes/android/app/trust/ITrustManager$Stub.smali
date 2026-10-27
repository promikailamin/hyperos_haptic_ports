.class public abstract Landroid/app/trust/ITrustManager$Stub;
.super Landroid/os/Binder;
.source "ITrustManager.java"

# interfaces
.implements Landroid/app/trust/ITrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/ITrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/ITrustManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.trust.ITrustManager"

.field static final blacklist TRANSACTION_clearAllBiometricRecognized:I = 0xe

.field static final blacklist TRANSACTION_isActiveUnlockRunning:I = 0xf

.field static final greylist-max-o TRANSACTION_isDeviceLocked:I = 0xa

.field static final greylist-max-o TRANSACTION_isDeviceSecure:I = 0xb

.field static final blacklist TRANSACTION_isInSignificantPlace:I = 0x10

.field static final greylist-max-o TRANSACTION_isTrustUsuallyManaged:I = 0xc

.field static final blacklist TRANSACTION_registerDeviceLockedStateListener:I = 0x11

.field static final greylist-max-o TRANSACTION_registerTrustListener:I = 0x6

.field static final greylist-max-o TRANSACTION_reportEnabledTrustAgentsChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_reportKeyguardShowingChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_reportUnlockAttempt:I = 0x1

.field static final greylist-max-o TRANSACTION_reportUnlockLockout:I = 0x4

.field static final blacklist TRANSACTION_reportUserMayRequestUnlock:I = 0x3

.field static final blacklist TRANSACTION_reportUserRequestedUnlock:I = 0x2

.field static final greylist-max-o TRANSACTION_setDeviceLockedForUser:I = 0x9

.field static final blacklist TRANSACTION_unlockedByBiometricForUser:I = 0xd

.field static final blacklist TRANSACTION_unregisterDeviceLockedStateListener:I = 0x12

.field static final greylist-max-o TRANSACTION_unregisterTrustListener:I = 0x7


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    nop

    .line 101
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/trust/ITrustManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 102
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 91
    const-string v0, "android.app.trust.ITrustManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/trust/ITrustManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 92
    if-eqz p1, :cond_d

    .line 95
    iput-object p1, p0, Landroid/app/trust/ITrustManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 96
    return-void

    .line 93
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;
    .registers 3

    .line 109
    if-nez p0, :cond_4

    .line 110
    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_4
    const-string v0, "android.app.trust.ITrustManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/trust/ITrustManager;

    if-eqz v1, :cond_13

    .line 114
    check-cast v0, Landroid/app/trust/ITrustManager;

    return-object v0

    .line 116
    :cond_13
    new-instance v0, Landroid/app/trust/ITrustManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/trust/ITrustManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 125
    packed-switch p0, :pswitch_data_48

    .line 201
    const/4 p0, 0x0

    return-object p0

    .line 197
    :pswitch_5
    const-string/jumbo p0, "unregisterDeviceLockedStateListener"

    return-object p0

    .line 193
    :pswitch_9
    const-string/jumbo p0, "registerDeviceLockedStateListener"

    return-object p0

    .line 189
    :pswitch_d
    const-string p0, "isInSignificantPlace"

    return-object p0

    .line 185
    :pswitch_10
    const-string p0, "isActiveUnlockRunning"

    return-object p0

    .line 181
    :pswitch_13
    const-string p0, "clearAllBiometricRecognized"

    return-object p0

    .line 177
    :pswitch_16
    const-string/jumbo p0, "unlockedByBiometricForUser"

    return-object p0

    .line 173
    :pswitch_1a
    const-string/jumbo p0, "isTrustUsuallyManaged"

    return-object p0

    .line 169
    :pswitch_1e
    const-string p0, "isDeviceSecure"

    return-object p0

    .line 165
    :pswitch_21
    const-string p0, "isDeviceLocked"

    return-object p0

    .line 161
    :pswitch_24
    const-string/jumbo p0, "setDeviceLockedForUser"

    return-object p0

    .line 157
    :pswitch_28
    const-string/jumbo p0, "reportKeyguardShowingChanged"

    return-object p0

    .line 153
    :pswitch_2c
    const-string/jumbo p0, "unregisterTrustListener"

    return-object p0

    .line 149
    :pswitch_30
    const-string/jumbo p0, "registerTrustListener"

    return-object p0

    .line 145
    :pswitch_34
    const-string/jumbo p0, "reportEnabledTrustAgentsChanged"

    return-object p0

    .line 141
    :pswitch_38
    const-string/jumbo p0, "reportUnlockLockout"

    return-object p0

    .line 137
    :pswitch_3c
    const-string/jumbo p0, "reportUserMayRequestUnlock"

    return-object p0

    .line 133
    :pswitch_40
    const-string/jumbo p0, "reportUserRequestedUnlock"

    return-object p0

    .line 129
    :pswitch_44
    const-string/jumbo p0, "reportUnlockAttempt"

    return-object p0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 120
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 755
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 208
    invoke-static {p1}, Landroid/app/trust/ITrustManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist isInSignificantPlace_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Landroid/app/trust/ITrustManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 741
    return-void
.end method

.method protected blacklist isTrustUsuallyManaged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 732
    iget-object v0, p0, Landroid/app/trust/ITrustManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TRUST_LISTENER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 733
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    nop

    .line 213
    const-string v0, "android.app.trust.ITrustManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 214
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 217
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    return v1

    .line 220
    :cond_17
    packed-switch p1, :pswitch_data_16a

    .line 403
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 395
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/IDeviceLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IDeviceLockedStateListener;

    move-result-object p1

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, p1}, Landroid/app/trust/ITrustManager$Stub;->unregisterDeviceLockedStateListener(Lcom/android/internal/policy/IDeviceLockedStateListener;)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    goto/16 :goto_168

    .line 384
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/IDeviceLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IDeviceLockedStateListener;

    move-result-object p1

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, p1, p4}, Landroid/app/trust/ITrustManager$Stub;->registerDeviceLockedStateListener(Lcom/android/internal/policy/IDeviceLockedStateListener;I)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    goto/16 :goto_168

    .line 376
    :pswitch_49
    invoke-virtual {p0}, Landroid/app/trust/ITrustManager$Stub;->isInSignificantPlace()Z

    move-result p1

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 379
    goto/16 :goto_168

    .line 367
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, p1}, Landroid/app/trust/ITrustManager$Stub;->isActiveUnlockRunning(I)Z

    move-result p1

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 372
    goto/16 :goto_168

    .line 356
    :pswitch_68
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricSourceType;

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, p1, p4}, Landroid/app/trust/ITrustManager$Stub;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    goto/16 :goto_168

    .line 345
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 347
    sget-object p4, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/biometrics/BiometricSourceType;

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, p1, p4}, Landroid/app/trust/ITrustManager$Stub;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_168

    .line 335
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, p1}, Landroid/app/trust/ITrustManager$Stub;->isTrustUsuallyManaged(I)Z

    move-result p1

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 340
    goto/16 :goto_168

    .line 323
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, p1, p4}, Landroid/app/trust/ITrustManager$Stub;->isDeviceSecure(II)Z

    move-result p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 330
    goto/16 :goto_168

    .line 311
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, p1, p4}, Landroid/app/trust/ITrustManager$Stub;->isDeviceLocked(II)Z

    move-result p1

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 318
    goto/16 :goto_168

    .line 300
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, p1, p4}, Landroid/app/trust/ITrustManager$Stub;->setDeviceLockedForUser(IZ)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto/16 :goto_168

    .line 293
    :pswitch_ea
    invoke-virtual {p0}, Landroid/app/trust/ITrustManager$Stub;->reportKeyguardShowingChanged()V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto/16 :goto_168

    .line 285
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    move-result-object p1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, p1}, Landroid/app/trust/ITrustManager$Stub;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    goto :goto_168

    .line 276
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    move-result-object p1

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, p1}, Landroid/app/trust/ITrustManager$Stub;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    goto :goto_168

    .line 267
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, p1}, Landroid/app/trust/ITrustManager$Stub;->reportEnabledTrustAgentsChanged(I)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto :goto_168

    .line 256
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, p1, p4}, Landroid/app/trust/ITrustManager$Stub;->reportUnlockLockout(II)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto :goto_168

    .line 247
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, p1}, Landroid/app/trust/ITrustManager$Stub;->reportUserMayRequestUnlock(I)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    goto :goto_168

    .line 236
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1, p4}, Landroid/app/trust/ITrustManager$Stub;->reportUserRequestedUnlock(IZ)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto :goto_168

    .line 225
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, p1, p4}, Landroid/app/trust/ITrustManager$Stub;->reportUnlockAttempt(ZI)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    nop

    .line 406
    :goto_168
    return v1

    nop

    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_156
        :pswitch_144
        :pswitch_136
        :pswitch_124
        :pswitch_116
        :pswitch_104
        :pswitch_f2
        :pswitch_ea
        :pswitch_d7
        :pswitch_c0
        :pswitch_a9
        :pswitch_96
        :pswitch_7f
        :pswitch_68
        :pswitch_55
        :pswitch_49
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist registerDeviceLockedStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Landroid/app/trust/ITrustManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SUBSCRIBE_TO_KEYGUARD_LOCKED_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 746
    return-void
.end method

.method protected blacklist unregisterDeviceLockedStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 750
    iget-object v0, p0, Landroid/app/trust/ITrustManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SUBSCRIBE_TO_KEYGUARD_LOCKED_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 751
    return-void
.end method
