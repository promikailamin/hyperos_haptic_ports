.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final greylist-max-o TRANSACTION_addNfcUnlockHandler:I = 0x17

.field static final blacklist TRANSACTION_deviceSupportsNfcSecure:I = 0x1b

.field static final greylist-max-o TRANSACTION_disable:I = 0x8

.field static final greylist-max-o TRANSACTION_disableNdefPush:I = 0xb

.field static final greylist-max-o TRANSACTION_dispatch:I = 0x14

.field static final greylist-max-r TRANSACTION_enable:I = 0x9

.field static final greylist-max-o TRANSACTION_enableNdefPush:I = 0xa

.field static final greylist-max-o TRANSACTION_getNfcAdapterExtrasInterface:I = 0x4

.field static final blacklist TRANSACTION_getNfcAdapterVendorInterface:I = 0x6

.field static final greylist-max-o TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final greylist-max-o TRANSACTION_getNfcDtaInterface:I = 0x5

.field static final greylist-max-o TRANSACTION_getNfcFCardEmulationInterface:I = 0x3

.field static final greylist-max-o TRANSACTION_getNfcTagInterface:I = 0x1

.field static final greylist-max-o TRANSACTION_getState:I = 0x7

.field static final greylist-max-o TRANSACTION_ignore:I = 0x13

.field static final greylist-max-o TRANSACTION_invokeBeam:I = 0x11

.field static final greylist-max-o TRANSACTION_invokeBeamInternal:I = 0x12

.field static final blacklist TRANSACTION_isControllerAlwaysOn:I = 0x1e

.field static final blacklist TRANSACTION_isControllerAlwaysOnSupported:I = 0x1f

.field static final greylist-max-o TRANSACTION_isNdefPushEnabled:I = 0xc

.field static final blacklist TRANSACTION_isNfcSecureEnabled:I = 0x1a

.field static final greylist-max-o TRANSACTION_pausePolling:I = 0xd

.field static final blacklist TRANSACTION_registerControllerAlwaysOnListener:I = 0x20

.field static final greylist-max-o TRANSACTION_removeNfcUnlockHandler:I = 0x18

.field static final greylist-max-o TRANSACTION_resumePolling:I = 0xe

.field static final greylist-max-o TRANSACTION_setAppCallback:I = 0x10

.field static final blacklist TRANSACTION_setControllerAlwaysOn:I = 0x1d

.field static final greylist-max-o TRANSACTION_setForegroundDispatch:I = 0xf

.field static final blacklist TRANSACTION_setNfcSecure:I = 0x1c

.field static final greylist-max-o TRANSACTION_setP2pModes:I = 0x16

.field static final greylist-max-o TRANSACTION_setReaderMode:I = 0x15

.field static final blacklist TRANSACTION_unregisterControllerAlwaysOnListener:I = 0x21

.field static final greylist-max-o TRANSACTION_verifyNfcPermission:I = 0x19


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 139
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 140
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 148
    if-nez p0, :cond_4

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_4
    const-string v0, "android.nfc.INfcAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 152
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_14

    .line 153
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcAdapter;

    return-object v1

    .line 155
    :cond_14
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 164
    packed-switch p0, :pswitch_data_68

    .line 300
    const/4 v0, 0x0

    return-object v0

    .line 296
    :pswitch_5
    const-string v0, "unregisterControllerAlwaysOnListener"

    return-object v0

    .line 292
    :pswitch_8
    const-string v0, "registerControllerAlwaysOnListener"

    return-object v0

    .line 288
    :pswitch_b
    const-string v0, "isControllerAlwaysOnSupported"

    return-object v0

    .line 284
    :pswitch_e
    const-string v0, "isControllerAlwaysOn"

    return-object v0

    .line 280
    :pswitch_11
    const-string v0, "setControllerAlwaysOn"

    return-object v0

    .line 276
    :pswitch_14
    const-string v0, "setNfcSecure"

    return-object v0

    .line 272
    :pswitch_17
    const-string v0, "deviceSupportsNfcSecure"

    return-object v0

    .line 268
    :pswitch_1a
    const-string v0, "isNfcSecureEnabled"

    return-object v0

    .line 264
    :pswitch_1d
    const-string v0, "verifyNfcPermission"

    return-object v0

    .line 260
    :pswitch_20
    const-string v0, "removeNfcUnlockHandler"

    return-object v0

    .line 256
    :pswitch_23
    const-string v0, "addNfcUnlockHandler"

    return-object v0

    .line 252
    :pswitch_26
    const-string v0, "setP2pModes"

    return-object v0

    .line 248
    :pswitch_29
    const-string v0, "setReaderMode"

    return-object v0

    .line 244
    :pswitch_2c
    const-string v0, "dispatch"

    return-object v0

    .line 240
    :pswitch_2f
    const-string v0, "ignore"

    return-object v0

    .line 236
    :pswitch_32
    const-string v0, "invokeBeamInternal"

    return-object v0

    .line 232
    :pswitch_35
    const-string v0, "invokeBeam"

    return-object v0

    .line 228
    :pswitch_38
    const-string v0, "setAppCallback"

    return-object v0

    .line 224
    :pswitch_3b
    const-string v0, "setForegroundDispatch"

    return-object v0

    .line 220
    :pswitch_3e
    const-string v0, "resumePolling"

    return-object v0

    .line 216
    :pswitch_41
    const-string v0, "pausePolling"

    return-object v0

    .line 212
    :pswitch_44
    const-string v0, "isNdefPushEnabled"

    return-object v0

    .line 208
    :pswitch_47
    const-string v0, "disableNdefPush"

    return-object v0

    .line 204
    :pswitch_4a
    const-string v0, "enableNdefPush"

    return-object v0

    .line 200
    :pswitch_4d
    const-string v0, "enable"

    return-object v0

    .line 196
    :pswitch_50
    const-string v0, "disable"

    return-object v0

    .line 192
    :pswitch_53
    const-string v0, "getState"

    return-object v0

    .line 188
    :pswitch_56
    const-string v0, "getNfcAdapterVendorInterface"

    return-object v0

    .line 184
    :pswitch_59
    const-string v0, "getNfcDtaInterface"

    return-object v0

    .line 180
    :pswitch_5c
    const-string v0, "getNfcAdapterExtrasInterface"

    return-object v0

    .line 176
    :pswitch_5f
    const-string v0, "getNfcFCardEmulationInterface"

    return-object v0

    .line 172
    :pswitch_62
    const-string v0, "getNfcCardEmulationInterface"

    return-object v0

    .line 168
    :pswitch_65
    const-string v0, "getNfcTagInterface"

    return-object v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 159
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1212
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 307
    invoke-static {p1}, Landroid/nfc/INfcAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    const-string v0, "android.nfc.INfcAdapter"

    .line 312
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 313
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    :cond_d
    packed-switch p1, :pswitch_data_23a

    .line 323
    packed-switch p1, :pswitch_data_240

    .line 614
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 319
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    return v1

    .line 606
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcControllerAlwaysOnListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcControllerAlwaysOnListener;

    move-result-object v2

    .line 607
    .local v2, "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->unregisterControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    goto/16 :goto_238

    .line 597
    .end local v2    # "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcControllerAlwaysOnListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcControllerAlwaysOnListener;

    move-result-object v2

    .line 598
    .restart local v2    # "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->registerControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    goto/16 :goto_238

    .line 589
    .end local v2    # "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    :pswitch_42
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isControllerAlwaysOnSupported()Z

    move-result v2

    .line 590
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 592
    goto/16 :goto_238

    .line 582
    .end local v2    # "_result":Z
    :pswitch_4e
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isControllerAlwaysOn()Z

    move-result v2

    .line 583
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 585
    goto/16 :goto_238

    .line 573
    .end local v2    # "_result":Z
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 574
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setControllerAlwaysOn(Z)Z

    move-result v3

    .line 576
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 578
    goto/16 :goto_238

    .line 563
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 564
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setNfcSecure(Z)Z

    move-result v3

    .line 566
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 568
    goto/16 :goto_238

    .line 555
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_80
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->deviceSupportsNfcSecure()Z

    move-result v2

    .line 556
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 558
    goto/16 :goto_238

    .line 548
    .end local v2    # "_result":Z
    :pswitch_8c
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNfcSecureEnabled()Z

    move-result v2

    .line 549
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 551
    goto/16 :goto_238

    .line 542
    .end local v2    # "_result":Z
    :pswitch_98
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto/16 :goto_238

    .line 534
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v2

    .line 535
    .local v2, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    goto/16 :goto_238

    .line 523
    .end local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v2

    .line 525
    .restart local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 526
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    goto/16 :goto_238

    .line 512
    .end local v2    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v3    # "_arg1":[I
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 514
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 515
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    goto/16 :goto_238

    .line 497
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 499
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v3

    .line 501
    .local v3, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 503
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 504
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    goto/16 :goto_238

    .line 488
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :pswitch_100
    sget-object v2, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 489
    .local v2, "_arg0":Landroid/nfc/Tag;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    goto/16 :goto_238

    .line 474
    .end local v2    # "_arg0":Landroid/nfc/Tag;
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 476
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 478
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/ITagRemovedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/ITagRemovedCallback;

    move-result-object v4

    .line 479
    .local v4, "_arg2":Landroid/nfc/ITagRemovedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    move-result v5

    .line 481
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 483
    goto/16 :goto_238

    .line 466
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/nfc/ITagRemovedCallback;
    .end local v5    # "_result":Z
    :pswitch_132
    sget-object v2, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/BeamShareData;

    .line 467
    .local v2, "_arg0":Landroid/nfc/BeamShareData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    .line 469
    goto/16 :goto_238

    .line 460
    .end local v2    # "_arg0":Landroid/nfc/BeamShareData;
    :pswitch_142
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    .line 461
    goto/16 :goto_238

    .line 452
    :pswitch_147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v2

    .line 453
    .local v2, "_arg0":Landroid/nfc/IAppCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    goto/16 :goto_238

    .line 439
    .end local v2    # "_arg0":Landroid/nfc/IAppCallback;
    :pswitch_15a
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 441
    .local v2, "_arg0":Landroid/app/PendingIntent;
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    .line 443
    .local v3, "_arg1":[Landroid/content/IntentFilter;
    sget-object v4, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/TechListParcel;

    .line 444
    .local v4, "_arg2":Landroid/nfc/TechListParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    goto/16 :goto_238

    .line 432
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":[Landroid/content/IntentFilter;
    .end local v4    # "_arg2":Landroid/nfc/TechListParcel;
    :pswitch_17d
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    goto/16 :goto_238

    .line 424
    :pswitch_185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 425
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    goto/16 :goto_238

    .line 416
    .end local v2    # "_arg0":I
    :pswitch_194
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v2

    .line 417
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 419
    goto/16 :goto_238

    .line 409
    .end local v2    # "_result":Z
    :pswitch_1a0
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v2

    .line 410
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 412
    goto/16 :goto_238

    .line 402
    .end local v2    # "_result":Z
    :pswitch_1ac
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v2

    .line 403
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 405
    goto/16 :goto_238

    .line 395
    .end local v2    # "_result":Z
    :pswitch_1b8
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v2

    .line 396
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 398
    goto/16 :goto_238

    .line 386
    .end local v2    # "_result":Z
    :pswitch_1c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 387
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v3

    .line 389
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 391
    goto :goto_238

    .line 378
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_1d6
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v2

    .line 379
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    goto :goto_238

    .line 369
    .end local v2    # "_result":I
    :pswitch_1e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterVendorInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 372
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 374
    goto :goto_238

    .line 359
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_1f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 360
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;

    move-result-object v3

    .line 362
    .local v3, "_result":Landroid/nfc/INfcDta;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 364
    goto :goto_238

    .line 349
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/nfc/INfcDta;
    :pswitch_205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 350
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v3

    .line 352
    .local v3, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 354
    goto :goto_238

    .line 341
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/nfc/INfcAdapterExtras;
    :pswitch_217
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v2

    .line 342
    .local v2, "_result":Landroid/nfc/INfcFCardEmulation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 344
    goto :goto_238

    .line 334
    .end local v2    # "_result":Landroid/nfc/INfcFCardEmulation;
    :pswitch_222
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v2

    .line 335
    .local v2, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 337
    goto :goto_238

    .line 327
    .end local v2    # "_result":Landroid/nfc/INfcCardEmulation;
    :pswitch_22d
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    .line 328
    .local v2, "_result":Landroid/nfc/INfcTag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 330
    nop

    .line 617
    .end local v2    # "_result":Landroid/nfc/INfcTag;
    :goto_238
    return v1

    nop

    :pswitch_data_23a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_22d
        :pswitch_222
        :pswitch_217
        :pswitch_205
        :pswitch_1f3
        :pswitch_1e1
        :pswitch_1d6
        :pswitch_1c4
        :pswitch_1b8
        :pswitch_1ac
        :pswitch_1a0
        :pswitch_194
        :pswitch_185
        :pswitch_17d
        :pswitch_15a
        :pswitch_147
        :pswitch_142
        :pswitch_132
        :pswitch_113
        :pswitch_100
        :pswitch_dd
        :pswitch_ca
        :pswitch_b3
        :pswitch_a0
        :pswitch_98
        :pswitch_8c
        :pswitch_80
        :pswitch_6d
        :pswitch_5a
        :pswitch_4e
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
