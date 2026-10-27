.class public abstract Lmiui/mqsas/IMQSService$Stub;
.super Landroid/os/Binder;
.source "IMQSService.java"

# interfaces
.implements Lmiui/mqsas/IMQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_appCaptureLog:I = 0x4

.field static final blacklist TRANSACTION_checkDumpForJavaException:I = 0x9

.field static final blacklist TRANSACTION_checkDumpForWatchdog:I = 0xa

.field static final blacklist TRANSACTION_commonCaptureLog:I = 0x8

.field static final blacklist TRANSACTION_dialogButtonChecked:I = 0x22

.field static final blacklist TRANSACTION_dumpBugReport:I = 0x21

.field static final blacklist TRANSACTION_getOneTrackService:I = 0x6

.field static final blacklist TRANSACTION_getOnlineRuleMatched:I = 0x1f

.field static final blacklist TRANSACTION_getRules:I = 0x7

.field static final blacklist TRANSACTION_onBootCompleted:I = 0x16

.field static final blacklist TRANSACTION_registerApplicationScoutThread:I = 0x2a

.field static final blacklist TRANSACTION_reportAnrEvent:I = 0xd

.field static final blacklist TRANSACTION_reportAppScoutEvent:I = 0x2c

.field static final blacklist TRANSACTION_reportBluetoothEvent:I = 0x1c

.field static final blacklist TRANSACTION_reportBootEvent:I = 0x18

.field static final blacklist TRANSACTION_reportBrightnessEvent:I = 0x23

.field static final blacklist TRANSACTION_reportBroadcastEvent:I = 0x17

.field static final blacklist TRANSACTION_reportConnectExceptionEvent:I = 0x1a

.field static final blacklist TRANSACTION_reportContinuousKillProcessEvent:I = 0x29

.field static final blacklist TRANSACTION_reportDataStallSuspected:I = 0x2e

.field static final blacklist TRANSACTION_reportEvent:I = 0x1d

.field static final blacklist TRANSACTION_reportEventV2:I = 0x25

.field static final blacklist TRANSACTION_reportEvents:I = 0x1e

.field static final blacklist TRANSACTION_reportEventsV2:I = 0x5

.field static final blacklist TRANSACTION_reportFeatureEvent:I = 0x27

.field static final blacklist TRANSACTION_reportGameDelayEvent:I = 0x2f

.field static final blacklist TRANSACTION_reportGeneralEvent:I = 0xc

.field static final blacklist TRANSACTION_reportGeneralException:I = 0x12

.field static final blacklist TRANSACTION_reportHangExceptionEvents:I = 0x24

.field static final blacklist TRANSACTION_reportHeapLeakEvent:I = 0x11

.field static final blacklist TRANSACTION_reportHighMemoryEvent:I = 0xb

.field static final blacklist TRANSACTION_reportJavaExceptionEvent:I = 0xe

.field static final blacklist TRANSACTION_reportKillProcessEvents:I = 0x1b

.field static final blacklist TRANSACTION_reportL2DataStallEvent:I = 0x31

.field static final blacklist TRANSACTION_reportLowMemEvent:I = 0x28

.field static final blacklist TRANSACTION_reportNativeEventV2:I = 0x2

.field static final blacklist TRANSACTION_reportNativeFeatureEvent:I = 0x3

.field static final blacklist TRANSACTION_reportPackageEvent:I = 0x15

.field static final blacklist TRANSACTION_reportPackageForegroundEvents:I = 0x20

.field static final blacklist TRANSACTION_reportRebootNullEvent:I = 0x13

.field static final blacklist TRANSACTION_reportRssLeakEvent:I = 0x10

.field static final blacklist TRANSACTION_reportScreenOnEvent:I = 0x14

.field static final blacklist TRANSACTION_reportSimpleEvent:I = 0x1

.field static final blacklist TRANSACTION_reportSysScoutEvent:I = 0x2d

.field static final blacklist TRANSACTION_reportTelephonyEvent:I = 0x19

.field static final blacklist TRANSACTION_reportTxBadOrRetryEvent:I = 0x30

.field static final blacklist TRANSACTION_reportWatchdogEvent:I = 0xf

.field static final blacklist TRANSACTION_reportXmsEvent:I = 0x26

.field static final blacklist TRANSACTION_unregisterApplicationScoutThread:I = 0x2b


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 175
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 176
    const-string v0, "miui.mqsas.IMQSService"

    invoke-virtual {p0, p0, v0}, Lmiui/mqsas/IMQSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 184
    if-nez p0, :cond_4

    .line 185
    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_4
    const-string v0, "miui.mqsas.IMQSService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 188
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/mqsas/IMQSService;

    if-eqz v1, :cond_14

    .line 189
    move-object v1, v0

    check-cast v1, Lmiui/mqsas/IMQSService;

    return-object v1

    .line 191
    :cond_14
    new-instance v1, Lmiui/mqsas/IMQSService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/mqsas/IMQSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 195
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "miui.mqsas.IMQSService"

    .line 200
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 201
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    :cond_15
    packed-switch v7, :pswitch_data_39c

    .line 211
    packed-switch v7, :pswitch_data_3a2

    .line 698
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 207
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return v11

    .line 689
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 691
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportL2DataStallEvent(ILjava/lang/String;)V

    .line 694
    goto/16 :goto_39a

    .line 679
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 681
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 682
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportTxBadOrRetryEvent(ILjava/lang/String;)V

    .line 684
    goto/16 :goto_39a

    .line 668
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_44
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 669
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 671
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 672
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {v6, v1, v2}, Lmiui/mqsas/IMQSService$Stub;->reportGameDelayEvent(Ljava/util/Map;Ljava/lang/String;)V

    .line 674
    goto/16 :goto_39a

    .line 662
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_5c
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSService$Stub;->reportDataStallSuspected()V

    .line 663
    goto/16 :goto_39a

    .line 655
    :pswitch_61
    sget-object v0, Lmiui/mqsas/sdk/event/SysScoutEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/SysScoutEvent;

    .line 656
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/SysScoutEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportSysScoutEvent(Lmiui/mqsas/sdk/event/SysScoutEvent;)V

    .line 658
    goto/16 :goto_39a

    .line 647
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/SysScoutEvent;
    :pswitch_71
    sget-object v0, Lmiui/mqsas/sdk/event/AppScoutEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/AppScoutEvent;

    .line 648
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/AppScoutEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportAppScoutEvent(Lmiui/mqsas/sdk/event/AppScoutEvent;)V

    .line 650
    goto/16 :goto_39a

    .line 639
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/AppScoutEvent;
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 640
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->unregisterApplicationScoutThread(I)V

    .line 642
    goto/16 :goto_39a

    .line 629
    .end local v0    # "_arg0":I
    :pswitch_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAppScoutThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppScoutThread;

    move-result-object v0

    .line 631
    .local v0, "_arg0":Landroid/app/IAppScoutThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 632
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/IMQSService$Stub;->registerApplicationScoutThread(Landroid/app/IAppScoutThread;I)V

    .line 634
    goto/16 :goto_39a

    .line 621
    .end local v0    # "_arg0":Landroid/app/IAppScoutThread;
    .end local v1    # "_arg1":I
    :pswitch_a1
    sget-object v0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;

    .line 622
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportContinuousKillProcessEvent(Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;)V

    .line 624
    goto/16 :goto_39a

    .line 613
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;
    :pswitch_b1
    sget-object v0, Lmiui/mqsas/sdk/event/LowMemEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent;

    .line 614
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/LowMemEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportLowMemEvent(Lmiui/mqsas/sdk/event/LowMemEvent;)V

    .line 616
    goto/16 :goto_39a

    .line 605
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/LowMemEvent;
    :pswitch_c1
    sget-object v0, Lmiui/mqsas/sdk/event/FeatureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/FeatureEvent;

    .line 606
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/FeatureEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportFeatureEvent(Lmiui/mqsas/sdk/event/FeatureEvent;)V

    .line 608
    goto/16 :goto_39a

    .line 595
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/FeatureEvent;
    :pswitch_d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportXmsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    goto/16 :goto_39a

    .line 581
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 583
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 585
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 588
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v6, v0, v1, v2, v3}, Lmiui/mqsas/IMQSService$Stub;->reportEventV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 590
    goto/16 :goto_39a

    .line 575
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    :pswitch_f9
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSService$Stub;->reportHangExceptionEvents()V

    .line 576
    goto/16 :goto_39a

    .line 562
    :pswitch_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 564
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 566
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 568
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {v6, v0, v1, v2, v3}, Lmiui/mqsas/IMQSService$Stub;->reportBrightnessEvent(IIILjava/lang/String;)V

    .line 571
    goto/16 :goto_39a

    .line 548
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 550
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 552
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 555
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {v6, v0, v1, v2, v3}, Lmiui/mqsas/IMQSService$Stub;->dialogButtonChecked(IILjava/lang/String;Z)V

    .line 557
    goto/16 :goto_39a

    .line 542
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    :pswitch_12e
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSService$Stub;->dumpBugReport()V

    .line 543
    goto/16 :goto_39a

    .line 535
    :pswitch_133
    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 536
    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportPackageForegroundEvents(Landroid/content/pm/ParceledListSlice;)V

    .line 538
    goto/16 :goto_39a

    .line 523
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :pswitch_143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/IMQSService$Stub;->getOnlineRuleMatched(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    goto/16 :goto_39a

    .line 511
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_15a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 513
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 515
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 516
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {v6, v0, v1, v2}, Lmiui/mqsas/IMQSService$Stub;->reportEvents(Ljava/lang/String;Ljava/util/List;Z)V

    .line 518
    goto/16 :goto_39a

    .line 499
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":Z
    :pswitch_16e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 501
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 504
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {v6, v0, v1, v2}, Lmiui/mqsas/IMQSService$Stub;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 506
    goto/16 :goto_39a

    .line 489
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 491
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportBluetoothEvent(ILjava/lang/String;)V

    .line 494
    goto/16 :goto_39a

    .line 481
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_192
    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 482
    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportKillProcessEvents(Landroid/content/pm/ParceledListSlice;)V

    .line 484
    goto/16 :goto_39a

    .line 469
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :pswitch_1a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 471
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 473
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {v6, v0, v1, v2}, Lmiui/mqsas/IMQSService$Stub;->reportConnectExceptionEvent(IILjava/lang/String;)V

    .line 476
    goto/16 :goto_39a

    .line 459
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 461
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportTelephonyEvent(ILjava/lang/String;)V

    .line 464
    goto/16 :goto_39a

    .line 451
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1c6
    sget-object v0, Lmiui/mqsas/sdk/event/BootEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/BootEvent;

    .line 452
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/BootEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V

    .line 454
    goto/16 :goto_39a

    .line 443
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/BootEvent;
    :pswitch_1d6
    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 444
    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V

    .line 446
    goto/16 :goto_39a

    .line 436
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :pswitch_1e6
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSService$Stub;->onBootCompleted()V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    goto/16 :goto_39a

    .line 429
    :pswitch_1ee
    sget-object v0, Lmiui/mqsas/sdk/event/PackageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/PackageEvent;

    .line 430
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/PackageEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    .line 432
    goto/16 :goto_39a

    .line 421
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/PackageEvent;
    :pswitch_1fe
    sget-object v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    .line 422
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    .line 424
    goto/16 :goto_39a

    .line 412
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    :pswitch_20e
    sget-object v0, Lmiui/mqsas/sdk/event/RebootNullEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/RebootNullEvent;

    .line 413
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/RebootNullEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportRebootNullEvent(Lmiui/mqsas/sdk/event/RebootNullEvent;)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    goto/16 :goto_39a

    .line 403
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/RebootNullEvent;
    :pswitch_221
    sget-object v0, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;

    .line 404
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/GeneralExceptionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportGeneralException(Lmiui/mqsas/sdk/event/GeneralExceptionEvent;)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    goto/16 :goto_39a

    .line 394
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/GeneralExceptionEvent;
    :pswitch_234
    sget-object v0, Lmiui/mqsas/sdk/event/HeapLeakEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/HeapLeakEvent;

    .line 395
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/HeapLeakEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportHeapLeakEvent(Lmiui/mqsas/sdk/event/HeapLeakEvent;)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto/16 :goto_39a

    .line 385
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/HeapLeakEvent;
    :pswitch_247
    sget-object v0, Lmiui/mqsas/sdk/event/RssLeakEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/RssLeakEvent;

    .line 386
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/RssLeakEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportRssLeakEvent(Lmiui/mqsas/sdk/event/RssLeakEvent;)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto/16 :goto_39a

    .line 376
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/RssLeakEvent;
    :pswitch_25a
    sget-object v0, Lmiui/mqsas/sdk/event/WatchdogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/WatchdogEvent;

    .line 377
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto/16 :goto_39a

    .line 367
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    :pswitch_26d
    sget-object v0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 368
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    goto/16 :goto_39a

    .line 358
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    :pswitch_280
    sget-object v0, Lmiui/mqsas/sdk/event/AnrEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/AnrEvent;

    .line 359
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/AnrEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    goto/16 :goto_39a

    .line 348
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/AnrEvent;
    :pswitch_293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 350
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 351
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportGeneralEvent(ILandroid/os/Bundle;)V

    .line 353
    goto/16 :goto_39a

    .line 332
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_2a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 334
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 336
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 338
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 339
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lmiui/mqsas/IMQSService$Stub;->reportHighMemoryEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v0

    .line 341
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 343
    goto/16 :goto_39a

    .line 322
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_2cd
    sget-object v0, Lmiui/mqsas/sdk/event/WatchdogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/WatchdogEvent;

    .line 323
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->checkDumpForWatchdog(Lmiui/mqsas/sdk/event/WatchdogEvent;)I

    move-result v1

    .line 325
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    goto/16 :goto_39a

    .line 312
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    .end local v1    # "_result":I
    :pswitch_2e4
    sget-object v0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 313
    .local v0, "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->checkDumpForJavaException(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v1

    .line 315
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    goto/16 :goto_39a

    .line 297
    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    .end local v1    # "_result":I
    :pswitch_2fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v6, v0, v1, v2, v3}, Lmiui/mqsas/IMQSService$Stub;->commonCaptureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto/16 :goto_39a

    .line 287
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {v6, v0}, Lmiui/mqsas/IMQSService$Stub;->getRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 290
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 292
    goto :goto_39a

    .line 279
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_328
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSService$Stub;->getOneTrackService()Landroid/os/IBinder;

    move-result-object v0

    .line 280
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 282
    goto :goto_39a

    .line 266
    .end local v0    # "_result":Landroid/os/IBinder;
    :pswitch_333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 270
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 273
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {v6, v0, v1, v2, v3}, Lmiui/mqsas/IMQSService$Stub;->reportEventsV2(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 275
    goto :goto_39a

    .line 252
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    :pswitch_34a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {v6, v0, v1, v2, v3}, Lmiui/mqsas/IMQSService$Stub;->appCaptureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    goto :goto_39a

    .line 240
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {v6, v0, v1, v2}, Lmiui/mqsas/IMQSService$Stub;->reportNativeFeatureEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    goto :goto_39a

    .line 226
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 233
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v6, v0, v1, v2, v3}, Lmiui/mqsas/IMQSService$Stub;->reportNativeEventV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    goto :goto_39a

    .line 216
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_38b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportSimpleEvent(ILjava/lang/String;)V

    .line 221
    nop

    .line 701
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :goto_39a
    return v11

    nop

    :pswitch_data_39c
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_3a2
    .packed-switch 0x1
        :pswitch_38b
        :pswitch_374
        :pswitch_361
        :pswitch_34a
        :pswitch_333
        :pswitch_328
        :pswitch_316
        :pswitch_2fb
        :pswitch_2e4
        :pswitch_2cd
        :pswitch_2a7
        :pswitch_293
        :pswitch_280
        :pswitch_26d
        :pswitch_25a
        :pswitch_247
        :pswitch_234
        :pswitch_221
        :pswitch_20e
        :pswitch_1fe
        :pswitch_1ee
        :pswitch_1e6
        :pswitch_1d6
        :pswitch_1c6
        :pswitch_1b6
        :pswitch_1a2
        :pswitch_192
        :pswitch_182
        :pswitch_16e
        :pswitch_15a
        :pswitch_143
        :pswitch_133
        :pswitch_12e
        :pswitch_116
        :pswitch_fe
        :pswitch_f9
        :pswitch_e1
        :pswitch_d1
        :pswitch_c1
        :pswitch_b1
        :pswitch_a1
        :pswitch_8d
        :pswitch_81
        :pswitch_71
        :pswitch_61
        :pswitch_5c
        :pswitch_44
        :pswitch_34
        :pswitch_24
    .end packed-switch
.end method
