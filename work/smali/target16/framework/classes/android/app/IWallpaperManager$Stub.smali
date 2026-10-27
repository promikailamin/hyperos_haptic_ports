.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final blacklist TRANSACTION_addOnLocalColorsChangedListener:I = 0x1d

.field static final greylist-max-o TRANSACTION_clearWallpaper:I = 0x10

.field static final blacklist TRANSACTION_getBitmapCrop:I = 0xa

.field static final blacklist TRANSACTION_getBitmapCrops:I = 0x7

.field static final blacklist TRANSACTION_getCurrentBitmapCrops:I = 0x8

.field static final blacklist TRANSACTION_getFutureBitmapCrops:I = 0x9

.field static final greylist-max-o TRANSACTION_getHeightHint:I = 0x14

.field static final greylist-max-o TRANSACTION_getName:I = 0x16

.field static final greylist-max-o TRANSACTION_getWallpaper:I = 0x5

.field static final greylist-max-o TRANSACTION_getWallpaperColors:I = 0x1b

.field static final blacklist TRANSACTION_getWallpaperDimAmount:I = 0x24

.field static final greylist-max-o TRANSACTION_getWallpaperIdForUser:I = 0xb

.field static final greylist-max-o TRANSACTION_getWallpaperInfo:I = 0xc

.field static final blacklist TRANSACTION_getWallpaperInfoFile:I = 0xf

.field static final blacklist TRANSACTION_getWallpaperInfoWithFlags:I = 0xd

.field static final blacklist TRANSACTION_getWallpaperInstance:I = 0xe

.field static final blacklist TRANSACTION_getWallpaperWithFeature:I = 0x6

.field static final greylist-max-o TRANSACTION_getWidthHint:I = 0x13

.field static final greylist-max-o TRANSACTION_hasNamedWallpaper:I = 0x11

.field static final greylist-max-o TRANSACTION_isSetWallpaperAllowed:I = 0x19

.field static final blacklist TRANSACTION_isStaticWallpaper:I = 0x26

.field static final greylist-max-o TRANSACTION_isWallpaperBackupEligible:I = 0x1a

.field static final greylist-max-o TRANSACTION_isWallpaperSupported:I = 0x18

.field static final blacklist TRANSACTION_lockScreenWallpaperExists:I = 0x25

.field static final blacklist TRANSACTION_notifyGoingToSleep:I = 0x22

.field static final blacklist TRANSACTION_notifyWakingUp:I = 0x21

.field static final greylist-max-o TRANSACTION_registerWallpaperColorsCallback:I = 0x1e

.field static final blacklist TRANSACTION_removeOnLocalColorsChangedListener:I = 0x1c

.field static final greylist-max-o TRANSACTION_setDimensionHints:I = 0x12

.field static final greylist-max-o TRANSACTION_setDisplayPadding:I = 0x15

.field static final greylist-max-o TRANSACTION_setInAmbientMode:I = 0x20

.field static final greylist-max-o TRANSACTION_setWallpaper:I = 0x1

.field static final greylist-max-o TRANSACTION_setWallpaperComponent:I = 0x3

.field static final greylist-max-o TRANSACTION_setWallpaperComponentChecked:I = 0x2

.field static final blacklist TRANSACTION_setWallpaperDescriptionId:I = 0x4

.field static final blacklist TRANSACTION_setWallpaperDimAmount:I = 0x23

.field static final greylist-max-o TRANSACTION_settingsRestored:I = 0x17

.field static final greylist-max-o TRANSACTION_unregisterWallpaperColorsCallback:I = 0x1f


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 290
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 291
    const-string v0, "android.app.IWallpaperManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
    .registers 3

    .line 299
    if-nez p0, :cond_4

    .line 300
    const/4 p0, 0x0

    return-object p0

    .line 302
    :cond_4
    const-string v0, "android.app.IWallpaperManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_13

    .line 304
    check-cast v0, Landroid/app/IWallpaperManager;

    return-object v0

    .line 306
    :cond_13
    new-instance v0, Landroid/app/IWallpaperManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 315
    packed-switch p0, :pswitch_data_8a

    .line 471
    const/4 p0, 0x0

    return-object p0

    .line 467
    :pswitch_5
    const-string/jumbo p0, "isStaticWallpaper"

    return-object p0

    .line 463
    :pswitch_9
    const-string/jumbo p0, "lockScreenWallpaperExists"

    return-object p0

    .line 459
    :pswitch_d
    const-string p0, "getWallpaperDimAmount"

    return-object p0

    .line 455
    :pswitch_10
    const-string/jumbo p0, "setWallpaperDimAmount"

    return-object p0

    .line 451
    :pswitch_14
    const-string/jumbo p0, "notifyGoingToSleep"

    return-object p0

    .line 447
    :pswitch_18
    const-string/jumbo p0, "notifyWakingUp"

    return-object p0

    .line 443
    :pswitch_1c
    const-string/jumbo p0, "setInAmbientMode"

    return-object p0

    .line 439
    :pswitch_20
    const-string/jumbo p0, "unregisterWallpaperColorsCallback"

    return-object p0

    .line 435
    :pswitch_24
    const-string/jumbo p0, "registerWallpaperColorsCallback"

    return-object p0

    .line 431
    :pswitch_28
    const-string p0, "addOnLocalColorsChangedListener"

    return-object p0

    .line 427
    :pswitch_2b
    const-string/jumbo p0, "removeOnLocalColorsChangedListener"

    return-object p0

    .line 423
    :pswitch_2f
    const-string p0, "getWallpaperColors"

    return-object p0

    .line 419
    :pswitch_32
    const-string/jumbo p0, "isWallpaperBackupEligible"

    return-object p0

    .line 415
    :pswitch_36
    const-string/jumbo p0, "isSetWallpaperAllowed"

    return-object p0

    .line 411
    :pswitch_3a
    const-string/jumbo p0, "isWallpaperSupported"

    return-object p0

    .line 407
    :pswitch_3e
    const-string/jumbo p0, "settingsRestored"

    return-object p0

    .line 403
    :pswitch_42
    const-string p0, "getName"

    return-object p0

    .line 399
    :pswitch_45
    const-string/jumbo p0, "setDisplayPadding"

    return-object p0

    .line 395
    :pswitch_49
    const-string p0, "getHeightHint"

    return-object p0

    .line 391
    :pswitch_4c
    const-string p0, "getWidthHint"

    return-object p0

    .line 387
    :pswitch_4f
    const-string/jumbo p0, "setDimensionHints"

    return-object p0

    .line 383
    :pswitch_53
    const-string p0, "hasNamedWallpaper"

    return-object p0

    .line 379
    :pswitch_56
    const-string p0, "clearWallpaper"

    return-object p0

    .line 375
    :pswitch_59
    const-string p0, "getWallpaperInfoFile"

    return-object p0

    .line 371
    :pswitch_5c
    const-string p0, "getWallpaperInstance"

    return-object p0

    .line 367
    :pswitch_5f
    const-string p0, "getWallpaperInfoWithFlags"

    return-object p0

    .line 363
    :pswitch_62
    const-string p0, "getWallpaperInfo"

    return-object p0

    .line 359
    :pswitch_65
    const-string p0, "getWallpaperIdForUser"

    return-object p0

    .line 355
    :pswitch_68
    const-string p0, "getBitmapCrop"

    return-object p0

    .line 351
    :pswitch_6b
    const-string p0, "getFutureBitmapCrops"

    return-object p0

    .line 347
    :pswitch_6e
    const-string p0, "getCurrentBitmapCrops"

    return-object p0

    .line 343
    :pswitch_71
    const-string p0, "getBitmapCrops"

    return-object p0

    .line 339
    :pswitch_74
    const-string p0, "getWallpaperWithFeature"

    return-object p0

    .line 335
    :pswitch_77
    const-string p0, "getWallpaper"

    return-object p0

    .line 331
    :pswitch_7a
    const-string/jumbo p0, "setWallpaperDescriptionId"

    return-object p0

    .line 327
    :pswitch_7e
    const-string/jumbo p0, "setWallpaperComponent"

    return-object p0

    .line 323
    :pswitch_82
    const-string/jumbo p0, "setWallpaperComponentChecked"

    return-object p0

    .line 319
    :pswitch_86
    const-string/jumbo p0, "setWallpaper"

    return-object p0

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 310
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1854
    const/16 v0, 0x25

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 478
    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    nop

    .line 483
    const-string v3, "android.app.IWallpaperManager"

    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 484
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 487
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 488
    return v9

    .line 490
    :cond_17
    packed-switch p1, :pswitch_data_3dc

    .line 969
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 960
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    invoke-virtual {p0, v1}, Landroid/app/IWallpaperManager$Stub;->isStaticWallpaper(I)Z

    move-result v0

    .line 963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 965
    goto/16 :goto_3da

    .line 952
    :pswitch_32
    invoke-virtual {p0}, Landroid/app/IWallpaperManager$Stub;->lockScreenWallpaperExists()Z

    move-result v0

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 955
    goto/16 :goto_3da

    .line 945
    :pswitch_3e
    invoke-virtual {p0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperDimAmount()F

    move-result v0

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 948
    goto/16 :goto_3da

    .line 938
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, v1}, Landroid/app/IWallpaperManager$Stub;->setWallpaperDimAmount(F)V

    .line 941
    goto/16 :goto_3da

    .line 925
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 929
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->notifyGoingToSleep(IILandroid/os/Bundle;)V

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    goto/16 :goto_3da

    .line 913
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 915
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 917
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 919
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->notifyWakingUp(IILandroid/os/Bundle;)V

    .line 920
    goto/16 :goto_3da

    .line 903
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 907
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->setInAmbientMode(ZJ)V

    .line 908
    goto/16 :goto_3da

    .line 890
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v1

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 897
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    goto/16 :goto_3da

    .line 877
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v1

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IWallpaperManager$Stub;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    goto/16 :goto_3da

    .line 860
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v1

    .line 862
    sget-object v3, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 864
    move-object v2, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 871
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    goto/16 :goto_3da

    .line 843
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v1

    .line 845
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    goto/16 :goto_3da

    .line 829
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 838
    goto/16 :goto_3da

    .line 817
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 820
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupEligible(II)Z

    move-result v0

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 824
    goto/16 :goto_3da

    .line 807
    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {p0, v1}, Landroid/app/IWallpaperManager$Stub;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    .line 810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 812
    goto/16 :goto_3da

    .line 797
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {p0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 802
    goto/16 :goto_3da

    .line 790
    :pswitch_174
    invoke-virtual {p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    .line 791
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    goto/16 :goto_3da

    .line 783
    :pswitch_17c
    invoke-virtual {p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    move-result-object v0

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 786
    goto/16 :goto_3da

    .line 771
    :pswitch_188
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    goto/16 :goto_3da

    .line 761
    :pswitch_1a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, v1}, Landroid/app/IWallpaperManager$Stub;->getHeightHint(I)I

    move-result v0

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    goto/16 :goto_3da

    .line 751
    :pswitch_1b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {p0, v1}, Landroid/app/IWallpaperManager$Stub;->getWidthHint(I)I

    move-result v0

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    goto/16 :goto_3da

    .line 736
    :pswitch_1c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;I)V

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    goto/16 :goto_3da

    .line 726
    :pswitch_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, v1}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 731
    goto/16 :goto_3da

    .line 713
    :pswitch_1f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;II)V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_3da

    .line 703
    :pswitch_20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {p0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfoFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 708
    goto/16 :goto_3da

    .line 691
    :pswitch_221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {p0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInstance(II)Landroid/app/wallpaper/WallpaperInstance;

    move-result-object v0

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 698
    goto/16 :goto_3da

    .line 679
    :pswitch_238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 686
    goto/16 :goto_3da

    .line 669
    :pswitch_24f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-virtual {p0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 674
    goto/16 :goto_3da

    .line 657
    :pswitch_262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {p0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperIdForUser(II)I

    move-result v0

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    goto/16 :goto_3da

    .line 643
    :pswitch_279
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 647
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getBitmapCrop(Landroid/graphics/Point;[ILjava/util/List;)Landroid/graphics/Rect;

    move-result-object v0

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 652
    goto/16 :goto_3da

    .line 627
    :pswitch_29a
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 629
    sget-object v2, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 633
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->getFutureBitmapCrops(Landroid/graphics/Point;Ljava/util/List;[ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 638
    goto/16 :goto_3da

    .line 615
    :pswitch_2c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getCurrentBitmapCrops(II)Landroid/os/Bundle;

    move-result-object v0

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 622
    goto/16 :goto_3da

    .line 599
    :pswitch_2d8
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->getBitmapCrops(Ljava/util/List;IZI)Ljava/util/List;

    move-result-object v0

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 610
    goto/16 :goto_3da

    .line 576
    :pswitch_2f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v3

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 584
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IWallpaperManager$Stub;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 593
    invoke-virtual {p3, v5, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 594
    goto/16 :goto_3da

    .line 557
    :pswitch_32d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v2

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 563
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 570
    invoke-virtual {p3, v4, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 571
    goto/16 :goto_3da

    .line 544
    :pswitch_359
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setWallpaperDescriptionId(Ljava/lang/String;II)V

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    goto :goto_3da

    .line 535
    :pswitch_36f
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, v1}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    goto :goto_3da

    .line 520
    :pswitch_381
    sget-object v1, Landroid/app/wallpaper/WallpaperDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/wallpaper/WallpaperDescription;

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    goto :goto_3da

    .line 495
    :pswitch_39f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 499
    sget-object v3, Landroid/app/wallpaper/WallpaperDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/wallpaper/WallpaperDescription;

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 503
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v7

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/app/wallpaper/WallpaperDescription;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 514
    invoke-virtual {p3, v5, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 515
    nop

    .line 972
    :goto_3da
    return v9

    nop

    :pswitch_data_3dc
    .packed-switch 0x1
        :pswitch_39f
        :pswitch_381
        :pswitch_36f
        :pswitch_359
        :pswitch_32d
        :pswitch_2f9
        :pswitch_2d8
        :pswitch_2c1
        :pswitch_29a
        :pswitch_279
        :pswitch_262
        :pswitch_24f
        :pswitch_238
        :pswitch_221
        :pswitch_20e
        :pswitch_1f7
        :pswitch_1e4
        :pswitch_1c9
        :pswitch_1b6
        :pswitch_1a3
        :pswitch_188
        :pswitch_17c
        :pswitch_174
        :pswitch_161
        :pswitch_14e
        :pswitch_137
        :pswitch_11c
        :pswitch_f6
        :pswitch_cf
        :pswitch_b4
        :pswitch_99
        :pswitch_89
        :pswitch_71
        :pswitch_56
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
