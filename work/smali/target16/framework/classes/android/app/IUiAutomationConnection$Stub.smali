.class public abstract Landroid/app/IUiAutomationConnection$Stub;
.super Landroid/os/Binder;
.source "IUiAutomationConnection.java"

# interfaces
.implements Landroid/app/IUiAutomationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiAutomationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiAutomationConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IUiAutomationConnection"

.field static final blacklist TRANSACTION_addOverridePermissionState:I = 0x16

.field static final blacklist TRANSACTION_adoptShellPermissionIdentity:I = 0x10

.field static final blacklist TRANSACTION_clearAllOverridePermissionStates:I = 0x19

.field static final blacklist TRANSACTION_clearOverridePermissionStates:I = 0x18

.field static final greylist-max-o TRANSACTION_clearWindowAnimationFrameStats:I = 0xb

.field static final greylist-max-o TRANSACTION_clearWindowContentFrameStats:I = 0x9

.field static final greylist-max-o TRANSACTION_connect:I = 0x1

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x2

.field static final blacklist TRANSACTION_dropShellPermissionIdentity:I = 0x11

.field static final greylist-max-o TRANSACTION_executeShellCommand:I = 0xd

.field static final blacklist TRANSACTION_executeShellCommandArrayWithStderr:I = 0x14

.field static final blacklist TRANSACTION_executeShellCommandWithStderr:I = 0x13

.field static final blacklist TRANSACTION_getAdoptedShellPermissions:I = 0x15

.field static final greylist-max-o TRANSACTION_getWindowAnimationFrameStats:I = 0xc

.field static final greylist-max-o TRANSACTION_getWindowContentFrameStats:I = 0xa

.field static final greylist-max-o TRANSACTION_grantRuntimePermission:I = 0xe

.field static final greylist-max-o TRANSACTION_injectInputEvent:I = 0x3

.field static final blacklist TRANSACTION_injectInputEventToInputFilter:I = 0x4

.field static final blacklist TRANSACTION_removeOverridePermissionState:I = 0x17

.field static final greylist-max-o TRANSACTION_revokeRuntimePermission:I = 0xf

.field static final greylist-max-o TRANSACTION_setRotation:I = 0x6

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x12

.field static final blacklist TRANSACTION_syncInputTransactions:I = 0x5

.field static final greylist-max-o TRANSACTION_takeScreenshot:I = 0x7

.field static final blacklist TRANSACTION_takeSurfaceControlScreenshot:I = 0x8


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 120
    const-string v0, "android.app.IUiAutomationConnection"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiAutomationConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;
    .registers 3

    .line 128
    if-nez p0, :cond_4

    .line 129
    const/4 p0, 0x0

    return-object p0

    .line 131
    :cond_4
    const-string v0, "android.app.IUiAutomationConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IUiAutomationConnection;

    if-eqz v1, :cond_13

    .line 133
    check-cast v0, Landroid/app/IUiAutomationConnection;

    return-object v0

    .line 135
    :cond_13
    new-instance v0, Landroid/app/IUiAutomationConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IUiAutomationConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 144
    packed-switch p0, :pswitch_data_58

    .line 248
    const/4 p0, 0x0

    return-object p0

    .line 244
    :pswitch_5
    const-string p0, "clearAllOverridePermissionStates"

    return-object p0

    .line 240
    :pswitch_8
    const-string p0, "clearOverridePermissionStates"

    return-object p0

    .line 236
    :pswitch_b
    const-string/jumbo p0, "removeOverridePermissionState"

    return-object p0

    .line 232
    :pswitch_f
    const-string p0, "addOverridePermissionState"

    return-object p0

    .line 228
    :pswitch_12
    const-string p0, "getAdoptedShellPermissions"

    return-object p0

    .line 224
    :pswitch_15
    const-string p0, "executeShellCommandArrayWithStderr"

    return-object p0

    .line 220
    :pswitch_18
    const-string p0, "executeShellCommandWithStderr"

    return-object p0

    .line 216
    :pswitch_1b
    const-string/jumbo p0, "shutdown"

    return-object p0

    .line 212
    :pswitch_1f
    const-string p0, "dropShellPermissionIdentity"

    return-object p0

    .line 208
    :pswitch_22
    const-string p0, "adoptShellPermissionIdentity"

    return-object p0

    .line 204
    :pswitch_25
    const-string/jumbo p0, "revokeRuntimePermission"

    return-object p0

    .line 200
    :pswitch_29
    const-string p0, "grantRuntimePermission"

    return-object p0

    .line 196
    :pswitch_2c
    const-string p0, "executeShellCommand"

    return-object p0

    .line 192
    :pswitch_2f
    const-string p0, "getWindowAnimationFrameStats"

    return-object p0

    .line 188
    :pswitch_32
    const-string p0, "clearWindowAnimationFrameStats"

    return-object p0

    .line 184
    :pswitch_35
    const-string p0, "getWindowContentFrameStats"

    return-object p0

    .line 180
    :pswitch_38
    const-string p0, "clearWindowContentFrameStats"

    return-object p0

    .line 176
    :pswitch_3b
    const-string/jumbo p0, "takeSurfaceControlScreenshot"

    return-object p0

    .line 172
    :pswitch_3f
    const-string/jumbo p0, "takeScreenshot"

    return-object p0

    .line 168
    :pswitch_43
    const-string/jumbo p0, "setRotation"

    return-object p0

    .line 164
    :pswitch_47
    const-string/jumbo p0, "syncInputTransactions"

    return-object p0

    .line 160
    :pswitch_4b
    const-string p0, "injectInputEventToInputFilter"

    return-object p0

    .line 156
    :pswitch_4e
    const-string p0, "injectInputEvent"

    return-object p0

    .line 152
    :pswitch_51
    const-string p0, "disconnect"

    return-object p0

    .line 148
    :pswitch_54
    const-string p0, "connect"

    return-object p0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 139
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 989
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 255
    invoke-static {p1}, Landroid/app/IUiAutomationConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    nop

    .line 260
    const-string v0, "android.app.IUiAutomationConnection"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 261
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 264
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    return v1

    .line 267
    :cond_17
    packed-switch p1, :pswitch_data_210

    .line 526
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 520
    :pswitch_1f
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->clearAllOverridePermissionStates()V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto/16 :goto_20f

    .line 512
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, p1}, Landroid/app/IUiAutomationConnection$Stub;->clearOverridePermissionStates(I)V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    goto/16 :goto_20f

    .line 501
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, p1, p4}, Landroid/app/IUiAutomationConnection$Stub;->removeOverridePermissionState(ILjava/lang/String;)V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    goto/16 :goto_20f

    .line 488
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IUiAutomationConnection$Stub;->addOverridePermissionState(ILjava/lang/String;I)V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    goto/16 :goto_20f

    .line 480
    :pswitch_60
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->getAdoptedShellPermissions()Ljava/util/List;

    move-result-object p1

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 483
    goto/16 :goto_20f

    .line 466
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 468
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 470
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 472
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/app/IUiAutomationConnection$Stub;->executeShellCommandArrayWithStderr([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    goto/16 :goto_20f

    .line 451
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 453
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 455
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 457
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/app/IUiAutomationConnection$Stub;->executeShellCommandWithStderr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    goto/16 :goto_20f

    .line 445
    :pswitch_ba
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->shutdown()V

    .line 446
    goto/16 :goto_20f

    .line 439
    :pswitch_bf
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->dropShellPermissionIdentity()V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    goto/16 :goto_20f

    .line 429
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, p1, p4}, Landroid/app/IUiAutomationConnection$Stub;->adoptShellPermissionIdentity(I[Ljava/lang/String;)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    goto/16 :goto_20f

    .line 416
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IUiAutomationConnection$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto/16 :goto_20f

    .line 403
    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IUiAutomationConnection$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_20f

    .line 390
    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 392
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 394
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IUiAutomationConnection$Stub;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto/16 :goto_20f

    .line 382
    :pswitch_127
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;

    move-result-object p1

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 385
    goto/16 :goto_20f

    .line 376
    :pswitch_133
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->clearWindowAnimationFrameStats()V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    goto/16 :goto_20f

    .line 367
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, p1}, Landroid/app/IUiAutomationConnection$Stub;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;

    move-result-object p1

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 372
    goto/16 :goto_20f

    .line 357
    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, p1}, Landroid/app/IUiAutomationConnection$Stub;->clearWindowContentFrameStats(I)Z

    move-result p1

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 362
    goto/16 :goto_20f

    .line 345
    :pswitch_161
    sget-object p1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;

    .line 347
    sget-object p4, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, p1, p4}, Landroid/app/IUiAutomationConnection$Stub;->takeSurfaceControlScreenshot(Landroid/view/SurfaceControl;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)Z

    move-result p1

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 352
    goto/16 :goto_20f

    .line 331
    :pswitch_180
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 333
    sget-object p4, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IUiAutomationConnection$Stub;->takeScreenshot(Landroid/graphics/Rect;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;I)Z

    move-result p1

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 340
    goto :goto_20f

    .line 321
    :pswitch_1a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, p1}, Landroid/app/IUiAutomationConnection$Stub;->setRotation(I)Z

    move-result p1

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 326
    goto :goto_20f

    .line 312
    :pswitch_1b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, p1}, Landroid/app/IUiAutomationConnection$Stub;->syncInputTransactions(Z)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    goto :goto_20f

    .line 303
    :pswitch_1c2
    sget-object p1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputEvent;

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1}, Landroid/app/IUiAutomationConnection$Stub;->injectInputEventToInputFilter(Landroid/view/InputEvent;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto :goto_20f

    .line 289
    :pswitch_1d4
    sget-object p1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputEvent;

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IUiAutomationConnection$Stub;->injectInputEvent(Landroid/view/InputEvent;ZZ)Z

    move-result p1

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    goto :goto_20f

    .line 282
    :pswitch_1f2
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->disconnect()V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto :goto_20f

    .line 272
    :pswitch_1f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, p1, p4}, Landroid/app/IUiAutomationConnection$Stub;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    nop

    .line 529
    :goto_20f
    return v1

    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_1f9
        :pswitch_1f2
        :pswitch_1d4
        :pswitch_1c2
        :pswitch_1b4
        :pswitch_1a2
        :pswitch_180
        :pswitch_161
        :pswitch_14e
        :pswitch_13b
        :pswitch_133
        :pswitch_127
        :pswitch_108
        :pswitch_f1
        :pswitch_da
        :pswitch_c7
        :pswitch_bf
        :pswitch_ba
        :pswitch_93
        :pswitch_6c
        :pswitch_60
        :pswitch_49
        :pswitch_36
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method
