.class public abstract Landroid/app/IUiModeManager$Stub;
.super Landroid/os/Binder;
.source "IUiModeManager.java"

# interfaces
.implements Landroid/app/IUiModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManager"

.field static final blacklist TRANSACTION_addCallback:I = 0x1

.field static final blacklist TRANSACTION_addOnProjectionStateChangedListener:I = 0x18

.field static final greylist-max-o TRANSACTION_disableCarMode:I = 0x4

.field static final blacklist TRANSACTION_disableCarModeByCallingPackage:I = 0x5

.field static final greylist-max-o TRANSACTION_enableCarMode:I = 0x3

.field static final blacklist TRANSACTION_getActiveProjectionTypes:I = 0x1b

.field static final blacklist TRANSACTION_getAttentionModeThemeOverlay:I = 0xc

.field static final blacklist TRANSACTION_getContrast:I = 0x1c

.field static final greylist-max-o TRANSACTION_getCurrentModeType:I = 0x6

.field static final blacklist TRANSACTION_getCustomNightModeEnd:I = 0x14

.field static final blacklist TRANSACTION_getCustomNightModeStart:I = 0x12

.field static final blacklist TRANSACTION_getForceInvertOverrideState:I = 0x1e

.field static final blacklist TRANSACTION_getForceInvertState:I = 0x1d

.field static final greylist-max-o TRANSACTION_getNightMode:I = 0x8

.field static final blacklist TRANSACTION_getNightModeCustomType:I = 0xa

.field static final blacklist TRANSACTION_getProjectingPackages:I = 0x1a

.field static final greylist-max-o TRANSACTION_isNightModeLocked:I = 0xf

.field static final greylist-max-o TRANSACTION_isUiModeLocked:I = 0xe

.field static final blacklist TRANSACTION_releaseProjection:I = 0x17

.field static final blacklist TRANSACTION_removeCallback:I = 0x2

.field static final blacklist TRANSACTION_removeOnProjectionStateChangedListener:I = 0x19

.field static final blacklist TRANSACTION_requestProjection:I = 0x16

.field static final blacklist TRANSACTION_setApplicationNightMode:I = 0xd

.field static final blacklist TRANSACTION_setAttentionModeThemeOverlay:I = 0xb

.field static final blacklist TRANSACTION_setCustomNightModeEnd:I = 0x15

.field static final blacklist TRANSACTION_setCustomNightModeStart:I = 0x13

.field static final greylist-max-o TRANSACTION_setNightMode:I = 0x7

.field static final blacklist TRANSACTION_setNightModeActivated:I = 0x11

.field static final blacklist TRANSACTION_setNightModeActivatedForCustomMode:I = 0x10

.field static final blacklist TRANSACTION_setNightModeCustomType:I = 0x9


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    nop

    .line 253
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 252
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IUiModeManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 254
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 242
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 243
    const-string v0, "android.app.IUiModeManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiModeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 244
    if-eqz p1, :cond_d

    .line 247
    iput-object p1, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 248
    return-void

    .line 245
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-p asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;
    .registers 3

    .line 261
    if-nez p0, :cond_4

    .line 262
    const/4 p0, 0x0

    return-object p0

    .line 264
    :cond_4
    const-string v0, "android.app.IUiModeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IUiModeManager;

    if-eqz v1, :cond_13

    .line 266
    check-cast v0, Landroid/app/IUiModeManager;

    return-object v0

    .line 268
    :cond_13
    new-instance v0, Landroid/app/IUiModeManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IUiModeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 277
    packed-switch p0, :pswitch_data_6c

    .line 401
    const/4 p0, 0x0

    return-object p0

    .line 397
    :pswitch_5
    const-string p0, "getForceInvertOverrideState"

    return-object p0

    .line 393
    :pswitch_8
    const-string p0, "getForceInvertState"

    return-object p0

    .line 389
    :pswitch_b
    const-string p0, "getContrast"

    return-object p0

    .line 385
    :pswitch_e
    const-string p0, "getActiveProjectionTypes"

    return-object p0

    .line 381
    :pswitch_11
    const-string p0, "getProjectingPackages"

    return-object p0

    .line 377
    :pswitch_14
    const-string/jumbo p0, "removeOnProjectionStateChangedListener"

    return-object p0

    .line 373
    :pswitch_18
    const-string p0, "addOnProjectionStateChangedListener"

    return-object p0

    .line 369
    :pswitch_1b
    const-string/jumbo p0, "releaseProjection"

    return-object p0

    .line 365
    :pswitch_1f
    const-string/jumbo p0, "requestProjection"

    return-object p0

    .line 361
    :pswitch_23
    const-string/jumbo p0, "setCustomNightModeEnd"

    return-object p0

    .line 357
    :pswitch_27
    const-string p0, "getCustomNightModeEnd"

    return-object p0

    .line 353
    :pswitch_2a
    const-string/jumbo p0, "setCustomNightModeStart"

    return-object p0

    .line 349
    :pswitch_2e
    const-string p0, "getCustomNightModeStart"

    return-object p0

    .line 345
    :pswitch_31
    const-string/jumbo p0, "setNightModeActivated"

    return-object p0

    .line 341
    :pswitch_35
    const-string/jumbo p0, "setNightModeActivatedForCustomMode"

    return-object p0

    .line 337
    :pswitch_39
    const-string p0, "isNightModeLocked"

    return-object p0

    .line 333
    :pswitch_3c
    const-string/jumbo p0, "isUiModeLocked"

    return-object p0

    .line 329
    :pswitch_40
    const-string/jumbo p0, "setApplicationNightMode"

    return-object p0

    .line 325
    :pswitch_44
    const-string p0, "getAttentionModeThemeOverlay"

    return-object p0

    .line 321
    :pswitch_47
    const-string/jumbo p0, "setAttentionModeThemeOverlay"

    return-object p0

    .line 317
    :pswitch_4b
    const-string p0, "getNightModeCustomType"

    return-object p0

    .line 313
    :pswitch_4e
    const-string/jumbo p0, "setNightModeCustomType"

    return-object p0

    .line 309
    :pswitch_52
    const-string p0, "getNightMode"

    return-object p0

    .line 305
    :pswitch_55
    const-string/jumbo p0, "setNightMode"

    return-object p0

    .line 301
    :pswitch_59
    const-string p0, "getCurrentModeType"

    return-object p0

    .line 297
    :pswitch_5c
    const-string p0, "disableCarModeByCallingPackage"

    return-object p0

    .line 293
    :pswitch_5f
    const-string p0, "disableCarMode"

    return-object p0

    .line 289
    :pswitch_62
    const-string p0, "enableCarMode"

    return-object p0

    .line 285
    :pswitch_65
    const-string/jumbo p0, "removeCallback"

    return-object p0

    .line 281
    :pswitch_69
    const-string p0, "addCallback"

    return-object p0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_69
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_55
        :pswitch_52
        :pswitch_4e
        :pswitch_4b
        :pswitch_47
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addOnProjectionStateChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1387
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1388
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 272
    return-object p0
.end method

.method protected blacklist getActiveProjectionTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1402
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1403
    return-void
.end method

.method protected blacklist getAttentionModeThemeOverlay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1372
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1410
    const/16 v0, 0x1d

    return v0
.end method

.method protected blacklist getNightModeCustomType_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1361
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1362
    return-void
.end method

.method protected blacklist getProjectingPackages_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1398
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 408
    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    nop

    .line 413
    const-string v0, "android.app.IUiModeManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 414
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 417
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    return v1

    .line 420
    :cond_17
    packed-switch p1, :pswitch_data_22c

    .line 712
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 701
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {p0, p1, p4}, Landroid/app/IUiModeManager$Stub;->getForceInvertOverrideState(ILjava/lang/String;)I

    move-result p1

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    goto/16 :goto_22a

    .line 691
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->getForceInvertState(I)I

    move-result p1

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    goto/16 :goto_22a

    .line 681
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->getContrast(I)F

    move-result p1

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 686
    goto/16 :goto_22a

    .line 673
    :pswitch_5c
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getActiveProjectionTypes()I

    move-result p1

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    goto/16 :goto_22a

    .line 664
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->getProjectingPackages(I)Ljava/util/List;

    move-result-object p1

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 669
    goto/16 :goto_22a

    .line 655
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object p1

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V

    .line 658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    goto/16 :goto_22a

    .line 644
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object p1

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-virtual {p0, p1, p4}, Landroid/app/IUiModeManager$Stub;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    .line 649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    goto/16 :goto_22a

    .line 632
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, p1, p4}, Landroid/app/IUiModeManager$Stub;->releaseProjection(ILjava/lang/String;)Z

    move-result p1

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 639
    goto/16 :goto_22a

    .line 618
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IUiModeManager$Stub;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result p1

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 627
    goto/16 :goto_22a

    .line 609
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeEnd(J)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_22a

    .line 601
    :pswitch_e6
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeEnd()J

    move-result-wide p1

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 604
    goto/16 :goto_22a

    .line 593
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeStart(J)V

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    goto/16 :goto_22a

    .line 585
    :pswitch_101
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeStart()J

    move-result-wide p1

    .line 586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 588
    goto/16 :goto_22a

    .line 576
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->setNightModeActivated(Z)Z

    move-result p1

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 581
    goto/16 :goto_22a

    .line 564
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, p1, p4}, Landroid/app/IUiModeManager$Stub;->setNightModeActivatedForCustomMode(IZ)Z

    move-result p1

    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 571
    goto/16 :goto_22a

    .line 556
    :pswitch_137
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isNightModeLocked()Z

    move-result p1

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 559
    goto/16 :goto_22a

    .line 549
    :pswitch_143
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isUiModeLocked()Z

    move-result p1

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 552
    goto/16 :goto_22a

    .line 541
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->setApplicationNightMode(I)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto/16 :goto_22a

    .line 533
    :pswitch_15e
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getAttentionModeThemeOverlay()I

    move-result p1

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    goto/16 :goto_22a

    .line 525
    :pswitch_16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->setAttentionModeThemeOverlay(I)V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    goto/16 :goto_22a

    .line 517
    :pswitch_179
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightModeCustomType()I

    move-result p1

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    goto/16 :goto_22a

    .line 509
    :pswitch_185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->setNightModeCustomType(I)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto/16 :goto_22a

    .line 499
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->getNightMode(I)I

    move-result p1

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    goto/16 :goto_22a

    .line 490
    :pswitch_1a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->setNightMode(I)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    goto/16 :goto_22a

    .line 480
    :pswitch_1b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->getCurrentModeType(I)I

    move-result p1

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    goto :goto_22a

    .line 469
    :pswitch_1c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, p1, p4}, Landroid/app/IUiModeManager$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    goto :goto_22a

    .line 460
    :pswitch_1da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManager$Stub;->disableCarMode(I)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    goto :goto_22a

    .line 447
    :pswitch_1e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, p1, p4, v0}, Landroid/app/IUiModeManager$Stub;->enableCarMode(IILjava/lang/String;)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    goto :goto_22a

    .line 436
    :pswitch_1fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IUiModeManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManagerCallback;

    move-result-object p1

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, p1, p4}, Landroid/app/IUiModeManager$Stub;->removeCallback(Landroid/app/IUiModeManagerCallback;I)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    goto :goto_22a

    .line 425
    :pswitch_214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IUiModeManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManagerCallback;

    move-result-object p1

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {p0, p1, p4}, Landroid/app/IUiModeManager$Stub;->addCallback(Landroid/app/IUiModeManagerCallback;I)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    nop

    .line 715
    :goto_22a
    return v1

    nop

    :pswitch_data_22c
    .packed-switch 0x1
        :pswitch_214
        :pswitch_1fe
        :pswitch_1e8
        :pswitch_1da
        :pswitch_1c8
        :pswitch_1b6
        :pswitch_1a7
        :pswitch_194
        :pswitch_185
        :pswitch_179
        :pswitch_16a
        :pswitch_15e
        :pswitch_14f
        :pswitch_143
        :pswitch_137
        :pswitch_120
        :pswitch_10d
        :pswitch_101
        :pswitch_f2
        :pswitch_e6
        :pswitch_d7
        :pswitch_bc
        :pswitch_a5
        :pswitch_8e
        :pswitch_7b
        :pswitch_68
        :pswitch_5c
        :pswitch_49
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist removeOnProjectionStateChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1392
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1393
    return-void
.end method

.method protected blacklist setAttentionModeThemeOverlay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1366
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1367
    return-void
.end method

.method protected blacklist setNightModeCustomType_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1356
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1357
    return-void
.end method
