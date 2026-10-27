.class public abstract Lcom/android/internal/compat/IPlatformCompat$Stub;
.super Landroid/os/Binder;
.source "IPlatformCompat.java"

# interfaces
.implements Lcom/android/internal/compat/IPlatformCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/IPlatformCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearOverride:I = 0xb

.field static final blacklist TRANSACTION_clearOverrideForTest:I = 0xc

.field static final blacklist TRANSACTION_clearOverrides:I = 0x11

.field static final blacklist TRANSACTION_clearOverridesForTest:I = 0x12

.field static final blacklist TRANSACTION_disableTargetSdkChanges:I = 0x10

.field static final blacklist TRANSACTION_enableTargetSdkChanges:I = 0xf

.field static final blacklist TRANSACTION_getAppConfig:I = 0x13

.field static final blacklist TRANSACTION_getOverrideValidator:I = 0x16

.field static final blacklist TRANSACTION_isChangeEnabled:I = 0x4

.field static final blacklist TRANSACTION_isChangeEnabledByPackageName:I = 0x5

.field static final blacklist TRANSACTION_isChangeEnabledByUid:I = 0x6

.field static final blacklist TRANSACTION_listAllChanges:I = 0x14

.field static final blacklist TRANSACTION_listUIChanges:I = 0x15

.field static final blacklist TRANSACTION_putAllOverridesOnReleaseBuilds:I = 0x8

.field static final blacklist TRANSACTION_putOverridesOnReleaseBuilds:I = 0x9

.field static final blacklist TRANSACTION_removeAllOverridesOnReleaseBuilds:I = 0xd

.field static final blacklist TRANSACTION_removeOverridesOnReleaseBuilds:I = 0xe

.field static final blacklist TRANSACTION_reportChange:I = 0x1

.field static final blacklist TRANSACTION_reportChangeByPackageName:I = 0x2

.field static final blacklist TRANSACTION_reportChangeByUid:I = 0x3

.field static final blacklist TRANSACTION_setOverrides:I = 0x7

.field static final blacklist TRANSACTION_setOverridesForDownscale:I = 0x17

.field static final blacklist TRANSACTION_setOverridesForTest:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 372
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 373
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 381
    if-nez p0, :cond_4

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 384
    :cond_4
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 385
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/compat/IPlatformCompat;

    if-eqz v1, :cond_14

    .line 386
    move-object v1, v0

    check-cast v1, Lcom/android/internal/compat/IPlatformCompat;

    return-object v1

    .line 388
    :cond_14
    new-instance v1, Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 397
    packed-switch p0, :pswitch_data_54

    .line 493
    const/4 v0, 0x0

    return-object v0

    .line 489
    :pswitch_5
    const-string/jumbo v0, "setOverridesForDownscale"

    return-object v0

    .line 485
    :pswitch_9
    const-string v0, "getOverrideValidator"

    return-object v0

    .line 481
    :pswitch_c
    const-string v0, "listUIChanges"

    return-object v0

    .line 477
    :pswitch_f
    const-string v0, "listAllChanges"

    return-object v0

    .line 473
    :pswitch_12
    const-string v0, "getAppConfig"

    return-object v0

    .line 469
    :pswitch_15
    const-string v0, "clearOverridesForTest"

    return-object v0

    .line 465
    :pswitch_18
    const-string v0, "clearOverrides"

    return-object v0

    .line 461
    :pswitch_1b
    const-string v0, "disableTargetSdkChanges"

    return-object v0

    .line 457
    :pswitch_1e
    const-string v0, "enableTargetSdkChanges"

    return-object v0

    .line 453
    :pswitch_21
    const-string/jumbo v0, "removeOverridesOnReleaseBuilds"

    return-object v0

    .line 449
    :pswitch_25
    const-string/jumbo v0, "removeAllOverridesOnReleaseBuilds"

    return-object v0

    .line 445
    :pswitch_29
    const-string v0, "clearOverrideForTest"

    return-object v0

    .line 441
    :pswitch_2c
    const-string v0, "clearOverride"

    return-object v0

    .line 437
    :pswitch_2f
    const-string/jumbo v0, "setOverridesForTest"

    return-object v0

    .line 433
    :pswitch_33
    const-string/jumbo v0, "putOverridesOnReleaseBuilds"

    return-object v0

    .line 429
    :pswitch_37
    const-string/jumbo v0, "putAllOverridesOnReleaseBuilds"

    return-object v0

    .line 425
    :pswitch_3b
    const-string/jumbo v0, "setOverrides"

    return-object v0

    .line 421
    :pswitch_3f
    const-string v0, "isChangeEnabledByUid"

    return-object v0

    .line 417
    :pswitch_42
    const-string v0, "isChangeEnabledByPackageName"

    return-object v0

    .line 413
    :pswitch_45
    const-string v0, "isChangeEnabled"

    return-object v0

    .line 409
    :pswitch_48
    const-string/jumbo v0, "reportChangeByUid"

    return-object v0

    .line 405
    :pswitch_4c
    const-string/jumbo v0, "reportChangeByPackageName"

    return-object v0

    .line 401
    :pswitch_50
    const-string/jumbo v0, "reportChange"

    return-object v0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 392
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1465
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 500
    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    .line 505
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 506
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    :cond_d
    packed-switch p1, :pswitch_data_1f4

    .line 516
    packed-switch p1, :pswitch_data_1fa

    .line 763
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 512
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    return v1

    .line 753
    :pswitch_1c
    sget-object v2, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 755
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 756
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 757
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverridesForDownscale(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    goto/16 :goto_1f2

    .line 745
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;

    move-result-object v2

    .line 746
    .local v2, "_result":Lcom/android/internal/compat/IOverrideValidator;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 748
    goto/16 :goto_1f2

    .line 738
    .end local v2    # "_result":Lcom/android/internal/compat/IOverrideValidator;
    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v2

    .line 739
    .local v2, "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 741
    goto/16 :goto_1f2

    .line 731
    .end local v2    # "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    :pswitch_4b
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v2

    .line 732
    .restart local v2    # "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 734
    goto/16 :goto_1f2

    .line 722
    .end local v2    # "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    :pswitch_57
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 723
    .local v2, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;

    move-result-object v3

    .line 725
    .local v3, "_result":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 727
    goto/16 :goto_1f2

    .line 713
    .end local v2    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "_result":Lcom/android/internal/compat/CompatibilityChangeConfig;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 715
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverridesForTest(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    goto/16 :goto_1f2

    .line 704
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 705
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrides(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    goto/16 :goto_1f2

    .line 692
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 694
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 695
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->disableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v4

    .line 697
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    goto/16 :goto_1f2

    .line 680
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 682
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 683
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->enableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v4

    .line 685
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    goto/16 :goto_1f2

    .line 669
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_ba
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 671
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    goto/16 :goto_1f2

    .line 660
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_d1
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;

    .line 661
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V

    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    goto/16 :goto_1f2

    .line 648
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 650
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrideForTest(JLjava/lang/String;)Z

    move-result v5

    .line 653
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 655
    goto/16 :goto_1f2

    .line 636
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 638
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 639
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverride(JLjava/lang/String;)Z

    move-result v5

    .line 641
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 643
    goto/16 :goto_1f2

    .line 625
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_112
    sget-object v2, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 627
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 628
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    goto/16 :goto_1f2

    .line 614
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_129
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 616
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 617
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    goto/16 :goto_1f2

    .line 605
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_140
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;

    .line 606
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    goto/16 :goto_1f2

    .line 594
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;
    :pswitch_153
    sget-object v2, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 596
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 597
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    goto/16 :goto_1f2

    .line 582
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 584
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 585
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByUid(JI)Z

    move-result v5

    .line 587
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 589
    goto :goto_1f2

    .line 568
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_180
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 570
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 573
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v6

    .line 575
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 577
    goto :goto_1f2

    .line 556
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Z
    :pswitch_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 558
    .restart local v2    # "_arg0":J
    sget-object v4, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 559
    .local v4, "_arg1":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    .line 561
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 563
    goto :goto_1f2

    .line 545
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "_result":Z
    :pswitch_1b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 547
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 548
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByUid(JI)V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    goto :goto_1f2

    .line 532
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 534
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 537
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByPackageName(JLjava/lang/String;I)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto :goto_1f2

    .line 521
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :pswitch_1dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 523
    .restart local v2    # "_arg0":J
    sget-object v4, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 524
    .local v4, "_arg1":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChange(JLandroid/content/pm/ApplicationInfo;)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    nop

    .line 766
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/content/pm/ApplicationInfo;
    :goto_1f2
    return v1

    nop

    :pswitch_data_1f4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1fa
    .packed-switch 0x1
        :pswitch_1dc
        :pswitch_1c6
        :pswitch_1b4
        :pswitch_19a
        :pswitch_180
        :pswitch_16a
        :pswitch_153
        :pswitch_140
        :pswitch_129
        :pswitch_112
        :pswitch_fb
        :pswitch_e4
        :pswitch_d1
        :pswitch_ba
        :pswitch_a3
        :pswitch_8c
        :pswitch_7d
        :pswitch_6e
        :pswitch_57
        :pswitch_4b
        :pswitch_3f
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
