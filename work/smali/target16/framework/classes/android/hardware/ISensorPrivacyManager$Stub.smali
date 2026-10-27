.class public abstract Landroid/hardware/ISensorPrivacyManager$Stub;
.super Landroid/os/Binder;
.source "ISensorPrivacyManager.java"

# interfaces
.implements Landroid/hardware/ISensorPrivacyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ISensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addSensorPrivacyListener:I = 0x2

.field static final blacklist TRANSACTION_addToggleSensorPrivacyListener:I = 0x3

.field static final blacklist TRANSACTION_getCameraPrivacyAllowlist:I = 0xc

.field static final blacklist TRANSACTION_getToggleSensorPrivacyState:I = 0xd

.field static final blacklist TRANSACTION_isCameraPrivacyEnabled:I = 0x10

.field static final blacklist TRANSACTION_isCombinedToggleSensorPrivacyEnabled:I = 0x7

.field static final blacklist TRANSACTION_isSensorPrivacyEnabled:I = 0x6

.field static final blacklist TRANSACTION_isToggleSensorPrivacyEnabled:I = 0x8

.field static final blacklist TRANSACTION_removeSensorPrivacyListener:I = 0x4

.field static final blacklist TRANSACTION_removeToggleSensorPrivacyListener:I = 0x5

.field static final blacklist TRANSACTION_requiresAuthentication:I = 0x13

.field static final blacklist TRANSACTION_setCameraPrivacyAllowlist:I = 0x11

.field static final blacklist TRANSACTION_setSensorPrivacy:I = 0x9

.field static final blacklist TRANSACTION_setToggleSensorPrivacy:I = 0xa

.field static final blacklist TRANSACTION_setToggleSensorPrivacyForProfileGroup:I = 0xb

.field static final blacklist TRANSACTION_setToggleSensorPrivacyState:I = 0xe

.field static final blacklist TRANSACTION_setToggleSensorPrivacyStateForProfileGroup:I = 0xf

.field static final blacklist TRANSACTION_showSensorUseDialog:I = 0x14

.field static final blacklist TRANSACTION_supportsSensorToggle:I = 0x1

.field static final blacklist TRANSACTION_suppressToggleSensorPrivacyReminders:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.hardware.ISensorPrivacyManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyManager;
    .registers 3

    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_4
    const-string v0, "android.hardware.ISensorPrivacyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/ISensorPrivacyManager;

    if-eqz v1, :cond_13

    .line 115
    check-cast v0, Landroid/hardware/ISensorPrivacyManager;

    return-object v0

    .line 117
    :cond_13
    new-instance v0, Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 126
    packed-switch p0, :pswitch_data_50

    .line 210
    const/4 p0, 0x0

    return-object p0

    .line 206
    :pswitch_5
    const-string/jumbo p0, "showSensorUseDialog"

    return-object p0

    .line 202
    :pswitch_9
    const-string/jumbo p0, "requiresAuthentication"

    return-object p0

    .line 198
    :pswitch_d
    const-string/jumbo p0, "suppressToggleSensorPrivacyReminders"

    return-object p0

    .line 194
    :pswitch_11
    const-string/jumbo p0, "setCameraPrivacyAllowlist"

    return-object p0

    .line 190
    :pswitch_15
    const-string p0, "isCameraPrivacyEnabled"

    return-object p0

    .line 186
    :pswitch_18
    const-string/jumbo p0, "setToggleSensorPrivacyStateForProfileGroup"

    return-object p0

    .line 182
    :pswitch_1c
    const-string/jumbo p0, "setToggleSensorPrivacyState"

    return-object p0

    .line 178
    :pswitch_20
    const-string p0, "getToggleSensorPrivacyState"

    return-object p0

    .line 174
    :pswitch_23
    const-string p0, "getCameraPrivacyAllowlist"

    return-object p0

    .line 170
    :pswitch_26
    const-string/jumbo p0, "setToggleSensorPrivacyForProfileGroup"

    return-object p0

    .line 166
    :pswitch_2a
    const-string/jumbo p0, "setToggleSensorPrivacy"

    return-object p0

    .line 162
    :pswitch_2e
    const-string/jumbo p0, "setSensorPrivacy"

    return-object p0

    .line 158
    :pswitch_32
    const-string/jumbo p0, "isToggleSensorPrivacyEnabled"

    return-object p0

    .line 154
    :pswitch_36
    const-string p0, "isCombinedToggleSensorPrivacyEnabled"

    return-object p0

    .line 150
    :pswitch_39
    const-string/jumbo p0, "isSensorPrivacyEnabled"

    return-object p0

    .line 146
    :pswitch_3d
    const-string/jumbo p0, "removeToggleSensorPrivacyListener"

    return-object p0

    .line 142
    :pswitch_41
    const-string/jumbo p0, "removeSensorPrivacyListener"

    return-object p0

    .line 138
    :pswitch_45
    const-string p0, "addToggleSensorPrivacyListener"

    return-object p0

    .line 134
    :pswitch_48
    const-string p0, "addSensorPrivacyListener"

    return-object p0

    .line 130
    :pswitch_4b
    const-string/jumbo p0, "supportsSensorToggle"

    return-object p0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
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

    .line 121
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 837
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 217
    invoke-static {p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 221
    nop

    .line 222
    const-string v0, "android.hardware.ISensorPrivacyManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 223
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 226
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    return v1

    .line 229
    :cond_17
    packed-switch p1, :pswitch_data_1a8

    .line 448
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 440
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->showSensorUseDialog(I)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    goto/16 :goto_1a7

    .line 432
    :pswitch_2e
    invoke-virtual {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;->requiresAuthentication()Z

    move-result p1

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 435
    goto/16 :goto_1a7

    .line 418
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    goto/16 :goto_1a7

    .line 409
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->setCameraPrivacyAllowlist(Ljava/util/List;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_1a7

    .line 399
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {p0, p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 404
    goto/16 :goto_1a7

    .line 384
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacyStateForProfileGroup(IIII)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    goto/16 :goto_1a7

    .line 369
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacyState(IIII)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    goto/16 :goto_1a7

    .line 357
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, p1, p4}, Landroid/hardware/ISensorPrivacyManager$Stub;->getToggleSensorPrivacyState(II)I

    move-result p1

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    goto/16 :goto_1a7

    .line 349
    :pswitch_c4
    invoke-virtual {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;->getCameraPrivacyAllowlist()Ljava/util/List;

    move-result-object p1

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 352
    goto/16 :goto_1a7

    .line 335
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacyForProfileGroup(IIIZ)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_1a7

    .line 320
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacy(IIIZ)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_1a7

    .line 311
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->setSensorPrivacy(Z)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_1a7

    .line 299
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, p1, p4}, Landroid/hardware/ISensorPrivacyManager$Stub;->isToggleSensorPrivacyEnabled(II)Z

    move-result p1

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 306
    goto/16 :goto_1a7

    .line 289
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result p1

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    goto :goto_1a7

    .line 281
    :pswitch_13e
    invoke-virtual {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;->isSensorPrivacyEnabled()Z

    move-result p1

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 284
    goto :goto_1a7

    .line 273
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto :goto_1a7

    .line 264
    :pswitch_15b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object p1

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto :goto_1a7

    .line 255
    :pswitch_16d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object p1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto :goto_1a7

    .line 246
    :pswitch_17f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object p1

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_1a7

    .line 234
    :pswitch_191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, p1, p4}, Landroid/hardware/ISensorPrivacyManager$Stub;->supportsSensorToggle(II)Z

    move-result p1

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 241
    nop

    .line 451
    :goto_1a7
    return v1

    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_191
        :pswitch_17f
        :pswitch_16d
        :pswitch_15b
        :pswitch_149
        :pswitch_13e
        :pswitch_12c
        :pswitch_115
        :pswitch_106
        :pswitch_eb
        :pswitch_d0
        :pswitch_c4
        :pswitch_ad
        :pswitch_92
        :pswitch_77
        :pswitch_64
        :pswitch_55
        :pswitch_3a
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
