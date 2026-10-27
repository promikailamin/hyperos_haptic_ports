.class public abstract Landroid/app/IActivityClientController$Stub;
.super Landroid/os/Binder;
.source "IActivityClientController.java"

# interfaces
.implements Landroid/app/IActivityClientController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityClientController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityClientController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_activityDestroyed:I = 0x7

.field static final blacklist TRANSACTION_activityIdle:I = 0x1

.field static final blacklist TRANSACTION_activityLocalRelaunch:I = 0x8

.field static final blacklist TRANSACTION_activityPaused:I = 0x5

.field static final blacklist TRANSACTION_activityRefreshed:I = 0x3

.field static final blacklist TRANSACTION_activityRelaunched:I = 0x9

.field static final blacklist TRANSACTION_activityResumed:I = 0x2

.field static final blacklist TRANSACTION_activityStopped:I = 0x6

.field static final blacklist TRANSACTION_activityTopResumedStateLost:I = 0x4

.field static final blacklist TRANSACTION_checkActivityCallerContentUriPermission:I = 0x1f

.field static final blacklist TRANSACTION_clearOverrideActivityTransition:I = 0x3c

.field static final blacklist TRANSACTION_convertFromTranslucent:I = 0x22

.field static final blacklist TRANSACTION_convertToTranslucent:I = 0x23

.field static final blacklist TRANSACTION_dismissKeyguard:I = 0x41

.field static final blacklist TRANSACTION_enableTaskLocaleOverride:I = 0x46

.field static final blacklist TRANSACTION_enterPictureInPictureMode:I = 0x29

.field static final blacklist TRANSACTION_finishActivity:I = 0xf

.field static final blacklist TRANSACTION_finishActivityAffinity:I = 0x10

.field static final blacklist TRANSACTION_finishSubActivity:I = 0x11

.field static final blacklist TRANSACTION_getActivityCallerPackage:I = 0x1e

.field static final blacklist TRANSACTION_getActivityCallerUid:I = 0x1c

.field static final blacklist TRANSACTION_getActivityTokenBelow:I = 0x18

.field static final blacklist TRANSACTION_getCallingActivity:I = 0x19

.field static final blacklist TRANSACTION_getCallingPackage:I = 0x1a

.field static final blacklist TRANSACTION_getDisplayId:I = 0x15

.field static final blacklist TRANSACTION_getLaunchedFromPackage:I = 0x1d

.field static final blacklist TRANSACTION_getLaunchedFromUid:I = 0x1b

.field static final blacklist TRANSACTION_getRequestedOrientation:I = 0x21

.field static final blacklist TRANSACTION_getTaskConfiguration:I = 0x17

.field static final blacklist TRANSACTION_getTaskForActivity:I = 0x16

.field static final blacklist TRANSACTION_invalidateHomeTaskSnapshot:I = 0x40

.field static final blacklist TRANSACTION_isHandoffEnabled:I = 0x26

.field static final blacklist TRANSACTION_isHandoffFullTaskRecreationAllowed:I = 0x27

.field static final blacklist TRANSACTION_isImmersive:I = 0x24

.field static final blacklist TRANSACTION_isRequestedToLaunchInTaskFragment:I = 0x47

.field static final blacklist TRANSACTION_isRootVoiceInteraction:I = 0x33

.field static final blacklist TRANSACTION_isTopOfTask:I = 0x13

.field static final blacklist TRANSACTION_moveActivityTaskToBack:I = 0xb

.field static final blacklist TRANSACTION_navigateUpTo:I = 0xd

.field static final blacklist TRANSACTION_onBackPressed:I = 0x44

.field static final blacklist TRANSACTION_overrideActivityTransition:I = 0x3b

.field static final blacklist TRANSACTION_overridePendingTransition:I = 0x3d

.field static final blacklist TRANSACTION_registerRemoteAnimations:I = 0x42

.field static final blacklist TRANSACTION_releaseActivityInstance:I = 0xe

.field static final blacklist TRANSACTION_reportActivityFullyDrawn:I = 0x3a

.field static final blacklist TRANSACTION_reportSizeConfigurations:I = 0xa

.field static final blacklist TRANSACTION_requestMultiwindowFullscreen:I = 0x2d

.field static final blacklist TRANSACTION_setActivityRecordInputSinkEnabled:I = 0x48

.field static final blacklist TRANSACTION_setAllowCrossUidActivitySwitchFromBelow:I = 0x39

.field static final blacklist TRANSACTION_setForceSendResultForMediaProjection:I = 0x12

.field static final blacklist TRANSACTION_setHandoffEnabled:I = 0x28

.field static final blacklist TRANSACTION_setImmersive:I = 0x25

.field static final blacklist TRANSACTION_setInheritShowWhenLocked:I = 0x37

.field static final blacklist TRANSACTION_setPictureInPictureParams:I = 0x2a

.field static final blacklist TRANSACTION_setRecentsScreenshotEnabled:I = 0x3f

.field static final blacklist TRANSACTION_setRequestedOrientation:I = 0x20

.field static final blacklist TRANSACTION_setShouldDockBigOverlays:I = 0x2b

.field static final blacklist TRANSACTION_setShowWhenLocked:I = 0x36

.field static final blacklist TRANSACTION_setTaskDescription:I = 0x31

.field static final blacklist TRANSACTION_setTurnScreenOn:I = 0x38

.field static final blacklist TRANSACTION_setVrMode:I = 0x3e

.field static final blacklist TRANSACTION_shouldUpRecreateTask:I = 0xc

.field static final blacklist TRANSACTION_showAssistFromActivity:I = 0x32

.field static final blacklist TRANSACTION_showLockTaskEscapeMessage:I = 0x30

.field static final blacklist TRANSACTION_splashScreenAttached:I = 0x45

.field static final blacklist TRANSACTION_startLocalVoiceInteraction:I = 0x34

.field static final blacklist TRANSACTION_startLockTaskModeByToken:I = 0x2e

.field static final blacklist TRANSACTION_stopLocalVoiceInteraction:I = 0x35

.field static final blacklist TRANSACTION_stopLockTaskModeByToken:I = 0x2f

.field static final blacklist TRANSACTION_toggleFreeformWindowingMode:I = 0x2c

.field static final blacklist TRANSACTION_unregisterRemoteAnimations:I = 0x43

.field static final blacklist TRANSACTION_willActivityBeVisible:I = 0x14


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 331
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 332
    const-string v0, "android.app.IActivityClientController"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityClientController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityClientController;
    .registers 3

    .line 340
    if-nez p0, :cond_4

    .line 341
    const/4 p0, 0x0

    return-object p0

    .line 343
    :cond_4
    const-string v0, "android.app.IActivityClientController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IActivityClientController;

    if-eqz v1, :cond_13

    .line 345
    check-cast v0, Landroid/app/IActivityClientController;

    return-object v0

    .line 347
    :cond_13
    new-instance v0, Landroid/app/IActivityClientController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IActivityClientController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 356
    packed-switch p0, :pswitch_data_104

    .line 648
    const/4 p0, 0x0

    return-object p0

    .line 644
    :pswitch_5
    const-string/jumbo p0, "setActivityRecordInputSinkEnabled"

    return-object p0

    .line 640
    :pswitch_9
    const-string/jumbo p0, "isRequestedToLaunchInTaskFragment"

    return-object p0

    .line 636
    :pswitch_d
    const-string p0, "enableTaskLocaleOverride"

    return-object p0

    .line 632
    :pswitch_10
    const-string/jumbo p0, "splashScreenAttached"

    return-object p0

    .line 628
    :pswitch_14
    const-string/jumbo p0, "onBackPressed"

    return-object p0

    .line 624
    :pswitch_18
    const-string/jumbo p0, "unregisterRemoteAnimations"

    return-object p0

    .line 620
    :pswitch_1c
    const-string/jumbo p0, "registerRemoteAnimations"

    return-object p0

    .line 616
    :pswitch_20
    const-string p0, "dismissKeyguard"

    return-object p0

    .line 612
    :pswitch_23
    const-string p0, "invalidateHomeTaskSnapshot"

    return-object p0

    .line 608
    :pswitch_26
    const-string/jumbo p0, "setRecentsScreenshotEnabled"

    return-object p0

    .line 604
    :pswitch_2a
    const-string/jumbo p0, "setVrMode"

    return-object p0

    .line 600
    :pswitch_2e
    const-string/jumbo p0, "overridePendingTransition"

    return-object p0

    .line 596
    :pswitch_32
    const-string p0, "clearOverrideActivityTransition"

    return-object p0

    .line 592
    :pswitch_35
    const-string/jumbo p0, "overrideActivityTransition"

    return-object p0

    .line 588
    :pswitch_39
    const-string/jumbo p0, "reportActivityFullyDrawn"

    return-object p0

    .line 584
    :pswitch_3d
    const-string/jumbo p0, "setAllowCrossUidActivitySwitchFromBelow"

    return-object p0

    .line 580
    :pswitch_41
    const-string/jumbo p0, "setTurnScreenOn"

    return-object p0

    .line 576
    :pswitch_45
    const-string/jumbo p0, "setInheritShowWhenLocked"

    return-object p0

    .line 572
    :pswitch_49
    const-string/jumbo p0, "setShowWhenLocked"

    return-object p0

    .line 568
    :pswitch_4d
    const-string/jumbo p0, "stopLocalVoiceInteraction"

    return-object p0

    .line 564
    :pswitch_51
    const-string/jumbo p0, "startLocalVoiceInteraction"

    return-object p0

    .line 560
    :pswitch_55
    const-string/jumbo p0, "isRootVoiceInteraction"

    return-object p0

    .line 556
    :pswitch_59
    const-string/jumbo p0, "showAssistFromActivity"

    return-object p0

    .line 552
    :pswitch_5d
    const-string/jumbo p0, "setTaskDescription"

    return-object p0

    .line 548
    :pswitch_61
    const-string/jumbo p0, "showLockTaskEscapeMessage"

    return-object p0

    .line 544
    :pswitch_65
    const-string/jumbo p0, "stopLockTaskModeByToken"

    return-object p0

    .line 540
    :pswitch_69
    const-string/jumbo p0, "startLockTaskModeByToken"

    return-object p0

    .line 536
    :pswitch_6d
    const-string/jumbo p0, "requestMultiwindowFullscreen"

    return-object p0

    .line 532
    :pswitch_71
    const-string/jumbo p0, "toggleFreeformWindowingMode"

    return-object p0

    .line 528
    :pswitch_75
    const-string/jumbo p0, "setShouldDockBigOverlays"

    return-object p0

    .line 524
    :pswitch_79
    const-string/jumbo p0, "setPictureInPictureParams"

    return-object p0

    .line 520
    :pswitch_7d
    const-string p0, "enterPictureInPictureMode"

    return-object p0

    .line 516
    :pswitch_80
    const-string/jumbo p0, "setHandoffEnabled"

    return-object p0

    .line 512
    :pswitch_84
    const-string p0, "isHandoffFullTaskRecreationAllowed"

    return-object p0

    .line 508
    :pswitch_87
    const-string p0, "isHandoffEnabled"

    return-object p0

    .line 504
    :pswitch_8a
    const-string/jumbo p0, "setImmersive"

    return-object p0

    .line 500
    :pswitch_8e
    const-string p0, "isImmersive"

    return-object p0

    .line 496
    :pswitch_91
    const-string p0, "convertToTranslucent"

    return-object p0

    .line 492
    :pswitch_94
    const-string p0, "convertFromTranslucent"

    return-object p0

    .line 488
    :pswitch_97
    const-string p0, "getRequestedOrientation"

    return-object p0

    .line 484
    :pswitch_9a
    const-string/jumbo p0, "setRequestedOrientation"

    return-object p0

    .line 480
    :pswitch_9e
    const-string p0, "checkActivityCallerContentUriPermission"

    return-object p0

    .line 476
    :pswitch_a1
    const-string p0, "getActivityCallerPackage"

    return-object p0

    .line 472
    :pswitch_a4
    const-string p0, "getLaunchedFromPackage"

    return-object p0

    .line 468
    :pswitch_a7
    const-string p0, "getActivityCallerUid"

    return-object p0

    .line 464
    :pswitch_aa
    const-string p0, "getLaunchedFromUid"

    return-object p0

    .line 460
    :pswitch_ad
    const-string p0, "getCallingPackage"

    return-object p0

    .line 456
    :pswitch_b0
    const-string p0, "getCallingActivity"

    return-object p0

    .line 452
    :pswitch_b3
    const-string p0, "getActivityTokenBelow"

    return-object p0

    .line 448
    :pswitch_b6
    const-string p0, "getTaskConfiguration"

    return-object p0

    .line 444
    :pswitch_b9
    const-string p0, "getTaskForActivity"

    return-object p0

    .line 440
    :pswitch_bc
    const-string p0, "getDisplayId"

    return-object p0

    .line 436
    :pswitch_bf
    const-string/jumbo p0, "willActivityBeVisible"

    return-object p0

    .line 432
    :pswitch_c3
    const-string/jumbo p0, "isTopOfTask"

    return-object p0

    .line 428
    :pswitch_c7
    const-string/jumbo p0, "setForceSendResultForMediaProjection"

    return-object p0

    .line 424
    :pswitch_cb
    const-string p0, "finishSubActivity"

    return-object p0

    .line 420
    :pswitch_ce
    const-string p0, "finishActivityAffinity"

    return-object p0

    .line 416
    :pswitch_d1
    const-string p0, "finishActivity"

    return-object p0

    .line 412
    :pswitch_d4
    const-string/jumbo p0, "releaseActivityInstance"

    return-object p0

    .line 408
    :pswitch_d8
    const-string/jumbo p0, "navigateUpTo"

    return-object p0

    .line 404
    :pswitch_dc
    const-string/jumbo p0, "shouldUpRecreateTask"

    return-object p0

    .line 400
    :pswitch_e0
    const-string/jumbo p0, "moveActivityTaskToBack"

    return-object p0

    .line 396
    :pswitch_e4
    const-string/jumbo p0, "reportSizeConfigurations"

    return-object p0

    .line 392
    :pswitch_e8
    const-string p0, "activityRelaunched"

    return-object p0

    .line 388
    :pswitch_eb
    const-string p0, "activityLocalRelaunch"

    return-object p0

    .line 384
    :pswitch_ee
    const-string p0, "activityDestroyed"

    return-object p0

    .line 380
    :pswitch_f1
    const-string p0, "activityStopped"

    return-object p0

    .line 376
    :pswitch_f4
    const-string p0, "activityPaused"

    return-object p0

    .line 372
    :pswitch_f7
    const-string p0, "activityTopResumedStateLost"

    return-object p0

    .line 368
    :pswitch_fa
    const-string p0, "activityRefreshed"

    return-object p0

    .line 364
    :pswitch_fd
    const-string p0, "activityResumed"

    return-object p0

    .line 360
    :pswitch_100
    const-string p0, "activityIdle"

    return-object p0

    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_100
        :pswitch_fd
        :pswitch_fa
        :pswitch_f7
        :pswitch_f4
        :pswitch_f1
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
        :pswitch_e4
        :pswitch_e0
        :pswitch_dc
        :pswitch_d8
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c7
        :pswitch_c3
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_80
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
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

    .line 351
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2783
    const/16 v0, 0x47

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 655
    invoke-static {p1}, Landroid/app/IActivityClientController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    nop

    .line 660
    const-string v3, "android.app.IActivityClientController"

    const/4 v6, 0x1

    if-lt p1, v6, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 661
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 664
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 665
    return v6

    .line 667
    :cond_17
    packed-switch p1, :pswitch_data_5e0

    .line 1452
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1443
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1445
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1446
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1447
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityClientController$Stub;->setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V

    .line 1448
    goto/16 :goto_5df

    .line 1431
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1433
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1435
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityClientController$Stub;->isRequestedToLaunchInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    .line 1436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1438
    goto/16 :goto_5df

    .line 1422
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1423
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1424
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->enableTaskLocaleOverride(Landroid/os/IBinder;)V

    .line 1425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    goto/16 :goto_5df

    .line 1414
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1415
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1416
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->splashScreenAttached(Landroid/os/IBinder;)V

    .line 1417
    goto/16 :goto_5df

    .line 1404
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1406
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IRequestFinishCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IRequestFinishCallback;

    move-result-object v3

    .line 1407
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1408
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityClientController$Stub;->onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V

    .line 1409
    goto/16 :goto_5df

    .line 1395
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1397
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->unregisterRemoteAnimations(Landroid/os/IBinder;)V

    .line 1398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    goto/16 :goto_5df

    .line 1384
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1386
    sget-object v3, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationDefinition;

    .line 1387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1388
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityClientController$Stub;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    .line 1389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    goto/16 :goto_5df

    .line 1371
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1373
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v3

    .line 1375
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1377
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityClientController$Stub;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    goto/16 :goto_5df

    .line 1362
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1364
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V

    .line 1365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    goto/16 :goto_5df

    .line 1352
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1354
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1355
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityClientController$Stub;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V

    .line 1357
    goto/16 :goto_5df

    .line 1338
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1340
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1342
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1343
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityClientController$Stub;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0

    .line 1345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1347
    goto/16 :goto_5df

    .line 1321
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1331
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 1332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    goto/16 :goto_5df

    .line 1311
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1313
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1314
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1315
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->clearOverrideActivityTransition(Landroid/os/IBinder;Z)V

    .line 1316
    goto/16 :goto_5df

    .line 1295
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1297
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1305
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->overrideActivityTransition(Landroid/os/IBinder;ZIII)V

    .line 1306
    goto/16 :goto_5df

    .line 1285
    :pswitch_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1287
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1289
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 1290
    goto/16 :goto_5df

    .line 1275
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1277
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1279
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V

    .line 1280
    goto/16 :goto_5df

    .line 1264
    :pswitch_165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1266
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1268
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 1269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    goto/16 :goto_5df

    .line 1254
    :pswitch_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1256
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1258
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 1259
    goto/16 :goto_5df

    .line 1244
    :pswitch_188
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1246
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1248
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 1249
    goto/16 :goto_5df

    .line 1235
    :pswitch_198
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 1238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    goto/16 :goto_5df

    .line 1224
    :pswitch_1a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1226
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1227
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    goto/16 :goto_5df

    .line 1214
    :pswitch_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1216
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    .line 1217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1219
    goto/16 :goto_5df

    .line 1202
    :pswitch_1d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1204
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1206
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    .line 1207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1209
    goto/16 :goto_5df

    .line 1191
    :pswitch_1ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1193
    sget-object v2, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$TaskDescription;

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 1196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    goto/16 :goto_5df

    .line 1183
    :pswitch_203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 1186
    goto/16 :goto_5df

    .line 1174
    :pswitch_20f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 1177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    goto/16 :goto_5df

    .line 1165
    :pswitch_21e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1167
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 1168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    goto/16 :goto_5df

    .line 1153
    :pswitch_22d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V

    .line 1160
    goto/16 :goto_5df

    .line 1144
    :pswitch_245
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 1147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    goto/16 :goto_5df

    .line 1134
    :pswitch_254
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1138
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V

    .line 1139
    goto/16 :goto_5df

    .line 1123
    :pswitch_264
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1125
    sget-object v2, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PictureInPictureParams;

    .line 1126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 1128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    goto/16 :goto_5df

    .line 1111
    :pswitch_27b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1113
    sget-object v2, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PictureInPictureParams;

    .line 1114
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v0

    .line 1116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1118
    goto/16 :goto_5df

    .line 1098
    :pswitch_296
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1100
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1102
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1104
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->setHandoffEnabled(Landroid/os/IBinder;ZZ)V

    .line 1105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    goto/16 :goto_5df

    .line 1088
    :pswitch_2ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1089
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->isHandoffFullTaskRecreationAllowed(Landroid/os/IBinder;)Z

    move-result v0

    .line 1091
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1093
    goto/16 :goto_5df

    .line 1078
    :pswitch_2c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->isHandoffEnabled(Landroid/os/IBinder;)Z

    move-result v0

    .line 1081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1083
    goto/16 :goto_5df

    .line 1067
    :pswitch_2d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1070
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    goto/16 :goto_5df

    .line 1057
    :pswitch_2e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1058
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0

    .line 1060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1062
    goto/16 :goto_5df

    .line 1045
    :pswitch_2f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1047
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1049
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    .line 1050
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1052
    goto/16 :goto_5df

    .line 1035
    :pswitch_314
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1036
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v0

    .line 1038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1040
    goto/16 :goto_5df

    .line 1025
    :pswitch_327
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    .line 1028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    goto/16 :goto_5df

    .line 1014
    :pswitch_33a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    goto/16 :goto_5df

    .line 996
    :pswitch_34d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1000
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1005
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;II)I

    move-result v0

    .line 1007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    goto/16 :goto_5df

    .line 984
    :pswitch_375
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 991
    goto/16 :goto_5df

    .line 974
    :pswitch_38c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 975
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 976
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 979
    goto/16 :goto_5df

    .line 962
    :pswitch_39f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I

    move-result v0

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    goto/16 :goto_5df

    .line 952
    :pswitch_3b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 954
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    .line 955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    goto/16 :goto_5df

    .line 942
    :pswitch_3c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 947
    goto/16 :goto_5df

    .line 932
    :pswitch_3dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 933
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    .line 935
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 937
    goto/16 :goto_5df

    .line 922
    :pswitch_3ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 927
    goto/16 :goto_5df

    .line 912
    :pswitch_402
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 917
    goto/16 :goto_5df

    .line 900
    :pswitch_415
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    goto/16 :goto_5df

    .line 890
    :pswitch_42c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->getDisplayId(Landroid/os/IBinder;)I

    move-result v0

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    goto/16 :goto_5df

    .line 880
    :pswitch_43f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 885
    goto/16 :goto_5df

    .line 870
    :pswitch_452
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 875
    goto/16 :goto_5df

    .line 861
    :pswitch_465
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->setForceSendResultForMediaProjection(Landroid/os/IBinder;)V

    .line 864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    goto/16 :goto_5df

    .line 848
    :pswitch_474
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_5df

    .line 838
    :pswitch_48b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    .line 841
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 843
    goto/16 :goto_5df

    .line 822
    :pswitch_49e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 826
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IActivityClientController$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v0

    .line 831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 833
    goto/16 :goto_5df

    .line 812
    :pswitch_4c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    .line 815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 817
    goto/16 :goto_5df

    .line 794
    :pswitch_4d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 796
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 802
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v0

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 807
    goto/16 :goto_5df

    .line 782
    :pswitch_500
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    .line 787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 789
    goto/16 :goto_5df

    .line 770
    :pswitch_517
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 777
    goto/16 :goto_5df

    .line 760
    :pswitch_52e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 762
    sget-object v2, Landroid/window/SizeConfigurationBuckets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SizeConfigurationBuckets;

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V

    .line 765
    goto/16 :goto_5df

    .line 752
    :pswitch_542
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->activityRelaunched(Landroid/os/IBinder;)V

    .line 755
    goto/16 :goto_5df

    .line 744
    :pswitch_54e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->activityLocalRelaunch(Landroid/os/IBinder;)V

    .line 747
    goto/16 :goto_5df

    .line 736
    :pswitch_55a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->activityDestroyed(Landroid/os/IBinder;)V

    .line 739
    goto/16 :goto_5df

    .line 720
    :pswitch_566
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 722
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 724
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 726
    sget-object v4, Landroid/app/HandoffActivityData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/HandoffActivityData;

    .line 728
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Landroid/app/HandoffActivityData;Ljava/lang/CharSequence;)V

    .line 731
    goto :goto_5df

    .line 711
    :pswitch_592
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->activityPaused(Landroid/os/IBinder;)V

    .line 714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    goto :goto_5df

    .line 702
    :pswitch_5a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->activityTopResumedStateLost(Landroid/os/IBinder;)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    goto :goto_5df

    .line 694
    :pswitch_5ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v1}, Landroid/app/IActivityClientController$Stub;->activityRefreshed(Landroid/os/IBinder;)V

    .line 697
    goto :goto_5df

    .line 684
    :pswitch_5b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {p0, v1, v2}, Landroid/app/IActivityClientController$Stub;->activityResumed(Landroid/os/IBinder;Z)V

    .line 689
    goto :goto_5df

    .line 672
    :pswitch_5c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 674
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 679
    nop

    .line 1455
    :goto_5df
    return v6

    :pswitch_data_5e0
    .packed-switch 0x1
        :pswitch_5c8
        :pswitch_5b9
        :pswitch_5ae
        :pswitch_5a0
        :pswitch_592
        :pswitch_566
        :pswitch_55a
        :pswitch_54e
        :pswitch_542
        :pswitch_52e
        :pswitch_517
        :pswitch_500
        :pswitch_4d4
        :pswitch_4c1
        :pswitch_49e
        :pswitch_48b
        :pswitch_474
        :pswitch_465
        :pswitch_452
        :pswitch_43f
        :pswitch_42c
        :pswitch_415
        :pswitch_402
        :pswitch_3ef
        :pswitch_3dc
        :pswitch_3c9
        :pswitch_3b6
        :pswitch_39f
        :pswitch_38c
        :pswitch_375
        :pswitch_34d
        :pswitch_33a
        :pswitch_327
        :pswitch_314
        :pswitch_2f9
        :pswitch_2e6
        :pswitch_2d3
        :pswitch_2c0
        :pswitch_2ad
        :pswitch_296
        :pswitch_27b
        :pswitch_264
        :pswitch_254
        :pswitch_245
        :pswitch_22d
        :pswitch_21e
        :pswitch_20f
        :pswitch_203
        :pswitch_1ec
        :pswitch_1d1
        :pswitch_1be
        :pswitch_1a7
        :pswitch_198
        :pswitch_188
        :pswitch_178
        :pswitch_165
        :pswitch_155
        :pswitch_145
        :pswitch_128
        :pswitch_118
        :pswitch_f8
        :pswitch_d9
        :pswitch_c9
        :pswitch_ba
        :pswitch_9b
        :pswitch_84
        :pswitch_75
        :pswitch_61
        :pswitch_55
        :pswitch_46
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
