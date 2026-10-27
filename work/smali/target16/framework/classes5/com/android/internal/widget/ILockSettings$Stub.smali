.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final blacklist TRANSACTION_addWeakEscrowToken:I = 0x36

.field static final greylist-max-o TRANSACTION_checkCredential:I = 0x9

.field static final greylist-max-o TRANSACTION_closeSession:I = 0x2e

.field static final greylist-max-o TRANSACTION_generateKey:I = 0x20

.field static final blacklist TRANSACTION_generateKeyWithMetadata:I = 0x21

.field static final greylist-max-o TRANSACTION_getBoolean:I = 0x4

.field static final blacklist TRANSACTION_getCredentialType:I = 0xe

.field static final greylist-max-o TRANSACTION_getHashFactor:I = 0x11

.field static final greylist-max-o TRANSACTION_getKey:I = 0x24

.field static final greylist-max-o TRANSACTION_getKeyChainSnapshot:I = 0x1f

.field static final blacklist TRANSACTION_getLockPatternSize:I = 0x3c

.field static final blacklist TRANSACTION_getLockoutEndTime:I = 0x1d

.field static final greylist-max-o TRANSACTION_getLong:I = 0x5

.field static final blacklist TRANSACTION_getPinLength:I = 0xf

.field static final greylist-max-o TRANSACTION_getRecoverySecretTypes:I = 0x2b

.field static final greylist-max-o TRANSACTION_getRecoveryStatus:I = 0x29

.field static final greylist-max-o TRANSACTION_getSeparateProfileChallengeEnabled:I = 0x13

.field static final greylist-max-o TRANSACTION_getString:I = 0x6

.field static final greylist-max-o TRANSACTION_getStrongAuthForUser:I = 0x1b

.field static final blacklist TRANSACTION_hasPendingEscrowToken:I = 0x1c

.field static final blacklist TRANSACTION_hasSecureLockScreen:I = 0x31

.field static final greylist-max-o TRANSACTION_importKey:I = 0x22

.field static final blacklist TRANSACTION_importKeyWithMetadata:I = 0x23

.field static final greylist-max-o TRANSACTION_initRecoveryServiceWithSigFile:I = 0x1e

.field static final blacklist TRANSACTION_isWeakEscrowTokenActive:I = 0x38

.field static final blacklist TRANSACTION_isWeakEscrowTokenValid:I = 0x39

.field static final greylist-max-o TRANSACTION_recoverKeyChainSnapshot:I = 0x2d

.field static final blacklist TRANSACTION_refreshStoredPinLength:I = 0x10

.field static final greylist-max-o TRANSACTION_registerStrongAuthTracker:I = 0x14

.field static final blacklist TRANSACTION_registerWeakEscrowTokenRemovedListener:I = 0x34

.field static final blacklist TRANSACTION_removeCachedUnifiedChallenge:I = 0x33

.field static final blacklist TRANSACTION_removeGatekeeperPasswordHandle:I = 0xd

.field static final greylist-max-o TRANSACTION_removeKey:I = 0x25

.field static final blacklist TRANSACTION_removeWeakEscrowToken:I = 0x37

.field static final blacklist TRANSACTION_reportSuccessfulBiometricUnlock:I = 0x17

.field static final greylist-max-o TRANSACTION_requireStrongAuth:I = 0x16

.field static final greylist-max-o TRANSACTION_resetKeyStore:I = 0x8

.field static final blacklist TRANSACTION_scheduleNonStrongBiometricIdleTimeout:I = 0x18

.field static final greylist-max-o TRANSACTION_setBoolean:I = 0x1

.field static final greylist-max-o TRANSACTION_setLockCredential:I = 0x7

.field static final greylist-max-o TRANSACTION_setLong:I = 0x2

.field static final greylist-max-o TRANSACTION_setRecoverySecretTypes:I = 0x2a

.field static final greylist-max-o TRANSACTION_setRecoveryStatus:I = 0x28

.field static final greylist-max-o TRANSACTION_setSeparateProfileChallengeEnabled:I = 0x12

.field static final greylist-max-o TRANSACTION_setServerParams:I = 0x27

.field static final greylist-max-o TRANSACTION_setSnapshotCreatedPendingIntent:I = 0x26

.field static final greylist-max-o TRANSACTION_setString:I = 0x3

.field static final greylist-max-o TRANSACTION_startRecoverySessionWithCertPath:I = 0x2c

.field static final blacklist TRANSACTION_startRemoteLockscreenValidation:I = 0x2f

.field static final greylist-max-o TRANSACTION_systemReady:I = 0x19

.field static final blacklist TRANSACTION_tryUnlockWithCachedUnifiedChallenge:I = 0x32

.field static final blacklist TRANSACTION_unlockUserKeyIfUnsecured:I = 0x3a

.field static final greylist-max-o TRANSACTION_unregisterStrongAuthTracker:I = 0x15

.field static final blacklist TRANSACTION_unregisterWeakEscrowTokenRemovedListener:I = 0x35

.field static final greylist-max-o TRANSACTION_userPresent:I = 0x1a

.field static final blacklist TRANSACTION_validateRemoteLockscreen:I = 0x30

.field static final greylist-max-o TRANSACTION_verifyCredential:I = 0xa

.field static final blacklist TRANSACTION_verifyGatekeeperPasswordHandle:I = 0xc

.field static final greylist-max-o TRANSACTION_verifyTiedProfileChallenge:I = 0xb

.field static final blacklist TRANSACTION_writeRepairModeCredential:I = 0x3b


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 249
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 250
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    .registers 3

    .line 258
    if-nez p0, :cond_4

    .line 259
    const/4 p0, 0x0

    return-object p0

    .line 261
    :cond_4
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_13

    .line 263
    check-cast v0, Lcom/android/internal/widget/ILockSettings;

    return-object v0

    .line 265
    :cond_13
    new-instance v0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 274
    packed-switch p0, :pswitch_data_dc

    .line 518
    const/4 p0, 0x0

    return-object p0

    .line 514
    :pswitch_5
    const-string p0, "getLockPatternSize"

    return-object p0

    .line 510
    :pswitch_8
    const-string/jumbo p0, "writeRepairModeCredential"

    return-object p0

    .line 506
    :pswitch_c
    const-string/jumbo p0, "unlockUserKeyIfUnsecured"

    return-object p0

    .line 502
    :pswitch_10
    const-string p0, "isWeakEscrowTokenValid"

    return-object p0

    .line 498
    :pswitch_13
    const-string p0, "isWeakEscrowTokenActive"

    return-object p0

    .line 494
    :pswitch_16
    const-string/jumbo p0, "removeWeakEscrowToken"

    return-object p0

    .line 490
    :pswitch_1a
    const-string p0, "addWeakEscrowToken"

    return-object p0

    .line 486
    :pswitch_1d
    const-string/jumbo p0, "unregisterWeakEscrowTokenRemovedListener"

    return-object p0

    .line 482
    :pswitch_21
    const-string/jumbo p0, "registerWeakEscrowTokenRemovedListener"

    return-object p0

    .line 478
    :pswitch_25
    const-string/jumbo p0, "removeCachedUnifiedChallenge"

    return-object p0

    .line 474
    :pswitch_29
    const-string/jumbo p0, "tryUnlockWithCachedUnifiedChallenge"

    return-object p0

    .line 470
    :pswitch_2d
    const-string p0, "hasSecureLockScreen"

    return-object p0

    .line 466
    :pswitch_30
    const-string/jumbo p0, "validateRemoteLockscreen"

    return-object p0

    .line 462
    :pswitch_34
    const-string/jumbo p0, "startRemoteLockscreenValidation"

    return-object p0

    .line 458
    :pswitch_38
    const-string p0, "closeSession"

    return-object p0

    .line 454
    :pswitch_3b
    const-string/jumbo p0, "recoverKeyChainSnapshot"

    return-object p0

    .line 450
    :pswitch_3f
    const-string/jumbo p0, "startRecoverySessionWithCertPath"

    return-object p0

    .line 446
    :pswitch_43
    const-string p0, "getRecoverySecretTypes"

    return-object p0

    .line 442
    :pswitch_46
    const-string/jumbo p0, "setRecoverySecretTypes"

    return-object p0

    .line 438
    :pswitch_4a
    const-string p0, "getRecoveryStatus"

    return-object p0

    .line 434
    :pswitch_4d
    const-string/jumbo p0, "setRecoveryStatus"

    return-object p0

    .line 430
    :pswitch_51
    const-string/jumbo p0, "setServerParams"

    return-object p0

    .line 426
    :pswitch_55
    const-string/jumbo p0, "setSnapshotCreatedPendingIntent"

    return-object p0

    .line 422
    :pswitch_59
    const-string/jumbo p0, "removeKey"

    return-object p0

    .line 418
    :pswitch_5d
    const-string p0, "getKey"

    return-object p0

    .line 414
    :pswitch_60
    const-string p0, "importKeyWithMetadata"

    return-object p0

    .line 410
    :pswitch_63
    const-string p0, "importKey"

    return-object p0

    .line 406
    :pswitch_66
    const-string p0, "generateKeyWithMetadata"

    return-object p0

    .line 402
    :pswitch_69
    const-string p0, "generateKey"

    return-object p0

    .line 398
    :pswitch_6c
    const-string p0, "getKeyChainSnapshot"

    return-object p0

    .line 394
    :pswitch_6f
    const-string p0, "initRecoveryServiceWithSigFile"

    return-object p0

    .line 390
    :pswitch_72
    const-string p0, "getLockoutEndTime"

    return-object p0

    .line 386
    :pswitch_75
    const-string p0, "hasPendingEscrowToken"

    return-object p0

    .line 382
    :pswitch_78
    const-string p0, "getStrongAuthForUser"

    return-object p0

    .line 378
    :pswitch_7b
    const-string/jumbo p0, "userPresent"

    return-object p0

    .line 374
    :pswitch_7f
    const-string/jumbo p0, "systemReady"

    return-object p0

    .line 370
    :pswitch_83
    const-string/jumbo p0, "scheduleNonStrongBiometricIdleTimeout"

    return-object p0

    .line 366
    :pswitch_87
    const-string/jumbo p0, "reportSuccessfulBiometricUnlock"

    return-object p0

    .line 362
    :pswitch_8b
    const-string/jumbo p0, "requireStrongAuth"

    return-object p0

    .line 358
    :pswitch_8f
    const-string/jumbo p0, "unregisterStrongAuthTracker"

    return-object p0

    .line 354
    :pswitch_93
    const-string/jumbo p0, "registerStrongAuthTracker"

    return-object p0

    .line 350
    :pswitch_97
    const-string p0, "getSeparateProfileChallengeEnabled"

    return-object p0

    .line 346
    :pswitch_9a
    const-string/jumbo p0, "setSeparateProfileChallengeEnabled"

    return-object p0

    .line 342
    :pswitch_9e
    const-string p0, "getHashFactor"

    return-object p0

    .line 338
    :pswitch_a1
    const-string/jumbo p0, "refreshStoredPinLength"

    return-object p0

    .line 334
    :pswitch_a5
    const-string p0, "getPinLength"

    return-object p0

    .line 330
    :pswitch_a8
    const-string p0, "getCredentialType"

    return-object p0

    .line 326
    :pswitch_ab
    const-string/jumbo p0, "removeGatekeeperPasswordHandle"

    return-object p0

    .line 322
    :pswitch_af
    const-string/jumbo p0, "verifyGatekeeperPasswordHandle"

    return-object p0

    .line 318
    :pswitch_b3
    const-string/jumbo p0, "verifyTiedProfileChallenge"

    return-object p0

    .line 314
    :pswitch_b7
    const-string/jumbo p0, "verifyCredential"

    return-object p0

    .line 310
    :pswitch_bb
    const-string p0, "checkCredential"

    return-object p0

    .line 306
    :pswitch_be
    const-string/jumbo p0, "resetKeyStore"

    return-object p0

    .line 302
    :pswitch_c2
    const-string/jumbo p0, "setLockCredential"

    return-object p0

    .line 298
    :pswitch_c6
    const-string p0, "getString"

    return-object p0

    .line 294
    :pswitch_c9
    const-string p0, "getLong"

    return-object p0

    .line 290
    :pswitch_cc
    const-string p0, "getBoolean"

    return-object p0

    .line 286
    :pswitch_cf
    const-string/jumbo p0, "setString"

    return-object p0

    .line 282
    :pswitch_d3
    const-string/jumbo p0, "setLong"

    return-object p0

    .line 278
    :pswitch_d7
    const-string/jumbo p0, "setBoolean"

    return-object p0

    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_d3
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c2
        :pswitch_be
        :pswitch_bb
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a1
        :pswitch_9e
        :pswitch_9a
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 269
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2402
    const/16 v0, 0x3b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 525
    invoke-static {p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    nop

    .line 530
    const-string v0, "com.android.internal.widget.ILockSettings"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 531
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 534
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    return v1

    .line 537
    :cond_17
    packed-switch p1, :pswitch_data_538

    .line 1195
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1186
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1187
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1188
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getLockPatternSize(I)B

    move-result p1

    .line 1189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1191
    goto/16 :goto_536

    .line 1176
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->writeRepairModeCredential(I)Z

    move-result p1

    .line 1179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1181
    goto/16 :goto_536

    .line 1167
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->unlockUserKeyIfUnsecured(I)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    goto/16 :goto_536

    .line 1153
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1155
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 1157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {p0, v2, v3, p1, p4}, Lcom/android/internal/widget/ILockSettings$Stub;->isWeakEscrowTokenValid(J[BI)Z

    move-result p1

    .line 1160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1162
    goto/16 :goto_536

    .line 1141
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->isWeakEscrowTokenActive(JI)Z

    move-result p1

    .line 1146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1148
    goto/16 :goto_536

    .line 1129
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->removeWeakEscrowToken(JI)Z

    move-result p1

    .line 1134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1136
    goto/16 :goto_536

    .line 1115
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 1117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    move-result-object v0

    .line 1120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1121
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide p1

    .line 1122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1124
    goto/16 :goto_536

    .line 1105
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    move-result-object p1

    .line 1106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result p1

    .line 1108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1110
    goto/16 :goto_536

    .line 1095
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    move-result-object p1

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result p1

    .line 1098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1100
    goto/16 :goto_536

    .line 1086
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1088
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->removeCachedUnifiedChallenge(I)V

    .line 1089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    goto/16 :goto_536

    .line 1076
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1078
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->tryUnlockWithCachedUnifiedChallenge(I)Z

    move-result p1

    .line 1079
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1081
    goto/16 :goto_536

    .line 1068
    :pswitch_10d
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->hasSecureLockScreen()Z

    move-result p1

    .line 1069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1071
    goto/16 :goto_536

    .line 1059
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 1060
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1061
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;

    move-result-object p1

    .line 1062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1064
    goto/16 :goto_536

    .line 1051
    :pswitch_12c
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;

    move-result-object p1

    .line 1052
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1054
    goto/16 :goto_536

    .line 1043
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->closeSession(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    goto/16 :goto_536

    .line 1029
    :pswitch_147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 1033
    sget-object v0, Landroid/security/keystore/recovery/WrappedApplicationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 1036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1038
    goto/16 :goto_536

    .line 1009
    :pswitch_164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1013
    sget-object p1, Landroid/security/keystore/recovery/RecoveryCertPath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/security/keystore/recovery/RecoveryCertPath;

    .line 1015
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1019
    sget-object p1, Landroid/security/keystore/recovery/KeyChainProtectionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/ILockSettings$Stub;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object p1

    .line 1022
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1024
    goto/16 :goto_536

    .line 1001
    :pswitch_193
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getRecoverySecretTypes()[I

    move-result-object p1

    .line 1002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1004
    goto/16 :goto_536

    .line 993
    :pswitch_1a0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 994
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->setRecoverySecretTypes([I)V

    .line 996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    goto/16 :goto_536

    .line 985
    :pswitch_1b0
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getRecoveryStatus()Ljava/util/Map;

    move-result-object p1

    .line 986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 988
    goto/16 :goto_536

    .line 975
    :pswitch_1bd
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 978
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/widget/ILockSettings$Stub;->setRecoveryStatus(Ljava/lang/String;I)V

    .line 980
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    goto/16 :goto_536

    .line 966
    :pswitch_1d1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->setServerParams([B)V

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    goto/16 :goto_536

    .line 957
    :pswitch_1e1
    move-object v2, p0

    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 959
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    .line 960
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    goto/16 :goto_536

    .line 948
    :pswitch_1f5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->removeKey(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    goto/16 :goto_536

    .line 938
    :pswitch_205
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 943
    goto/16 :goto_536

    .line 924
    :pswitch_219
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 928
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p1

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 933
    goto/16 :goto_536

    .line 912
    :pswitch_235
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 915
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/widget/ILockSettings$Stub;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 919
    goto/16 :goto_536

    .line 900
    :pswitch_24d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/widget/ILockSettings$Stub;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    goto/16 :goto_536

    .line 890
    :pswitch_265
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 895
    goto/16 :goto_536

    .line 882
    :pswitch_279
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p1

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 885
    goto/16 :goto_536

    .line 870
    :pswitch_286
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    .line 877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    goto/16 :goto_536

    .line 860
    :pswitch_29e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getLockoutEndTime(I)Landroid/os/ParcelDuration;

    move-result-object p1

    .line 863
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 865
    goto/16 :goto_536

    .line 850
    :pswitch_2b2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->hasPendingEscrowToken(I)Z

    move-result p1

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 855
    goto/16 :goto_536

    .line 840
    :pswitch_2c6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getStrongAuthForUser(I)I

    move-result p1

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    goto/16 :goto_536

    .line 831
    :pswitch_2da
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->userPresent(I)V

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    goto/16 :goto_536

    .line 824
    :pswitch_2ea
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->systemReady()V

    .line 825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    goto/16 :goto_536

    .line 816
    :pswitch_2f3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->scheduleNonStrongBiometricIdleTimeout(I)V

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    goto/16 :goto_536

    .line 805
    :pswitch_303
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/widget/ILockSettings$Stub;->reportSuccessfulBiometricUnlock(ZI)V

    .line 810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    goto/16 :goto_536

    .line 794
    :pswitch_317
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/widget/ILockSettings$Stub;->requireStrongAuth(II)V

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    goto/16 :goto_536

    .line 785
    :pswitch_32b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object p1

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    goto/16 :goto_536

    .line 776
    :pswitch_33f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object p1

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    goto/16 :goto_536

    .line 766
    :pswitch_353
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getSeparateProfileChallengeEnabled(I)Z

    move-result p1

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 771
    goto/16 :goto_536

    .line 753
    :pswitch_367
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 757
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto/16 :goto_536

    .line 741
    :pswitch_383
    move-object v2, p0

    sget-object p1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/widget/ILockSettings$Stub;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object p1

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 748
    goto/16 :goto_536

    .line 731
    :pswitch_39f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->refreshStoredPinLength(I)Z

    move-result p1

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 736
    goto/16 :goto_536

    .line 721
    :pswitch_3b3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getPinLength(I)I

    move-result p1

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    goto/16 :goto_536

    .line 711
    :pswitch_3c7
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getCredentialType(I)I

    move-result p1

    .line 714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    goto/16 :goto_536

    .line 702
    :pswitch_3db
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->removeGatekeeperPasswordHandle(J)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    goto/16 :goto_536

    .line 688
    :pswitch_3eb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 697
    goto/16 :goto_536

    .line 674
    :pswitch_407
    move-object v2, p0

    sget-object p1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 683
    goto/16 :goto_536

    .line 660
    :pswitch_427
    move-object v2, p0

    sget-object p1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 669
    goto/16 :goto_536

    .line 646
    :pswitch_447
    move-object v2, p0

    sget-object p1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v0

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 655
    goto/16 :goto_536

    .line 637
    :pswitch_46b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ILockSettings$Stub;->resetKeyStore(I)V

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    goto/16 :goto_536

    .line 623
    :pswitch_47b
    move-object v2, p0

    sget-object p1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    .line 625
    sget-object p4, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/widget/LockscreenCredential;

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result p1

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 632
    goto/16 :goto_536

    .line 609
    :pswitch_49f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    goto/16 :goto_536

    .line 595
    :pswitch_4bb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, p1, v3, v4, p4}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    move-result-wide p1

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 604
    goto :goto_536

    .line 581
    :pswitch_4d6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p1

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 590
    goto :goto_536

    .line 568
    :pswitch_4f1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto :goto_536

    .line 555
    :pswitch_508
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, p1, v3, v4, p4}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    goto :goto_536

    .line 542
    :pswitch_51f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    nop

    .line 1198
    :goto_536
    return v1

    nop

    :pswitch_data_538
    .packed-switch 0x1
        :pswitch_51f
        :pswitch_508
        :pswitch_4f1
        :pswitch_4d6
        :pswitch_4bb
        :pswitch_49f
        :pswitch_47b
        :pswitch_46b
        :pswitch_447
        :pswitch_427
        :pswitch_407
        :pswitch_3eb
        :pswitch_3db
        :pswitch_3c7
        :pswitch_3b3
        :pswitch_39f
        :pswitch_383
        :pswitch_367
        :pswitch_353
        :pswitch_33f
        :pswitch_32b
        :pswitch_317
        :pswitch_303
        :pswitch_2f3
        :pswitch_2ea
        :pswitch_2da
        :pswitch_2c6
        :pswitch_2b2
        :pswitch_29e
        :pswitch_286
        :pswitch_279
        :pswitch_265
        :pswitch_24d
        :pswitch_235
        :pswitch_219
        :pswitch_205
        :pswitch_1f5
        :pswitch_1e1
        :pswitch_1d1
        :pswitch_1bd
        :pswitch_1b0
        :pswitch_1a0
        :pswitch_193
        :pswitch_164
        :pswitch_147
        :pswitch_138
        :pswitch_12c
        :pswitch_119
        :pswitch_10d
        :pswitch_fa
        :pswitch_eb
        :pswitch_d4
        :pswitch_bd
        :pswitch_9e
        :pswitch_87
        :pswitch_70
        :pswitch_55
        :pswitch_46
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method
