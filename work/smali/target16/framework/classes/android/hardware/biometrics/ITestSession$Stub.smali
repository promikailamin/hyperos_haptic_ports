.class public abstract Landroid/hardware/biometrics/ITestSession$Stub;
.super Landroid/os/Binder;
.source "ITestSession.java"

# interfaces
.implements Landroid/hardware/biometrics/ITestSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/ITestSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/ITestSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acceptAuthentication:I = 0x4

.field static final blacklist TRANSACTION_cleanupInternalState:I = 0x8

.field static final blacklist TRANSACTION_finishEnroll:I = 0x3

.field static final blacklist TRANSACTION_getSensorId:I = 0x9

.field static final blacklist TRANSACTION_notifyAcquired:I = 0x6

.field static final blacklist TRANSACTION_notifyError:I = 0x7

.field static final blacklist TRANSACTION_rejectAuthentication:I = 0x5

.field static final blacklist TRANSACTION_setTestHalEnabled:I = 0x1

.field static final blacklist TRANSACTION_startEnroll:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    nop

    .line 84
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "android.hardware.biometrics.ITestSession"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/ITestSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    if-eqz p1, :cond_d

    .line 78
    iput-object p1, p0, Landroid/hardware/biometrics/ITestSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 79
    return-void

    .line 76
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSession;
    .registers 3

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_4
    const-string v0, "android.hardware.biometrics.ITestSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/biometrics/ITestSession;

    if-eqz v1, :cond_13

    .line 97
    check-cast v0, Landroid/hardware/biometrics/ITestSession;

    return-object v0

    .line 99
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/ITestSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/ITestSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 108
    packed-switch p0, :pswitch_data_26

    .line 148
    const/4 p0, 0x0

    return-object p0

    .line 144
    :pswitch_5
    const-string p0, "getSensorId"

    return-object p0

    .line 140
    :pswitch_8
    const-string p0, "cleanupInternalState"

    return-object p0

    .line 136
    :pswitch_b
    const-string/jumbo p0, "notifyError"

    return-object p0

    .line 132
    :pswitch_f
    const-string/jumbo p0, "notifyAcquired"

    return-object p0

    .line 128
    :pswitch_13
    const-string/jumbo p0, "rejectAuthentication"

    return-object p0

    .line 124
    :pswitch_17
    const-string p0, "acceptAuthentication"

    return-object p0

    .line 120
    :pswitch_1a
    const-string p0, "finishEnroll"

    return-object p0

    .line 116
    :pswitch_1d
    const-string/jumbo p0, "startEnroll"

    return-object p0

    .line 112
    :pswitch_21
    const-string/jumbo p0, "setTestHalEnabled"

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist acceptAuthentication_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Landroid/hardware/biometrics/ITestSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 448
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 103
    return-object p0
.end method

.method protected blacklist cleanupInternalState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Landroid/hardware/biometrics/ITestSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 468
    return-void
.end method

.method protected blacklist finishEnroll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Landroid/hardware/biometrics/ITestSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 443
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 477
    const/16 v0, 0x8

    return v0
.end method

.method protected blacklist getSensorId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Landroid/hardware/biometrics/ITestSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 473
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 155
    invoke-static {p1}, Landroid/hardware/biometrics/ITestSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist notifyAcquired_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Landroid/hardware/biometrics/ITestSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 458
    return-void
.end method

.method protected blacklist notifyError_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Landroid/hardware/biometrics/ITestSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 463
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    nop

    .line 160
    const-string v0, "android.hardware.biometrics.ITestSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 161
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 164
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    return v1

    .line 167
    :cond_17
    packed-switch p1, :pswitch_data_a4

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 247
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->getSensorId()I

    move-result p1

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    goto/16 :goto_a3

    .line 239
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/ITestSession$Stub;->cleanupInternalState(I)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto :goto_a3

    .line 228
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, p1, p4}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyError(II)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto :goto_a3

    .line 217
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, p1, p4}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired(II)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    goto :goto_a3

    .line 208
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/ITestSession$Stub;->rejectAuthentication(I)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto :goto_a3

    .line 199
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/ITestSession$Stub;->acceptAuthentication(I)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_a3

    .line 190
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/ITestSession$Stub;->finishEnroll(I)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_a3

    .line 181
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/ITestSession$Stub;->startEnroll(I)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_a3

    .line 172
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/ITestSession$Stub;->setTestHalEnabled(Z)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    nop

    .line 257
    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_95
        :pswitch_87
        :pswitch_79
        :pswitch_6b
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist rejectAuthentication_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroid/hardware/biometrics/ITestSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 453
    return-void
.end method

.method protected blacklist setTestHalEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Landroid/hardware/biometrics/ITestSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 433
    return-void
.end method

.method protected blacklist startEnroll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Landroid/hardware/biometrics/ITestSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/biometrics/ITestSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 438
    return-void
.end method
