.class public abstract Landroid/app/IApplicationThread$Stub;
.super Landroid/os/Binder;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field static final greylist-max-o TRANSACTION_attachAgent:I = 0x33

.field static final blacklist TRANSACTION_attachStartupAgents:I = 0x34

.field static final greylist-max-o TRANSACTION_bindApplication:I = 0x5

.field static final greylist-max-o TRANSACTION_clearDnsCache:I = 0x1b

.field static final greylist-max-o TRANSACTION_dispatchPackageBroadcast:I = 0x16

.field static final greylist-max-o TRANSACTION_dumpActivity:I = 0x19

.field static final blacklist TRANSACTION_dumpBitmapsProto:I = 0x23

.field static final blacklist TRANSACTION_dumpCacheInfo:I = 0x24

.field static final greylist-max-o TRANSACTION_dumpDbInfo:I = 0x26

.field static final greylist-max-o TRANSACTION_dumpGfxInfo:I = 0x22

.field static final greylist-max-o TRANSACTION_dumpHeap:I = 0x18

.field static final greylist-max-o TRANSACTION_dumpMemInfo:I = 0x20

.field static final greylist-max-o TRANSACTION_dumpMemInfoProto:I = 0x21

.field static final greylist-max-o TRANSACTION_dumpProvider:I = 0x25

.field static final blacklist TRANSACTION_dumpResources:I = 0x1a

.field static final greylist-max-o TRANSACTION_dumpService:I = 0xd

.field static final blacklist TRANSACTION_getExecutableMethodFileOffsets:I = 0x41

.field static final greylist-max-o TRANSACTION_handleTrustStorageUpdate:I = 0x32

.field static final blacklist TRANSACTION_instrumentWithoutRestart:I = 0x3c

.field static final greylist-max-o TRANSACTION_notifyCleartextNetwork:I = 0x2e

.field static final blacklist TRANSACTION_notifyContentProviderPublishStatus:I = 0x3b

.field static final blacklist TRANSACTION_performDirectAction:I = 0x3a

.field static final greylist-max-o TRANSACTION_processInBackground:I = 0xa

.field static final greylist-max-o TRANSACTION_profilerControl:I = 0x10

.field static final greylist-max-o TRANSACTION_requestAssistContextExtras:I = 0x28

.field static final blacklist TRANSACTION_requestDirectActions:I = 0x39

.field static final blacklist TRANSACTION_requestHandoffActivityData:I = 0x42

.field static final greylist-max-o TRANSACTION_runIsolatedEntryPoint:I = 0x6

.field static final greylist-max-o TRANSACTION_scheduleApplicationInfoChanged:I = 0x35

.field static final greylist-max-o TRANSACTION_scheduleBindService:I = 0xb

.field static final greylist-max-o TRANSACTION_scheduleCrash:I = 0x17

.field static final greylist-max-o TRANSACTION_scheduleCreateBackupAgent:I = 0x12

.field static final greylist-max-o TRANSACTION_scheduleCreateService:I = 0x3

.field static final greylist-max-o TRANSACTION_scheduleDestroyBackupAgent:I = 0x13

.field static final greylist-max-o TRANSACTION_scheduleEnterAnimationComplete:I = 0x2d

.field static final greylist-max-o TRANSACTION_scheduleExit:I = 0x7

.field static final greylist-max-o TRANSACTION_scheduleInstallProvider:I = 0x2b

.field static final greylist-max-o TRANSACTION_scheduleLocalVoiceInteractionStarted:I = 0x31

.field static final greylist-max-o TRANSACTION_scheduleLowMemory:I = 0xf

.field static final blacklist TRANSACTION_scheduleOnNewSceneTransitionInfo:I = 0x14

.field static final blacklist TRANSACTION_schedulePing:I = 0x40

.field static final greylist-max-o TRANSACTION_scheduleReceiver:I = 0x1

.field static final blacklist TRANSACTION_scheduleReceiverList:I = 0x2

.field static final greylist-max-o TRANSACTION_scheduleRegisteredReceiver:I = 0xe

.field static final greylist-max-o TRANSACTION_scheduleServiceArgs:I = 0x8

.field static final greylist-max-o TRANSACTION_scheduleStopService:I = 0x4

.field static final greylist-max-o TRANSACTION_scheduleSuicide:I = 0x15

.field static final blacklist TRANSACTION_scheduleTaskFragmentTransaction:I = 0x38

.field static final blacklist TRANSACTION_scheduleTimeoutService:I = 0x3e

.field static final blacklist TRANSACTION_scheduleTimeoutServiceForType:I = 0x3f

.field static final greylist-max-o TRANSACTION_scheduleTransaction:I = 0x37

.field static final greylist-max-o TRANSACTION_scheduleTranslucentConversionComplete:I = 0x29

.field static final greylist-max-o TRANSACTION_scheduleTrimMemory:I = 0x1f

.field static final greylist-max-o TRANSACTION_scheduleUnbindService:I = 0xc

.field static final greylist-max-o TRANSACTION_setCoreSettings:I = 0x1d

.field static final greylist-max-o TRANSACTION_setNetworkBlockSeq:I = 0x36

.field static final greylist-max-o TRANSACTION_setProcessState:I = 0x2a

.field static final greylist-max-o TRANSACTION_setSchedulingGroup:I = 0x11

.field static final greylist-max-o TRANSACTION_startBinderTracking:I = 0x2f

.field static final greylist-max-o TRANSACTION_stopBinderTrackingAndDump:I = 0x30

.field static final greylist-max-o TRANSACTION_unstableProviderDied:I = 0x27

.field static final blacklist TRANSACTION_updateHttpProxy:I = 0x1c

.field static final greylist-max-o TRANSACTION_updatePackageCompatibilityInfo:I = 0x1e

.field static final greylist-max-o TRANSACTION_updateTimePrefs:I = 0x2c

.field static final greylist-max-o TRANSACTION_updateTimeZone:I = 0x9

.field static final blacklist TRANSACTION_updateUiTranslationState:I = 0x3d


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 503
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 504
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/IApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .registers 3

    .line 512
    if-nez p0, :cond_4

    .line 513
    const/4 p0, 0x0

    return-object p0

    .line 515
    :cond_4
    const-string v0, "android.app.IApplicationThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IApplicationThread;

    if-eqz v1, :cond_13

    .line 517
    check-cast v0, Landroid/app/IApplicationThread;

    return-object v0

    .line 519
    :cond_13
    new-instance v0, Landroid/app/IApplicationThread$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 528
    packed-switch p0, :pswitch_data_fa

    .line 796
    const/4 p0, 0x0

    return-object p0

    .line 792
    :pswitch_5
    const-string/jumbo p0, "requestHandoffActivityData"

    return-object p0

    .line 788
    :pswitch_9
    const-string p0, "getExecutableMethodFileOffsets"

    return-object p0

    .line 784
    :pswitch_c
    const-string/jumbo p0, "schedulePing"

    return-object p0

    .line 780
    :pswitch_10
    const-string/jumbo p0, "scheduleTimeoutServiceForType"

    return-object p0

    .line 776
    :pswitch_14
    const-string/jumbo p0, "scheduleTimeoutService"

    return-object p0

    .line 772
    :pswitch_18
    const-string/jumbo p0, "updateUiTranslationState"

    return-object p0

    .line 768
    :pswitch_1c
    const-string p0, "instrumentWithoutRestart"

    return-object p0

    .line 764
    :pswitch_1f
    const-string/jumbo p0, "notifyContentProviderPublishStatus"

    return-object p0

    .line 760
    :pswitch_23
    const-string/jumbo p0, "performDirectAction"

    return-object p0

    .line 756
    :pswitch_27
    const-string/jumbo p0, "requestDirectActions"

    return-object p0

    .line 752
    :pswitch_2b
    const-string/jumbo p0, "scheduleTaskFragmentTransaction"

    return-object p0

    .line 748
    :pswitch_2f
    const-string/jumbo p0, "scheduleTransaction"

    return-object p0

    .line 744
    :pswitch_33
    const-string/jumbo p0, "setNetworkBlockSeq"

    return-object p0

    .line 740
    :pswitch_37
    const-string/jumbo p0, "scheduleApplicationInfoChanged"

    return-object p0

    .line 736
    :pswitch_3b
    const-string p0, "attachStartupAgents"

    return-object p0

    .line 732
    :pswitch_3e
    const-string p0, "attachAgent"

    return-object p0

    .line 728
    :pswitch_41
    const-string p0, "handleTrustStorageUpdate"

    return-object p0

    .line 724
    :pswitch_44
    const-string/jumbo p0, "scheduleLocalVoiceInteractionStarted"

    return-object p0

    .line 720
    :pswitch_48
    const-string/jumbo p0, "stopBinderTrackingAndDump"

    return-object p0

    .line 716
    :pswitch_4c
    const-string/jumbo p0, "startBinderTracking"

    return-object p0

    .line 712
    :pswitch_50
    const-string/jumbo p0, "notifyCleartextNetwork"

    return-object p0

    .line 708
    :pswitch_54
    const-string/jumbo p0, "scheduleEnterAnimationComplete"

    return-object p0

    .line 704
    :pswitch_58
    const-string/jumbo p0, "updateTimePrefs"

    return-object p0

    .line 700
    :pswitch_5c
    const-string/jumbo p0, "scheduleInstallProvider"

    return-object p0

    .line 696
    :pswitch_60
    const-string/jumbo p0, "setProcessState"

    return-object p0

    .line 692
    :pswitch_64
    const-string/jumbo p0, "scheduleTranslucentConversionComplete"

    return-object p0

    .line 688
    :pswitch_68
    const-string/jumbo p0, "requestAssistContextExtras"

    return-object p0

    .line 684
    :pswitch_6c
    const-string/jumbo p0, "unstableProviderDied"

    return-object p0

    .line 680
    :pswitch_70
    const-string p0, "dumpDbInfo"

    return-object p0

    .line 676
    :pswitch_73
    const-string p0, "dumpProvider"

    return-object p0

    .line 672
    :pswitch_76
    const-string p0, "dumpCacheInfo"

    return-object p0

    .line 668
    :pswitch_79
    const-string p0, "dumpBitmapsProto"

    return-object p0

    .line 664
    :pswitch_7c
    const-string p0, "dumpGfxInfo"

    return-object p0

    .line 660
    :pswitch_7f
    const-string p0, "dumpMemInfoProto"

    return-object p0

    .line 656
    :pswitch_82
    const-string p0, "dumpMemInfo"

    return-object p0

    .line 652
    :pswitch_85
    const-string/jumbo p0, "scheduleTrimMemory"

    return-object p0

    .line 648
    :pswitch_89
    const-string/jumbo p0, "updatePackageCompatibilityInfo"

    return-object p0

    .line 644
    :pswitch_8d
    const-string/jumbo p0, "setCoreSettings"

    return-object p0

    .line 640
    :pswitch_91
    const-string/jumbo p0, "updateHttpProxy"

    return-object p0

    .line 636
    :pswitch_95
    const-string p0, "clearDnsCache"

    return-object p0

    .line 632
    :pswitch_98
    const-string p0, "dumpResources"

    return-object p0

    .line 628
    :pswitch_9b
    const-string p0, "dumpActivity"

    return-object p0

    .line 624
    :pswitch_9e
    const-string p0, "dumpHeap"

    return-object p0

    .line 620
    :pswitch_a1
    const-string/jumbo p0, "scheduleCrash"

    return-object p0

    .line 616
    :pswitch_a5
    const-string p0, "dispatchPackageBroadcast"

    return-object p0

    .line 612
    :pswitch_a8
    const-string/jumbo p0, "scheduleSuicide"

    return-object p0

    .line 608
    :pswitch_ac
    const-string/jumbo p0, "scheduleOnNewSceneTransitionInfo"

    return-object p0

    .line 604
    :pswitch_b0
    const-string/jumbo p0, "scheduleDestroyBackupAgent"

    return-object p0

    .line 600
    :pswitch_b4
    const-string/jumbo p0, "scheduleCreateBackupAgent"

    return-object p0

    .line 596
    :pswitch_b8
    const-string/jumbo p0, "setSchedulingGroup"

    return-object p0

    .line 592
    :pswitch_bc
    const-string/jumbo p0, "profilerControl"

    return-object p0

    .line 588
    :pswitch_c0
    const-string/jumbo p0, "scheduleLowMemory"

    return-object p0

    .line 584
    :pswitch_c4
    const-string/jumbo p0, "scheduleRegisteredReceiver"

    return-object p0

    .line 580
    :pswitch_c8
    const-string p0, "dumpService"

    return-object p0

    .line 576
    :pswitch_cb
    const-string/jumbo p0, "scheduleUnbindService"

    return-object p0

    .line 572
    :pswitch_cf
    const-string/jumbo p0, "scheduleBindService"

    return-object p0

    .line 568
    :pswitch_d3
    const-string/jumbo p0, "processInBackground"

    return-object p0

    .line 564
    :pswitch_d7
    const-string/jumbo p0, "updateTimeZone"

    return-object p0

    .line 560
    :pswitch_db
    const-string/jumbo p0, "scheduleServiceArgs"

    return-object p0

    .line 556
    :pswitch_df
    const-string/jumbo p0, "scheduleExit"

    return-object p0

    .line 552
    :pswitch_e3
    const-string/jumbo p0, "runIsolatedEntryPoint"

    return-object p0

    .line 548
    :pswitch_e7
    const-string p0, "bindApplication"

    return-object p0

    .line 544
    :pswitch_ea
    const-string/jumbo p0, "scheduleStopService"

    return-object p0

    .line 540
    :pswitch_ee
    const-string/jumbo p0, "scheduleCreateService"

    return-object p0

    .line 536
    :pswitch_f2
    const-string/jumbo p0, "scheduleReceiverList"

    return-object p0

    .line 532
    :pswitch_f6
    const-string/jumbo p0, "scheduleReceiver"

    return-object p0

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_f6
        :pswitch_f2
        :pswitch_ee
        :pswitch_ea
        :pswitch_e7
        :pswitch_e3
        :pswitch_df
        :pswitch_db
        :pswitch_d7
        :pswitch_d3
        :pswitch_cf
        :pswitch_cb
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b0
        :pswitch_ac
        :pswitch_a8
        :pswitch_a5
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 523
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2607
    const/16 v0, 0x41

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 803
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 808
    const-string v3, "android.app.IApplicationThread"

    const/4 v13, 0x1

    if-lt v1, v13, :cond_13

    const v4, 0xffffff

    if-gt v1, v4, :cond_13

    .line 809
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    :cond_13
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1e

    .line 812
    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 813
    return v13

    .line 815
    :cond_1e
    move-object/from16 v4, p3

    packed-switch v1, :pswitch_data_750

    .line 1595
    move-object v0, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1586
    :pswitch_29
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1588
    invoke-virtual {v2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1589
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1590
    invoke-virtual {v0, v1, v3}, Landroid/app/IApplicationThread$Stub;->requestHandoffActivityData(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1591
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1576
    :pswitch_3b
    sget-object v1, Landroid/os/instrumentation/MethodDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/instrumentation/MethodDescriptor;

    .line 1578
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/instrumentation/IOffsetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/instrumentation/IOffsetCallback;

    move-result-object v3

    .line 1579
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1580
    invoke-virtual {v0, v1, v3}, Landroid/app/IApplicationThread$Stub;->getExecutableMethodFileOffsets(Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V

    .line 1581
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1568
    :pswitch_55
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 1569
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1570
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->schedulePing(Landroid/os/RemoteCallback;)V

    .line 1571
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1556
    :pswitch_67
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1558
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1560
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1561
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1562
    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IApplicationThread$Stub;->scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V

    .line 1563
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1546
    :pswitch_7d
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1548
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1549
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1550
    invoke-virtual {v0, v1, v3}, Landroid/app/IApplicationThread$Stub;->scheduleTimeoutService(Landroid/os/IBinder;I)V

    .line 1551
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1528
    :pswitch_8f
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1530
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1532
    sget-object v4, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/translation/TranslationSpec;

    .line 1534
    sget-object v5, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/translation/TranslationSpec;

    .line 1536
    sget-object v6, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1538
    sget-object v7, Landroid/view/translation/UiTranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/translation/UiTranslationSpec;

    .line 1539
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1540
    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Stub;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 1541
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1512
    :pswitch_c4
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ComponentName;

    .line 1514
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1516
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v3

    .line 1518
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v4

    .line 1520
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 1521
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1522
    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V

    .line 1523
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1498
    :pswitch_fa
    sget-object v1, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ContentProviderHolder;

    .line 1500
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1502
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1504
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1505
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1506
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/IApplicationThread$Stub;->notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V

    .line 1507
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1482
    :pswitch_118
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1484
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1486
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 1488
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 1490
    sget-object v6, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RemoteCallback;

    .line 1491
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1492
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1493
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1468
    :pswitch_146
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1470
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v3

    .line 1472
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 1474
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 1475
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1476
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/IApplicationThread$Stub;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1477
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1458
    :pswitch_16c
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    .line 1460
    sget-object v3, Landroid/window/TaskFragmentTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskFragmentTransaction;

    .line 1461
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1462
    invoke-virtual {v0, v1, v3}, Landroid/app/IApplicationThread$Stub;->scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V

    .line 1463
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1450
    :pswitch_186
    sget-object v1, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/servertransaction/ClientTransaction;

    .line 1451
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1452
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1453
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1442
    :pswitch_198
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1443
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1444
    invoke-virtual {v0, v3, v4}, Landroid/app/IApplicationThread$Stub;->setNetworkBlockSeq(J)V

    .line 1445
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1434
    :pswitch_1a6
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1435
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1436
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 1437
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1426
    :pswitch_1b8
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1427
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1428
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->attachStartupAgents(Ljava/lang/String;)V

    .line 1429
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1418
    :pswitch_1c6
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1419
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1420
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->attachAgent(Ljava/lang/String;)V

    .line 1421
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1412
    :pswitch_1d4
    invoke-virtual {v0}, Landroid/app/IApplicationThread$Stub;->handleTrustStorageUpdate()V

    .line 1413
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1403
    :pswitch_1db
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1405
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v3

    .line 1406
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {v0, v1, v3}, Landroid/app/IApplicationThread$Stub;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1408
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1395
    :pswitch_1f1
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1396
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1397
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    .line 1398
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1389
    :pswitch_203
    invoke-virtual {v0}, Landroid/app/IApplicationThread$Stub;->startBinderTracking()V

    .line 1390
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1382
    :pswitch_20a
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1383
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1384
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->notifyCleartextNetwork([B)V

    .line 1385
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1374
    :pswitch_218
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1375
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1376
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 1377
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1366
    :pswitch_226
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1367
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->updateTimePrefs(I)V

    .line 1369
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1358
    :pswitch_234
    sget-object v1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 1359
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1360
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 1361
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1350
    :pswitch_246
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1351
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1352
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setProcessState(I)V

    .line 1353
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1340
    :pswitch_254
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1342
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1343
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    invoke-virtual {v0, v1, v3}, Landroid/app/IApplicationThread$Stub;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 1345
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1324
    :pswitch_266
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1332
    move-object/from16 v6, p2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1333
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1334
    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 1335
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1316
    :pswitch_286
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1317
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1318
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 1319
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1306
    :pswitch_295
    move-object v6, v2

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1308
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1309
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1310
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1311
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1294
    :pswitch_2ac
    move-object v6, v2

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1296
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1298
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 1299
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1300
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 1301
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1284
    :pswitch_2c7
    move-object v6, v2

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1286
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1287
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1288
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1289
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1274
    :pswitch_2de
    move-object v6, v2

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1276
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1277
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1278
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpBitmapsProto(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 1279
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1264
    :pswitch_2f5
    move-object v6, v2

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1266
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1267
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1268
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1269
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1244
    :pswitch_30c
    move-object v6, v2

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1246
    sget-object v2, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Debug$MemoryInfo;

    .line 1248
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1250
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1252
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1256
    move-object/from16 v8, p2

    invoke-virtual {v8}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 1257
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1258
    invoke-virtual/range {v0 .. v7}, Landroid/app/IApplicationThread$Stub;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V

    .line 1259
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1220
    :pswitch_33d
    move-object v8, v2

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1222
    sget-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Debug$MemoryInfo;

    .line 1224
    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1226
    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1228
    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1230
    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1232
    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1234
    move-object v0, v8

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1236
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 1237
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1238
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V

    .line 1239
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1212
    :pswitch_379
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1213
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1214
    invoke-virtual {v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleTrimMemory(I)V

    .line 1215
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1202
    :pswitch_389
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1204
    sget-object v3, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/CompatibilityInfo;

    .line 1205
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1206
    invoke-virtual {v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 1207
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1194
    :pswitch_3a1
    move-object v1, v0

    move-object v0, v2

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1195
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {v1, v2}, Landroid/app/IApplicationThread$Stub;->setCoreSettings(Landroid/os/Bundle;)V

    .line 1197
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1188
    :pswitch_3b5
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/IApplicationThread$Stub;->updateHttpProxy()V

    .line 1189
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1183
    :pswitch_3bd
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/IApplicationThread$Stub;->clearDnsCache()V

    .line 1184
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1174
    :pswitch_3c5
    move-object v1, v0

    move-object v0, v2

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1176
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 1179
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1160
    :pswitch_3e1
    move-object v1, v0

    move-object v0, v2

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1164
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 1167
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/IApplicationThread$Stub;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1169
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1140
    :pswitch_401
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1146
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1148
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1150
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 1152
    sget-object v7, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/RemoteCallback;

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IApplicationThread$Stub;->dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 1155
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1128
    :pswitch_433
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1132
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1135
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1118
    :pswitch_44f
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 1121
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1122
    invoke-virtual {v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1123
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1112
    :pswitch_463
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/IApplicationThread$Stub;->scheduleSuicide()V

    .line 1113
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1103
    :pswitch_46b
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1105
    sget-object v3, Landroid/app/ActivityOptions$SceneTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 1106
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 1108
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1093
    :pswitch_483
    move-object v1, v0

    move-object v0, v2

    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1095
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1096
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;I)V

    .line 1098
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1079
    :pswitch_49b
    move-object v1, v0

    move-object v0, v2

    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/IApplicationThread$Stub;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;III)V

    .line 1088
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1071
    :pswitch_4bb
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1072
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1073
    invoke-virtual {v1, v2}, Landroid/app/IApplicationThread$Stub;->setSchedulingGroup(I)V

    .line 1074
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1059
    :pswitch_4cb
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1061
    sget-object v3, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProfilerInfo;

    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 1066
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1053
    :pswitch_4e7
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/IApplicationThread$Stub;->scheduleLowMemory()V

    .line 1054
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1024
    :pswitch_4ef
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v2

    .line 1026
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1028
    move-object v1, v2

    move-object v2, v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1032
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 1034
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1036
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1038
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1044
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1048
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IApplicationThread$Stub;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    .line 1049
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1012
    :pswitch_53b
    move-object v1, v0

    move-object v0, v2

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 1019
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 1000
    :pswitch_557
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1004
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->scheduleUnbindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 1007
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 982
    :pswitch_573
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 986
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 990
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 992
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IApplicationThread$Stub;->scheduleBindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V

    .line 995
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 976
    :pswitch_59d
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/IApplicationThread$Stub;->processInBackground()V

    .line 977
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 971
    :pswitch_5a5
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/IApplicationThread$Stub;->updateTimeZone()V

    .line 972
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 962
    :pswitch_5ad
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 964
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    .line 967
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 956
    :pswitch_5c5
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/IApplicationThread$Stub;->scheduleExit()V

    .line 957
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 947
    :pswitch_5cd
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 950
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    invoke-virtual {v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    .line 952
    move/from16 v33, v13

    goto/16 :goto_74f

    .line 880
    :pswitch_5e1
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 882
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 884
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 888
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 890
    sget-object v6, Landroid/content/pm/ProviderInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ProviderInfoList;

    .line 892
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 894
    sget-object v8, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ProfilerInfo;

    .line 896
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v10

    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v11

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 904
    move v14, v13

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 906
    move v15, v14

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 908
    move/from16 v16, v15

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 910
    move/from16 v17, v16

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 912
    move-object/from16 p1, v1

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 914
    move-object/from16 p3, v1

    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 916
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 917
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v19

    .line 919
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroid/os/Bundle;

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 923
    sget-object v1, Landroid/content/AutofillOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/content/AutofillOptions;

    .line 925
    sget-object v1, Landroid/content/ContentCaptureOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Landroid/content/ContentCaptureOptions;

    .line 927
    invoke-virtual {v0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v24

    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v25

    .line 931
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 933
    sget-object v1, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Landroid/os/SharedMemory;

    .line 935
    invoke-virtual {v0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v28

    .line 937
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v29

    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v33, v17

    move-object/from16 v17, p3

    invoke-virtual/range {v0 .. v32}, Landroid/app/IApplicationThread$Stub;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[J[JZLandroid/os/SharedMemory;Ljava/io/FileDescriptor;JJ)V

    .line 942
    goto/16 :goto_74f

    .line 872
    :pswitch_6bb
    move-object v1, v0

    move-object v0, v2

    move/from16 v33, v13

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleStopService(Landroid/os/IBinder;)V

    .line 875
    goto/16 :goto_74f

    .line 858
    :pswitch_6cb
    move-object v1, v0

    move-object v0, v2

    move/from16 v33, v13

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 860
    sget-object v3, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;

    .line 862
    sget-object v4, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/CompatibilityInfo;

    .line 864
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 865
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/IApplicationThread$Stub;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 867
    goto :goto_74f

    .line 850
    :pswitch_6ee
    move-object v1, v0

    move-object v0, v2

    move/from16 v33, v13

    sget-object v2, Landroid/app/ReceiverInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleReceiverList(Ljava/util/List;)V

    .line 853
    goto :goto_74f

    .line 820
    :pswitch_6ff
    move-object v1, v0

    move-object v0, v2

    move/from16 v33, v13

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 822
    sget-object v3, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    .line 824
    sget-object v4, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/CompatibilityInfo;

    .line 826
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 830
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 832
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 838
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 842
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IApplicationThread$Stub;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V

    .line 845
    nop

    .line 1598
    :goto_74f
    return v33

    :pswitch_data_750
    .packed-switch 0x1
        :pswitch_6ff
        :pswitch_6ee
        :pswitch_6cb
        :pswitch_6bb
        :pswitch_5e1
        :pswitch_5cd
        :pswitch_5c5
        :pswitch_5ad
        :pswitch_5a5
        :pswitch_59d
        :pswitch_573
        :pswitch_557
        :pswitch_53b
        :pswitch_4ef
        :pswitch_4e7
        :pswitch_4cb
        :pswitch_4bb
        :pswitch_49b
        :pswitch_483
        :pswitch_46b
        :pswitch_463
        :pswitch_44f
        :pswitch_433
        :pswitch_401
        :pswitch_3e1
        :pswitch_3c5
        :pswitch_3bd
        :pswitch_3b5
        :pswitch_3a1
        :pswitch_389
        :pswitch_379
        :pswitch_33d
        :pswitch_30c
        :pswitch_2f5
        :pswitch_2de
        :pswitch_2c7
        :pswitch_2ac
        :pswitch_295
        :pswitch_286
        :pswitch_266
        :pswitch_254
        :pswitch_246
        :pswitch_234
        :pswitch_226
        :pswitch_218
        :pswitch_20a
        :pswitch_203
        :pswitch_1f1
        :pswitch_1db
        :pswitch_1d4
        :pswitch_1c6
        :pswitch_1b8
        :pswitch_1a6
        :pswitch_198
        :pswitch_186
        :pswitch_16c
        :pswitch_146
        :pswitch_118
        :pswitch_fa
        :pswitch_c4
        :pswitch_8f
        :pswitch_7d
        :pswitch_67
        :pswitch_55
        :pswitch_3b
        :pswitch_29
    .end packed-switch
.end method
