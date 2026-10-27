.class public abstract Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.super Landroid/os/Binder;
.source "IActivityRecognitionHardware.java"

# interfaces
.implements Landroid/hardware/location/IActivityRecognitionHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IActivityRecognitionHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IActivityRecognitionHardware"

.field static final greylist-max-o TRANSACTION_disableActivityEvent:I = 0x6

.field static final greylist-max-o TRANSACTION_enableActivityEvent:I = 0x5

.field static final greylist-max-o TRANSACTION_flush:I = 0x7

.field static final greylist-max-o TRANSACTION_getSupportedActivities:I = 0x1

.field static final greylist-max-o TRANSACTION_isActivitySupported:I = 0x2

.field static final greylist-max-o TRANSACTION_registerSink:I = 0x3

.field static final greylist-max-o TRANSACTION_unregisterSink:I = 0x4


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    nop

    .line 78
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    if-eqz p1, :cond_d

    .line 72
    iput-object p1, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 73
    return-void

    .line 70
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardware;
    .registers 3

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_4
    const-string v0, "android.hardware.location.IActivityRecognitionHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/location/IActivityRecognitionHardware;

    if-eqz v1, :cond_13

    .line 91
    check-cast v0, Landroid/hardware/location/IActivityRecognitionHardware;

    return-object v0

    .line 93
    :cond_13
    new-instance v0, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 102
    packed-switch p0, :pswitch_data_1a

    .line 134
    const/4 p0, 0x0

    return-object p0

    .line 130
    :pswitch_5
    const-string p0, "flush"

    return-object p0

    .line 126
    :pswitch_8
    const-string p0, "disableActivityEvent"

    return-object p0

    .line 122
    :pswitch_b
    const-string p0, "enableActivityEvent"

    return-object p0

    .line 118
    :pswitch_e
    const-string p0, "unregisterSink"

    return-object p0

    .line 114
    :pswitch_11
    const-string p0, "registerSink"

    return-object p0

    .line 110
    :pswitch_14
    const-string p0, "isActivitySupported"

    return-object p0

    .line 106
    :pswitch_17
    const-string p0, "getSupportedActivities"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
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

    .line 97
    return-object p0
.end method

.method protected blacklist disableActivityEvent_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 413
    return-void
.end method

.method protected blacklist enableActivityEvent_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 408
    return-void
.end method

.method protected blacklist flush_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 418
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 422
    const/4 v0, 0x6

    return v0
.end method

.method protected blacklist getSupportedActivities_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 388
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 141
    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist isActivitySupported_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 393
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    nop

    .line 146
    const-string v0, "android.hardware.location.IActivityRecognitionHardware"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 153
    :cond_17
    packed-switch p1, :pswitch_data_a6

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 220
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->flush()Z

    move-result p1

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    goto/16 :goto_a4

    .line 209
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, p1, p4}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->disableActivityEvent(Ljava/lang/String;I)Z

    move-result p1

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 216
    goto :goto_a4

    .line 195
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, p1, p4, v2, v3}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->enableActivityEvent(Ljava/lang/String;IJ)Z

    move-result p1

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 204
    goto :goto_a4

    .line 185
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareSink;

    move-result-object p1

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z

    move-result p1

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    goto :goto_a4

    .line 175
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareSink;

    move-result-object p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, p1}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z

    move-result p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 180
    goto :goto_a4

    .line 165
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, p1}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->isActivitySupported(Ljava/lang/String;)Z

    move-result p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    goto :goto_a4

    .line 157
    :pswitch_99
    invoke-virtual {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getSupportedActivities()[Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 160
    nop

    .line 230
    :goto_a4
    return v1

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_99
        :pswitch_87
        :pswitch_71
        :pswitch_5b
        :pswitch_41
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist registerSink_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 398
    return-void
.end method

.method protected blacklist unregisterSink_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 403
    return-void
.end method
