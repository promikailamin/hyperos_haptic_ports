.class Lcom/android/server/wm/BackgroundActivityStartController$BalState;
.super Ljava/lang/Object;
.source "BackgroundActivityStartController.java"


# instance fields
.field public final mAllowBalExemptionForSystemProcess:Z

.field public final mAppSwitchState:I

.field public final mAutoOptInCaller:Z

.field public final mAutoOptInReason:Ljava/lang/String;

.field public final mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

.field public final mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

.field public final mCallerApp:Lcom/android/server/wm/WindowProcessController;

.field public final mCallingPackage:Ljava/lang/String;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mCallingUidHasNonAppVisibleWindow:Z

.field public final mCallingUidHasVisibleActivity:Z

.field public final mCallingUidProcState:I

.field public final mCheckedOptions:Landroid/app/ActivityOptions;

.field public final mIntent:Landroid/content/Intent;

.field public final mIsCallForResult:Z

.field public final mIsCallingUidPersistentSystemProcess:Z

.field public final mIsRealCallingUidPersistentSystemProcess:Z

.field public final mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

.field public final mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

.field public final mRealCallingPackage:Ljava/lang/String;

.field public final mRealCallingPid:I

.field public final mRealCallingUid:I

.field public final mRealCallingUidHasNonAppVisibleWindow:Z

.field public final mRealCallingUidHasVisibleActivity:Z

.field public final mRealCallingUidProcState:I

.field public mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public final synthetic this$0:Lcom/android/server/wm/BackgroundActivityStartController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAllowBalExemptionForSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAllowBalExemptionForSystemProcess:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasNonAppVisibleWindow:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallingUidHasVisibleActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasVisibleActivity:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallingUidProcState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidProcState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsCallingUidPersistentSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallingUidPersistentSystemProcess:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsRealCallingUidPersistentSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOriginatingPendingIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/am/PendingIntentRecord;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRealCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRealCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRealCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasNonAppVisibleWindow:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRealCallingUidHasVisibleActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleActivity:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRealCallingUidProcState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcallerIsRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerIsRealCaller()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->hasRealCaller()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p1

    move-object/from16 v8, p12

    .line 366
    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    .line 368
    iput v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    move/from16 v9, p3

    .line 369
    iput v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPid:I

    .line 370
    iput v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    .line 371
    iput v4, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPid:I

    .line 372
    iput-object v5, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    move/from16 v9, p9

    .line 373
    iput-boolean v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAllowBalExemptionForSystemProcess:Z

    .line 374
    iput-object v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v9, p11

    .line 375
    iput-object v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    .line 376
    invoke-static {v7}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageNameIfUnique(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz p10, :cond_3f

    move v12, v10

    goto :goto_40

    :cond_3f
    move v12, v11

    .line 378
    :goto_40
    iput-boolean v12, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallForResult:Z

    .line 379
    iput-object v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 381
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v13

    .line 383
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v14

    const/4 v15, -0x1

    if-nez v6, :cond_56

    .line 386
    const-string v6, "notPendingIntent"

    iput-object v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 387
    iput-boolean v10, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    goto :goto_76

    :cond_56
    if-eqz v12, :cond_5f

    .line 389
    const-string v6, "callForResult"

    iput-object v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 390
    iput-boolean v11, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    goto :goto_76

    :cond_5f
    if-ne v1, v3, :cond_68

    .line 392
    const-string v6, "sameUid"

    iput-object v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 393
    iput-boolean v11, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    goto :goto_76

    :cond_68
    if-ne v14, v15, :cond_71

    .line 396
    const-string v6, "compatibility"

    iput-object v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 397
    iput-boolean v11, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    goto :goto_76

    :cond_71
    const/4 v6, 0x0

    .line 399
    iput-object v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 400
    iput-boolean v11, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    .line 403
    :goto_76
    iget-boolean v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    const/4 v12, 0x2

    if-eqz v6, :cond_85

    if-ne v13, v12, :cond_80

    .line 407
    sget-object v2, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    goto :goto_82

    .line 408
    :cond_80
    sget-object v2, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    :goto_82
    iput-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    goto :goto_8b

    .line 411
    :cond_85
    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->getBackgroundStartPrivilegesAllowedByCreator(ILjava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 415
    :goto_8b
    iget-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    if-eqz v2, :cond_99

    if-ne v14, v12, :cond_94

    .line 419
    sget-object v2, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    goto :goto_96

    .line 420
    :cond_94
    sget-object v2, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    :goto_96
    iput-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    goto :goto_9f

    .line 424
    :cond_99
    invoke-static {v8, v3, v9}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesAllowedByCaller(Landroid/app/ActivityOptions;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 428
    :goto_9f
    invoke-static {v7}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getBalAppSwitchesState()I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    .line 429
    invoke-static {v7}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidProcState:I

    if-gt v2, v10, :cond_b9

    move v6, v10

    goto :goto_ba

    :cond_b9
    move v6, v11

    .line 430
    :goto_ba
    iput-boolean v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallingUidPersistentSystemProcess:Z

    .line 433
    invoke-static {v7}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v8, v1}, Lcom/android/server/wm/VisibleActivityProcessTracker;->hasVisibleActivity(I)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasVisibleActivity:Z

    .line 434
    invoke-static {v7}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasNonAppVisibleWindow:Z

    if-ne v3, v15, :cond_e4

    const/16 v1, 0x14

    .line 438
    iput v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    .line 439
    iput-boolean v11, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleActivity:Z

    .line 440
    iput-boolean v11, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasNonAppVisibleWindow:Z

    const/4 v6, 0x0

    .line 441
    iput-object v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 442
    iput-boolean v11, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    return-void

    :cond_e4
    if-ne v1, v3, :cond_fc

    .line 444
    iput v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    .line 445
    iput-boolean v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleActivity:Z

    .line 446
    iput-boolean v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasNonAppVisibleWindow:Z

    if-nez v5, :cond_f7

    .line 449
    invoke-static {v7}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    move-object v5, v1

    .line 450
    :cond_f7
    iput-object v5, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 451
    iput-boolean v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    return-void

    .line 453
    :cond_fc
    invoke-static {v7}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    .line 455
    invoke-static {v7}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/VisibleActivityProcessTracker;->hasVisibleActivity(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleActivity:Z

    .line 458
    invoke-static {v7}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasNonAppVisibleWindow:Z

    .line 459
    invoke-static {v7}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    if-gt v1, v10, :cond_12d

    goto :goto_12e

    :cond_12d
    move v10, v11

    .line 460
    :goto_12e
    iput-boolean v10, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    return-void
.end method


# virtual methods
.method public callerExplicitOptInOrAutoOptIn()Z
    .registers 4

    .line 541
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 542
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptOut()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 544
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1d

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 546
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result p0

    if-eqz p0, :cond_1d

    return v1

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public callerExplicitOptInOrOut()Z
    .registers 1

    .line 571
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public callerExplicitOptOut()Z
    .registers 2

    .line 561
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final callerIsRealCaller()Z
    .registers 2

    .line 525
    iget v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final getBackgroundStartPrivilegesAllowedByCreator(ILjava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/BackgroundStartPrivileges;
    .registers 6

    .line 467
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result p0

    if-eqz p0, :cond_34

    const/4 p1, 0x1

    if-eq p0, p1, :cond_31

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2e

    const/4 p1, 0x3

    if-eq p0, p1, :cond_31

    const/4 p1, 0x4

    if-ne p0, p1, :cond_13

    goto :goto_31

    .line 497
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unsupported BackgroundActivityStartMode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 473
    :cond_2e
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 471
    :cond_31
    :goto_31
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    :cond_34
    if-eqz p1, :cond_5c

    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_3b

    goto :goto_5c

    :cond_3b
    const-wide/32 v0, 0x11abe8e7

    if-eqz p2, :cond_50

    .line 485
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 482
    invoke-static {v0, v1, p2, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 486
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 487
    :cond_4d
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 491
    :cond_50
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_59

    .line 494
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 495
    :cond_59
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 478
    :cond_5c
    :goto_5c
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method

.method public final getDebugPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    if-nez p2, :cond_8

    .line 507
    const-string p0, "root[debugOnly]"

    return-object p0

    .line 509
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_29

    .line 511
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 513
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[debugOnly]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hasRealCaller()Z
    .registers 2

    .line 517
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isPendingIntent()Z
    .registers 2

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->hasRealCaller()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public realCallerExplicitOptInOrAutoOptIn()Z
    .registers 4

    .line 551
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 552
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptOut()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 554
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1d

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 556
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result p0

    if-eqz p0, :cond_1d

    return v1

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public realCallerExplicitOptInOrOut()Z
    .registers 1

    .line 576
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public realCallerExplicitOptOut()Z
    .registers 2

    .line 566
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public setResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V
    .registers 4

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "mResultForCaller can only be set once"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 531
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-void
.end method

.method public setResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V
    .registers 4

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "mResultForRealCaller can only be set once"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 537
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 583
    const-string v1, "[callingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    .line 584
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->getDebugPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v1, "; callingPackageTargetSdk: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetTargetSdk(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    const-string v1, "; callingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    const-string v1, "; callingPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    const-string v1, "; appSwitchState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    const-string v1, "; callingUidHasVisibleActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasVisibleActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 590
    const-string v1, "; callingUidHasNonAppVisibleWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasNonAppVisibleWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 592
    const-string v1, "; callingUidProcState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/app/ActivityManager;

    iget v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidProcState:I

    const-string v3, "PROCESS_STATE_"

    invoke-static {v1, v3, v2}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, "; isCallingUidPersistentSystemProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallingUidPersistentSystemProcess:Z

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 596
    const-string v1, "; allowBalExemptionForSystemProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAllowBalExemptionForSystemProcess:Z

    .line 597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 598
    const-string v1, "; intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 599
    const-string v1, "; callerApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_a5

    .line 601
    const-string v1, "; inVisibleTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 603
    :cond_a5
    const-string v1, "; balAllowedByPiCreator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eqz v1, :cond_c5

    .line 606
    const-string v1, "; resultIfPiCreatorAllowsBal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmCode(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I

    move-result v1

    .line 607
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_c5
    const-string v1, "; callerStartMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 610
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v1

    .line 609
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->balStartModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v1, "; hasRealCaller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->hasRealCaller()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 612
    const-string v1, "; isCallForResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallForResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 613
    const-string v1, "; isPendingIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 614
    const-string v1, "; autoOptInReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->hasRealCaller()Z

    move-result v1

    if-eqz v1, :cond_1c3

    .line 616
    const-string v1, "; realCallingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    .line 617
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->getDebugPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v1, "; realCallingPackageTargetSdk: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    .line 619
    invoke-static {v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetTargetSdk(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    const-string v1, "; realCallingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, "; realCallingPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    const-string v1, "; realCallingUidHasVisibleActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleActivity:Z

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 624
    const-string v1, "; realCallingUidHasNonAppVisibleWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasNonAppVisibleWindow:Z

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 626
    const-string v1, "; realCallingUidProcState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/app/ActivityManager;

    iget v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    invoke-static {v1, v3, v2}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string v1, "; isRealCallingUidPersistentSystemProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    .line 629
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 630
    const-string v1, "; originatingPendingIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 631
    const-string v1, "; realCallerApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_191

    .line 633
    const-string v1, "; realInVisibleTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 634
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 636
    :cond_191
    const-string v1, "; balAllowedByPiSender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 637
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eqz v1, :cond_1b1

    .line 638
    const-string v1, "; resultIfPiSenderAllowsBal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmCode(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I

    move-result v1

    .line 639
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_1b1
    const-string v1, "; realCallerStartMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 642
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result p0

    .line 641
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->balStartModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    :cond_1c3
    const-string p0, "; balDontBringExistingBackgroundTaskStackToFg: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    .line 646
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 647
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
