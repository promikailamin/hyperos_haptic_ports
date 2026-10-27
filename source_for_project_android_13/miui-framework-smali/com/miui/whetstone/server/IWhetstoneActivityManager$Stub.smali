.class public abstract Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.super Landroid/os/Binder;
.source "IWhetstoneActivityManager.java"

# interfaces
.implements Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/IWhetstoneActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAppToServiceControlWhitelist:I = 0x19

.field static final blacklist TRANSACTION_bindWhetstoneService:I = 0x6

.field static final blacklist TRANSACTION_checkApplicationsMemoryThreshold:I = 0xb

.field static final blacklist TRANSACTION_checkIfPackageIsLocked:I = 0x14

.field static final blacklist TRANSACTION_checkIfPackageIsLockedWithUserId:I = 0x15

.field static final blacklist TRANSACTION_clearDeadAppFromNative:I = 0x11

.field static final blacklist TRANSACTION_distoryActivity:I = 0x5

.field static final blacklist TRANSACTION_doDesSocketForUid:I = 0x1f

.field static final blacklist TRANSACTION_doRestoreSockForUid:I = 0x20

.field static final blacklist TRANSACTION_getAndroidCachedEmptyProcessMemory:I = 0x9

.field static final blacklist TRANSACTION_getAppOpsManager:I = 0x2c

.field static final blacklist TRANSACTION_getAppStatusBarNotification:I = 0x34

.field static final blacklist TRANSACTION_getBackgroundAPPS:I = 0x2

.field static final blacklist TRANSACTION_getConnProviderNames:I = 0x1c

.field static final blacklist TRANSACTION_getGnssStatus:I = 0x35

.field static final blacklist TRANSACTION_getGpsPkg:I = 0x31

.field static final blacklist TRANSACTION_getPackageNamebyPid:I = 0x1

.field static final blacklist TRANSACTION_getPartialWakeLockHoldByUid:I = 0x10

.field static final blacklist TRANSACTION_getPowerKeeperPolicy:I = 0xf

.field static final blacklist TRANSACTION_getProcessReceiverState:I = 0x17

.field static final blacklist TRANSACTION_getSleepStateGpsStopTime:I = 0x30

.field static final blacklist TRANSACTION_getSystemPid:I = 0x7

.field static final blacklist TRANSACTION_getTimeInStateByPid:I = 0x29

.field static final blacklist TRANSACTION_getTimeInStateByUid:I = 0x28

.field static final blacklist TRANSACTION_initGmsChain:I = 0x23

.field static final blacklist TRANSACTION_isEmptyOfGpsCallback:I = 0x2f

.field static final blacklist TRANSACTION_isProcessExecutingServices:I = 0x18

.field static final blacklist TRANSACTION_isUidTimeInStateAvailable:I = 0x27

.field static final blacklist TRANSACTION_modifySuspendBaseTime:I = 0x22

.field static final blacklist TRANSACTION_notifyPkProcessDied:I = 0x21

.field static final blacklist TRANSACTION_putUidFrozenState:I = 0xc

.field static final blacklist TRANSACTION_readSysNodeInfo:I = 0x2a

.field static final blacklist TRANSACTION_registVideoFpsCallBack:I = 0x32

.field static final blacklist TRANSACTION_registerDisplayScroll:I = 0x25

.field static final blacklist TRANSACTION_removeAppFromServiceControlWhitelist:I = 0x1a

.field static final blacklist TRANSACTION_removeTaskById:I = 0x1b

.field static final blacklist TRANSACTION_scheduleStopService:I = 0x4

.field static final blacklist TRANSACTION_scheduleTrimMemory:I = 0x3

.field static final blacklist TRANSACTION_setGmsBlockerEnable:I = 0x1e

.field static final blacklist TRANSACTION_setGmsChainState:I = 0x24

.field static final blacklist TRANSACTION_setPerformanceComponents:I = 0x8

.field static final blacklist TRANSACTION_setProperty:I = 0x2b

.field static final blacklist TRANSACTION_setWhetstonePackageInfo:I = 0x1d

.field static final blacklist TRANSACTION_sleepModeRegisterGpsCallback:I = 0x2d

.field static final blacklist TRANSACTION_sleepModeUnregisterGpsCallback:I = 0x2e

.field static final blacklist TRANSACTION_unRegistVideoFpsCallBack:I = 0x33

.field static final blacklist TRANSACTION_unregisterDisplayScroll:I = 0x26

.field static final blacklist TRANSACTION_updateApplicationByLockedState:I = 0xd

.field static final blacklist TRANSACTION_updateApplicationByLockedStateWithUserId:I = 0xe

.field static final blacklist TRANSACTION_updateApplicationsMemoryThreshold:I = 0xa

.field static final blacklist TRANSACTION_updateFrameworkCommonConfig:I = 0x16

.field static final blacklist TRANSACTION_updateUserLockedAppList:I = 0x12

.field static final blacklist TRANSACTION_updateUserLockedAppListWithUserId:I = 0x13


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 213
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 214
    const-string v0, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 222
    if-nez p0, :cond_4

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_4
    const-string v0, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 226
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_14

    .line 227
    move-object v1, v0

    check-cast v1, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-object v1

    .line 229
    :cond_14
    new-instance v1, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 233
    return-object p0
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

    .line 237
    const-string v0, "com.miui.whetstone.server.IWhetstoneActivityManager"

    .line 238
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 239
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    :cond_d
    packed-switch p1, :pswitch_data_3b6

    .line 249
    packed-switch p1, :pswitch_data_3bc

    .line 762
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 245
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    return v1

    .line 755
    :pswitch_1c
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getGnssStatus()I

    move-result v2

    .line 756
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    goto/16 :goto_3b5

    .line 746
    .end local v2    # "_result":I
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getAppStatusBarNotification(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 749
    .local v3, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 751
    goto/16 :goto_3b5

    .line 737
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/IVideoFpsCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IVideoFpsCallBack;

    move-result-object v2

    .line 738
    .local v2, "_arg0":Lcom/miui/whetstone/IVideoFpsCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->unRegistVideoFpsCallBack(Lcom/miui/whetstone/IVideoFpsCallBack;)V

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    goto/16 :goto_3b5

    .line 728
    .end local v2    # "_arg0":Lcom/miui/whetstone/IVideoFpsCallBack;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/IVideoFpsCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IVideoFpsCallBack;

    move-result-object v2

    .line 729
    .restart local v2    # "_arg0":Lcom/miui/whetstone/IVideoFpsCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->registVideoFpsCallBack(Lcom/miui/whetstone/IVideoFpsCallBack;)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    goto/16 :goto_3b5

    .line 720
    .end local v2    # "_arg0":Lcom/miui/whetstone/IVideoFpsCallBack;
    :pswitch_61
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getGpsPkg()Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    goto/16 :goto_3b5

    .line 713
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_6d
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getSleepStateGpsStopTime()I

    move-result v2

    .line 714
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    goto/16 :goto_3b5

    .line 706
    .end local v2    # "_result":I
    :pswitch_79
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->isEmptyOfGpsCallback()Z

    move-result v2

    .line 707
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 709
    goto/16 :goto_3b5

    .line 700
    .end local v2    # "_result":Z
    :pswitch_85
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->sleepModeUnregisterGpsCallback()V

    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    goto/16 :goto_3b5

    .line 694
    :pswitch_8d
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->sleepModeRegisterGpsCallback()V

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    goto/16 :goto_3b5

    .line 687
    :pswitch_95
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getAppOpsManager()Ljava/util/List;

    move-result-object v2

    .line 688
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 690
    goto/16 :goto_3b5

    .line 673
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 680
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    goto/16 :goto_3b5

    .line 663
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 664
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 665
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->readSysNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 668
    goto/16 :goto_3b5

    .line 653
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getTimeInStateByPid(I)[I

    move-result-object v3

    .line 656
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 658
    goto/16 :goto_3b5

    .line 643
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 644
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getTimeInStateByUid(I)[I

    move-result-object v3

    .line 646
    .restart local v3    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 648
    goto/16 :goto_3b5

    .line 635
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_f5
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->isUidTimeInStateAvailable()Z

    move-result v2

    .line 636
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 638
    goto/16 :goto_3b5

    .line 627
    .end local v2    # "_result":Z
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/IDisplayScrollListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IDisplayScrollListener;

    move-result-object v2

    .line 628
    .local v2, "_arg0":Lcom/miui/whetstone/IDisplayScrollListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->unregisterDisplayScroll(Lcom/miui/whetstone/IDisplayScrollListener;)V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    goto/16 :goto_3b5

    .line 618
    .end local v2    # "_arg0":Lcom/miui/whetstone/IDisplayScrollListener;
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/IDisplayScrollListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IDisplayScrollListener;

    move-result-object v2

    .line 619
    .restart local v2    # "_arg0":Lcom/miui/whetstone/IDisplayScrollListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->registerDisplayScroll(Lcom/miui/whetstone/IDisplayScrollListener;)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_3b5

    .line 606
    .end local v2    # "_arg0":Lcom/miui/whetstone/IDisplayScrollListener;
    :pswitch_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 609
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v2, v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->setGmsChainState(Ljava/lang/String;Z)Z

    move-result v4

    .line 611
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 613
    goto/16 :goto_3b5

    .line 592
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 594
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 596
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->initGmsChain(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    .line 599
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 601
    goto/16 :goto_3b5

    .line 585
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_159
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->modifySuspendBaseTime()V

    .line 586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    goto/16 :goto_3b5

    .line 577
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 578
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->notifyPkProcessDied(Landroid/os/IBinder;)V

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    goto/16 :goto_3b5

    .line 568
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->doRestoreSockForUid(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    goto/16 :goto_3b5

    .line 555
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_17f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 557
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 559
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 560
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->doDesSocketForUid(Ljava/lang/String;[IZ)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    goto/16 :goto_3b5

    .line 544
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":Z
    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 546
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 547
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, v2, v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->setGmsBlockerEnable(IZ)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    goto/16 :goto_3b5

    .line 534
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_1a9
    sget-object v2, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 536
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/strategy/WhetstonePackageInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 537
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v2, v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->setWhetstonePackageInfo(Ljava/util/List;Z)V

    .line 539
    goto/16 :goto_3b5

    .line 519
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/strategy/WhetstonePackageInfo;>;"
    .end local v3    # "_arg1":Z
    :pswitch_1bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 523
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 524
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z

    move-result v5

    .line 526
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 528
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 529
    goto/16 :goto_3b5

    .line 507
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_result":Z
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 509
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 510
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2, v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->removeTaskById(IZ)Z

    move-result v4

    .line 512
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 514
    goto/16 :goto_3b5

    .line 498
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_1f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto/16 :goto_3b5

    .line 489
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1ff
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 490
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->addAppToServiceControlWhitelist(Ljava/util/List;)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    goto/16 :goto_3b5

    .line 479
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 480
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->isProcessExecutingServices(I)Z

    move-result v3

    .line 482
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 484
    goto/16 :goto_3b5

    .line 469
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getProcessReceiverState(I)Z

    move-result v3

    .line 472
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 474
    goto/16 :goto_3b5

    .line 460
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateFrameworkCommonConfig(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    goto/16 :goto_3b5

    .line 448
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 451
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v2, v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z

    move-result v4

    .line 453
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 455
    goto/16 :goto_3b5

    .line 438
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_25a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v3

    .line 441
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 443
    goto/16 :goto_3b5

    .line 427
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_26d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 429
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 430
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {p0, v2, v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateUserLockedAppListWithUserId(Ljava/util/List;I)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    goto/16 :goto_3b5

    .line 418
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_280
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 419
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateUserLockedAppList(Ljava/util/List;)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    goto/16 :goto_3b5

    .line 411
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_28f
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->clearDeadAppFromNative()V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_3b5

    .line 402
    :pswitch_297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 403
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPartialWakeLockHoldByUid(I)I

    move-result v3

    .line 405
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    goto/16 :goto_3b5

    .line 394
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2aa
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v2

    .line 395
    .local v2, "_result":Lcom/miui/whetstone/IPowerKeeperPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 397
    goto/16 :goto_3b5

    .line 382
    .end local v2    # "_result":Lcom/miui/whetstone/IPowerKeeperPolicy;
    :pswitch_2b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 386
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 387
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    goto/16 :goto_3b5

    .line 371
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_2cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 374
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2, v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationByLockedState(Ljava/lang/String;Z)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    goto/16 :goto_3b5

    .line 359
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_2e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 362
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2, v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->putUidFrozenState(II)Z

    move-result v4

    .line 364
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 366
    goto/16 :goto_3b5

    .line 347
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_2f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 351
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 352
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V

    .line 354
    goto/16 :goto_3b5

    .line 338
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    :pswitch_30b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 339
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    goto/16 :goto_3b5

    .line 330
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_31a
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getAndroidCachedEmptyProcessMemory()J

    move-result-wide v2

    .line 331
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 333
    goto/16 :goto_3b5

    .line 321
    .end local v2    # "_result":J
    :pswitch_326
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ComponentName;

    .line 322
    .local v2, "_arg0":[Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->setPerformanceComponents([Landroid/content/ComponentName;)Z

    move-result v3

    .line 324
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 326
    goto/16 :goto_3b5

    .line 313
    .end local v2    # "_arg0":[Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_33d
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getSystemPid()I

    move-result v2

    .line 314
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    goto :goto_3b5

    .line 305
    .end local v2    # "_result":I
    :pswitch_348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 306
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->bindWhetstoneService(Landroid/os/IBinder;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    goto :goto_3b5

    .line 295
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->distoryActivity(I)Z

    move-result v3

    .line 298
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 300
    goto :goto_3b5

    .line 283
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 286
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2, v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v4

    .line 288
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 290
    goto :goto_3b5

    .line 271
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2, v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleTrimMemory(II)Z

    move-result v4

    .line 276
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 278
    goto :goto_3b5

    .line 263
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_398
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getBackgroundAPPS()[Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 266
    goto :goto_3b5

    .line 254
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_3a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 255
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    nop

    .line 765
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :goto_3b5
    return v1

    :pswitch_data_3b6
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3bc
    .packed-switch 0x1
        :pswitch_3a3
        :pswitch_398
        :pswitch_382
        :pswitch_368
        :pswitch_356
        :pswitch_348
        :pswitch_33d
        :pswitch_326
        :pswitch_31a
        :pswitch_30b
        :pswitch_2f7
        :pswitch_2e0
        :pswitch_2cd
        :pswitch_2b6
        :pswitch_2aa
        :pswitch_297
        :pswitch_28f
        :pswitch_280
        :pswitch_26d
        :pswitch_25a
        :pswitch_243
        :pswitch_234
        :pswitch_221
        :pswitch_20e
        :pswitch_1ff
        :pswitch_1f0
        :pswitch_1d9
        :pswitch_1bb
        :pswitch_1a9
        :pswitch_196
        :pswitch_17f
        :pswitch_170
        :pswitch_161
        :pswitch_159
        :pswitch_13e
        :pswitch_127
        :pswitch_114
        :pswitch_101
        :pswitch_f5
        :pswitch_e2
        :pswitch_cf
        :pswitch_bc
        :pswitch_a1
        :pswitch_95
        :pswitch_8d
        :pswitch_85
        :pswitch_79
        :pswitch_6d
        :pswitch_61
        :pswitch_4e
        :pswitch_3b
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
