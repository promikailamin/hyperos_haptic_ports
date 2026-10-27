.class public abstract Landroid/media/projection/IMediaProjection$Stub;
.super Landroid/os/Binder;
.source "IMediaProjection.java"

# interfaces
.implements Landroid/media/projection/IMediaProjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/IMediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.projection.IMediaProjection"

.field static final greylist-max-o TRANSACTION_applyVirtualDisplayFlags:I = 0x6

.field static final greylist-max-o TRANSACTION_canProjectAudio:I = 0x3

.field static final greylist-max-o TRANSACTION_canProjectSecureVideo:I = 0x5

.field static final greylist-max-o TRANSACTION_canProjectVideo:I = 0x4

.field static final blacklist TRANSACTION_getDisplayId:I = 0xc

.field static final blacklist TRANSACTION_getLaunchCookie:I = 0x9

.field static final blacklist TRANSACTION_getTaskId:I = 0xa

.field static final blacklist TRANSACTION_isRecordingOverlay:I = 0xb

.field static final blacklist TRANSACTION_isValid:I = 0x10

.field static final blacklist TRANSACTION_notifyVirtualDisplayCreated:I = 0x11

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x7

.field static final blacklist TRANSACTION_setLaunchCookie:I = 0xd

.field static final blacklist TRANSACTION_setRecordingOverlay:I = 0xf

.field static final blacklist TRANSACTION_setTaskId:I = 0xe

.field static final greylist-max-o TRANSACTION_start:I = 0x1

.field static final greylist-max-o TRANSACTION_stop:I = 0x2

.field static final greylist-max-o TRANSACTION_unregisterCallback:I = 0x8


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    nop

    .line 134
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/projection/IMediaProjection$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 135
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    const-string v0, "android.media.projection.IMediaProjection"

    invoke-virtual {p0, p0, v0}, Landroid/media/projection/IMediaProjection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 125
    if-eqz p1, :cond_d

    .line 128
    iput-object p1, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 129
    return-void

    .line 126
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;
    .registers 3

    .line 142
    if-nez p0, :cond_4

    .line 143
    const/4 p0, 0x0

    return-object p0

    .line 145
    :cond_4
    const-string v0, "android.media.projection.IMediaProjection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/projection/IMediaProjection;

    if-eqz v1, :cond_13

    .line 147
    check-cast v0, Landroid/media/projection/IMediaProjection;

    return-object v0

    .line 149
    :cond_13
    new-instance v0, Landroid/media/projection/IMediaProjection$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/projection/IMediaProjection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 158
    packed-switch p0, :pswitch_data_38

    .line 230
    const/4 p0, 0x0

    return-object p0

    .line 226
    :pswitch_5
    const-string p0, "notifyVirtualDisplayCreated"

    return-object p0

    .line 222
    :pswitch_8
    const-string p0, "isValid"

    return-object p0

    .line 218
    :pswitch_b
    const-string p0, "setRecordingOverlay"

    return-object p0

    .line 214
    :pswitch_e
    const-string p0, "setTaskId"

    return-object p0

    .line 210
    :pswitch_11
    const-string p0, "setLaunchCookie"

    return-object p0

    .line 206
    :pswitch_14
    const-string p0, "getDisplayId"

    return-object p0

    .line 202
    :pswitch_17
    const-string p0, "isRecordingOverlay"

    return-object p0

    .line 198
    :pswitch_1a
    const-string p0, "getTaskId"

    return-object p0

    .line 194
    :pswitch_1d
    const-string p0, "getLaunchCookie"

    return-object p0

    .line 190
    :pswitch_20
    const-string p0, "unregisterCallback"

    return-object p0

    .line 186
    :pswitch_23
    const-string p0, "registerCallback"

    return-object p0

    .line 182
    :pswitch_26
    const-string p0, "applyVirtualDisplayFlags"

    return-object p0

    .line 178
    :pswitch_29
    const-string p0, "canProjectSecureVideo"

    return-object p0

    .line 174
    :pswitch_2c
    const-string p0, "canProjectVideo"

    return-object p0

    .line 170
    :pswitch_2f
    const-string p0, "canProjectAudio"

    return-object p0

    .line 166
    :pswitch_32
    const-string p0, "stop"

    return-object p0

    .line 162
    :pswitch_35
    const-string p0, "start"

    return-object p0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
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
.method protected blacklist applyVirtualDisplayFlags_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 732
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 733
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 153
    return-object p0
.end method

.method protected blacklist getLaunchCookie_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 740
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 780
    const/16 v0, 0x10

    return v0
.end method

.method protected blacklist getTaskId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 745
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 237
    invoke-static {p1}, Landroid/media/projection/IMediaProjection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist isRecordingOverlay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 750
    return-void
.end method

.method protected blacklist isValid_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 770
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 771
    return-void
.end method

.method protected blacklist notifyVirtualDisplayCreated_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 775
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 776
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    nop

    .line 242
    const-string v0, "android.media.projection.IMediaProjection"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 243
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 246
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    return v1

    .line 249
    :cond_17
    packed-switch p1, :pswitch_data_114

    .line 391
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 383
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, p1}, Landroid/media/projection/IMediaProjection$Stub;->notifyVirtualDisplayCreated(I)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    goto/16 :goto_112

    .line 375
    :pswitch_2e
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->isValid()Z

    move-result p1

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 378
    goto/16 :goto_112

    .line 367
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, p1}, Landroid/media/projection/IMediaProjection$Stub;->setRecordingOverlay(Z)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    goto/16 :goto_112

    .line 358
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, p1}, Landroid/media/projection/IMediaProjection$Stub;->setTaskId(I)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    goto/16 :goto_112

    .line 349
    :pswitch_58
    sget-object p1, Landroid/app/ActivityOptions$LaunchCookie;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityOptions$LaunchCookie;

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, p1}, Landroid/media/projection/IMediaProjection$Stub;->setLaunchCookie(Landroid/app/ActivityOptions$LaunchCookie;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    goto/16 :goto_112

    .line 341
    :pswitch_6b
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->getDisplayId()I

    move-result p1

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    goto/16 :goto_112

    .line 334
    :pswitch_77
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->isRecordingOverlay()Z

    move-result p1

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 337
    goto/16 :goto_112

    .line 327
    :pswitch_83
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->getTaskId()I

    move-result p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    goto/16 :goto_112

    .line 320
    :pswitch_8f
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object p1

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 323
    goto/16 :goto_112

    .line 312
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    move-result-object p1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, p1}, Landroid/media/projection/IMediaProjection$Stub;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    goto :goto_112

    .line 303
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1}, Landroid/media/projection/IMediaProjection$Stub;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto :goto_112

    .line 293
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1}, Landroid/media/projection/IMediaProjection$Stub;->applyVirtualDisplayFlags(I)I

    move-result p1

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    goto :goto_112

    .line 285
    :pswitch_d1
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectSecureVideo()Z

    move-result p1

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto :goto_112

    .line 278
    :pswitch_dc
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectVideo()Z

    move-result p1

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 281
    goto :goto_112

    .line 271
    :pswitch_e7
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectAudio()Z

    move-result p1

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 274
    goto :goto_112

    .line 263
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, p1}, Landroid/media/projection/IMediaProjection$Stub;->stop(I)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto :goto_112

    .line 254
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    move-result-object p1

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, p1}, Landroid/media/projection/IMediaProjection$Stub;->start(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    nop

    .line 394
    :goto_112
    return v1

    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_100
        :pswitch_f2
        :pswitch_e7
        :pswitch_dc
        :pswitch_d1
        :pswitch_bf
        :pswitch_ad
        :pswitch_9b
        :pswitch_8f
        :pswitch_83
        :pswitch_77
        :pswitch_6b
        :pswitch_58
        :pswitch_49
        :pswitch_3a
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist setLaunchCookie_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 755
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 756
    return-void
.end method

.method protected blacklist setRecordingOverlay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 766
    return-void
.end method

.method protected blacklist setTaskId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 761
    return-void
.end method
