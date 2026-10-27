.class public final Lcom/android/server/autofill/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.implements Lcom/android/server/autofill/ViewState$Listener;
.implements Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
.implements Landroid/service/autofill/ValueFinder;
.implements Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;


# static fields
.field public static mRequestId:Lcom/android/server/autofill/RequestId;

.field public static sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final id:I

.field public mActivityToken:Landroid/os/IBinder;

.field public final mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

.field public mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

.field public mAugmentedAutofillableIds:Ljava/util/ArrayList;

.field public mAugmentedRequestsLogs:Ljava/util/ArrayList;

.field public final mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

.field public mClient:Landroid/view/autofill/IAutoFillManagerClient;

.field public mClientState:Landroid/os/Bundle;

.field public mClientStateForSecondary:Landroid/os/Bundle;

.field public mClientVulture:Landroid/os/IBinder$DeathRecipient;

.field public final mCompatMode:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mContexts:Ljava/util/ArrayList;

.field public final mCredentialAutofillService:Landroid/content/ComponentName;

.field public mCurrentViewId:Landroid/view/autofill/AutofillId;

.field public final mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mDelayedFillBroadcastReceiverRegistered:Z

.field public mDelayedFillPendingIntent:Landroid/app/PendingIntent;

.field public mDestroyed:Z

.field public mFieldClassificationIdSnapshot:I

.field public final mFillDialogMinWaitAfterImeAnimationMs:J

.field public mFillDialogRunnable:Ljava/lang/Runnable;

.field public final mFillDialogTimeoutMs:J

.field public mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

.field public mFillRequestIdSnapshot:I

.field public mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

.field public final mFlags:I

.field public final mHandler:Landroid/os/Handler;

.field public mHasCallback:Z

.field public mIgnoreViewStateResetToEmpty:Z

.field public mImeAnimationFinishTimeMs:J

.field public mImeAnimationStartTimeMs:J

.field public final mImproveFillDialogEnabled:Z

.field public final mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

.field public mIsPrimaryCredential:Z

.field public mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

.field public mLastInlineSuggestionsRequest:Landroid/util/Pair;

.field public mLastInputStartTime:J

.field public mLatencyBaseTime:J

.field public final mLock:Ljava/lang/Object;

.field public mLogViewEntered:Z

.field public mLoggedInlineDatasetShown:Z

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mPccAssistReceiver:Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

.field public mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

.field public mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field public mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

.field public mPreviouslyFillDialogPotentiallyStarted:Z

.field public final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

.field public mRequestCount:I

.field public final mRequestLogs:Landroid/util/SparseArray;

.field public mResponses:Landroid/util/SparseArray;

.field public mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

.field public mSaveOnAllViewsInvisible:Z

.field public final mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

.field public mSecondaryResponses:Landroid/util/SparseArray;

.field public mSelectedDatasetIds:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

.field public mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

.field public final mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

.field public mSessionState:I

.field public final mStartTime:J

.field public final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final mUiLatencyHistory:Landroid/util/LocalLog;

.field public mUiShownTime:J

.field public mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

.field public final mViewStates:Landroid/util/ArrayMap;

.field public mWaitForImeAnimation:Z

.field public final mWtfHistory:Landroid/util/LocalLog;

.field public final taskId:I

.field public final uid:I

.field public final userId:I


# direct methods
.method public static synthetic $r8$lambda$0y215a1EU78SChzf8b3_hVgSeEo(Lcom/android/server/autofill/Session;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->handleLogContextCommitted(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$FbsvPUWI2xE8TY4EgwSP_y3FnrU(Lcom/android/server/autofill/Session;Ljava/util/function/Consumer;ILandroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->lambda$inlineSuggestionsRequestCacheDecorator$2(Ljava/util/function/Consumer;ILandroid/view/inputmethod/InlineSuggestionsRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GJIY_txwAd6DOj-ST5MNqvqjpzM(Lcom/android/server/autofill/Session;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->logSaveShown()V

    return-void
.end method

.method public static synthetic $r8$lambda$MMPvmfECzqbJIa_uyV3zZlYxpcE(Lcom/android/server/autofill/Session;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sn2jczMPhGLnGGz2COobcUk52MQ(Lcom/android/server/autofill/Session;Ljava/lang/String;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->lambda$createFillDialogEvalRunnable$1(Ljava/lang/String;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XTC9c8ILczzto9H1CCE47uucrrk(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->onSecondaryFillResponse(Landroid/service/autofill/FillResponse;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aoiAlfqcqd3BR8Cp8JNfrlRKwO4(Lcom/android/server/autofill/Session;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->lambda$setClientLocked$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$so1BZplX0oCazGmXB_3aZUQmB0w(Lcom/android/server/autofill/Session;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->doStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ze66iNuONRNDIcHL-_i0N5Hmag8(Lcom/android/server/autofill/Session;ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityToken(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAssistReceiver(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$AssistDataReceiverImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClassificationState(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$ClassificationState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClient(Lcom/android/server/autofill/Session;)Landroid/view/autofill/IAutoFillManagerClient;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClientState(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClientStateForSecondary(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClientStateForSecondary:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCompatMode(Lcom/android/server/autofill/Session;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComponentName(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContexts(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentViewId(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;)Landroid/app/PendingIntent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFillRequestEventLogger(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/FillRequestEventLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPrimaryCredential(Lcom/android/server/autofill/Session;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLatencyBaseTime(Lcom/android/server/autofill/Session;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPresentationStatsEventLogger(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/PresentationStatsEventLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteFillService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecondaryProviderHandler(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/SecondaryProviderHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionFlags(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$SessionFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUrlBar(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmViewStates(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmContexts(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;Landroid/app/PendingIntent;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFieldClassificationIdSnapshot(Lcom/android/server/autofill/Session;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUrlBar(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddCredentialManagerDataToClientState(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillRequest;Landroid/view/inputmethod/InlineSuggestionsRequest;I)Landroid/service/autofill/FillRequest;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->addCredentialManagerDataToClientState(Landroid/service/autofill/FillRequest;Landroid/view/inputmethod/InlineSuggestionsRequest;I)Landroid/service/autofill/FillRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcancelCurrentRequestLocked(Lcom/android/server/autofill/Session;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreatePendingIntent(Lcom/android/server/autofill/Session;I)Landroid/app/PendingIntent;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->createPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfillContextWithAllowedValuesLocked(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetTypeHintsForProvider(Lcom/android/server/autofill/Session;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getTypeHintsForProvider()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmergePreviousSessionLocked(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyFillUiHidden(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->notifyFillUiHidden(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyFillUiShown(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->notifyFillUiShown(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAugmentedAutofillErrorCallback(Lcom/android/server/autofill/Session;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->onAugmentedAutofillErrorCallback()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAugmentedAutofillInlineSuggestionAccept(Lcom/android/server/autofill/Session;Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;ZILandroid/view/autofill/AutofillValue;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/autofill/Session;->onAugmentedAutofillInlineSuggestionAccept(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;ZILandroid/view/autofill/AutofillValue;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInputMethodStart(Lcom/android/server/autofill/Session;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->onInputMethodStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwtf(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmRequestId()Lcom/android/server/autofill/RequestId;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/autofill/Session;->mRequestId:Lcom/android/server/autofill/RequestId;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsIdCounterForPcc()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/Session;->logIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 286
    new-instance v0, Lcom/android/server/autofill/RequestId;

    invoke-direct {v0}, Lcom/android/server/autofill/RequestId;-><init>()V

    sput-object v0, Lcom/android/server/autofill/Session;->mRequestId:Lcom/android/server/autofill/RequestId;

    .line 288
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZILcom/android/server/inputmethod/InputMethodManagerInternal;Z)V
    .registers 40

    move-object/from16 v4, p0

    move-object/from16 v1, p3

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v0, p15

    move/from16 v11, p22

    .line 1689
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v12, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v12}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v12, v4, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v13, 0x0

    .line 290
    iput v13, v4, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 375
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v4, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    const/4 v2, -0x2

    .line 491
    iput v2, v4, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    .line 498
    iput v2, v4, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    .line 508
    new-instance v2, Landroid/util/SparseArray;

    const/4 v14, 0x1

    invoke-direct {v2, v14}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v4, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 537
    new-instance v2, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    invoke-direct {v2, v4}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v2, v4, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 540
    new-instance v2, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

    const/4 v15, 0x0

    invoke-direct {v2, v4, v15}, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session-IA;)V

    iput-object v2, v4, Lcom/android/server/autofill/Session;->mPccAssistReceiver:Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

    .line 542
    new-instance v2, Lcom/android/server/autofill/Session$ClassificationState;

    invoke-direct {v2, v15}, Lcom/android/server/autofill/Session$ClassificationState;-><init>(Lcom/android/server/autofill/Session-IA;)V

    iput-object v2, v4, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 548
    new-instance v2, Lcom/android/server/autofill/Session$1;

    invoke-direct {v2, v4}, Lcom/android/server/autofill/Session$1;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v2, v4, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-wide/16 v2, -0x1

    .line 658
    iput-wide v2, v4, Lcom/android/server/autofill/Session;->mImeAnimationFinishTimeMs:J

    .line 660
    iput-wide v2, v4, Lcom/android/server/autofill/Session;->mImeAnimationStartTimeMs:J

    .line 662
    iput-wide v2, v4, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    if-gez v8, :cond_65

    .line 1691
    const-string v2, "Non-positive sessionId: %s"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v15, v2, v3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1693
    :cond_65
    iput v8, v4, Lcom/android/server/autofill/Session;->id:I

    move/from16 v2, p20

    .line 1694
    iput v2, v4, Lcom/android/server/autofill/Session;->mFlags:I

    move/from16 v3, p5

    .line 1695
    iput v3, v4, Lcom/android/server/autofill/Session;->userId:I

    move/from16 v5, p8

    .line 1696
    iput v5, v4, Lcom/android/server/autofill/Session;->taskId:I

    .line 1697
    iput v9, v4, Lcom/android/server/autofill/Session;->uid:I

    move-object/from16 v5, p1

    .line 1698
    iput-object v5, v4, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1699
    iput-object v7, v4, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    move-object/from16 v6, p2

    .line 1700
    iput-object v6, v4, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    move-object/from16 v6, p4

    .line 1701
    iput-object v6, v4, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 1703
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/Session;->getCredentialAutofillService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/autofill/Session;->mCredentialAutofillService:Landroid/content/ComponentName;

    if-eqz v11, :cond_96

    if-eqz v0, :cond_94

    .line 1709
    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_94

    move-object v15, v0

    :cond_94
    move-object v0, v6

    goto :goto_97

    :cond_96
    move-object v15, v6

    .line 1719
    :goto_97
    const-string v13, "AutofillSession"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Primary service component name: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondary service component name: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_ba

    const/4 v0, 0x0

    :goto_b8
    move-object v13, v4

    goto :goto_c5

    :cond_ba
    move-object v2, v0

    .line 1729
    new-instance v0, Lcom/android/server/autofill/RemoteFillService;

    move-object/from16 v1, p3

    move/from16 v5, p18

    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;ZLandroid/content/ComponentName;)V

    goto :goto_b8

    :goto_c5
    iput-object v0, v13, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v15, :cond_cd

    move-object/from16 v1, p3

    const/4 v0, 0x0

    goto :goto_de

    .line 1739
    :cond_cd
    new-instance v0, Lcom/android/server/autofill/SecondaryProviderHandler;

    new-instance v4, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;

    invoke-direct {v4, v13}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/Session;)V

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p18

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/SecondaryProviderHandler;-><init>(Landroid/content/Context;IZLcom/android/server/autofill/SecondaryProviderHandler$SecondaryProviderCallback;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :goto_de
    iput-object v0, v13, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    .line 1746
    iput-object v10, v13, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    move/from16 v0, p12

    .line 1747
    iput-boolean v0, v13, Lcom/android/server/autofill/Session;->mHasCallback:Z

    move-object/from16 v0, p13

    .line 1748
    iput-object v0, v13, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    move-object/from16 v0, p14

    .line 1749
    iput-object v0, v13, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    .line 1750
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1751
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1752
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getDisplayId(Landroid/os/IBinder;)I

    move-result v0

    .line 1753
    invoke-static {v1, v0}, Lcom/android/server/autofill/Helper;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    move-object/from16 v0, p16

    .line 1754
    iput-object v0, v13, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    move/from16 v1, p17

    .line 1755
    iput-boolean v1, v13, Lcom/android/server/autofill/Session;->mCompatMode:Z

    const/4 v1, 0x1

    .line 1756
    iput v1, v13, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 1758
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v13, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 1759
    iput-wide v1, v13, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    const/4 v3, 0x0

    .line 1760
    iput v3, v13, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 1762
    invoke-static {v8, v9, v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->createPresentationLog(IIJ)Lcom/android/server/autofill/PresentationStatsEventLogger;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1764
    invoke-static {v8}, Lcom/android/server/autofill/FillRequestEventLogger;->forSessionId(I)Lcom/android/server/autofill/FillRequestEventLogger;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 1765
    invoke-static {v8}, Lcom/android/server/autofill/FillResponseEventLogger;->forSessionId(I)Lcom/android/server/autofill/FillResponseEventLogger;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 1766
    invoke-static {v8}, Lcom/android/server/autofill/SessionCommittedEventLogger;->forSessionId(I)Lcom/android/server/autofill/SessionCommittedEventLogger;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1767
    invoke-virtual {v1, v9}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetComponentPackageUid(I)V

    .line 1768
    iget-wide v1, v13, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    invoke-static {v8, v1, v2}, Lcom/android/server/autofill/SaveEventLogger;->forSessionId(IJ)Lcom/android/server/autofill/SaveEventLogger;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1769
    iput-boolean v11, v13, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    .line 1770
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIgnoreViewStateResetToEmpty()Z

    move-result v1

    iput-boolean v1, v13, Lcom/android/server/autofill/Session;->mIgnoreViewStateResetToEmpty:Z

    .line 1772
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isImproveFillDialogEnabled()Z

    move-result v1

    iput-boolean v1, v13, Lcom/android/server/autofill/Session;->mImproveFillDialogEnabled:Z

    .line 1773
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getFillDialogTimeoutMs()J

    move-result-wide v1

    iput-wide v1, v13, Lcom/android/server/autofill/Session;->mFillDialogTimeoutMs:J

    .line 1775
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getFillDialogMinWaitAfterImeAnimationtEndMs()J

    move-result-wide v1

    iput-wide v1, v13, Lcom/android/server/autofill/Session;->mFillDialogMinWaitAfterImeAnimationMs:J

    .line 1777
    monitor-enter p6

    .line 1778
    :try_start_154
    new-instance v1, Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x0

    invoke-direct {v1, v13, v2}, Lcom/android/server/autofill/Session$SessionFlags;-><init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session-IA;)V

    iput-object v1, v13, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    move/from16 v2, p19

    .line 1779
    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1780
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isInlineSuggestionsEnabledLocked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    move-object/from16 v1, p11

    .line 1781
    invoke-virtual {v13, v1}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 1782
    monitor-exit p6
    :try_end_16e
    .catchall {:try_start_154 .. :try_end_16e} :catchall_1a1

    .line 1784
    new-instance v1, Lcom/android/server/autofill/AutofillInlineSessionController;

    new-instance v2, Lcom/android/server/autofill/Session$2;

    invoke-direct {v2, v13}, Lcom/android/server/autofill/Session$2;-><init>(Lcom/android/server/autofill/Session;)V

    move-object/from16 p11, p4

    move/from16 p9, p5

    move-object/from16 p8, p21

    move-object/from16 p10, v0

    move-object/from16 p7, v1

    move-object/from16 p13, v2

    move-object/from16 p12, v7

    invoke-direct/range {p7 .. p13}, Lcom/android/server/autofill/AutofillInlineSessionController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;)V

    move-object/from16 v0, p7

    iput-object v0, v13, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    const/16 v0, 0x38a

    .line 1811
    invoke-virtual {v13, v0}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x5ac

    .line 1812
    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1810
    invoke-virtual {v12, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/4 v3, 0x0

    .line 1813
    iput-boolean v3, v13, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    return-void

    :catchall_1a1
    move-exception v0

    .line 1782
    :try_start_1a2
    monitor-exit p6
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a1

    throw v0
.end method

.method public static actionAsString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_27

    const/4 v0, 0x4

    if-eq p0, v0, :cond_24

    const/4 v0, 0x5

    if-eq p0, v0, :cond_21

    .line 8177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8175
    :cond_21
    const-string p0, "RESPONSE_EXPIRED"

    return-object p0

    .line 8173
    :cond_24
    const-string p0, "VALUE_CHANGED"

    return-object p0

    .line 8171
    :cond_27
    const-string p0, "VIEW_EXITED"

    return-object p0

    .line 8169
    :cond_2a
    const-string p0, "VIEW_ENTERED"

    return-object p0

    .line 8167
    :cond_2d
    const-string p0, "START_SESSION"

    return-object p0
.end method

.method public static dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V
    .registers 4

    .line 7645
    invoke-static {p1, p3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result p1

    if-eqz p1, :cond_16

    .line 7647
    const-string p3, ", "

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7648
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x3d

    .line 7649
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 7650
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    :cond_16
    return-void
.end method

.method public static dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V
    .registers 7

    .line 7585
    const-string v0, "CAT="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7586
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7587
    const-string v0, ", TYPE="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7588
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    const/4 v1, 0x2

    .line 7589
    const-string v2, "UNSUPPORTED"

    if-eq v0, v1, :cond_32

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2c

    const/16 v1, 0xb

    if-eq v0, v1, :cond_26

    .line 7600
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    .line 7594
    :cond_26
    const-string v1, "FAILURE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    .line 7591
    :cond_2c
    const-string v1, "SUCCESS"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    .line 7597
    :cond_32
    const-string v1, "CLOSE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_37
    const/16 v1, 0x28

    .line 7602
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7603
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x29

    .line 7604
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 7605
    const-string v3, ", PKG="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7606
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7607
    const-string v3, ", SERVICE="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x38c

    .line 7608
    invoke-virtual {p1, v3}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7609
    const-string v3, ", ORDINAL="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x5ae

    .line 7610
    invoke-virtual {p1, v3}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7611
    const-string v3, "FLAGS"

    const/16 v4, 0x5ac

    invoke-static {p0, p1, v3, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 7612
    const-string v3, "NUM_DATASETS"

    const/16 v4, 0x38d

    invoke-static {p0, p1, v3, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 7613
    const-string v3, "UI_LATENCY"

    const/16 v4, 0x479

    invoke-static {p0, p1, v3, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    const/16 v3, 0x5ad

    .line 7615
    invoke-static {p1, v3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v3

    if-eqz v3, :cond_b9

    .line 7617
    const-string v4, ", AUTH_STATUS="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x390

    if-eq v3, v4, :cond_ab

    packed-switch v3, :pswitch_data_c8

    .line 7632
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 7626
    :pswitch_99
    const-string v2, "INVALID_AUTHENTICATION"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 7629
    :pswitch_9f
    const-string v2, "INVALID_DATASET_AUTHENTICATION"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 7623
    :pswitch_a5
    const-string v2, "DATASET_AUTHENTICATED"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 7620
    :cond_ab
    const-string v2, "AUTHENTICATED"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7634
    :goto_b0
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7635
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 7636
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 7638
    :cond_b9
    const-string v0, "FC_IDS"

    const/16 v1, 0x4f7

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 7640
    const-string v0, "COMPAT_MODE"

    const/16 v1, 0x586

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    return-void

    :pswitch_data_c8
    .packed-switch 0x466
        :pswitch_a5
        :pswitch_9f
        :pswitch_99
    .end packed-switch
.end method

.method public static isAuthResultDatasetEphemeral(Landroid/service/autofill/Dataset;Landroid/os/Bundle;)Z
    .registers 4

    .line 3437
    const-string v0, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3439
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 3442
    :cond_d
    invoke-static {p0}, Lcom/android/server/autofill/Session;->isPinnedDataset(Landroid/service/autofill/Dataset;)Z

    move-result p0

    return p0
.end method

.method public static isPinnedDataset(Landroid/service/autofill/Dataset;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    .line 3454
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 3455
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_12
    if-ge v2, v1, :cond_25

    .line 3457
    invoke-virtual {p0, v2}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 3458
    invoke-virtual {v3}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_25
    return v0
.end method

.method public static logIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z
    .registers 3

    .line 6698
    const-string v0, "AutofillSession"

    if-nez p0, :cond_1a

    .line 6699
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Session null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 6702
    :cond_1a
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz p0, :cond_32

    .line 6705
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Session destroyed, but following through"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public static sessionStateAsString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 8192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_SESSION_STATE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8190
    :cond_1d
    const-string p0, "STATE_REMOVED"

    return-object p0

    .line 8188
    :cond_20
    const-string p0, "STATE_FINISHED"

    return-object p0

    .line 8186
    :cond_23
    const-string p0, "STATE_ACTIVE"

    return-object p0

    .line 8184
    :cond_26
    const-string p0, "STATE_UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public final addCredentialManagerDataToClientState(Landroid/service/autofill/FillRequest;Landroid/view/inputmethod/InlineSuggestionsRequest;I)Landroid/service/autofill/FillRequest;
    .registers 13

    .line 1049
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_26

    .line 1050
    new-instance v1, Landroid/service/autofill/FillRequest;

    .line 1052
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v2

    .line 1053
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getFillContexts()Ljava/util/List;

    move-result-object v3

    .line 1054
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getHints()Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1056
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v6

    .line 1058
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getDelayedFillIntentSender()Landroid/content/IntentSender;

    move-result-object v8

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/content/IntentSender;)V

    move-object p1, v1

    .line 1060
    :cond_26
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "autofill_session_id"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1061
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "autofill_request_id"

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1063
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->constructCredentialManagerCallback(I)Landroid/os/ResultReceiver;

    move-result-object p0

    .line 1065
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "android.credentials.AUTOFILL_RESULT_RECEIVER"

    .line 1066
    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1
.end method

.method public final addFallbackDatasets(Lcom/android/server/autofill/Session$DatasetComputationContainer;Lcom/android/server/autofill/Session$DatasetComputationContainer;)V
    .registers 11

    .line 2321
    iget-object p0, p2, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 2322
    iget-object v1, p1, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2327
    iget-object v1, p2, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIdToDatasetMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_7b

    .line 2337
    :cond_29
    iget-object v1, p2, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIdToDatasetMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 2338
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 2339
    iget-object v3, p1, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIds:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2340
    iget-object v3, p1, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIdToDatasetMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    iget-object v3, p1, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mDatasets:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2343
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 2344
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_5e
    if-ge v5, v4, :cond_49

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 2345
    invoke-virtual {v6, v0}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    goto :goto_5e

    .line 2347
    :cond_6f
    iget-object v7, p2, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIdToDatasetMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_7b
    :goto_7b
    return-void
.end method

.method public final addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V
    .registers 4

    .line 8088
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/metrics/LogMaker;

    if-nez p0, :cond_29

    .line 8090
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addTaggedDataToRequestLogLocked(tag="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): no log for id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8095
    :cond_29
    invoke-virtual {p0, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    return-void
.end method

.method public authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;I)V
    .registers 19

    .line 2876
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2e

    .line 2877
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticate(): requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; datasetIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; intentSender="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_2e
    move v4, p2

    move-object/from16 v5, p3

    .line 2887
    :goto_31
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2888
    :try_start_34
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationType(I)V

    .line 2890
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v3, :cond_5f

    .line 2891
    const-string v0, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call to Session#authenticate() rejected - session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroyed"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    monitor-exit v2

    return-void

    :catchall_5d
    move-exception v0

    goto :goto_a6

    :cond_5f
    move-object/from16 v3, p4

    .line 2896
    invoke-virtual {p0, p1, v3}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_6c

    .line 2898
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    .line 2899
    monitor-exit v2

    return-void

    .line 2901
    :cond_6c
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v11, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2906
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v12

    move/from16 v10, p5

    .line 2901
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationSelected(ILandroid/os/Bundle;ILandroid/view/autofill/AutofillId;Z)V

    .line 2907
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_34 .. :try_end_7e} :catchall_5d

    .line 2910
    invoke-static/range {p1 .. p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v0

    .line 2911
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    move v2, v0

    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;-><init>()V

    .line 2915
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v10, p5

    if-ne v10, v6, :cond_94

    const/4 v4, 0x1

    goto :goto_95

    :cond_94
    const/4 v4, 0x0

    .line 2918
    :goto_95
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, v4

    move-object v4, v3

    move-object v3, v5

    move-object v5, v1

    move-object v1, p0

    .line 2912
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2911
    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2907
    :goto_a6
    :try_start_a6
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_5d

    throw v0
.end method

.method public autoFill(IILandroid/service/autofill/Dataset;ZI)V
    .registers 15

    .line 6943
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2a

    .line 6944
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFill(): requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; datasetIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; dataset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6953
    :cond_2a
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6954
    :try_start_2d
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_54

    .line 6955
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#autoFill() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6956
    monitor-exit v1

    return-void

    :catchall_50
    move-exception v0

    move-object p0, v0

    goto/16 :goto_dd

    .line 6959
    :cond_54
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSelectedDatasetId(I)V

    .line 6960
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 6961
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    move-result v2

    .line 6960
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSelectedDatasetPickReason(I)V

    .line 6963
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-nez v0, :cond_8c

    if-eqz p4, :cond_7e

    .line 6965
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 6966
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 6971
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v8

    move v6, p5

    .line 6965
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetSelected(Ljava/lang/String;ILandroid/os/Bundle;ILandroid/view/autofill/AutofillId;Z)V

    .line 6973
    :cond_7e
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz p1, :cond_87

    .line 6974
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p2, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 6976
    :cond_87
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->autoFillApp(Landroid/service/autofill/Dataset;)V

    .line 6977
    monitor-exit v1

    return-void

    :cond_8c
    move v6, p5

    .line 6981
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 6982
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v8

    .line 6981
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;ILandroid/view/autofill/AutofillId;Z)V

    .line 6983
    iget-object p4, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationType(I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x40

    move-object v2, p0

    move-object v4, p3

    .line 6986
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V

    .line 6993
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getCredentialFillInIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_c2

    .line 6994
    const-string p0, "AutofillSession"

    const-string p3, "Setting credential fill intent"

    invoke-static {p0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6995
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getCredentialFillInIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_c8

    .line 6997
    :cond_c2
    iget-object p0, v2, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p0}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    :goto_c8
    if-nez p0, :cond_cf

    .line 7001
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    .line 7002
    monitor-exit v1

    return-void

    .line 7005
    :cond_cf
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result p1

    .line 7008
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object p2

    const/4 p3, 0x0

    .line 7006
    invoke-virtual {v2, p1, p2, p0, p3}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 7011
    monitor-exit v1

    return-void

    :goto_dd
    monitor-exit v1
    :try_end_de
    .catchall {:try_start_2d .. :try_end_de} :catchall_50

    throw p0
.end method

.method public autoFillApp(Landroid/service/autofill/Dataset;)V
    .registers 15

    .line 7729
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7730
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_2a

    .line 7731
    const-string p1, "AutofillSession"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#autoFillApp() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7734
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto/16 :goto_17a

    .line 7738
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7739
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7740
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_40
    if-ge v5, v0, :cond_e8

    .line 7750
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4e

    goto/16 :goto_e4

    .line 7753
    :cond_4e
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 7754
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/autofill/ViewState;

    .line 7755
    iget-object v10, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v10}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v10

    check-cast v10, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v10}, Lcom/android/server/autofill/AutofillManagerService;->getIsFillFieldsFromCurrentSessionOnly()Z

    move-result v10

    if-eqz v10, :cond_a6

    if-eqz v9, :cond_a6

    iget-object v10, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 7757
    invoke-virtual {v10}, Landroid/view/autofill/AutofillId;->getSessionId()I

    move-result v10

    iget v11, p0, Lcom/android/server/autofill/Session;->id:I

    if-eq v10, v11, :cond_a6

    .line 7758
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_a3

    .line 7759
    const-string v9, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping filling view: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as it isn\'t part of the current session: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    :catch_9f
    move-exception v0

    move-object p0, v0

    goto/16 :goto_162

    :cond_a3
    :goto_a3
    add-int/lit8 v6, v6, 0x1

    goto :goto_e4

    .line 7769
    :cond_a6
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7770
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/autofill/AutofillValue;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_e4

    .line 7772
    invoke-virtual {v9}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v10

    const/16 v11, 0x40

    and-int/2addr v10, v11

    if-eqz v10, :cond_e4

    .line 7773
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_e0

    .line 7774
    const-string v7, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autofillApp(): view "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " waiting auth"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7777
    :cond_e0
    invoke-virtual {v9, v11}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    const/4 v7, 0x1

    :cond_e4
    :goto_e4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_40

    .line 7780
    :cond_e8
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v6}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFilteredFillableViewsCount(I)V

    .line 7782
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_178

    if-eqz v7, :cond_fa

    .line 7784
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 7786
    :cond_fa
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_118

    .line 7787
    const-string v0, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total views to be autofilled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7789
    :cond_118
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetViewFillablesAndCount(Ljava/util/List;)V

    .line 7790
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_137

    const-string v0, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoFillApp(): the buck is on the app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7791
    :cond_137
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v5, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v0, v5, v2, v3, v4}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 7792
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_158

    .line 7793
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-nez v0, :cond_14f

    .line 7794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 7796
    :cond_14f
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_158
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v2, p0

    move-object v4, p1

    .line 7800
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V
    :try_end_161
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_161} :catch_9f
    .catchall {:try_start_2a .. :try_end_161} :catchall_26

    goto :goto_178

    .line 7808
    :goto_162
    :try_start_162
    const-string p1, "AutofillSession"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error autofilling activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7810
    :cond_178
    :goto_178
    monitor-exit v1

    return-void

    :goto_17a
    monitor-exit v1
    :try_end_17b
    .catchall {:try_start_162 .. :try_end_17b} :catchall_26

    throw p0
.end method

.method public callSaveLocked()V
    .registers 5

    .line 4808
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v1, 0x0

    const-string v2, "AutofillSession"

    if-eqz v0, :cond_2d

    .line 4809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#callSaveLocked() rejected - session: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4812
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetIsSaved(Z)V

    .line 4813
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    return-void

    .line 4816
    :cond_2d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v0, :cond_50

    .line 4817
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    .line 4821
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 4817
    const-string v3, "callSaveLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4822
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetIsSaved(Z)V

    .line 4823
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    return-void

    .line 4827
    :cond_50
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_74

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callSaveLocked("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): mViewStates="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    :cond_74
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_88

    .line 4830
    const-string v0, "callSaveLocked(): no contexts"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4831
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetIsSaved(Z)V

    .line 4832
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    return-void

    .line 4836
    :cond_88
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 4839
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    const/4 v0, 0x1

    .line 4841
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 4843
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v1}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmLastFieldClassificationResponse(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/service/assist/classification/FieldClassificationResponse;

    move-result-object v1

    .line 4845
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result v2

    if-eqz v2, :cond_c8

    if-eqz v1, :cond_c8

    .line 4847
    invoke-virtual {v1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 4848
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-nez v2, :cond_b8

    .line 4849
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 4851
    :cond_b8
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    new-instance v3, Ljava/util/ArrayList;

    .line 4853
    invoke-virtual {v1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4851
    const-string v1, "detections"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4855
    :cond_c8
    new-instance v1, Landroid/service/autofill/SaveRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2, v3}, Landroid/service/autofill/SaveRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 4857
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/RemoteFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;)V

    return-void
.end method

.method public final cancelAugmentedAutofillLocked()V
    .registers 5

    .line 6760
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 6761
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    .line 6762
    const-string v1, "AutofillSession"

    if-nez v0, :cond_10

    .line 6763
    const-string p0, "cancelAugmentedAutofillLocked(): no service for user"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6766
    :cond_10
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAugmentedAutofillLocked() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6767
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    return-void
.end method

.method public final cancelCurrentRequestLocked()V
    .registers 7

    .line 1416
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v0, :cond_19

    .line 1417
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    .line 1421
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1417
    const-string v2, "cancelCurrentRequestLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1424
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->cancelCurrentRequest()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_89

    .line 1427
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v1, :cond_89

    .line 1429
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/FillResponseEventLogger;->startLogForNewResponse()V

    .line 1430
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetRequestId(I)V

    .line 1431
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget v2, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetAppPackageUid(I)V

    .line 1432
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 1433
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 1434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 1433
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetLatencyFillResponseReceivedMillis(I)V

    .line 1435
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 1437
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_56
    if-ltz v1, :cond_89

    .line 1441
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v2

    if-ne v2, v0, :cond_86

    .line 1442
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_80

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCurrentRequest(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutofillSession"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_80
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_86
    add-int/lit8 v1, v1, -0x1

    goto :goto_56

    :cond_89
    return-void
.end method

.method public cancelSave()V
    .registers 5

    .line 2952
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2953
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2954
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_2e

    .line 2955
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#cancelSave() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    goto :goto_3e

    .line 2960
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2c

    .line 2961
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2960
    :goto_3e
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2c

    throw p0
.end method

.method public cancelSession()V
    .registers 2

    .line 3105
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3106
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 3107
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final clearPendingIntentLocked()V
    .registers 4

    .line 1207
    const-string v0, "AutofillSession"

    const-string v1, "clearPendingIntentLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_c

    return-void

    .line 1211
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1213
    :try_start_10
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    const/4 v2, 0x0

    .line 1214
    iput-object v2, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1c

    .line 1216
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    throw p0
.end method

.method public final computeDatasetsForPccAndUpdateContainer(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$DatasetComputationContainer;)V
    .registers 40

    move-object/from16 v0, p0

    .line 2472
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_9

    return-void

    .line 2475
    :cond_9
    iget-object v13, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2476
    :try_start_c
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v1}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmHintsToAutofillIdMap(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/util/ArrayMap;

    move-result-object v14

    .line 2480
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v1}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmGroupHintsToAutofillIdMap(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/util/ArrayMap;

    .line 2483
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2485
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2486
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const/16 v16, 0x0

    move/from16 v3, v16

    .line 2488
    :goto_2a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1fd

    .line 2491
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    .line 2492
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 2493
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4e

    :cond_46
    move/from16 v36, v3

    move-object/from16 p1, v12

    move-object v4, v15

    move-object v15, v2

    goto/16 :goto_1f3

    .line 2495
    :cond_4e
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2496
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2497
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2498
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2499
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2500
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2501
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p1, v12

    .line 2502
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2505
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v33, v15

    .line 2506
    new-instance v15, Ljava/util/LinkedHashSet;

    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    const/16 v17, 0x4

    move/from16 v19, v16

    move/from16 v34, v17

    move-object/from16 v17, v2

    move/from16 v2, v19

    .line 2508
    :goto_8e
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v21, v1

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_171

    .line 2509
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_fc

    .line 2511
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_ba

    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ba

    const/16 v34, 0x5

    goto :goto_ba

    :catchall_b7
    move-exception v0

    goto/16 :goto_209

    .line 2520
    :cond_ba
    :goto_ba
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    move/from16 v20, v2

    .line 2521
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v2}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmClassificationCombinedHintsMap(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ec

    .line 2523
    invoke-interface {v15, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2524
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v17

    move-object/from16 v17, v15

    move-object v15, v2

    move/from16 v36, v3

    move/from16 v2, v20

    move-object/from16 v35, v21

    move-object v3, v1

    move-object v1, v4

    move-object/from16 v4, v18

    .line 2526
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/autofill/Session;->copyFieldsFromDataset(Landroid/service/autofill/Dataset;ILandroid/view/autofill/AutofillId;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_15f

    :cond_ec
    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object v15, v1

    move/from16 v36, v3

    move-object v1, v4

    move-object/from16 v4, v18

    move/from16 v2, v20

    move-object/from16 v35, v21

    goto/16 :goto_15f

    :cond_fc
    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object v15, v1

    move/from16 v36, v3

    move-object v1, v4

    move-object/from16 v4, v18

    move-object/from16 v35, v21

    .line 2540
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2542
    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 2543
    new-instance v3, Ljava/util/ArrayList;

    .line 2544
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2545
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12a

    goto :goto_15f

    .line 2549
    :cond_12a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object/from16 v18, v1

    move/from16 v1, v16

    :goto_132
    if-ge v1, v0, :cond_15b

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v20, v1, 0x1

    move-object/from16 v1, v19

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 2550
    invoke-interface {v15, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2551
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v3

    move-object v3, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v19

    move/from16 v19, v0

    move-object/from16 v0, p0

    .line 2553
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/autofill/Session;->copyFieldsFromDataset(Landroid/service/autofill/Dataset;ILandroid/view/autofill/AutofillId;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v3, v18

    move/from16 v0, v19

    move-object/from16 v18, v1

    move/from16 v1, v20

    goto :goto_132

    :cond_15b
    move-object/from16 v1, v18

    const/16 v19, 0x1

    :cond_15f
    :goto_15f
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v17, v15

    move-object v15, v0

    move-object/from16 v0, p0

    move-object/from16 v18, v4

    move/from16 v3, v36

    move-object v4, v1

    move-object/from16 v1, v35

    goto/16 :goto_8e

    :cond_171
    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object v15, v1

    move/from16 v36, v3

    move-object v1, v4

    move-object/from16 v4, v18

    move-object/from16 v35, v21

    if-eqz v19, :cond_1ef

    .line 2573
    invoke-interface {v12, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    .line 2574
    invoke-interface {v15, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2575
    new-instance v17, Landroid/service/autofill/Dataset;

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2585
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    move-result-object v26

    .line 2590
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v31

    .line 2591
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v32

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    invoke-direct/range {v17 .. v32}, Landroid/service/autofill/Dataset;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ClipData;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Ljava/lang/String;Landroid/content/IntentSender;)V

    move-object/from16 v0, v17

    move/from16 v1, v34

    .line 2592
    invoke-virtual {v0, v1}, Landroid/service/autofill/Dataset;->setEligibleReasonReason(I)V

    move-object/from16 v1, v35

    .line 2593
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2595
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ec

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    move-object/from16 v4, v33

    .line 2596
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1de

    .line 2597
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    goto :goto_1e3

    .line 2599
    :cond_1de
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2601
    :goto_1e3
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2602
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v33, v4

    goto :goto_1c3

    :cond_1ec
    move-object/from16 v4, v33

    goto :goto_1f3

    :cond_1ef
    move-object/from16 v4, v33

    move-object/from16 v1, v35

    :goto_1f3
    add-int/lit8 v3, v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object v2, v15

    move-object v15, v4

    goto/16 :goto_2a

    :cond_1fd
    move-object/from16 v11, p2

    move-object v4, v15

    move-object v15, v2

    .line 2606
    iput-object v15, v11, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIds:Ljava/util/Set;

    .line 2607
    iput-object v1, v11, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mDatasets:Ljava/util/Set;

    .line 2608
    iput-object v4, v11, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIdToDatasetMap:Ljava/util/Map;

    .line 2609
    monitor-exit v13

    return-void

    :goto_209
    monitor-exit v13
    :try_end_20a
    .catchall {:try_start_c .. :try_end_20a} :catchall_b7

    throw v0
.end method

.method public final computeDatasetsForProviderAndUpdateContainer(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$DatasetComputationContainer;)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2365
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    .line 2371
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_16

    return-void

    .line 2373
    :cond_16
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2374
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2375
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2376
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2d
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/autofill/Dataset;

    .line 2377
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2d

    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4a

    goto :goto_2d

    .line 2379
    :cond_4a
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_11e

    .line 2380
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11e

    .line 2389
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2390
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_6c
    :goto_6c
    if-ge v13, v11, :cond_7c

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Landroid/view/autofill/AutofillId;

    if-nez v14, :cond_6c

    add-int/lit8 v8, v8, -0x1

    const/4 v12, 0x1

    goto :goto_6c

    :cond_7c
    if-nez v8, :cond_7f

    goto :goto_2d

    :cond_7f
    if-eqz v12, :cond_11e

    .line 2402
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2403
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2404
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2405
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2406
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2408
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2410
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    .line 2412
    :goto_a5
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_f1

    .line 2413
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillId;

    if-eqz v9, :cond_ee

    .line 2416
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2418
    invoke-virtual {v7, v8}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2419
    invoke-virtual {v7, v8}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    invoke-virtual {v7, v8}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2422
    invoke-virtual {v7, v8}, Landroid/service/autofill/Dataset;->getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v9

    .line 2421
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2423
    invoke-virtual {v7, v8}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ee
    add-int/lit8 v8, v8, 0x1

    goto :goto_a5

    :cond_f1
    move-object/from16 v20, v14

    .line 2426
    new-instance v14, Landroid/service/autofill/Dataset;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2436
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    move-result-object v23

    .line 2441
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v28

    .line 2442
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v29

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v2

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    invoke-direct/range {v14 .. v29}, Landroid/service/autofill/Dataset;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ClipData;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Ljava/lang/String;Landroid/content/IntentSender;)V

    const/4 v2, 0x3

    move-object v7, v14

    goto :goto_11f

    :cond_11e
    move v2, v0

    .line 2445
    :goto_11f
    invoke-virtual {v7, v2}, Landroid/service/autofill/Dataset;->setEligibleReasonReason(I)V

    .line 2446
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2447
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_12e
    if-ge v9, v8, :cond_2d

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Landroid/view/autofill/AutofillId;

    .line 2448
    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2449
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    if-nez v11, :cond_148

    .line 2451
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2453
    :cond_148
    invoke-interface {v11, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2454
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12e

    .line 2457
    :cond_14f
    iput-object v3, v1, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIdToDatasetMap:Ljava/util/Map;

    .line 2458
    iput-object v4, v1, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mDatasets:Ljava/util/Set;

    .line 2459
    iput-object v5, v1, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIds:Ljava/util/Set;

    return-void
.end method

.method public final constructCredentialManagerCallback(I)Landroid/os/ResultReceiver;
    .registers 4

    .line 6068
    new-instance v0, Lcom/android/server/autofill/Session$4;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/autofill/Session$4;-><init>(Lcom/android/server/autofill/Session;Landroid/os/Handler;I)V

    .line 6129
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p0

    return-object p0
.end method

.method public final copyFieldsFromDataset(Landroid/service/autofill/Dataset;ILandroid/view/autofill/AutofillId;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 11

    .line 2624
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/autofill/AutofillValue;

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2629
    invoke-virtual {p1, p2}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-virtual {p6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2630
    invoke-virtual {p1, p2}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-virtual {p7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2631
    invoke-virtual {p1, p2}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object p0

    invoke-virtual {p8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2632
    invoke-virtual {p1, p2}, Landroid/service/autofill/Dataset;->getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object p0

    invoke-virtual {p9, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2633
    invoke-virtual {p1, p2}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object p0

    invoke-virtual {p10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 6

    .line 7018
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7020
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 7026
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    .line 7023
    const-string v0, "createAuthFillInIntentLocked(): no FillContext. requestId=%d; mContexts=%s"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 7030
    :cond_1c
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    if-eqz v2, :cond_35

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 7031
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_35

    .line 7032
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcelable;

    const-string p1, "android.view.autofill.extra.INLINE_SUGGESTIONS_REQUEST"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7036
    :cond_35
    const-string p0, "android.view.autofill.extra.ASSIST_STRUCTURE"

    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7037
    const-string p0, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public final createFillDialogEvalRunnable(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)Ljava/lang/Runnable;
    .registers 11

    .line 5889
    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/Session;Ljava/lang/String;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;I)V

    return-object v0
.end method

.method public final createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;
    .registers 7

    .line 6924
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    if-eqz v0, :cond_e

    .line 6926
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_43

    .line 6928
    :cond_e
    new-instance v0, Lcom/android/server/autofill/ViewState;

    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;IZ)V

    .line 6929
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_37

    .line 6930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding autofillable view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6932
    :cond_37
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 6933
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_43
    and-int/lit8 p0, p2, 0x4

    if-eqz p0, :cond_4a

    .line 6936
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setAutofilledValue(Landroid/view/autofill/AutofillValue;)V

    :cond_4a
    return-object v0
.end method

.method public final createPendingIntent(I)Landroid/app/PendingIntent;
    .registers 6

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPendingIntent for request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1187
    :try_start_1a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.autofill.action.DELAYED_FILL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android"

    .line 1189
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.service.autofill.extra.REQUEST_ID"

    .line 1190
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 1191
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    const/high16 v3, 0x52000000

    .line 1192
    invoke-static {v2, p0, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_3b

    .line 1200
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1201
    throw p0
.end method

.method public final createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$DatasetComputationContainer;)Landroid/service/autofill/FillResponse;
    .registers 4

    .line 2251
    new-instance v0, Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mDatasets:Ljava/util/Set;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2252
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getEligibleSaveInfo(Landroid/service/autofill/FillResponse;)Landroid/service/autofill/SaveInfo;

    move-result-object p0

    .line 2251
    invoke-static {p1, v0, p0}, Landroid/service/autofill/FillResponse;->shallowCopy(Landroid/service/autofill/FillResponse;Ljava/util/List;Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    return-object p0
.end method

.method public destroyAugmentedAutofillWindowsLocked()V
    .registers 2

    .line 7966
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 7967
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 7968
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    :cond_a
    return-void
.end method

.method public destroyLocked()Lcom/android/server/autofill/RemoteFillService;
    .registers 9

    .line 7859
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_1c

    .line 7860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyLocked for session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, 0x5

    .line 7862
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->logAllEventsLocked(I)V

    .line 7864
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_26

    const/4 p0, 0x0

    return-object p0

    .line 7868
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->clearPendingIntentLocked()V

    .line 7869
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 7871
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 7872
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 7873
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 7874
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v0, :cond_45

    .line 7875
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->destroyLocked(Landroid/view/autofill/AutofillId;)V

    .line 7877
    :cond_45
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 7878
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 7880
    iget v2, p0, Lcom/android/server/autofill/Session;->userId:I

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->destroySuggestionViews(II)V

    .line 7883
    :cond_54
    iput-boolean v3, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 7886
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 7887
    const-string v2, "destroyLocked(): logging "

    const/4 v4, 0x0

    if-lez v0, :cond_8f

    .line 7888
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_7c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " requests"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    move v5, v4

    :goto_7d
    if-ge v5, v0, :cond_8f

    .line 7890
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/metrics/LogMaker;

    .line 7891
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    .line 7896
    :cond_8f
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v5, :cond_95

    move v5, v4

    goto :goto_99

    :cond_95
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_99
    if-lez v5, :cond_c8

    .line 7898
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_b6

    .line 7899
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " augmented requests"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    :goto_b6
    if-ge v4, v5, :cond_c8

    .line 7902
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/metrics/LogMaker;

    .line 7903
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    :cond_c8
    const/16 v1, 0x397

    .line 7908
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x5af

    .line 7909
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    if-lez v5, :cond_e3

    const/16 v1, 0x65f

    .line 7912
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7911
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 7914
    :cond_e3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-eqz v1, :cond_f4

    const/16 v1, 0x6b8

    .line 7915
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 7917
    :cond_f4
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 7919
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object p0
.end method

.method public dispatchUnhandledKey(Landroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 6

    .line 3043
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3044
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 3045
    const-string p0, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#dispatchUnhandledKey() rejected - session: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " destroyed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    goto :goto_66

    .line 3052
    :cond_26
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_24

    if-eqz v1, :cond_3f

    .line 3054
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, p0, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_36
    .catchall {:try_start_2e .. :try_end_35} :catchall_24

    goto :goto_64

    :catch_36
    move-exception p0

    .line 3056
    :try_start_37
    const-string p1, "AutofillSession"

    const-string p2, "Error requesting to dispatch unhandled key"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 3059
    :cond_3f
    const-string p2, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not dispatch unhandled key on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as it is not the current view ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") anymore"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    :goto_64
    monitor-exit v0

    return-void

    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_37 .. :try_end_67} :catchall_24

    throw p0
.end method

.method public final doStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 4

    .line 3193
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_d

    .line 3194
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {p0, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 3195
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_d} :catch_d

    :catch_d
    move-exception p0

    .line 3197
    const-string p1, "AutofillSession"

    const-string p2, "Error launching auth intent"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11

    .line 7412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7413
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7414
    const-string v1, "id: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7415
    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7416
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7417
    const-string/jumbo v1, "uid: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7418
    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7419
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7420
    const-string/jumbo v1, "taskId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7421
    iget v1, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7422
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7423
    const-string v1, "flags: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7424
    iget v1, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7425
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7426
    const-string v1, "displayId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7427
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7428
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7429
    const-string/jumbo v1, "state: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7430
    iget v1, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    invoke-static {v1}, Lcom/android/server/autofill/Session;->sessionStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7431
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7432
    const-string/jumbo v1, "mComponentName: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7433
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7434
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7435
    const-string/jumbo v1, "mActivityToken: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7436
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7437
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7438
    const-string/jumbo v1, "mStartTime: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7439
    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 7440
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7441
    const-string v1, "Time to show UI: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7442
    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "N/A"

    if-nez v3, :cond_aa

    .line 7443
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b3

    .line 7445
    :cond_aa
    iget-wide v5, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7446
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7448
    :goto_b3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 7449
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7450
    const-string/jumbo v2, "mSessionLogs: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7451
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_c7
    const/16 v5, 0x23

    if-ge v3, v1, :cond_f8

    .line 7453
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 7454
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/metrics/LogMaker;

    .line 7455
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7456
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 7457
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 7458
    const-string v5, ": req="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7459
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 7460
    const-string v5, ", log="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7461
    invoke-static {p2, v7}, Lcom/android/server/autofill/Session;->dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V

    .line 7462
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c7

    .line 7464
    :cond_f8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7465
    const-string/jumbo v1, "mResponses: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7466
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const-string/jumbo v3, "null"

    if-nez v1, :cond_10c

    .line 7467
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_136

    .line 7469
    :cond_10c
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    move v1, v2

    .line 7470
    :goto_114
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_136

    .line 7471
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7472
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 7473
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v6, 0x20

    .line 7474
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 7475
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_114

    .line 7478
    :cond_136
    :goto_136
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7479
    const-string/jumbo v1, "mCurrentViewId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7480
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7481
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7482
    const-string/jumbo v1, "mDestroyed: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7483
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7484
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7485
    const-string/jumbo v1, "mShowingSaveUi: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7486
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7487
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7488
    const-string/jumbo v1, "mPendingSaveUi: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7489
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7490
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 7491
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7492
    const-string/jumbo v5, "mViewStates size: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7493
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    move v5, v2

    :goto_18b
    if-ge v5, v1, :cond_1a6

    .line 7495
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7496
    const-string v6, "ViewState at #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7497
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 7498
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/ViewState;

    invoke-virtual {v6, v0, p2}, Lcom/android/server/autofill/ViewState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18b

    .line 7501
    :cond_1a6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7502
    const-string/jumbo v1, "mContexts: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7503
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v1, :cond_1db

    .line 7504
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1b8
    if-ge v3, v1, :cond_1de

    .line 7506
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/FillContext;

    .line 7508
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7509
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7510
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_1d8

    .line 7511
    const-string v6, "AssistStructure dumped at logcat)"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7514
    invoke-virtual {v5}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/assist/AssistStructure;->dump(Z)V

    :cond_1d8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b8

    .line 7518
    :cond_1db
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7521
    :cond_1de
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7522
    const-string/jumbo v0, "mHasCallback: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7523
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7524
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v0, :cond_207

    .line 7525
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7526
    const-string/jumbo v0, "mClientState: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7527
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->getSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7528
    const-string v0, " bytes"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7530
    :cond_207
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7531
    const-string/jumbo v0, "mCompatMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7532
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7533
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7534
    const-string/jumbo v0, "mUrlBar: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7535
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v0, :cond_226

    .line 7536
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_250

    .line 7538
    :cond_226
    const-string v0, "id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7539
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7540
    const-string v0, " domain="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7541
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7542
    const-string v0, " text="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7543
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 7545
    :goto_250
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7546
    const-string/jumbo v0, "mSaveOnAllViewsInvisible: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7547
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7548
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7549
    const-string/jumbo v0, "mSelectedDatasetIds: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7550
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7551
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    if-eqz v0, :cond_27c

    .line 7552
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7553
    const-string v0, "For Augmented Autofill Only"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7555
    :cond_27c
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    if-eqz v0, :cond_28c

    .line 7556
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7557
    const-string v0, "Fill Dialog disabled"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7559
    :cond_28c
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    if-eqz v0, :cond_29d

    .line 7560
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7561
    const-string v0, "Last Fill Dialog trigger ids: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7562
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7564
    :cond_29d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v0, :cond_2a9

    .line 7565
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7566
    const-string v0, "has mAugmentedAutofillDestroyer"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7568
    :cond_2a9
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-eqz v0, :cond_2bf

    .line 7569
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7570
    const-string/jumbo v0, "number augmented requests: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7571
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7574
    :cond_2bf
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_2d1

    .line 7575
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7576
    const-string/jumbo v0, "mAugmentedAutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7577
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7579
    :cond_2d1
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-eqz p0, :cond_2d8

    .line 7580
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_2d8
    return-void
.end method

.method public final enableFillDialog()V
    .registers 4

    .line 5759
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    .line 5760
    const-string v0, "AutofillSession"

    const-string v1, "Enabling Fill Dialog...."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5762
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5763
    :try_start_e
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 5764
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    const/4 v0, 0x0

    .line 5765
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    return-void

    :catchall_1a
    move-exception p0

    .line 5764
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public fill(IILandroid/service/autofill/Dataset;I)V
    .registers 13

    .line 2924
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2925
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_29

    .line 2926
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#fill() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_49

    .line 2929
    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_26

    .line 2930
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda7;-><init>()V

    .line 2932
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p0

    move-object v5, p3

    .line 2931
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2930
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2929
    :goto_49
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_26

    throw p0
.end method

.method public final fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V
    .registers 10

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object p1

    .line 1378
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_6b

    .line 1380
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 1382
    aget-object v3, p1, v1

    if-nez v3, :cond_3a

    .line 1384
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_68

    .line 1385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillContextWithAllowedValuesLocked(): no node for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 1392
    :cond_3a
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 1393
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 1394
    new-instance v6, Landroid/app/assist/AssistStructure$AutofillOverlay;

    invoke-direct {v6}, Landroid/app/assist/AssistStructure$AutofillOverlay;-><init>()V

    if-eqz v5, :cond_51

    .line 1397
    invoke-virtual {v5, v4}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1398
    iput-object v4, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 1401
    :cond_51
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v5, :cond_65

    .line 1403
    iget-object v2, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v2, :cond_65

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_65

    .line 1406
    iput-object v4, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 1409
    :cond_65
    invoke-virtual {v3, v6}, Landroid/app/assist/AssistStructure$ViewNode;->setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V

    :cond_68
    :goto_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_6b
    return-void
.end method

.method public findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .registers 6

    .line 1258
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1259
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    .line 1261
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1262
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    goto :goto_4e

    .line 1265
    :cond_1c
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1266
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 1268
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result p1

    .line 1269
    aget-object p0, p0, p1

    if-eqz p0, :cond_34

    .line 1270
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_34
    monitor-exit v0

    return-object v2

    .line 1272
    :cond_36
    const-string p0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findByAutofillId(): no autofill options for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_4c
    monitor-exit v0

    return-object v2

    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_1a

    throw p0
.end method

.method public findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 3

    .line 1282
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1283
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 1284
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 6

    .line 1329
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 1330
    const-string v1, "AutofillSession"

    if-nez v0, :cond_26

    .line 1331
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findValueLocked(): no view state for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 p0, 0x0

    return-object p0

    .line 1334
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1338
    invoke-virtual {v2}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1339
    :cond_32
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCandidateSaveValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 1340
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 1341
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_5b

    .line 1342
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findValueLocked(): current value for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is empty, using candidateSaveValue instead."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return-object v0

    :cond_5c
    if-nez v2, :cond_80

    .line 1352
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_80

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findValueLocked(): no current value for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", checking value from previous fill contexts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0

    :cond_80
    return-object v2
.end method

.method public final findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 6

    .line 1294
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0

    .line 1301
    :cond_13
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 1303
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_41

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findValueLocked(): looking on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " previous sessions for autofillId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1304
    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 v1, 0x0

    .line 1311
    :goto_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 1312
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    .line 1314
    invoke-virtual {v2, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 1317
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 1316
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_64
    const/4 p0, 0x0

    return-object p0
.end method

.method public forceRemoveFromServiceIfForAugmentedOnlyLocked()V
    .registers 3

    .line 7933
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2a

    .line 7934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceRemoveFromServiceIfForAugmentedOnlyLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7941
    :cond_2a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    if-nez v0, :cond_33

    return-void

    .line 7943
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    return-void
.end method

.method public forceRemoveFromServiceLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 7928
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    return-void
.end method

.method public forceRemoveFromServiceLocked(I)V
    .registers 8

    .line 7948
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRemoveFromServiceLocked(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7950
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    const/4 v2, 0x0

    .line 7951
    iput-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 7952
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 7953
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    if-nez v0, :cond_3c

    .line 7956
    :try_start_30
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_3c

    :catch_36
    move-exception p1

    .line 7958
    const-string v0, "Error notifying client to finish session"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7961
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyAugmentedAutofillWindowsLocked()V

    return-void
.end method

.method public getActivityTokenLocked()Landroid/os/IBinder;
    .registers 1

    .line 1839
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;
    .registers 5

    .line 4727
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    .line 4729
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillContext;

    .line 4731
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 4732
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 4733
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAutofillServiceUid()I
    .registers 1

    .line 8197
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 8198
    :cond_a
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public getClient()Landroid/view/autofill/IAutoFillManagerClient;
    .registers 2

    .line 6152
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6153
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 6154
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getCredentialAutofillService(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 3

    .line 1819
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x104025b

    .line 1820
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1822
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    .line 1823
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    if-nez p0, :cond_22

    .line 1826
    const-string p1, "AutofillSession"

    const-string v0, "Invalid CredentialAutofillService"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-object p0
.end method

.method public final getDetectionPreferenceForLogging()I
    .registers 2

    .line 7053
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7054
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->preferProviderOverPcc()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x2

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public getEffectiveDatasetForAuthentication(Landroid/service/autofill/Dataset;)Landroid/service/autofill/Dataset;
    .registers 9

    .line 3395
    new-instance v0, Landroid/service/autofill/FillResponse$Builder;

    invoke-direct {v0}, Landroid/service/autofill/FillResponse$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/service/autofill/FillResponse$Builder;->addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse$Builder;->build()Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 3396
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->getEffectiveFillResponse(Landroid/service/autofill/FillResponse;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    if-eqz p0, :cond_92

    .line 3400
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_92

    .line 3407
    :cond_1e
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    .line 3408
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/Dataset;

    .line 3409
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_91

    .line 3410
    new-instance p0, Landroid/service/autofill/Dataset$Builder;

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;-><init>()V

    .line 3411
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 3412
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3d

    move v3, v1

    .line 3413
    :goto_54
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 3415
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    new-instance v5, Landroid/service/autofill/Field$Builder;

    invoke-direct {v5}, Landroid/service/autofill/Field$Builder;-><init>()V

    .line 3417
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v5, v6}, Landroid/service/autofill/Field$Builder;->setValue(Landroid/view/autofill/AutofillValue;)Landroid/service/autofill/Field$Builder;

    move-result-object v5

    .line 3418
    invoke-virtual {v5}, Landroid/service/autofill/Field$Builder;->build()Landroid/service/autofill/Field;

    move-result-object v5

    .line 3414
    invoke-virtual {p0, v4, v5}, Landroid/service/autofill/Dataset$Builder;->setField(Landroid/view/autofill/AutofillId;Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 3422
    :cond_85
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$Builder;->setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/autofill/Dataset$Builder;->build()Landroid/service/autofill/Dataset;

    move-result-object p0

    :cond_91
    return-object p0

    .line 3401
    :cond_92
    :goto_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No datasets in fill response on authentication. response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_a2

    .line 3404
    const-string/jumbo p0, "null"

    goto :goto_a6

    :cond_a2
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_a6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3401
    const-string v0, "AutofillSession"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final getEffectiveFillResponse(Landroid/service/autofill/FillResponse;)Landroid/service/autofill/FillResponse;
    .registers 10

    .line 2123
    new-instance v0, Lcom/android/server/autofill/Session$DatasetComputationContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/autofill/Session$DatasetComputationContainer;-><init>(Lcom/android/server/autofill/Session-IA;)V

    .line 2124
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->computeDatasetsForProviderAndUpdateContainer(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$DatasetComputationContainer;)V

    .line 2132
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result v2

    if-nez v2, :cond_21

    .line 2133
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1c

    .line 2134
    const-string v1, "AutofillSession"

    const-string v2, "PCC classification is disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    :cond_1c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$DatasetComputationContainer;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    return-object p0

    .line 2138
    :cond_21
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2139
    :try_start_24
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v3}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmState(Lcom/android/server/autofill/Session$ClassificationState;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8c

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v3}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmLastFieldClassificationResponse(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/service/assist/classification/FieldClassificationResponse;

    move-result-object v3

    if-nez v3, :cond_36

    goto :goto_8c

    .line 2153
    :cond_36
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v3}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$mprocessResponse(Lcom/android/server/autofill/Session$ClassificationState;)Z

    move-result v3

    if-nez v3, :cond_43

    monitor-exit v2

    return-object p1

    :catchall_40
    move-exception p0

    goto/16 :goto_ca

    .line 2154
    :cond_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_40

    .line 2155
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerService;->preferProviderOverPcc()Z

    move-result v2

    .line 2156
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerService;->shouldUsePccFallback()Z

    move-result v3

    if-eqz v2, :cond_71

    if-nez v3, :cond_71

    .line 2158
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_6c

    .line 2159
    const-string v1, "AutofillSession"

    const-string/jumbo v2, "preferAutofillProvider but no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_6c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$DatasetComputationContainer;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    return-object p0

    .line 2169
    :cond_71
    new-instance v4, Lcom/android/server/autofill/Session$DatasetComputationContainer;

    invoke-direct {v4, v1}, Lcom/android/server/autofill/Session$DatasetComputationContainer;-><init>(Lcom/android/server/autofill/Session-IA;)V

    .line 2170
    invoke-virtual {p0, p1, v4}, Lcom/android/server/autofill/Session;->computeDatasetsForPccAndUpdateContainer(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$DatasetComputationContainer;)V

    if-eqz v2, :cond_81

    if-eqz v3, :cond_87

    .line 2180
    invoke-virtual {p0, v0, v4}, Lcom/android/server/autofill/Session;->addFallbackDatasets(Lcom/android/server/autofill/Session$DatasetComputationContainer;Lcom/android/server/autofill/Session$DatasetComputationContainer;)V

    goto :goto_87

    :cond_81
    if-eqz v3, :cond_86

    .line 2186
    invoke-virtual {p0, v4, v0}, Lcom/android/server/autofill/Session;->addFallbackDatasets(Lcom/android/server/autofill/Session$DatasetComputationContainer;Lcom/android/server/autofill/Session$DatasetComputationContainer;)V

    :cond_86
    move-object v0, v4

    .line 2191
    :cond_87
    :goto_87
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$DatasetComputationContainer;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    return-object p0

    .line 2141
    :cond_8c
    :goto_8c
    :try_start_8c
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_c4

    .line 2142
    const-string v1, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PCC classification no last response:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v5}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmLastFieldClassificationResponse(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/service/assist/classification/FieldClassificationResponse;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_a8

    move v5, v7

    goto :goto_a9

    :cond_a8
    move v5, v6

    :goto_a9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,ineligible state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v5}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmState(Lcom/android/server/autofill/Session$ClassificationState;)I

    move-result v5

    if-eq v5, v4, :cond_ba

    move v6, v7

    :cond_ba
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_c4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$DatasetComputationContainer;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    monitor-exit v2

    return-object p0

    .line 2154
    :goto_ca
    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_8c .. :try_end_cb} :catchall_40

    throw p0
.end method

.method public final getEligibleSaveInfo(Landroid/service/autofill/FillResponse;)Landroid/service/autofill/SaveInfo;
    .registers 8

    .line 2256
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object p1

    if-eqz p1, :cond_aa

    .line 2258
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2259
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2260
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_24

    goto/16 :goto_aa

    .line 2263
    :cond_24
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2264
    :try_start_27
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v1}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmHintsToAutofillIdMap(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_a6

    .line 2266
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_a6

    .line 2270
    :cond_36
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 2271
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v3

    if-nez v3, :cond_5b

    .line 2273
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 2274
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_49

    :catchall_59
    move-exception p0

    goto :goto_a8

    .line 2277
    :cond_5b
    invoke-static {v3}, Lcom/android/server/autofill/HintsHelper;->getHintsForSaveType(I)Ljava/util/Set;

    move-result-object v3

    .line 2278
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_67
    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2279
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2280
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 2281
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_67

    .line 2285
    :cond_89
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_91

    monitor-exit v0

    return-object p1

    .line 2286
    :cond_91
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/autofill/AutofillId;

    .line 2287
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetIsFrameworkCreatedSaveInfo(Z)V

    .line 2288
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2289
    invoke-static {p1, v1}, Landroid/service/autofill/SaveInfo;->copy(Landroid/service/autofill/SaveInfo;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 2267
    :cond_a6
    :goto_a6
    monitor-exit v0

    return-object p1

    .line 2290
    :goto_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_27 .. :try_end_a9} :catchall_59

    throw p0

    :cond_aa
    :goto_aa
    return-object p1
.end method

.method public final getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;
    .registers 7

    .line 2847
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2851
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1f

    .line 2853
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 2855
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_1c

    return-object v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    return-object v1
.end method

.method public final getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;
    .registers 5

    .line 1242
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1243
    new-array v1, v0, [Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1a

    .line 1245
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    iget-object v3, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    return-object v1
.end method

.method public final getLastResponseIndexLocked()I
    .registers 5

    .line 8057
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2e

    .line 8060
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8061
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_29

    .line 8063
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 8065
    :cond_29
    invoke-static {v0}, Lcom/android/server/autofill/RequestId;->getLastRequestIdIndex(Ljava/util/List;)I

    move-result p0

    return p0

    :cond_2e
    :goto_2e
    const/4 p0, -0x1

    return p0
.end method

.method public final getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;
    .registers 6

    .line 3584
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    :cond_16
    move-object p1, v1

    .line 3585
    :goto_17
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const-string v2, "AutofillSession"

    if-nez v0, :cond_34

    if-eqz p1, :cond_33

    .line 3586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": no contexts"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-object v1

    .line 3589
    :cond_34
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v0, :cond_53

    .line 3592
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_52

    if-eqz p1, :cond_52

    .line 3593
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": no responses on session"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-object v1

    .line 3598
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getLastResponseIndexLocked()I

    move-result v0

    .line 3599
    const-string v3, ", mViewStates="

    if-gez v0, :cond_7f

    if-eqz p1, :cond_7e

    .line 3601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": did not get last response. mResponses="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    return-object v1

    .line 3612
    :cond_7f
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/FillResponse;

    .line 3613
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_b8

    if-eqz p1, :cond_b8

    .line 3614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mResponses="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mContexts="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    return-object v0
.end method

.method public final getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;
    .registers 6

    if-eqz p1, :cond_55

    if-nez p3, :cond_5

    goto :goto_55

    .line 4651
    :cond_5
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    if-nez p0, :cond_11

    const/4 v0, 0x0

    goto :goto_15

    .line 4652
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    :goto_15
    if-nez v0, :cond_54

    .line 4654
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/InternalSanitizer;

    if-nez p1, :cond_20

    return-object p3

    .line 4659
    :cond_20
    invoke-virtual {p1, p3}, Landroid/service/autofill/InternalSanitizer;->sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object p1

    .line 4660
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_4e

    .line 4661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") sanitized to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AutofillSession"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    if-eqz p0, :cond_53

    .line 4664
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    :cond_53
    return-object p1

    :cond_54
    return-object v0

    :cond_55
    :goto_55
    return-object p3
.end method

.method public getSaveInfoFlagsLocked()I
    .registers 1

    .line 3636
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3637
    :cond_8
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result p0

    return p0
.end method

.method public final getSaveInfoLocked()Landroid/service/autofill/SaveInfo;
    .registers 2

    const/4 v0, 0x0

    .line 3630
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    .line 3631
    :cond_8
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSaveInfoStatsLocked()Lcom/android/server/autofill/Helper$SaveInfoStats;
    .registers 2

    .line 3648
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 3649
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_f

    .line 3650
    const-string p0, "AutofillSession"

    const-string v0, "getSaveInfoStatsLocked(): mContexts is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    :cond_f
    new-instance p0, Lcom/android/server/autofill/Helper$SaveInfoStats;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/autofill/Helper$SaveInfoStats;-><init>(II)V

    return-object p0

    .line 3654
    :cond_16
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-static {p0}, Lcom/android/server/autofill/Helper;->getSaveInfoStatsFromFillResponses(Landroid/util/SparseArray;)Lcom/android/server/autofill/Helper$SaveInfoStats;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceIcon(Landroid/service/autofill/FillResponse;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 5923
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getIconResourceId()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 5925
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5927
    :try_start_b
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 5928
    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    .line 5929
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5930
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 5932
    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    .line 5931
    invoke-virtual {v3, v4, p1, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_29

    .line 5934
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2e

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5935
    throw p0

    :cond_2e
    :goto_2e
    if-nez v0, :cond_37

    .line 5940
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_37
    return-object v0
.end method

.method public final getServiceLabel(Landroid/service/autofill/FillResponse;)Ljava/lang/CharSequence;
    .registers 7

    .line 5959
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getServiceDisplayNameResourceId()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 5961
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5963
    :try_start_b
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 5964
    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    .line 5965
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5966
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 5968
    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    .line 5967
    invoke-virtual {v3, v4, p1, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_29

    .line 5972
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2e

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5973
    throw p0

    :cond_2e
    :goto_2e
    if-nez v0, :cond_37

    .line 5978
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_37
    return-object v0
.end method

.method public final getTypeHintsForProvider()Ljava/util/List;
    .registers 3

    .line 1075
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1076
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1078
    :cond_b
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getPccProviderHints()Ljava/lang/String;

    move-result-object p0

    .line 1079
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_31

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeHints flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1083
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1086
    :cond_3d
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;
    .registers 3

    .line 7819
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7820
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 7821
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    .line 7822
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 6

    .line 4696
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_60

    .line 4698
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillContext;

    .line 4700
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 4702
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 4703
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_54

    .line 4704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValueFromContexts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    if-eqz v1, :cond_5d

    .line 4715
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5d

    return-object v1

    :cond_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_60
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getViewNodeFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 4

    .line 4680
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 4682
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillContext;

    .line 4684
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v1

    if-eqz v1, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleLogContextCommitted(II)V
    .registers 7

    .line 3724
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3725
    :try_start_3
    const-string/jumbo v1, "logContextCommited(%s)"

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 3726
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4c

    if-nez v1, :cond_15

    .line 3729
    const-string p0, "AutofillSession"

    const-string p1, "handleLogContextCommitted(): last response is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3735
    :cond_15
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v0

    .line 3736
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_26

    if-nez v0, :cond_26

    move-object v1, v2

    goto :goto_3a

    :cond_26
    if-eqz v1, :cond_31

    if-eqz v0, :cond_31

    .line 3741
    new-instance v3, Landroid/service/autofill/CompositeUserData;

    invoke-direct {v3, v0, v1}, Landroid/service/autofill/CompositeUserData;-><init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V

    move-object v1, v3

    goto :goto_3a

    :cond_31
    if-eqz v1, :cond_34

    goto :goto_3a

    .line 3745
    :cond_34
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v1

    .line 3748
    :goto_3a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFieldClassificationStrategy()Lcom/android/server/autofill/FieldClassificationStrategy;

    move-result-object v0

    if-eqz v1, :cond_48

    if-eqz v0, :cond_48

    .line 3752
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/autofill/Session;->logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;II)V

    return-void

    .line 3755
    :cond_48
    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void

    :catchall_4c
    move-exception p0

    .line 3726
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public handleLogFieldClassificationScore(Landroid/os/Bundle;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    const/4 v7, 0x0

    .line 4089
    const-string v8, "AutofillSession"

    if-nez v0, :cond_21

    .line 4090
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "setFieldClassificationScore(): no results"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    :cond_1d
    invoke-virtual {v1, v7, v7, v2, v3}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void

    .line 4094
    :cond_21
    const-string/jumbo v9, "scores"

    const-class v10, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 4095
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    if-nez v9, :cond_43

    .line 4099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No field classification score on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_43
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_45
    move/from16 v10, p4

    if-ge v11, v10, :cond_166

    .line 4106
    :try_start_49
    aget-object v12, p5, v11
    :try_end_4b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_49 .. :try_end_4b} :catch_153

    move-object v14, v7

    const/4 v13, 0x0

    .line 4111
    :goto_4d
    :try_start_4d
    array-length v15, v4

    if-ge v13, v15, :cond_f5

    .line 4112
    aget-object v15, p7, v13

    .line 4113
    iget-object v0, v9, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v0, v0, v11

    aget v0, v0, v13
    :try_end_58
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4d .. :try_end_58} :catch_69

    const/16 v16, 0x0

    cmpl-float v16, v0, v16

    .line 4114
    const-string v7, " and id "

    if-lez v16, :cond_cd

    if-nez v14, :cond_6d

    .line 4116
    :try_start_62
    new-instance v14, Landroid/util/ArrayMap;

    array-length v10, v4

    invoke-direct {v14, v10}, Landroid/util/ArrayMap;-><init>(I)V

    goto :goto_6d

    :catch_69
    move-exception v0

    move v12, v13

    goto/16 :goto_154

    .line 4118
    :cond_6d
    :goto_6d
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    if-eqz v10, :cond_9f

    .line 4119
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v16, v16, v0

    if-lez v16, :cond_9f

    .line 4120
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_ec

    .line 4121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skipping score "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " because it\'s less than "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    .line 4130
    :cond_9f
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v10, :cond_c5

    .line 4131
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding score "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " at index "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    :cond_c5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ec

    .line 4141
    :cond_cd
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_ec

    .line 4142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skipping score 0 at index "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ec
    :goto_ec
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, p4

    move-object/from16 v4, p6

    const/4 v7, 0x0

    goto/16 :goto_4d

    :cond_f5
    if-nez v14, :cond_112

    .line 4146
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_110

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no score for autofillId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_110
    move v12, v13

    goto :goto_14c

    .line 4151
    :cond_112
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_11b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_62 .. :try_end_11b} :catch_69

    const/4 v4, 0x0

    .line 4152
    :goto_11c
    :try_start_11c
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_140

    .line 4153
    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4154
    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 4155
    new-instance v13, Landroid/service/autofill/FieldClassification$Match;

    invoke-direct {v13, v7, v10}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_11c

    :catch_13d
    move-exception v0

    move v12, v4

    goto :goto_154

    .line 4157
    :cond_140
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4158
    new-instance v7, Landroid/service/autofill/FieldClassification;

    invoke-direct {v7, v0}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11c .. :try_end_14b} :catch_13d

    move v12, v4

    :goto_14c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, p6

    const/4 v7, 0x0

    goto/16 :goto_45

    :catch_153
    move-exception v0

    .line 4161
    :goto_154
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3, v9, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error accessing FC score at [%d, %d] (%s): %s"

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4164
    :cond_166
    invoke-virtual {v1, v5, v6, v2, v3}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method public final hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V
    .registers 4

    .line 5427
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v0

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 5428
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 5429
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    :cond_f
    return-void
.end method

.method public inlineSuggestionsRequestCacheDecorator(Ljava/util/function/Consumer;I)Ljava/util/function/Consumer;
    .registers 4

    .line 7044
    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/Session;Ljava/util/function/Consumer;I)V

    return-object v0
.end method

.method public isDestroyed()Z
    .registers 2

    .line 6146
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6147
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 6148
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isEmptyResponse(Landroid/service/autofill/FillResponse;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 2108
    :cond_4
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    .line 2109
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 2110
    :try_start_b
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_1e

    :catchall_1c
    move-exception p1

    goto :goto_50

    .line 2111
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v2

    if-nez v2, :cond_4d

    if-eqz v1, :cond_42

    .line 2113
    invoke-virtual {v1}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2114
    invoke-virtual {v1}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2115
    invoke-virtual {v1}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4d

    .line 2116
    :cond_42
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    monitor-exit p0

    return v0

    .line 2117
    :goto_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_b .. :try_end_51} :catchall_1c

    throw p1
.end method

.method public final isFillDialogUiEnabled()Z
    .registers 5

    .line 5744
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5745
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 5746
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_36

    .line 5749
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmScreenHasCredmanField(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 5751
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    .line 5754
    :cond_22
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmScreenHasCredmanField(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    monitor-exit v0

    return v2

    .line 5755
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_12

    throw p0
.end method

.method public final isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z
    .registers 3

    const/4 v0, 0x0

    .line 5437
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 5440
    :cond_9
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isRequestSupportFillDialog(I)Z
    .registers 2

    .line 0
    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isSaveUiPendingForTokenLocked(Landroid/os/IBinder;)Z
    .registers 3

    .line 8045
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final isSaveUiPendingLocked()Z
    .registers 2

    .line 8051
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/PendingUi;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isSaveUiShowingLocked()Z
    .registers 1

    .line 4673
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result p0

    return p0
.end method

.method public final isViewFocusedLocked(I)Z
    .registers 2

    .line 0
    and-int/lit8 p0, p1, 0x10

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$createFillDialogEvalRunnable$1(Ljava/lang/String;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;I)V
    .registers 6

    .line 5890
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5891
    :try_start_3
    invoke-static {p1}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object p1

    .line 5892
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/autofill/Session;->onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;I)V

    .line 5893
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final synthetic lambda$inlineSuggestionsRequestCacheDecorator$2(Ljava/util/function/Consumer;ILandroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 4

    .line 7045
    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7046
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7047
    :try_start_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    .line 7048
    monitor-exit p1

    return-void

    :catchall_12
    move-exception p0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final synthetic lambda$setClientLocked$0()V
    .registers 5

    .line 1872
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1873
    :try_start_3
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handling death of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " when saving="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1880
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    goto :goto_41

    :catchall_37
    move-exception p0

    goto :goto_43

    .line 1882
    :cond_39
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 1884
    :goto_41
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_37

    throw p0
.end method

.method public final logAllEventsLocked(I)V
    .registers 6

    .line 7827
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_25

    .line 7828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logAllEvents("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): commitReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7833
    :cond_25
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetCommitReason(I)V

    .line 7835
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    iget v0, p0, Lcom/android/server/autofill/Session;->mRequestCount:I

    invoke-virtual {p1, v0}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetRequestCount(I)V

    .line 7836
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 7837
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v0, v2

    .line 7836
    invoke-virtual {p1, v0, v1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetSessionDurationMillis(J)V

    .line 7838
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p1}, Lcom/android/server/autofill/FillRequestEventLogger;->logAndEndEvent()V

    .line 7839
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p1}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 7840
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo v0, "log all events"

    invoke-virtual {p1, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    .line 7841
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {p1}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 7842
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/SessionCommittedEventLogger;->logAndEndEvent()V

    return-void
.end method

.method public final logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V
    .registers 8

    .line 8105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aug:id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " a="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 8113
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " f="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " s="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " w="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " i="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8122
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->logRequestLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final logAuthenticationStatusLocked(II)V
    .registers 4

    const/16 v0, 0x5ad

    .line 8083
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 8082
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    return-void
.end method

.method public final logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 6

    .line 3764
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3765
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 3770
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public logContextCommittedLocked(II)V
    .registers 6

    .line 3694
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2d

    .line 3695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logContextCommittedLocked ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): commit_reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " no_save_reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    :cond_2d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;-><init>()V

    .line 3708
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3709
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3705
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3704
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3711
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetCommitReason(I)V

    .line 3712
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    iget p2, p0, Lcom/android/server/autofill/Session;->mRequestCount:I

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetRequestCount(I)V

    .line 3713
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoStatsLocked()Lcom/android/server/autofill/Helper$SaveInfoStats;

    move-result-object p1

    .line 3714
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    iget v0, p1, Lcom/android/server/autofill/Helper$SaveInfoStats;->saveInfoCount:I

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetSaveInfoCount(I)V

    .line 3715
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    iget p1, p1, Lcom/android/server/autofill/Helper$SaveInfoStats;->saveDataTypeCount:I

    invoke-virtual {p2, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetSaveDataTypeCount(I)V

    .line 3716
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 3717
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_6c

    move p2, v0

    goto :goto_6d

    :cond_6c
    const/4 p2, 0x0

    .line 3716
    :goto_6d
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetLastFillResponseHasSaveInfo(Z)V

    .line 3718
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    return-void
.end method

.method public final logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v14, p3

    move/from16 v1, p4

    .line 3779
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v3, "AutofillSession"

    if-eqz v2, :cond_33

    .line 3780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "logContextCommittedLocked ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): commit_reason:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " no_save_reason:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    :cond_33
    const-string/jumbo v2, "logContextCommited(%s)"

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v2

    if-nez v2, :cond_3d

    goto :goto_6e

    .line 3796
    :cond_3d
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3797
    invoke-static {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getNoPresentationEventReason(I)I

    move-result v5

    .line 3796
    invoke-virtual {v4, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 3799
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string v5, "Context committed"

    invoke-virtual {v4, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    .line 3801
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v2

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_6f

    .line 3803
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logContextCommittedLocked(): ignored by flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    :goto_6e
    return-void

    .line 3813
    :cond_6f
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3814
    :goto_78
    const-string/jumbo v9, "logContextCommitted() no datasets at "

    const-string v10, "adding ignored dataset "

    const-string/jumbo v11, "logContextCommitted() skipping idless dataset "

    if-ge v6, v2, :cond_10c

    .line 3815
    iget-object v13, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/service/autofill/FillResponse;

    .line 3816
    invoke-virtual {v13}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_f2

    .line 3817
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_97

    goto :goto_f2

    :cond_97
    const/4 v9, 0x0

    .line 3820
    :goto_98
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_108

    .line 3821
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/autofill/Dataset;

    .line 3822
    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c1

    .line 3824
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_ef

    .line 3825
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef

    .line 3829
    :cond_c1
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v8, :cond_ce

    .line 3830
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_cc

    goto :goto_ce

    :cond_cc
    :goto_cc
    const/4 v8, 0x1

    goto :goto_ef

    .line 3831
    :cond_ce
    :goto_ce
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_e4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    if-nez v7, :cond_eb

    .line 3833
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 3835
    :cond_eb
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    :cond_ef
    :goto_ef
    add-int/lit8 v9, v9, 0x1

    goto :goto_98

    .line 3818
    :cond_f2
    :goto_f2
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_108

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_108
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_78

    :cond_10c
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 3842
    :goto_110
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_316

    .line 3843
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/ViewState;

    .line 3844
    invoke-virtual {v5}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v12

    and-int/lit8 v16, v12, 0x8

    if-eqz v16, :cond_147

    and-int/lit16 v12, v12, 0x800

    if-eqz v12, :cond_1b6

    .line 3852
    invoke-virtual {v5}, Lcom/android/server/autofill/ViewState;->getDatasetId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_150

    .line 3855
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logContextCommitted(): no dataset id on "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_147
    move/from16 v17, v2

    move/from16 v16, v4

    :goto_14b
    move-object v5, v7

    move/from16 v21, v8

    goto/16 :goto_30b

    .line 3861
    :cond_150
    invoke-virtual {v5}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    move/from16 v16, v4

    .line 3862
    invoke-virtual {v5}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    if-eqz v1, :cond_183

    .line 3863
    invoke-virtual {v1, v4}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 3864
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_180

    .line 3865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "logContextCommitted(): ignoring changed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because it has same value that was autofilled"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_180
    :goto_180
    move/from16 v17, v2

    goto :goto_14b

    .line 3874
    :cond_183
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_19c

    .line 3875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "logContextCommitted() found changed state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19c
    if-nez v13, :cond_1a8

    .line 3878
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3879
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3881
    :cond_1a8
    iget-object v1, v5, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3882
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b0
    move/from16 v17, v2

    move/from16 v21, v8

    goto/16 :goto_30c

    :cond_1b6
    move/from16 v16, v4

    .line 3884
    invoke-virtual {v5}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    if-nez v1, :cond_1dd

    .line 3886
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_180

    .line 3887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "logContextCommitted(): skipping view without current value ( "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_180

    :cond_1dd
    if-eqz v8, :cond_180

    const/4 v4, 0x0

    :goto_1e0
    if-ge v4, v2, :cond_1b0

    .line 3900
    iget-object v12, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/autofill/FillResponse;

    .line 3901
    invoke-virtual {v12}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_1f6

    .line 3902
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1fe

    :cond_1f6
    move-object/from16 v22, v1

    move/from16 v17, v2

    move/from16 v21, v8

    goto/16 :goto_2eb

    :cond_1fe
    move/from16 v17, v2

    move-object/from16 v18, v6

    const/4 v2, 0x0

    .line 3907
    :goto_203
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2e2

    .line 3908
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/Dataset;

    move/from16 v19, v2

    .line 3909
    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_233

    .line 3911
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_22d

    .line 3912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22d
    move-object/from16 v22, v1

    move/from16 v21, v8

    goto/16 :goto_2da

    .line 3920
    :cond_233
    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v20, v7

    move/from16 v21, v8

    const/4 v7, 0x0

    .line 3921
    :goto_23c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2a7

    .line 3922
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillValue;

    .line 3923
    invoke-virtual {v1, v8}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29e

    .line 3924
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_273

    .line 3925
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v1

    const-string v1, "field "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was manually filled with value set by dataset "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_275

    :cond_273
    move-object/from16 v22, v1

    :goto_275
    if-nez v18, :cond_27c

    .line 3934
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    :cond_27c
    move-object/from16 v1, v18

    .line 3936
    iget-object v8, v5, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 3937
    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    if-nez v8, :cond_296

    .line 3939
    new-instance v8, Landroid/util/ArraySet;

    move/from16 v23, v7

    const/4 v7, 0x1

    invoke-direct {v8, v7}, Landroid/util/ArraySet;-><init>(I)V

    .line 3940
    iget-object v7, v5, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_298

    :cond_296
    move/from16 v23, v7

    .line 3942
    :goto_298
    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v1

    goto :goto_2a2

    :cond_29e
    move-object/from16 v22, v1

    move/from16 v23, v7

    :goto_2a2
    add-int/lit8 v7, v23, 0x1

    move-object/from16 v1, v22

    goto :goto_23c

    :cond_2a7
    move-object/from16 v22, v1

    .line 3945
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_2b7

    .line 3946
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b4

    goto :goto_2b7

    :cond_2b4
    move-object/from16 v7, v20

    goto :goto_2da

    .line 3947
    :cond_2b7
    :goto_2b7
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2cd

    .line 3948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2cd
    if-nez v20, :cond_2d5

    .line 3951
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    goto :goto_2d7

    :cond_2d5
    move-object/from16 v7, v20

    .line 3953
    :goto_2d7
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2da
    add-int/lit8 v2, v19, 0x1

    move/from16 v8, v21

    move-object/from16 v1, v22

    goto/16 :goto_203

    :cond_2e2
    move-object/from16 v22, v1

    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v6, v18

    goto :goto_301

    .line 3903
    :goto_2eb
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_301

    .line 3904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_301
    :goto_301
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v17

    move/from16 v8, v21

    move-object/from16 v1, v22

    goto/16 :goto_1e0

    :goto_30b
    move-object v7, v5

    :goto_30c
    add-int/lit8 v4, v16, 0x1

    move/from16 v1, p4

    move/from16 v2, v17

    move/from16 v8, v21

    goto/16 :goto_110

    :cond_316
    move-object v5, v7

    if-eqz v6, :cond_347

    .line 3969
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3970
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3971
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_328
    if-ge v3, v1, :cond_344

    .line 3973
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillId;

    .line 3974
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 3975
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3976
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_328

    :cond_344
    move-object v9, v2

    move-object v8, v4

    goto :goto_349

    :cond_347
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3980
    :goto_349
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    move-object v6, v13

    iget-boolean v13, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-object v7, v15

    .line 3994
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v15

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 3980
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;ZIZ)V

    .line 3995
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetCommitReason(I)V

    .line 3996
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    iget v2, v0, Lcom/android/server/autofill/Session;->mRequestCount:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetRequestCount(I)V

    .line 3997
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0, v14}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    return-void
.end method

.method public logFieldClassificationEvent(JLandroid/service/assist/classification/FieldClassificationResponse;I)V
    .registers 8

    .line 8224
    invoke-static {}, Lcom/android/server/autofill/FieldClassificationEventLogger;->createLogger()Lcom/android/server/autofill/FieldClassificationEventLogger;

    move-result-object v0

    .line 8225
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->startNewLogForRequest()V

    .line 8226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/FieldClassificationEventLogger;->maybeSetLatencyMillis(J)V

    .line 8227
    iget p1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger;->maybeSetAppPackageUid(I)V

    .line 8228
    iget p1, p0, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger;->maybeSetNextFillRequestId(I)V

    .line 8229
    sget-object p1, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger;->maybeSetRequestId(I)V

    .line 8230
    iget p1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger;->maybeSetSessionId(I)V

    if-eqz p3, :cond_34

    .line 8233
    invoke-virtual {p3}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    goto :goto_35

    :cond_34
    const/4 p1, -0x1

    .line 8235
    :goto_35
    invoke-virtual {v0, p4}, Lcom/android/server/autofill/FieldClassificationEventLogger;->maybeSetRequestStatus(I)V

    .line 8236
    invoke-virtual {v0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger;->maybeSetCountClassifications(I)V

    .line 8237
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->logAndEndEvent()V

    const/4 p1, -0x2

    .line 8238
    iput p1, p0, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    return-void
.end method

.method public final logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;II)V
    .registers 21

    move-object/from16 v1, p0

    .line 4010
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getValues()[Ljava/lang/String;

    move-result-object v3

    .line 4011
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v4

    .line 4013
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v10

    .line 4014
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v11

    .line 4016
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v12

    .line 4017
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v13

    if-eqz v3, :cond_22

    if-eqz v4, :cond_22

    .line 4020
    array-length v0, v3

    array-length v2, v4

    if-eq v0, v2, :cond_25

    :cond_22
    move-object v7, v4

    goto/16 :goto_89

    .line 4032
    :cond_25
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v0

    .line 4034
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4035
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4039
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4040
    :try_start_36
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 4041
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_86

    move-object v7, v4

    .line 4043
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    .line 4046
    new-array v5, v4, [Landroid/view/autofill/AutofillId;

    .line 4047
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4049
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/ViewState;

    .line 4050
    invoke-virtual {v6}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v2, 0x1

    .line 4051
    iget-object v6, v6, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v6, v5, v2

    move v2, v15

    goto :goto_4e

    .line 4055
    :cond_69
    new-instance v15, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;

    move/from16 v2, p3

    move-object v6, v3

    move/from16 v3, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;-><init>(Lcom/android/server/autofill/Session;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v3, v6

    invoke-direct {v15, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v0, p1

    move-object v4, v7

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v2, v14

    move-object v1, v15

    .line 4068
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/autofill/FieldClassificationStrategy;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-void

    :catchall_86
    move-exception v0

    .line 4041
    :try_start_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0

    :goto_89
    const/4 v0, -0x1

    if-nez v3, :cond_8e

    move v1, v0

    goto :goto_8f

    .line 4021
    :cond_8e
    array-length v1, v3

    :goto_8f
    if-nez v7, :cond_92

    goto :goto_93

    .line 4022
    :cond_92
    array-length v0, v7

    .line 4023
    :goto_93
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setScores(): user data mismatch: values.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ids.length = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logIfViewClearedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;)V
    .registers 5

    if-eqz p2, :cond_8

    .line 5445
    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_71

    .line 5446
    :cond_8
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    if-eqz p2, :cond_71

    .line 5447
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result p2

    if-eqz p2, :cond_71

    .line 5448
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_71

    .line 5449
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object p2

    if-eqz p2, :cond_71

    .line 5450
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 5451
    sget-boolean p3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p3, :cond_5c

    .line 5452
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateLocked("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): resetting value that was "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " chars long"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AutofillSession"

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    const/16 p1, 0x464

    .line 5461
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 p3, 0x465

    .line 5462
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 5463
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_71
    return-void
.end method

.method public final logPresentationStatsOnViewEnteredLocked(Landroid/service/autofill/FillResponse;Z)V
    .registers 4

    .line 5412
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetIsCredentialRequest(Z)V

    .line 5413
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget v0, p0, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFieldClassificationRequestId(I)V

    .line 5415
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAutofillServiceUid(I)V

    .line 5416
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFocusedId(Landroid/view/autofill/AutofillId;)V

    if-eqz p1, :cond_32

    .line 5419
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetRequestId(I)V

    .line 5420
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 5421
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 5420
    invoke-virtual {p2, p1, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAvailableCount(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    :cond_32
    return-void
.end method

.method public final logSaveShown()V
    .registers 4

    .line 4641
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logSaveShown(ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public logSaveUiShown()V
    .registers 3

    .line 4178
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final mergePreviousSessionLocked(Z)Ljava/util/ArrayList;
    .registers 11

    .line 4881
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_de

    .line 4884
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string/jumbo v2, "mergeSessions("

    const-string v3, "AutofillSession"

    if-eqz v1, :cond_3b

    .line 4885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): Merging the content of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4890
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessions for task "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4885
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4894
    :cond_3b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 4895
    :goto_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d8

    .line 4896
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    .line 4897
    iget-object v6, v5, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v6, :cond_70

    .line 4899
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): Not merging null contexts from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    :cond_70
    if-eqz p1, :cond_75

    .line 4908
    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 4910
    :cond_75
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_a3

    .line 4911
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4916
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " context from previous session #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4911
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4920
    :cond_a3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4921
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-nez v6, :cond_d4

    iget-object v6, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v6, :cond_d4

    .line 4922
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_d0

    .line 4923
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): setting client state from previous session"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4931
    :cond_d0
    iget-object v5, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iput-object v5, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    :cond_d4
    :goto_d4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_41

    .line 4934
    :cond_d8
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    .line 4940
    :cond_de
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final newLogMaker(I)Landroid/metrics/LogMaker;
    .registers 3

    .line 8069
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;
    .registers 5

    .line 8073
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-static {p1, v0, p2, v1, p0}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final notifyClientFillDialogTriggerIds(Ljava/util/List;)V
    .registers 5

    .line 5734
    const-string v0, "AutofillSession"

    :try_start_2
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1e

    .line 5735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyFillDialogTriggerIds(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :catch_1c
    move-exception p0

    goto :goto_26

    .line 5737
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillDialogTriggerIds(Ljava/util/List;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_25} :catch_1c

    return-void

    .line 5739
    :goto_26
    const-string p1, "Cannot set trigger ids for fill dialog"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final notifyDisableAutofillToClient(JLandroid/content/ComponentName;)V
    .registers 6

    .line 6174
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_2c

    .line 6177
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/autofill/IAutoFillManagerClient;->notifyDisableAutofill(JLandroid/content/ComponentName;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_9

    goto :goto_2a

    :catch_11
    move-exception p1

    .line 6179
    :try_start_12
    const-string p2, "AutofillSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error notifying client disable autofill: id="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6181
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_9

    throw p0
.end method

.method public final notifyFillUiHidden(Landroid/view/autofill/AutofillId;)V
    .registers 4

    .line 3166
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3168
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception p0

    goto :goto_17

    :catch_d
    move-exception p0

    .line 3170
    :try_start_e
    const-string p1, "AutofillSession"

    const-string v1, "Error sending fill UI hidden notification"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3172
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    throw p0
.end method

.method public final notifyFillUiShown(Landroid/view/autofill/AutofillId;)V
    .registers 4

    .line 3176
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3178
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception p0

    goto :goto_17

    :catch_d
    move-exception p0

    .line 3180
    :try_start_e
    const-string p1, "AutofillSession"

    const-string v1, "Error sending fill UI shown notification"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3182
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    throw p0
.end method

.method public notifyImeAnimationEnd(J)V
    .registers 5

    .line 8018
    iput-wide p1, p0, Lcom/android/server/autofill/Session;->mImeAnimationFinishTimeMs:J

    .line 8020
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillDialogRunnable:Ljava/lang/Runnable;

    const-string p2, "AutofillSession"

    if-eqz p1, :cond_1e

    .line 8021
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_11

    .line 8022
    const-string p1, "Ime animation ended, starting fill dialog."

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8024
    :cond_11
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillDialogRunnable:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/android/server/autofill/Session;->mFillDialogMinWaitAfterImeAnimationMs:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    .line 8025
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mFillDialogRunnable:Ljava/lang/Runnable;

    goto :goto_27

    .line 8027
    :cond_1e
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_27

    .line 8028
    const-string p1, "Ime animation ended, no runnable present."

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    const/4 p1, 0x0

    .line 8031
    iput-boolean p1, p0, Lcom/android/server/autofill/Session;->mWaitForImeAnimation:Z

    return-void
.end method

.method public notifyImeAnimationStart(J)V
    .registers 3

    .line 8012
    iput-wide p1, p0, Lcom/android/server/autofill/Session;->mImeAnimationStartTimeMs:J

    const/4 p1, 0x1

    .line 8013
    iput-boolean p1, p0, Lcom/android/server/autofill/Session;->mWaitForImeAnimation:Z

    return-void
.end method

.method public final notifyUnavailableToClient(ILjava/util/ArrayList;)V
    .registers 6

    .line 6159
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6160
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_3b

    .line 6162
    :cond_b
    :try_start_b
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    if-eqz v2, :cond_19

    .line 6163
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {p2, v2, v1, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    goto :goto_39

    :catch_17
    move-exception p1

    goto :goto_21

    :cond_19
    if-eqz p1, :cond_39

    .line 6165
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_20} :catch_17
    .catchall {:try_start_b .. :try_end_20} :catchall_9

    goto :goto_39

    .line 6168
    :goto_21
    :try_start_21
    const-string p2, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error notifying client no fill UI: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6170
    :cond_39
    :goto_39
    monitor-exit v0

    return-void

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_9

    throw p0
.end method

.method public final onAugmentedAutofillErrorCallback()V
    .registers 3

    .line 6750
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6751
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    .line 6754
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-static {p0}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 6755
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final onAugmentedAutofillInlineSuggestionAccept(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;ZILandroid/view/autofill/AutofillValue;)V
    .registers 26

    move-object/from16 v0, p0

    .line 6717
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 6718
    :try_start_5
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 6719
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v7

    if-nez v7, :cond_19

    .line 6721
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "onAugmentedAutofillInlineSuggestionAccept(): no service for user, skipping processing inline suggestion request"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6725
    monitor-exit v6

    return-void

    :catchall_17
    move-exception v0

    goto :goto_5e

    .line 6729
    :cond_19
    invoke-virtual {v7}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz p1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 6732
    :goto_22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v1, p4

    .line 6727
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    .line 6733
    iget v8, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v10, v0, Lcom/android/server/autofill/Session;->taskId:I

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 6739
    invoke-static/range {p2 .. p2}, Landroid/view/autofill/AutofillId;->withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    move-result-object v13

    new-instance v1, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

    invoke-direct {v1, v0}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;-><init>(Lcom/android/server/autofill/Session;)V

    new-instance v2, Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

    invoke-direct {v2, v0}, Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;-><init>(Lcom/android/server/autofill/Session;)V

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 6744
    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v18

    iget v0, v0, Lcom/android/server/autofill/Session;->userId:I

    move-object/from16 v15, p1

    move-object/from16 v14, p5

    move/from16 v19, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 6733
    invoke-virtual/range {v7 .. v19}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V

    .line 6746
    monitor-exit v6

    return-void

    :goto_5e
    monitor-exit v6
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_17

    throw v0
.end method

.method public onClassificationRequestFailure(ILjava/lang/CharSequence;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onClassificationRequestSuccess(Landroid/service/assist/classification/FieldClassificationResponse;)V
    .registers 2

    .line 8203
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {p0, p1}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$mupdateResponseReceived(Lcom/android/server/autofill/Session$ClassificationState;Landroid/service/assist/classification/FieldClassificationResponse;)V

    return-void
.end method

.method public onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;I)V
    .registers 18

    .line 5593
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5594
    :try_start_3
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget v4, p0, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    invoke-virtual {v0, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFieldClassificationRequestId(I)V

    .line 5596
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_4a

    .line 5597
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#onFillReady() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5600
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 5601
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 5602
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 5604
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo v1, "on fill ready"

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    .line 5605
    monitor-exit v3

    return-void

    :catchall_47
    move-exception v0

    goto/16 :goto_1a1

    .line 5607
    :cond_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_47

    const/4 v0, 0x0

    if-eqz p3, :cond_5d

    .line 5610
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 5611
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5e

    :cond_5d
    move-object v3, v0

    .line 5616
    :goto_5e
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5617
    :try_start_63
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v6

    .line 5618
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 5619
    monitor-exit v4
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_19e

    const/4 v4, 0x0

    if-eqz v6, :cond_195

    if-nez v7, :cond_77

    goto/16 :goto_195

    .line 5625
    :cond_77
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5627
    :try_start_7a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSuggestionSentTimestampMs()V

    .line 5628
    monitor-exit v5
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_192

    .line 5630
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 5631
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    move/from16 v0, p4

    .line 5633
    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/android/server/autofill/Session;->requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_b7

    .line 5635
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5636
    :try_start_98
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    const/high16 v1, 0x20000

    .line 5637
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 5640
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    .line 5642
    monitor-exit v5
    :try_end_ad
    .catchall {:try_start_98 .. :try_end_ad} :catchall_b4

    .line 5646
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 5647
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->resetImeAnimationState()V

    return-void

    :catchall_b4
    move-exception v0

    .line 5642
    :try_start_b5
    monitor-exit v5
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v0

    :cond_b7
    if-nez v0, :cond_c0

    .line 5650
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->resetImeAnimationState()V

    .line 5651
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    goto :goto_c1

    :cond_c0
    return-void

    .line 5657
    :cond_c1
    :goto_c1
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->supportsInlineSuggestions()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 5658
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5659
    :try_start_ca
    invoke-virtual {p0, p1, v3}, Lcom/android/server/autofill/Session;->requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 5662
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    const/16 v1, 0x2000

    .line 5663
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 5664
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/autofill/Session;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetInlinePresentationAndSuggestionHostUid(Landroid/content/Context;I)V

    .line 5666
    monitor-exit v4

    return-void

    :catchall_ea
    move-exception v0

    goto :goto_ee

    .line 5668
    :cond_ec
    monitor-exit v4

    goto :goto_f0

    :goto_ee
    monitor-exit v4
    :try_end_ef
    .catchall {:try_start_ca .. :try_end_ef} :catchall_ea

    throw v0

    .line 5671
    :cond_f0
    :goto_f0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 5676
    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v11, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    iget-object v12, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 5684
    invoke-virtual {v12}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v12

    check-cast v12, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v12}, Lcom/android/server/autofill/AutofillManagerService;->getMaxInputLengthForAutofill()I

    move-result v12

    move-object v8, p0

    move-object v2, p1

    move-object v1, p2

    .line 5672
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/autofill/ui/AutoFillUI;->showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;IZI)V

    .line 5686
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5687
    :try_start_117
    iget-wide v2, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_18e

    .line 5689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 5690
    iget-wide v4, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v2, v4

    .line 5692
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_14c

    .line 5693
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "1st UI for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 5695
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " shown in "

    .line 5696
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5697
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 5698
    const-string v4, "AutofillSession"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14c

    :catchall_14a
    move-exception v0

    goto :goto_190

    .line 5700
    :cond_14c
    :goto_14c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    .line 5702
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " app="

    .line 5703
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 5704
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " svc="

    .line 5705
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 5706
    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " latency="

    .line 5707
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5708
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 5709
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 5712
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x479

    .line 5711
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 5714
    :cond_18e
    monitor-exit v1

    return-void

    :goto_190
    monitor-exit v1
    :try_end_191
    .catchall {:try_start_117 .. :try_end_191} :catchall_14a

    throw v0

    :catchall_192
    move-exception v0

    .line 5628
    :try_start_193
    monitor-exit v5
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_192

    throw v0

    .line 5621
    :cond_195
    :goto_195
    const-string/jumbo v1, "onFillReady(): no service label or icon"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_19e
    move-exception v0

    .line 5619
    :try_start_19f
    monitor-exit v4
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_19e

    throw v0

    .line 5607
    :goto_1a1
    :try_start_1a1
    monitor-exit v3
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_47

    throw v0
.end method

.method public onFillRequestFailure(ILjava/lang/Throwable;)V
    .registers 13

    .line 2640
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2641
    instance-of v1, p2, Ljava/util/concurrent/TimeoutException;

    .line 2642
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    .line 2644
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2646
    :try_start_f
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v5}, Lcom/android/server/autofill/FillResponseEventLogger;->startLogForNewResponse()V

    .line 2647
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v5, p1}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetRequestId(I)V

    .line 2648
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget v6, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetAppPackageUid(I)V

    .line 2649
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetAvailableCount(I)V

    .line 2651
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v5, v6}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetTotalDatasetsProvided(I)V

    .line 2653
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 2654
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getDetectionPreferenceForLogging()I

    move-result v6

    .line 2653
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetDetectionPreference(I)V

    .line 2656
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    sub-long/2addr v5, v7

    .line 2657
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    long-to-int v5, v5

    invoke-virtual {v7, v5}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetLatencyFillResponseReceivedMillis(I)V

    .line 2660
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 2661
    iget-boolean v5, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v6, 0x5

    if-eqz v5, :cond_7d

    .line 2662
    const-string p2, "AutofillSession"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#onFillRequestFailureOrTimeout(req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") rejected - session: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " destroyed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p1, v6}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 2670
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 2672
    monitor-exit v4

    return-void

    :catchall_7a
    move-exception p0

    goto/16 :goto_15b

    .line 2674
    :cond_7d
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_9f

    .line 2675
    const-string v5, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finishing session due to service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_93

    .line 2677
    const-string/jumbo v8, "timeout"

    goto :goto_95

    :cond_93
    const-string v8, "failure"

    :goto_95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2675
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    :cond_9f
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    const/4 v5, 0x0

    .line 2680
    iput-object v5, p0, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    .line 2681
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/metrics/LogMaker;

    if-nez v7, :cond_c9

    .line 2683
    const-string v1, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onFillRequestFailureOrTimeout(): no log for id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    :cond_c9
    if-eqz v1, :cond_cd

    const/4 p1, 0x2

    goto :goto_cf

    :cond_cd
    const/16 p1, 0xb

    .line 2685
    :goto_cf
    invoke-virtual {v7, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    :goto_d2
    if-nez v2, :cond_10d

    .line 2688
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getTargedSdkLocked()I

    move-result p1

    const/16 v1, 0x1d

    if-lt p1, v1, :cond_fe

    .line 2691
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFillRequestFailureOrTimeout(): not showing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' because service\'s targeting API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_fe
    if-eqz v0, :cond_10d

    .line 2700
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x624

    .line 2699
    invoke-virtual {v7, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2704
    :cond_10d
    instance-of p1, p2, Ljava/util/concurrent/TimeoutException;

    const/4 v1, 0x6

    if-eqz p1, :cond_11e

    .line 2705
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1, v6}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 2707
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    goto :goto_139

    .line 2708
    :cond_11e
    instance-of p1, p2, Landroid/os/TransactionTooLargeException;

    const/4 p2, 0x7

    if-eqz p1, :cond_12e

    .line 2709
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 2711
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p1, v1}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    goto :goto_139

    .line 2714
    :cond_12e
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 2716
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 2718
    :goto_139
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string p2, "fill request failure"

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    .line 2719
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p1}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetLatencyResponseProcessingMillis()V

    .line 2720
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p1}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 2721
    monitor-exit v4
    :try_end_14b
    .catchall {:try_start_f .. :try_end_14b} :catchall_7a

    .line 2722
    invoke-virtual {p0, v1, v5}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    if-eqz v3, :cond_157

    .line 2725
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2727
    :cond_157
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    .line 2721
    :goto_15b
    :try_start_15b
    monitor-exit v4
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_7a

    throw p0
.end method

.method public onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 1917
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1918
    :try_start_b
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v5, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetRequestId(I)V

    .line 1920
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v5}, Lcom/android/server/autofill/FillResponseEventLogger;->startLogForNewResponse()V

    .line 1921
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v5, v1}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetRequestId(I)V

    .line 1922
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget v6, v0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetAppPackageUid(I)V

    .line 1923
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 1924
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v5}, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTime()V

    .line 1927
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    sub-long/2addr v5, v7

    .line 1928
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    long-to-int v5, v5

    invoke-virtual {v7, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillResponseReceivedTimestampMs(I)V

    .line 1930
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v6, v5}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetLatencyFillResponseReceivedMillis(I)V

    .line 1932
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 1933
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->getDetectionPreferenceForLogging()I

    move-result v6

    .line 1932
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetDetectionPreference(I)V

    .line 1935
    iget-boolean v5, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v6, 0x5

    if-eqz v5, :cond_78

    .line 1936
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onFillRequestSuccess() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1, v6}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 1942
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 1943
    monitor-exit v4

    return-void

    :catchall_75
    move-exception v0

    goto/16 :goto_27d

    .line 1946
    :cond_78
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v5}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 1951
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onFillRequestSuccess() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is showing saveUi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1, v6}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 1957
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 1958
    monitor-exit v4

    return-void

    .line 1961
    :cond_a9
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/metrics/LogMaker;

    if-eqz v5, :cond_b9

    const/16 v6, 0xa

    .line 1963
    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_d0

    .line 1965
    :cond_b9
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFillRequestSuccess(): no request log for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d0
    const/16 v6, 0x38d

    const/4 v7, 0x0

    if-nez v2, :cond_e9

    .line 1968
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v2, v7}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetTotalDatasetsProvided(I)V

    if-eqz v5, :cond_e4

    const/4 v2, -0x1

    .line 1970
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1972
    :cond_e4
    invoke-virtual {v0, v1, v3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1973
    monitor-exit v4

    return-void

    .line 1978
    :cond_e9
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v8

    if-eqz v8, :cond_117

    .line 1979
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v9}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v9

    if-nez v9, :cond_117

    .line 1980
    const-string v5, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because field detection is disabled"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    invoke-virtual {v0, v1, v3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1982
    monitor-exit v4

    return-void

    .line 1985
    :cond_117
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    .line 1987
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v1

    const/4 v9, 0x4

    and-int/2addr v1, v9

    if-eqz v1, :cond_12f

    .line 1989
    const-string v1, "AutofillSession"

    const-string v10, "Service requested to wait for delayed fill response."

    invoke-static {v1, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->registerDelayedFillBroadcastLocked()V

    .line 1993
    :cond_12f
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v10, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v10, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setLastResponseLocked(ILandroid/service/autofill/FillResponse;)V

    .line 1995
    iget-boolean v1, v0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    const/4 v10, 0x0

    if-eqz v1, :cond_14a

    .line 1996
    iput-boolean v7, v0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    .line 1997
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v11, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v13

    invoke-virtual {v1, v11, v10, v12, v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logViewEntered(ILandroid/os/Bundle;Landroid/view/autofill/AutofillId;Z)V

    .line 1999
    :cond_14a
    monitor-exit v4
    :try_end_14b
    .catchall {:try_start_b .. :try_end_14b} :catchall_75

    .line 2001
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDisableDuration()J

    move-result-wide v13

    const-wide/16 v11, 0x0

    cmp-long v1, v13, v11

    const/4 v4, 0x1

    if-lez v1, :cond_158

    move v1, v4

    goto :goto_159

    :cond_158
    move v1, v7

    :goto_159
    if-eqz v1, :cond_1ff

    .line 2004
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v11

    and-int/lit8 v12, v11, 0x2

    if-eqz v12, :cond_165

    move v12, v4

    goto :goto_166

    :cond_165
    move v12, v7

    :goto_166
    if-eqz v12, :cond_16b

    .line 2008
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    goto :goto_16c

    :cond_16b
    move-object v15, v10

    .line 2007
    :goto_16c
    invoke-virtual {v0, v13, v14, v15}, Lcom/android/server/autofill/Session;->notifyDisableAutofillToClient(JLandroid/content/ComponentName;)V

    if-eqz v12, :cond_187

    move v12, v11

    .line 2011
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move v15, v12

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    move/from16 v16, v15

    iget v15, v0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v7, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move/from16 v17, v16

    move/from16 v16, v7

    move/from16 v7, v17

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V

    goto :goto_199

    :cond_187
    move v7, v11

    .line 2014
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 2015
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget v15, v0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v9, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move/from16 v16, v9

    .line 2014
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForApp(Ljava/lang/String;JIZ)V

    .line 2018
    :goto_199
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2019
    :try_start_19c
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v11, v4}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAutofillDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2023
    invoke-virtual {v0, v3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v11

    if-eqz v11, :cond_1d2

    .line 2024
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1, v4}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2025
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1d0

    .line 2026
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service disabled autofill for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but session is kept for augmented autofill only"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d0

    :catchall_1ce
    move-exception v0

    goto :goto_1fd

    .line 2032
    :cond_1d0
    :goto_1d0
    monitor-exit v9

    return-void

    .line 2034
    :cond_1d2
    monitor-exit v9
    :try_end_1d3
    .catchall {:try_start_19c .. :try_end_1d3} :catchall_1ce

    .line 2036
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_1ff

    .line 2037
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Service disabled autofill for "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 2039
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": flags="

    .line 2040
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", duration="

    .line 2042
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    invoke-static {v13, v14, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2044
    const-string v7, "AutofillSession"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ff

    .line 2034
    :goto_1fd
    :try_start_1fd
    monitor-exit v9
    :try_end_1fe
    .catchall {:try_start_1fd .. :try_end_1fe} :catchall_1ce

    throw v0

    .line 2047
    :cond_1ff
    :goto_1ff
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_20b

    .line 2048
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_211

    :cond_20b
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v7

    if-eqz v7, :cond_213

    :cond_211
    if-eqz v1, :cond_22a

    :cond_213
    if-eqz v1, :cond_217

    const/4 v9, 0x4

    goto :goto_218

    :cond_217
    const/4 v9, 0x0

    .line 2051
    :goto_218
    invoke-virtual {v0, v9, v10}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 2054
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2055
    :try_start_21e
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2056
    invoke-static {v9}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v9

    .line 2055
    invoke-virtual {v7, v9}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 2057
    monitor-exit v1
    :try_end_22a
    .catchall {:try_start_21e .. :try_end_22a} :catchall_27a

    :cond_22a
    if-eqz v5, :cond_24f

    .line 2063
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_234

    const/4 v1, 0x0

    goto :goto_23c

    :cond_234
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_23c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2061
    invoke-virtual {v5, v6, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz v8, :cond_24f

    .line 2065
    array-length v1, v8

    .line 2067
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v6, 0x4f7

    .line 2065
    invoke-virtual {v5, v6, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_24f
    if-nez v4, :cond_253

    const/4 v7, 0x0

    goto :goto_257

    .line 2071
    :cond_253
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 2072
    :goto_257
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2073
    :try_start_25a
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1, v7}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetTotalDatasetsProvided(I)V

    .line 2075
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1, v7}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetAvailableCount(I)V

    .line 2080
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/autofill/Session;->processResponseLockedForPcc(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 2081
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetLatencyResponseProcessingMillis()V

    .line 2082
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 2083
    monitor-exit v4

    return-void

    :catchall_277
    move-exception v0

    monitor-exit v4
    :try_end_279
    .catchall {:try_start_25a .. :try_end_279} :catchall_277

    throw v0

    :catchall_27a
    move-exception v0

    .line 2057
    :try_start_27b
    monitor-exit v1
    :try_end_27c
    .catchall {:try_start_27b .. :try_end_27c} :catchall_27a

    throw v0

    .line 1999
    :goto_27d
    :try_start_27d
    monitor-exit v4
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_75

    throw v0
.end method

.method public final onInputMethodStart()V
    .registers 4

    .line 3186
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3187
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    .line 3188
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 3

    .line 8035
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->onPendingSaveUi(ILandroid/os/IBinder;)V

    return-void
.end method

.method public onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 9

    .line 2770
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 2772
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2773
    :try_start_9
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2775
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v3}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetLatencySaveFinishMillis()V

    .line 2776
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v3}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 2777
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v3, :cond_3e

    .line 2778
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call to Session#onSaveRequestFailure() rejected - session: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    monitor-exit v2

    return-void

    :catchall_3c
    move-exception p0

    goto :goto_98

    :cond_3e
    if-nez v0, :cond_6a

    .line 2786
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getTargedSdkLocked()I

    move-result v0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_6a

    .line 2789
    const-string v1, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSaveRequestFailure(): not showing \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' because service\'s targeting API "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 2797
    :cond_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_9 .. :try_end_6b} :catchall_3c

    const/16 v0, 0x396

    .line 2799
    invoke-virtual {p0, v0, p2}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 v0, 0xb

    .line 2800
    invoke-virtual {p2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    if-eqz p1, :cond_86

    .line 2802
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x624

    invoke-virtual {p2, v2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2804
    :cond_86
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    if-eqz v1, :cond_94

    .line 2807
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2809
    :cond_94
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    .line 2797
    :goto_98
    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_3c

    throw p0
.end method

.method public onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 6

    .line 2734
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2735
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2737
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetIsSaved(Z)V

    .line 2738
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetLatencySaveFinishMillis()V

    .line 2739
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 2740
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_3e

    .line 2741
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#onSaveRequestSuccess() rejected - session: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    goto :goto_66

    .line 2748
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3c

    const/16 v0, 0x396

    .line 2750
    invoke-virtual {p0, v0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    if-nez p2, :cond_49

    const/16 v2, 0xa

    .line 2751
    :cond_49
    invoke-virtual {p1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 2755
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    if-eqz p2, :cond_62

    .line 2758
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_5f

    const-string p1, "AutofillSession"

    const-string v0, "Starting intent sender on save()"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :cond_5f
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->startIntentSenderAndFinishSession(Landroid/content/IntentSender;)V

    .line 2763
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    .line 2748
    :goto_66
    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_3c

    throw p0
.end method

.method public final onSecondaryFillResponse(Landroid/service/autofill/FillResponse;I)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 2198
    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2202
    :try_start_6
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/FillResponseEventLogger;->startLogForNewResponse()V

    .line 2203
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetRequestId(I)V

    .line 2204
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget v2, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetAppPackageUid(I)V

    .line 2205
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 2206
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTime()V

    .line 2209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    sub-long/2addr v3, v5

    .line 2210
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillResponseReceivedTimestampMs(I)V

    .line 2212
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1, v3}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetLatencyFillResponseReceivedMillis(I)V

    .line 2214
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_68

    .line 2215
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#onSecondaryFillResponse() rejected - session: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroyed"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 2221
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 2222
    monitor-exit v0

    return-void

    :catchall_66
    move-exception p0

    goto :goto_b1

    .line 2225
    :cond_68
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_71

    move v1, v3

    goto :goto_75

    .line 2226
    :cond_71
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2227
    :goto_75
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v4, v1}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetTotalDatasetsProvided(I)V

    .line 2228
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v4, v1}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetAvailableCount(I)V

    .line 2229
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    if-nez v1, :cond_8a

    .line 2230
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    .line 2232
    :cond_8a
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v4

    invoke-virtual {v1, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2233
    invoke-virtual {p0, p1, v2, v3, v3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    .line 2240
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/ViewState;

    if-eqz p1, :cond_a5

    .line 2242
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 2244
    :cond_a5
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p1}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetLatencyResponseProcessingMillis()V

    .line 2245
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 2246
    monitor-exit v0

    return-void

    :goto_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_6 .. :try_end_b2} :catchall_66

    throw p0
.end method

.method public onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 3

    .line 2866
    const-string p1, "AutofillSession"

    const-string/jumbo v0, "removing session because service died"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2868
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    .line 2869
    monitor-exit p1

    return-void

    :catchall_10
    move-exception p0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw p0
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 244
    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method

.method public onShown(II)V
    .registers 12

    .line 2967
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2968
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetDisplayPresentationType(I)V

    .line 2969
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4f

    .line 2976
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeIncrementCountShown()V

    .line 2978
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mLoggedInlineDatasetShown:Z

    if-nez v1, :cond_4c

    .line 2981
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2986
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v6

    move v4, p1

    .line 2981
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;ILandroid/view/autofill/AutofillId;Z)V

    .line 2987
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShown(): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :catchall_4a
    move-exception v0

    goto :goto_90

    .line 2989
    :cond_4c
    :goto_4c
    iput-boolean v8, p0, Lcom/android/server/autofill/Session;->mLoggedInlineDatasetShown:Z

    goto :goto_8e

    .line 2991
    :cond_4f
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logWhenDatasetShown(I)V

    .line 2993
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSuggestionPresentedTimestampMs()V

    .line 2994
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-object v2, v1

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    move-object v4, v2

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    move-object v5, v4

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2999
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v0

    move-object v3, v5

    move v5, v0

    move-object v0, v3

    move v3, p1

    .line 2994
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;ILandroid/view/autofill/AutofillId;Z)V

    .line 3000
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShown(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    :goto_8e
    monitor-exit v7

    return-void

    :goto_90
    monitor-exit v7
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_4a

    throw v0
.end method

.method public onSwitchInputMethodLocked()V
    .registers 3

    .line 680
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_22

    .line 683
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->shouldResetSessionStateOnInputMethodSwitch()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 686
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    const/4 v0, 0x0

    .line 688
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 691
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 692
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    :cond_22
    :goto_22
    return-void
.end method

.method public final processNullResponseLocked(II)V
    .registers 6

    .line 6369
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    .line 6371
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    const v1, 0x1040190

    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 6374
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v0

    .line 6377
    const-string v1, "AutofillSession"

    if-eqz v0, :cond_23

    .line 6378
    invoke-virtual {v0}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object p1

    const/4 v0, 0x1

    .line 6379
    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_39

    .line 6381
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNullResponseLocked(): no context for req "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 6385
    :goto_39
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetAvailableCount(I)V

    .line 6386
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetLatencyResponseProcessingMillis()V

    .line 6387
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 6388
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 6392
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez v0, :cond_84

    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_84

    .line 6394
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_7c

    .line 6395
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canceling session "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null and it cannot be augmented. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    const/4 p2, 0x2

    .line 6404
    invoke-virtual {p0, p2, p1}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 6405
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    :cond_84
    and-int/lit8 p2, p2, 0x4

    .line 6407
    const-string/jumbo v0, "keeping session "

    if-eqz p2, :cond_b3

    .line 6408
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_ab

    .line 6409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null and augmented service is disabled for password fields. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6418
    :cond_ab
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    goto :goto_d3

    .line 6420
    :cond_b3
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_d3

    .line 6421
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null but it can be augmented. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6430
    :cond_d3
    :goto_d3
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 6432
    :try_start_d5
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/16 p1, 0x20

    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_d5 .. :try_end_dc} :catch_dd

    return-void

    :catch_dd
    move-exception p0

    .line 6434
    const-string p1, "Error setting client to autofill-only"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .registers 9

    .line 6787
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 6789
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const-string v1, "AutofillSession"

    if-nez v0, :cond_17

    .line 6790
    const-string v0, "Service did not request to wait for delayed fill response."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6791
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 6794
    :cond_17
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    .line 6795
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_56

    .line 6796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processResponseLocked(): mCurrentViewId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reqId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",newClientState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6810
    :cond_56
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x2

    if-nez v1, :cond_62

    .line 6814
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 6816
    :cond_62
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_6b

    move-object v1, p2

    goto :goto_6f

    .line 6818
    :cond_6b
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v1

    :goto_6f
    invoke-virtual {p0, v1, v0}, Lcom/android/server/autofill/Session;->setClientState(Landroid/os/Bundle;I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_81

    .line 6821
    const-string/jumbo v3, "webview_requested_credential"

    .line 6823
    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_81

    move p2, v0

    goto :goto_82

    :cond_81
    move p2, v1

    .line 6824
    :goto_82
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    .line 6826
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v4, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetWebviewRequestedCredential(Z)V

    .line 6827
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    sget-object v4, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFieldClassificationRequestId(I)V

    .line 6828
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAvailableCount(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    .line 6829
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p2, v3}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetDatasetsCountAfterPotentialPccFiltering(Ljava/util/List;)V

    .line 6831
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    .line 6836
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateFillDialogTriggerIdsLocked()V

    .line 6837
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 6838
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez p1, :cond_b0

    return-void

    .line 6843
    :cond_b0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    .line 6844
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    return-void
.end method

.method public final processResponseLockedForPcc(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .registers 6

    .line 2092
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2093
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getEffectiveFillResponse(Landroid/service/autofill/FillResponse;)Landroid/service/autofill/FillResponse;

    move-result-object p1

    .line 2094
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->isEmptyResponse(Landroid/service/autofill/FillResponse;)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz p1, :cond_16

    .line 2096
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p1

    goto :goto_17

    :catchall_14
    move-exception p0

    goto :goto_21

    :cond_16
    const/4 p1, 0x0

    :goto_17
    invoke-virtual {p0, p1, p3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 2097
    monitor-exit v0

    return-void

    .line 2102
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 2103
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_14

    throw p0
.end method

.method public final registerDelayedFillBroadcastLocked()V
    .registers 4

    .line 1222
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    if-nez v0, :cond_1d

    .line 1223
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "registerDelayedFillBroadcastLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.service.autofill.action.DELAYED_FILL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1225
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1226
    iput-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    :cond_1d
    return-void
.end method

.method public final removeFromService()V
    .registers 2

    .line 7974
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7975
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 7976
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public removeFromServiceLocked()V
    .registers 4

    .line 7985
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFromServiceLocked("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7986
    :cond_27
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_47

    .line 7987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#removeFromServiceLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7994
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 7995
    const-string/jumbo p0, "removeFromServiceLocked() ignored, waiting for pending save ui"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7999
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 8000
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeSessionLocked(I)V

    if-eqz v0, :cond_64

    .line 8002
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    .line 8004
    :cond_64
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    if-eqz v0, :cond_6b

    .line 8005
    invoke-virtual {v0}, Lcom/android/server/autofill/SecondaryProviderHandler;->destroy()V

    :cond_6b
    const/4 v0, 0x3

    .line 8007
    iput v0, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    return-void
.end method

.method public final replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x1

    .line 6356
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    .line 6362
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    const/4 p1, 0x0

    .line 6364
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/autofill/Session;->processResponseLockedForPcc(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final requestAssistStructureForPccLocked(I)V
    .registers 9

    .line 1616
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v0}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$mshouldTriggerRequest(Lcom/android/server/autofill/Session$ClassificationState;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_7d

    .line 1617
    :cond_9
    sget-object v0, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    .line 1618
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v0}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$mupdatePendingRequest(Lcom/android/server/autofill/Session$ClassificationState;)V

    .line 1623
    :cond_16
    sget-object v0, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_16

    .line 1626
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v2, "AutofillSession"

    if-eqz v1, :cond_40

    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request id is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", requesting assist structure for pcc"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_40
    :try_start_40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1632
    const-string v3, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1633
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4e} :catch_7d

    .line 1635
    :try_start_4e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mPccAssistReceiver:Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 1636
    invoke-interface {v0, v5, v1, v6, p1}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result p1

    if-nez p1, :cond_75

    .line 1638
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to request autofill data for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_4e .. :try_end_72} :catchall_73

    goto :goto_75

    :catchall_73
    move-exception p0

    goto :goto_79

    .line 1641
    :cond_75
    :goto_75
    :try_start_75
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_79
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1642
    throw p0
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7d} :catch_7d

    :catch_7d
    :goto_7d
    return-void
.end method

.method public final requestAssistStructureLocked(II)V
    .registers 8

    .line 1650
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1651
    const-string v1, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1652
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_3f

    .line 1654
    :try_start_e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 1655
    invoke-interface {p1, v3, v0, v4, p2}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result p1

    if-nez p1, :cond_37

    .line 1657
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to request autofill data for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_35

    goto :goto_37

    :catchall_35
    move-exception p0

    goto :goto_3b

    .line 1660
    :cond_37
    :goto_37
    :try_start_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1661
    throw p0
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3f} :catch_3f

    :catch_3f
    return-void
.end method

.method public requestFallbackFromFillDialog()V
    .registers 5

    .line 3152
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 3153
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3154
    :try_start_6
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_e

    .line 3155
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    goto :goto_31

    .line 3157
    :cond_e
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string v2, "fallback from fill dialog"

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    .line 3158
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->startNewEventForPresentationStatsEventLogger()V

    .line 3159
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 3160
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getResponse()Landroid/service/autofill/FillResponse;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/autofill/Session;->logPresentationStatsOnViewEnteredLocked(Landroid/service/autofill/FillResponse;Z)V

    .line 3161
    iget p0, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 3162
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_c

    throw p0
.end method

.method public requestHideFillUi(Landroid/view/autofill/AutofillId;)V
    .registers 6

    .line 3073
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3077
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception p0

    goto :goto_21

    :catch_d
    move-exception v1

    .line 3079
    :try_start_e
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to hide fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3082
    :goto_15
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 3083
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->markShownCountAsResettable()V

    .line 3084
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_b

    throw p0
.end method

.method public requestHideFillUiWhenDestroyed(Landroid/view/autofill/AutofillId;)V
    .registers 6

    .line 3089
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3093
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestHideFillUiWhenDestroyed(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception p0

    goto :goto_1c

    :catch_d
    move-exception v1

    .line 3095
    :try_start_e
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to hide fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3098
    :goto_15
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 3099
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_b

    throw p0
.end method

.method public final requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)Ljava/util/Optional;
    .registers 12

    .line 1463
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->shouldRequestSecondaryProvider(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1465
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getSecondaryResponse()Landroid/service/autofill/FillResponse;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getResponse()Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1466
    :goto_f
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {v2}, Lcom/android/server/autofill/FillRequestEventLogger;->startLogForNewRequest()V

    .line 1467
    iget v2, p0, Lcom/android/server/autofill/Session;->mRequestCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 1468
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget v4, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetAppPackageUid(I)V

    .line 1469
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget v4, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetFlags(I)V

    .line 1470
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    if-eqz v2, :cond_33

    .line 1471
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    goto :goto_43

    :cond_33
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_3d

    .line 1474
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    goto :goto_43

    .line 1477
    :cond_3d
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    :goto_43
    if-eqz v1, :cond_4e

    .line 1481
    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    .line 1486
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    .line 1489
    :cond_4e
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1490
    iput v3, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 1491
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    const-string v4, ", flags="

    const-string v5, "AutofillSession"

    if-nez v1, :cond_175

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v1, :cond_68

    goto/16 :goto_175

    .line 1515
    :cond_68
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 1516
    sget-object p2, Lcom/android/server/autofill/Session;->mRequestId:Lcom/android/server/autofill/RequestId;

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/RequestId;->nextId(Z)I

    move-result p2

    .line 1519
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/2addr v0, v3

    const/16 v1, 0x38b

    .line 1521
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v6, 0x5ae

    .line 1522
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    if-eqz p3, :cond_93

    const/16 v6, 0x5ac

    .line 1524
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1526
    :cond_93
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1528
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_be

    .line 1529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting structure for request #"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,requestId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_be
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestId(I)V

    .line 1540
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetAutofillServiceUid(I)V

    .line 1541
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetAutofillServiceUid(I)V

    .line 1542
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->maybeSetAutofillServiceUid(I)V

    .line 1543
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1544
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/autofill/Session;->userId:I

    invoke-virtual {v0, v1, v4}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetInlineSuggestionHostUid(Landroid/content/Context;I)V

    .line 1546
    :cond_ef
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetIsFillDialogEligible(Z)V

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 1555
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_11d

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    invoke-static {v0}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmHintsToAutofillIdMap(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_11d

    .line 1557
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_118

    .line 1558
    const-string/jumbo v0, "triggering field classification"

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_118
    or-int/lit16 v0, p3, 0x200

    .line 1560
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->requestAssistStructureForPccLocked(I)V

    .line 1566
    :cond_11d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1567
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    .line 1568
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-eqz v1, :cond_15d

    if-eqz v0, :cond_15d

    .line 1570
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->isViewFocusedLocked(I)Z

    move-result v1

    if-nez v1, :cond_139

    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->isRequestSupportFillDialog(I)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 1571
    :cond_139
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 1572
    invoke-virtual {v1, p1, v3}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;

    move-result-object v1

    if-eqz v1, :cond_162

    .line 1576
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1578
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1580
    new-instance v4, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;

    invoke-direct {v4, v3, p2, v1, v2}, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;-><init>(Ljava/lang/ref/WeakReference;ILjava/util/function/Consumer;Landroid/view/autofill/AutofillId;)V

    .line 1586
    new-instance v1, Landroid/os/RemoteCallback;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 1590
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    const/high16 v0, 0x10000

    .line 1592
    invoke-virtual {p1, v0}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_162

    .line 1595
    :cond_15d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;

    .line 1599
    :cond_162
    :goto_162
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/Session;->requestAssistStructureLocked(II)V

    .line 1601
    iget-boolean p1, p0, Lcom/android/server/autofill/Session;->mImproveFillDialogEnabled:Z

    if-eqz p1, :cond_16c

    .line 1604
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->enableFillDialog()V

    .line 1607
    :cond_16c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 1492
    :cond_175
    :goto_175
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_19f

    .line 1493
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestNewFillResponse(): triggering augmented autofill instead (mForAugmentedAutofillOnly="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :cond_19f
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p1, v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1503
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p1, v3}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestId(I)V

    .line 1504
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p1, v3}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetIsAugmented(Z)V

    .line 1506
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1507
    invoke-virtual {p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAugmentedAutofillServiceUidLocked()I

    move-result p2

    .line 1506
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetAutofillServiceUid(I)V

    .line 1511
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 1512
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Ljava/util/Optional;
    .registers 9

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    .line 4964
    const-string v2, "AutofillSession"

    if-eqz v0, :cond_33

    .line 4965
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0, v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 4966
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Re-starting session on view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and flags "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/16 p1, 0x100

    .line 4967
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 4972
    :cond_33
    invoke-virtual {p0, p1, p3}, Lcom/android/server/autofill/Session;->shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;I)Z

    move-result v0

    const-string v3, ": "

    if-eqz v0, :cond_69

    .line 4973
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_5d

    .line 4974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting partition or augmented request for view id "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4979
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4974
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    :cond_5d
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p1, v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    const/16 p1, 0x20

    .line 4985
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 4989
    :cond_69
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_8b

    .line 4990
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not starting new partition for view "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4995
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4990
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4997
    :cond_8b
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)I
    .registers 15

    .line 5791
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->isFillDialogUiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 5795
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_13

    const-string p0, "AutofillSession"

    const-string/jumbo p1, "requestShowFillDialog(): fill dialog is disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v1

    .line 5799
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mImproveFillDialogEnabled:Z

    if-nez v0, :cond_32

    and-int/lit16 v0, p4, 0x80

    if-eqz v0, :cond_29

    .line 5802
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_28

    const-string p0, "AutofillSession"

    const-string/jumbo p1, "requestShowFillDialog(): IME is showing"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return v1

    .line 5806
    :cond_29
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->isImeShowing()Z

    move-result v0

    if-eqz v0, :cond_32

    return v1

    .line 5813
    :cond_32
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5814
    :try_start_35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5815
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogReadyToShowMs(J)V

    .line 5817
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    if-eqz v4, :cond_117

    .line 5818
    invoke-static {v4, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    goto/16 :goto_117

    .line 5826
    :cond_4a
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mImproveFillDialogEnabled:Z

    if-eqz v4, :cond_111

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillInlineSessionController;->isImeShowing()Z

    move-result v4

    if-eqz v4, :cond_111

    .line 5827
    iget-wide v4, p0, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    sub-long v4, v2, v4

    .line 5828
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_9b

    .line 5829
    const-string v6, "AutofillSession"

    const-string v7, "IME is showing. Checking for elapsed time "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5830
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IME is showing. Timestamps start: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " current: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mFillDialogTimeoutMs: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/autofill/Session;->mFillDialogTimeoutMs:J

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    :catchall_98
    move-exception p0

    goto/16 :goto_12a

    .line 5844
    :cond_9b
    :goto_9b
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mWaitForImeAnimation:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_b5

    .line 5847
    const-string v1, "AutofillSession"

    const-string v2, "Waiting for ime animation to complete before showing fill dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5848
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    .line 5850
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->createFillDialogEvalRunnable(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mFillDialogRunnable:Ljava/lang/Runnable;

    .line 5852
    monitor-exit v0

    return v5

    .line 5857
    :cond_b5
    iget-wide v6, p0, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    iget-wide v8, p0, Lcom/android/server/autofill/Session;->mImeAnimationFinishTimeMs:J

    .line 5858
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 5859
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-wide v6, p0, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    iget-wide v8, p0, Lcom/android/server/autofill/Session;->mImeAnimationFinishTimeMs:J

    .line 5860
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 5859
    invoke-virtual {v4, v6, v7}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetImeAnimationFinishMs(J)V

    .line 5861
    iget-wide v6, p0, Lcom/android/server/autofill/Session;->mFillDialogTimeoutMs:J

    cmp-long v4, v2, v6

    if-ltz v4, :cond_f7

    .line 5862
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fill dialog not shown since IME has been up for more time than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/server/autofill/Session;->mFillDialogTimeoutMs:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5864
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    .line 5866
    monitor-exit v0

    return v1

    .line 5867
    :cond_f7
    iget-wide v6, p0, Lcom/android/server/autofill/Session;->mFillDialogMinWaitAfterImeAnimationMs:J

    cmp-long v1, v2, v6

    if-gez v1, :cond_111

    .line 5869
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->createFillDialogEvalRunnable(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object p1

    .line 5871
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    iget-wide p3, p0, Lcom/android/server/autofill/Session;->mFillDialogMinWaitAfterImeAnimationMs:J

    sub-long/2addr p3, v2

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5873
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    .line 5875
    monitor-exit v0

    return v5

    .line 5878
    :cond_111
    monitor-exit v0
    :try_end_112
    .catchall {:try_start_35 .. :try_end_112} :catchall_98

    .line 5880
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->showFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 5820
    :cond_117
    :goto_117
    :try_start_117
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_122

    const-string p1, "AutofillSession"

    const-string p2, "Last fill dialog triggered ids are changed."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5821
    :cond_122
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    .line 5823
    monitor-exit v0

    return v1

    .line 5878
    :goto_12a
    monitor-exit v0
    :try_end_12b
    .catchall {:try_start_117 .. :try_end_12b} :catchall_98

    throw p0
.end method

.method public requestShowFillUi(Landroid/view/autofill/AutofillId;IILandroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 14

    .line 3009
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3010
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_27

    .line 3011
    const-string p0, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#requestShowFillUi() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " destroyed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    monitor-exit v1

    return-void

    :catchall_24
    move-exception v0

    move-object p0, v0

    goto :goto_7d

    .line 3018
    :cond_27
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_24

    if-eqz v0, :cond_51

    .line 3020
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 3021
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    .line 3022
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getVirtualBounds()Landroid/graphics/Rect;

    move-result-object v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 3021
    invoke-interface/range {v2 .. v8}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_46} :catch_47
    .catchall {:try_start_2f .. :try_end_46} :catchall_24

    goto :goto_7b

    :catch_47
    move-exception v0

    move-object p0, v0

    .line 3024
    :try_start_49
    const-string p1, "AutofillSession"

    const-string p2, "Error requesting to show fill UI"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    :cond_51
    move-object v4, p1

    .line 3027
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_7b

    .line 3028
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Do not show full UI on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " as it is not the current view ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") anymore"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    :cond_7b
    :goto_7b
    monitor-exit v1

    return-void

    :goto_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_49 .. :try_end_7e} :catchall_24

    throw p0
.end method

.method public final requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z
    .registers 10

    .line 5987
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    const/4 v0, 0x0

    if-nez v2, :cond_e

    .line 5988
    const-string p0, "AutofillSession"

    const-string/jumbo p1, "requestShowInlineSuggestionsLocked(): no view currently focused"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5993
    :cond_e
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 5994
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->getInlineSuggestionsRequestLocked()Ljava/util/Optional;

    move-result-object v1

    .line 5995
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_22

    .line 5996
    const-string p0, "AutofillSession"

    const-string p1, "InlineSuggestionsRequest unavailable"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 6000
    :cond_22
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 6001
    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v4

    if-nez v4, :cond_32

    .line 6003
    const-string p0, "AutofillSession"

    const-string p1, "RemoteInlineSuggestionRenderService not found"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 6009
    :cond_32
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6010
    :try_start_35
    iput-boolean v0, p0, Lcom/android/server/autofill/Session;->mLoggedInlineDatasetShown:Z

    .line 6011
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_64

    .line 6013
    new-instance v0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;

    .line 6015
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget v5, p0, Lcom/android/server/autofill/Session;->userId:I

    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;-><init>(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)V

    .line 6021
    new-instance p2, Lcom/android/server/autofill/Session$3;

    invoke-direct {p2, p0, p1, v2}, Lcom/android/server/autofill/Session$3;-><init>(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 6063
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerService;->getMaxInputLengthForAutofill()I

    move-result v1

    .line 6022
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/autofill/ui/InlineFillUi;->forAutofill(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p1

    .line 6064
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result p0

    return p0

    :catchall_64
    move-exception v0

    move-object p0, v0

    .line 6011
    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_64

    throw p0
.end method

.method public requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .registers 3

    .line 3139
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 3142
    :try_start_6
    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 3144
    const-string p1, "AutofillSession"

    const-string v0, "Error sending input show up notification"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return-void
.end method

.method public final resetImeAnimationState()V
    .registers 4

    .line 5579
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 5580
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mWaitForImeAnimation:Z

    const-wide/16 v1, -0x1

    .line 5581
    iput-wide v1, p0, Lcom/android/server/autofill/Session;->mImeAnimationStartTimeMs:J

    .line 5582
    iput-wide v1, p0, Lcom/android/server/autofill/Session;->mImeAnimationFinishTimeMs:J

    .line 5583
    iput-wide v1, p0, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    .line 5584
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public save()V
    .registers 5

    .line 2938
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2939
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_28

    .line 2940
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#save() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    goto :goto_3f

    .line 2943
    :cond_28
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetLatencySaveRequestMillis()V

    .line 2944
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_26

    .line 2945
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda10;-><init>()V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2946
    invoke-static {v1, v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2945
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2944
    :goto_3f
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_26

    throw p0
.end method

.method public sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;Landroid/view/autofill/AutofillId;)V
    .registers 8

    .line 7658
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7659
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_29

    .line 7660
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#sendCredentialManagerResponseToApp() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7666
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception p0

    goto/16 :goto_c4

    .line 7669
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 7670
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerService;->getIsFillFieldsFromCurrentSessionOnly()Z

    move-result v2

    if-eqz v2, :cond_72

    if-eqz v1, :cond_72

    iget-object v1, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 7672
    invoke-virtual {v1}, Landroid/view/autofill/AutofillId;->getSessionId()I

    move-result v1

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    if-eq v1, v2, :cond_72

    .line 7673
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_72

    .line 7674
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping sending credential response to view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as it isn\'t part of the current session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catch_70
    move-exception p0

    goto :goto_ac

    :cond_72
    :goto_72
    const/4 v1, 0x0

    if-eqz p2, :cond_8f

    .line 7683
    invoke-virtual {p3}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 7684
    invoke-virtual {p0, p3, v1, p2}, Lcom/android/server/autofill/Session;->sendResponseToViewNode(Landroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;)V

    goto :goto_c2

    .line 7686
    :cond_7f
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 7687
    invoke-virtual {p2}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 7686
    invoke-interface {p1, p0, p3, v1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    :cond_8f
    if-eqz p1, :cond_a3

    .line 7690
    invoke-virtual {p3}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result p2

    if-eqz p2, :cond_9b

    .line 7691
    invoke-virtual {p0, p3, p1, v1}, Lcom/android/server/autofill/Session;->sendResponseToViewNode(Landroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;)V

    goto :goto_c2

    .line 7693
    :cond_9b
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {p2, p0, p3, p1}, Landroid/view/autofill/IAutoFillManagerClient;->onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    goto :goto_c2

    .line 7696
    :cond_a3
    const-string p0, "AutofillSession"

    const-string/jumbo p1, "sendCredentialManagerResponseToApp called with null responseand exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_ab} :catch_70
    .catchall {:try_start_29 .. :try_end_ab} :catchall_26

    goto :goto_c2

    .line 7702
    :goto_ac
    :try_start_ac
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error sending credential response to activity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7704
    :goto_c2
    monitor-exit v0

    return-void

    :goto_c4
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_ac .. :try_end_c5} :catchall_26

    throw p0
.end method

.method public final sendResponseToViewNode(Landroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;)V
    .registers 4

    .line 7710
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getViewNodeFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 7711
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getPendingCredentialCallback()Landroid/os/ResultReceiver;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 7712
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_21

    .line 7714
    const-string p3, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7716
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getPendingCredentialCallback()Landroid/os/ResultReceiver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_21
    if-eqz p3, :cond_3c

    .line 7720
    invoke-virtual {p3}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    .line 7718
    const-string p3, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7721
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getPendingCredentialCallback()Landroid/os/ResultReceiver;

    move-result-object p0

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3c
    return-void

    .line 7724
    :cond_3d
    const-string p0, "AutofillSession"

    const-string p1, "View node not found after GetCredentialResponse"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAuthenticationResultForAugmentedAutofillLocked(Landroid/os/Bundle;I)V
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_f

    .line 3471
    :cond_5
    const-string v1, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    const-class v2, Landroid/service/autofill/Dataset;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 3474
    :goto_f
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v3, "AutofillSession"

    if-eqz v2, :cond_3b

    .line 3475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auth result for augmented autofill: sessionId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", authId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", dataset="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    const/4 p2, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_54

    .line 3485
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_54

    .line 3486
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    goto :goto_55

    :cond_54
    move-object v4, v0

    :goto_55
    if-eqz v1, :cond_6c

    .line 3489
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v2, :cond_6c

    .line 3490
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/autofill/AutofillValue;

    goto :goto_6d

    :cond_6c
    move-object p2, v0

    :goto_6d
    if-eqz v1, :cond_73

    .line 3492
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    move-result-object v0

    :cond_73
    if-eqz v4, :cond_126

    if-nez p2, :cond_7b

    if-nez v0, :cond_7b

    goto/16 :goto_126

    .line 3506
    :cond_7b
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3507
    invoke-virtual {v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceIfCreatedLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v5

    if-nez v5, :cond_91

    .line 3509
    const-string p1, "Can\'t fill after auth: RemoteAugmentedAutofillService is null"

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastAugmentedAutofillResponse()V

    .line 3511
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    return-void

    .line 3520
    :cond_91
    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4, v6}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 3521
    iput-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3524
    const-string v6, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 3525
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    if-eqz v0, :cond_b8

    .line 3530
    invoke-virtual {v5}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getAutofillUriGrantsManager()Lcom/android/server/autofill/AutofillUriGrantsManager;

    move-result-object p1

    .line 3531
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    iget v7, p0, Lcom/android/server/autofill/Session;->userId:I

    invoke-virtual {p1, v5, v6, v7, v0}, Lcom/android/server/autofill/AutofillUriGrantsManager;->grantUriPermissions(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/content/ClipData;)V

    .line 3535
    :cond_b8
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v5, ", content="

    const-string v6, ", value="

    if-eqz p1, :cond_e0

    .line 3536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filling after auth: fieldId="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    if-eqz v0, :cond_ec

    .line 3547
    :try_start_e2
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {p1, v1, v4, v0}, Landroid/view/autofill/IAutoFillManagerClient;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    goto :goto_11c

    :catch_ea
    move-exception p1

    goto :goto_fc

    .line 3549
    :cond_ec
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v7, v8, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_fb} :catch_ea

    goto :goto_11c

    .line 3552
    :goto_fc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error filling after auth: fieldId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3564
    :goto_11c
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-static {v4}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    return-void

    .line 3494
    :cond_126
    :goto_126
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_12f

    .line 3495
    const-string p1, "Rejecting empty/invalid auth result"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    :cond_12f
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastAugmentedAutofillResponse()V

    .line 3498
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    return-void
.end method

.method public setAuthenticationResultLocked(Landroid/os/Bundle;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3203
    iget-boolean v3, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v4, "AutofillSession"

    if-eqz v3, :cond_28

    .line 3204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#setAuthenticationResultLocked() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " destroyed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3211
    :cond_28
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_49

    .line 3212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAuthenticationResultLocked(): id= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", data="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    :cond_49
    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->getRequestIdFromAuthenticationId(I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5b

    .line 3218
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/autofill/Session;->setAuthenticationResultForAugmentedAutofillLocked(Landroid/os/Bundle;I)V

    .line 3220
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string v1, "authentication - augmented"

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    return-void

    .line 3223
    :cond_5b
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v7, 0x2

    if-nez v6, :cond_8a

    .line 3226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAuthenticationResultLocked("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): no responses"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1, v7}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 3229
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string v2, "authentication - no response"

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    .line 3230
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    .line 3234
    :cond_8a
    invoke-static {v3}, Lcom/android/server/autofill/RequestId;->isSecondaryProvider(I)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 3235
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/FillResponse;

    goto :goto_a1

    .line 3236
    :cond_99
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/FillResponse;

    :goto_a1
    if-eqz v6, :cond_a5

    if-nez v1, :cond_a8

    :cond_a5
    move v3, v7

    goto/16 :goto_261

    .line 3246
    :cond_a8
    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->getDatasetIdFromAuthenticationId(I)I

    move-result v8

    const v9, 0xffff

    const/4 v10, 0x0

    if-eq v8, v9, :cond_e8

    .line 3250
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/service/autofill/Dataset;

    if-nez v11, :cond_e9

    .line 3252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no dataset with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on fill response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1, v7}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 3255
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string v2, "authentication - no datasets"

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    .line 3256
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    :cond_e8
    move-object v11, v10

    .line 3262
    :cond_e9
    iget-object v12, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 3264
    const-string v12, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .line 3265
    const-string v14, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    const-class v15, Landroid/credentials/GetCredentialException;

    .line 3266
    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Landroid/credentials/GetCredentialException;

    .line 3270
    const-string v15, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 3271
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v16, :cond_12e

    .line 3272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAuthenticationResultLocked(): result="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", clientState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", authenticationId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12e
    if-eqz v14, :cond_160

    .line 3283
    invoke-virtual {v14}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v9, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_160

    if-eqz v11, :cond_1be

    .line 3284
    invoke-virtual {v11}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_1be

    .line 3285
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_152

    .line 3286
    const-string/jumbo v1, "setAuthenticationResultLocked(): result returns withCredential Manager Exception"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    :cond_152
    invoke-virtual {v11}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 3292
    invoke-virtual {v0, v10, v14, v1}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;Landroid/view/autofill/AutofillId;)V

    return-void

    .line 3298
    :cond_160
    instance-of v7, v12, Landroid/service/autofill/FillResponse;

    if-eqz v7, :cond_17e

    .line 3299
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_16e

    .line 3300
    const-string/jumbo v1, "setAuthenticationResultLocked(): received FillResponse from authentication flow"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16e
    const/16 v1, 0x390

    .line 3305
    invoke-virtual {v0, v3, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 3306
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 3308
    check-cast v12, Landroid/service/autofill/FillResponse;

    invoke-virtual {v0, v6, v12, v15}, Lcom/android/server/autofill/Session;->replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V

    return-void

    .line 3309
    :cond_17e
    instance-of v7, v12, Landroid/credentials/GetCredentialResponse;

    if-eqz v7, :cond_1bf

    .line 3310
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_18b

    .line 3311
    const-string v1, "Received GetCredentialResponse from authentication flow"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    :cond_18b
    check-cast v12, Landroid/credentials/GetCredentialResponse;

    if-eqz v11, :cond_1be

    .line 3315
    invoke-virtual {v11}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_1be

    .line 3316
    invoke-virtual {v11}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 3317
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1bb

    .line 3318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received GetCredentialResponse from authentication flow,for autofillId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    :cond_1bb
    invoke-virtual {v0, v12, v10, v1}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;Landroid/view/autofill/AutofillId;)V

    :cond_1be
    return-void

    .line 3338
    :cond_1bf
    instance-of v7, v12, Landroid/service/autofill/Dataset;

    if-eqz v7, :cond_23a

    .line 3339
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_1cd

    .line 3340
    const-string/jumbo v7, "setAuthenticationResultLocked(): received Dataset from authentication flow"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cd
    const v7, 0xffff

    if-eq v8, v7, :cond_210

    const/16 v2, 0x466

    .line 3346
    invoke-virtual {v0, v3, v2}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 3348
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v2, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    if-eqz v15, :cond_1ea

    .line 3351
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1e7

    const-string v2, "Updating client state from auth dataset"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    :cond_1e7
    invoke-virtual {v0, v15, v3}, Lcom/android/server/autofill/Session;->setClientState(Landroid/os/Bundle;I)V

    .line 3354
    :cond_1ea
    check-cast v12, Landroid/service/autofill/Dataset;

    invoke-virtual {v0, v12}, Lcom/android/server/autofill/Session;->getEffectiveDatasetForAuthentication(Landroid/service/autofill/Dataset;)Landroid/service/autofill/Dataset;

    move-result-object v2

    .line 3355
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    .line 3356
    invoke-static {v4, v1}, Lcom/android/server/autofill/Session;->isAuthResultDatasetEphemeral(Landroid/service/autofill/Dataset;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_207

    .line 3357
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_207
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, v3

    move-object v3, v2

    move v2, v8

    .line 3359
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;ZI)V

    return-void

    :cond_210
    move v1, v3

    move v3, v8

    .line 3361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid index ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for authentication id "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x467

    .line 3367
    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 3369
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    return-void

    :cond_23a
    move v1, v3

    if-eqz v12, :cond_252

    .line 3374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "service returned invalid auth type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_252
    const/16 v2, 0x468

    .line 3376
    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 3377
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 3379
    invoke-virtual {v0, v1, v13}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    return-void

    .line 3238
    :goto_261
    const-string/jumbo v1, "no authenticated response"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 3241
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string v2, "authentication - bad response"

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    .line 3242
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void
.end method

.method public setAutofillFailureLocked(Ljava/util/List;Z)V
    .registers 9

    .line 6304
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 6305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total views that failed to populate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v0, 0x0

    .line 6307
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_85

    .line 6308
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 6309
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    if-nez v3, :cond_51

    .line 6311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAutofillFailure(): no view for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    :cond_51
    const/4 v4, 0x4

    .line 6314
    invoke-virtual {v3, v4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 6315
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    or-int/lit16 v4, v4, 0x400

    .line 6316
    invoke-virtual {v3, v4}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 6317
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_82

    .line 6318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed state of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 6321
    :cond_85
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetViewFillFailureCounts(Ljava/util/List;Z)V

    return-void
.end method

.method public setAutofillIdsAttemptedForRefillLocked(Ljava/util/List;)V
    .registers 2

    .line 7815
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeUpdateViewFillablesForRefillAttempt(Ljava/util/List;)V

    return-void
.end method

.method public final setClientLocked(Landroid/os/IBinder;)V
    .registers 4

    .line 1868
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 1869
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 1870
    new-instance p1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 1887
    :try_start_10
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {p1}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not set binder death listener on autofill client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutofillSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1890
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public final setClientState(Landroid/os/Bundle;I)V
    .registers 3

    .line 6773
    invoke-static {p2}, Lcom/android/server/autofill/RequestId;->isSecondaryProvider(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 6775
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClientStateForSecondary:Landroid/os/Bundle;

    return-void

    .line 6778
    :cond_9
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    return-void
.end method

.method public final setFillDialogDisabled()V
    .registers 4

    .line 5769
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    .line 5770
    const-string v0, "AutofillSession"

    const-string v1, "Disabling Fill Dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5772
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5773
    :try_start_e
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 5774
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    const/4 v0, 0x0

    .line 5775
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    return-void

    :catchall_1a
    move-exception p0

    .line 5774
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final setFillDialogDisabledAndStartInput()V
    .registers 3

    .line 5779
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->isFillDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5780
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 5782
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5783
    :try_start_10
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 5784
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 5785
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    return-void

    :catchall_17
    move-exception p0

    .line 5784
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0

    :cond_1a
    return-void
.end method

.method public setHasCallbackLocked(Z)V
    .registers 3

    .line 3569
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_22

    .line 3570
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call to Session#setHasCallbackLocked() rejected - session: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3577
    :cond_22
    iput-boolean p1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    return-void
.end method

.method public setLogViewEnteredIgnoredDuringAuth()V
    .registers 2

    .line 6345
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6346
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->notifyViewEnteredIgnoredDuringAuthCount()V

    .line 6347
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setNotifyNotExpiringResponseDuringAuth()V
    .registers 2

    .line 6338
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6339
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNotifyNotExpiringResponseDuringAuth()V

    .line 6340
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setViewAutofilledLocked(Landroid/view/autofill/AutofillId;)V
    .registers 4

    .line 6327
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1a

    .line 6328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View autofilled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6330
    :cond_1a
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getSessionId()I

    move-result v0

    if-nez v0, :cond_25

    .line 6331
    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, v0}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 6333
    :cond_25
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeAddSuccessId(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public final setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V
    .registers 16

    .line 6851
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 6852
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4e

    move v3, v2

    .line 6853
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4a

    .line 6854
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/service/autofill/Dataset;

    if-nez v7, :cond_3a

    .line 6856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring null dataset on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AutofillSession"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    move-object v6, p1

    move v8, p2

    move v9, p3

    move v10, p4

    goto :goto_42

    :cond_3a
    move-object v5, p0

    move-object v6, p1

    move v8, p2

    move v9, p3

    move v10, p4

    .line 6859
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V

    :goto_42
    add-int/lit8 v3, v3, 0x1

    move-object p0, v5

    move-object p1, v6

    move p2, v8

    move p3, v9

    move p4, v10

    goto :goto_f

    :cond_4a
    move-object v5, p0

    move-object v6, p1

    move v8, p2

    goto :goto_73

    :cond_4e
    move-object v5, p0

    move-object v6, p1

    move v8, p2

    move v9, p3

    move v10, p4

    .line 6861
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object p0

    if-eqz p0, :cond_73

    .line 6862
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object p0

    array-length p1, p0

    move p2, v2

    :goto_5f
    if-ge p2, p1, :cond_73

    aget-object p3, p0, p2

    .line 6863
    invoke-virtual {v5, p3, v8, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object p3

    if-nez v9, :cond_6d

    .line 6865
    invoke-virtual {p3, v6, v10}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;Z)V

    goto :goto_70

    .line 6867
    :cond_6d
    invoke-virtual {p3, v1, v10}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;Z)V

    :goto_70
    add-int/lit8 p2, p2, 0x1

    goto :goto_5f

    .line 6871
    :cond_73
    :goto_73
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object p0

    if-eqz p0, :cond_9d

    .line 6873
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object p1

    if-eqz p1, :cond_8b

    .line 6875
    array-length p2, p1

    move p3, v2

    :goto_81
    if-ge p3, p2, :cond_8b

    aget-object p4, p1, p3

    .line 6876
    invoke-virtual {v5, p4, v8, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 p3, p3, 0x1

    goto :goto_81

    .line 6879
    :cond_8b
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object p0

    if-eqz p0, :cond_9d

    .line 6881
    array-length p1, p0

    move p2, v2

    :goto_93
    if-ge p2, p1, :cond_9d

    aget-object p3, p0, p2

    .line 6882
    invoke-virtual {v5, p3, v8, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 p2, p2, 0x1

    goto :goto_93

    .line 6887
    :cond_9d
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object p0

    if-eqz p0, :cond_ae

    .line 6889
    array-length p1, p0

    :goto_a4
    if-ge v2, p1, :cond_ae

    aget-object p2, p0, v2

    .line 6890
    invoke-virtual {v5, p2, v8, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    :cond_ae
    return-void
.end method

.method public final setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V
    .registers 11

    .line 6903
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 6904
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 6905
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 6906
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 6907
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 6908
    invoke-virtual {p0, v3, p3, v4}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v3

    .line 6909
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 6911
    invoke-virtual {v3, v4}, Lcom/android/server/autofill/ViewState;->setDatasetId(Ljava/lang/String;)V

    :cond_28
    if-eqz p4, :cond_2f

    const/4 v4, 0x0

    .line 6914
    invoke-virtual {v3, v4, p5}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;Z)V

    goto :goto_34

    :cond_2f
    if-eqz p1, :cond_34

    .line 6916
    invoke-virtual {v3, p1, p5}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;Z)V

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_37
    return-void
.end method

.method public shouldAddEventToHistory()Z
    .registers 3

    .line 8132
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8133
    :try_start_3
    const-string/jumbo v1, "shouldAddEventToHistory(%s)"

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    .line 8134
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1c

    const/4 v0, 0x1

    if-nez p0, :cond_f

    return v0

    .line 8143
    :cond_f
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/autofill/RequestId;->isSecondaryProvider(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    return v0

    :catchall_1c
    move-exception p0

    .line 8134
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public shouldRequestSecondaryProvider(I)Z
    .registers 4

    .line 5074
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAutofillCredmanIntegrationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    if-nez v0, :cond_e

    goto :goto_1e

    .line 5077
    :cond_e
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    and-int/lit16 p0, p1, 0x800

    if-nez p0, :cond_18

    return v0

    :cond_18
    return v1

    :cond_19
    and-int/lit16 p0, p1, 0x800

    if-eqz p0, :cond_1e

    return v0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public final shouldResetSessionStateOnInputMethodSwitch()Z
    .registers 4

    .line 705
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 709
    :cond_a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    return v2

    .line 713
    :cond_14
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    if-eqz p0, :cond_29

    .line 715
    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_29

    return v2

    :cond_29
    return v1
.end method

.method public final shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;I)Z
    .registers 11

    .line 5008
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 5010
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->shouldRequestSecondaryProvider(I)Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    goto :goto_13

    :cond_11
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    :goto_13
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_24

    if-eqz v0, :cond_23

    .line 5013
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p0

    const/high16 p1, 0x10000

    and-int/2addr p0, p1

    if-nez p0, :cond_23

    return v1

    :cond_23
    return v2

    .line 5017
    :cond_24
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    const-string v3, "AutofillSession"

    if-eqz v0, :cond_38

    .line 5018
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_37

    .line 5019
    const-string p0, "Starting a new partition because the response has expired."

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return v1

    .line 5024
    :cond_38
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 5025
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result v4

    if-lt v0, v4, :cond_6d

    .line 5026
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not starting a new partition on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because session "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " reached maximum of "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5033
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5026
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6d
    move p0, v2

    :goto_6e
    if-ge p0, v0, :cond_cd

    .line 5038
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillResponse;

    .line 5040
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    return v2

    .line 5044
    :cond_81
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v4

    if-eqz v4, :cond_9c

    .line 5046
    invoke-virtual {v4}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9b

    .line 5047
    invoke-virtual {v4}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    :cond_9b
    return v2

    .line 5052
    :cond_9c
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_bf

    .line 5054
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    :goto_a7
    if-ge v6, v5, :cond_bf

    .line 5057
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/autofill/Dataset;

    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_bc

    .line 5059
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bc

    return v2

    :cond_bc
    add-int/lit8 v6, v6, 0x1

    goto :goto_a7

    .line 5065
    :cond_bf
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    return v2

    :cond_ca
    add-int/lit8 p0, p0, 0x1

    goto :goto_6e

    :cond_cd
    return v1
.end method

.method public final showFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;)V
    .registers 16

    .line 5900
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5901
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/autofill/Session;->getServiceIcon(Landroid/service/autofill/FillResponse;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 5902
    iget-object v10, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 5903
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_24

    .line 5905
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 5906
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v9, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    iget-object v11, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    move-object v7, p0

    move-object v2, p1

    move-object v1, p2

    move-object v3, p3

    .line 5905
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->showFillDialog(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZLcom/android/server/autofill/PresentationStatsEventLogger;Ljava/lang/Object;)V

    return-void

    :catchall_24
    move-exception v0

    .line 5903
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public showSaveLocked()Lcom/android/server/autofill/Session$SaveResult;
    .registers 19

    move-object/from16 v5, p0

    .line 4189
    iget-boolean v0, v5, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v14, 0x0

    if-eqz v0, :cond_36

    .line 4190
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#showSaveLocked() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 4194
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 4195
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v0, v14, v14, v14}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    :cond_36
    const/4 v0, 0x2

    .line 4200
    iput v0, v5, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 4201
    const-string/jumbo v1, "showSaveLocked(%s)"

    invoke-virtual {v5, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    if-nez v1, :cond_44

    const/4 v4, 0x0

    goto :goto_49

    .line 4202
    :cond_44
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v3

    move-object v4, v3

    .line 4207
    :goto_49
    iget-object v3, v5, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmScreenHasCredmanField(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v3

    const/16 v6, 0xa

    const/4 v15, 0x1

    if-eqz v3, :cond_6f

    .line 4208
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_5f

    .line 4209
    const-string v0, "AutofillSession"

    const-string v1, "Call to Session#showSaveLocked() rejected - there is credman field in screen"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    :cond_5f
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0, v6}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 4215
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 4216
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v0, v14, v15, v14}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    :cond_6f
    if-nez v4, :cond_a3

    .line 4233
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_93

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSaveLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): no saveInfo from service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    :cond_93
    iget-object v1, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 4235
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 4236
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v0, v14, v15, v15}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 4242
    :cond_a3
    invoke-virtual {v4}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v3

    const/4 v7, 0x4

    and-int/2addr v3, v7

    const/4 v8, 0x3

    if-eqz v3, :cond_de

    .line 4244
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_ce

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSaveLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): service asked to delay save"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    :cond_ce
    iget-object v1, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v1, v8}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 4246
    iget-object v1, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 4247
    new-instance v1, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v1, v14, v14, v0}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v1

    .line 4253
    :cond_de
    invoke-static {v4}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 4256
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 4258
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 4260
    invoke-virtual {v4}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_258

    move v11, v14

    move v12, v11

    move v13, v12

    .line 4267
    :goto_f5
    array-length v6, v10

    if-ge v11, v6, :cond_256

    .line 4268
    aget-object v6, v10, v11

    if-nez v6, :cond_119

    .line 4270
    const-string v6, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null autofill id on "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_232

    .line 4273
    :cond_119
    invoke-virtual {v9, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4274
    iget-object v2, v5, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    if-nez v2, :cond_13f

    .line 4276
    const-string v2, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showSaveLocked(): no ViewState for required "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25b

    .line 4281
    :cond_13f
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v8

    if-eqz v8, :cond_14b

    .line 4282
    invoke-virtual {v8}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_190

    .line 4286
    :cond_14b
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getCandidateSaveValue()Landroid/view/autofill/AutofillValue;

    move-result-object v8

    if-eqz v8, :cond_163

    .line 4287
    invoke-virtual {v8}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_163

    .line 4288
    sget-boolean v17, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v17, :cond_190

    .line 4289
    const-string v14, "AutofillSession"

    const-string v7, "current value is empty, using cached last non-empty value instead"

    invoke-static {v14, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_190

    .line 4298
    :cond_163
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v8

    if-eqz v8, :cond_23a

    .line 4300
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_190

    .line 4301
    const-string v7, "AutofillSession"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Value of required field "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " didn\'t change; using initial value ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ") instead"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    :cond_190
    :goto_190
    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v7

    if-nez v7, :cond_1b9

    .line 4323
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1b6

    .line 4324
    const-string v2, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "value of required field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed sanitization"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b6
    :goto_1b6
    const/4 v14, 0x0

    goto/16 :goto_25b

    .line 4329
    :cond_1b9
    invoke-virtual {v2, v7}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 4330
    invoke-virtual {v3, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4331
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 4333
    invoke-virtual {v7, v2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_232

    if-nez v2, :cond_203

    .line 4337
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v8

    if-eqz v8, :cond_1fb

    .line 4338
    invoke-virtual {v8, v7}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1fb

    .line 4339
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_1f9

    .line 4340
    const-string v8, "AutofillSession"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " is part of dataset but initial value didn\'t change: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f9
    const/4 v8, 0x0

    goto :goto_205

    .line 4350
    :cond_1fb
    iget-object v8, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetIsNewField(Z)V

    const/4 v8, 0x1

    goto :goto_205

    :cond_203
    const/4 v8, 0x1

    const/4 v13, 0x1

    :goto_205
    if-eqz v8, :cond_232

    .line 4356
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_231

    .line 4357
    const-string v8, "AutofillSession"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "found a change on required "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_231
    const/4 v12, 0x1

    :cond_232
    :goto_232
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_f5

    .line 4312
    :cond_23a
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1b6

    .line 4313
    const-string v2, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "empty value for required "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b6

    :cond_256
    :goto_256
    const/4 v14, 0x1

    goto :goto_25b

    :cond_258
    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_256

    .line 4372
    :goto_25b
    invoke-virtual {v4}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 4373
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_286

    .line 4374
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allRequiredAreNotEmpty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasOptional: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_27b

    const/4 v8, 0x1

    goto :goto_27c

    :cond_27b
    const/4 v8, 0x0

    :goto_27c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_286
    if-nez v14, :cond_296

    .line 4385
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 4386
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    const/4 v7, 0x3

    goto/16 :goto_39f

    :cond_296
    const/4 v6, 0x4

    if-eqz v2, :cond_390

    if-eqz v12, :cond_29d

    if-nez v13, :cond_390

    :cond_29d
    const/4 v7, 0x0

    .line 4395
    :goto_29e
    array-length v8, v2

    if-ge v7, v8, :cond_390

    .line 4396
    aget-object v8, v2, v7

    .line 4397
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4398
    iget-object v10, v5, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/autofill/ViewState;

    if-nez v10, :cond_2c9

    .line 4400
    const-string v10, "AutofillSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no ViewState for optional "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38b

    .line 4403
    :cond_2c9
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_35f

    .line 4404
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v11

    if-eqz v11, :cond_2dd

    .line 4405
    invoke-virtual {v11}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2f5

    .line 4410
    :cond_2dd
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getCandidateSaveValue()Landroid/view/autofill/AutofillValue;

    move-result-object v15

    if-eqz v15, :cond_2f5

    .line 4411
    invoke-virtual {v15}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_2f5

    .line 4412
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v11, :cond_2f4

    .line 4413
    const-string v11, "AutofillSession"

    const-string v6, "current value is empty, using cached last non-empty value instead"

    invoke-static {v11, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f4
    move-object v11, v15

    .line 4421
    :cond_2f5
    invoke-virtual {v5, v0, v8, v11}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    if-nez v6, :cond_31c

    .line 4423
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_38b

    .line 4424
    const-string v6, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "value of opt. field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " failed sanitization"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38b

    .line 4429
    :cond_31c
    invoke-virtual {v3, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4430
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 4431
    invoke-virtual {v6, v10}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_38b

    .line 4432
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v11, :cond_353

    .line 4433
    const-string v11, "AutofillSession"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "found a change on optional "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " => "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_353
    if-eqz v10, :cond_357

    const/4 v13, 0x1

    goto :goto_35d

    .line 4445
    :cond_357
    iget-object v6, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetIsNewField(Z)V

    :goto_35d
    const/4 v12, 0x1

    goto :goto_38b

    .line 4451
    :cond_35f
    invoke-virtual {v5, v8}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 4452
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_386

    .line 4453
    const-string v10, "AutofillSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no current value for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "; initial value is "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_386
    if-eqz v6, :cond_38b

    .line 4461
    invoke-virtual {v3, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38b
    :goto_38b
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x4

    goto/16 :goto_29e

    :cond_390
    move v10, v13

    const/4 v2, 0x5

    if-nez v12, :cond_3d4

    .line 4468
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 4469
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    const/4 v7, 0x4

    .line 4625
    :goto_39f
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_3cc

    .line 4626
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSaveLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): with no changes, comes no responsibilities.allRequiredAreNotNull="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", atLeastOneChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    :cond_3cc
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-direct {v0, v1, v8, v7}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 4471
    :cond_3d4
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_3df

    .line 4472
    const-string v0, "AutofillSession"

    const-string v6, "at least one field changed, validate fields for save UI"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4474
    :cond_3df
    invoke-virtual {v4}, Landroid/service/autofill/SaveInfo;->getValidator()Landroid/service/autofill/InternalValidator;

    move-result-object v0

    const/4 v6, 0x6

    if-eqz v0, :cond_45d

    const/16 v7, 0x46d

    .line 4476
    invoke-virtual {v5, v7}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 4479
    :try_start_3ec
    invoke-virtual {v0, v5}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v8

    .line 4480
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v11, :cond_410

    const-string v11, "AutofillSession"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_410

    :catch_40e
    move-exception v0

    goto :goto_43a

    :cond_410
    :goto_410
    if-eqz v8, :cond_415

    const/16 v0, 0xa

    goto :goto_416

    :cond_415
    move v0, v2

    .line 4481
    :goto_416
    invoke-virtual {v7, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
    :try_end_419
    .catch Ljava/lang/Exception; {:try_start_3ec .. :try_end_419} :catch_40e

    .line 4496
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v7}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    if-nez v8, :cond_45d

    .line 4498
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "not showing save UI because fields failed validation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4499
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0, v6}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 4501
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 4502
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 4484
    :goto_43a
    const-string v1, "AutofillSession"

    const-string v3, "Not showing save UI because validation failed:"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xb

    .line 4485
    invoke-virtual {v7, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 4486
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v7}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4487
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0, v6}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 4489
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 4490
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 4511
    :cond_45d
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_55c

    const/4 v2, 0x0

    .line 4514
    :goto_464
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_55c

    .line 4515
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/autofill/Dataset;

    .line 4517
    invoke-static {v7}, Lcom/android/server/autofill/Helper;->getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;

    move-result-object v8

    .line 4518
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v11, :cond_49e

    .line 4519
    const-string v11, "AutofillSession"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Checking if saved fields match contents of dataset #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "; savableIds="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49e
    const/4 v11, 0x0

    .line 4529
    :goto_49f
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-ge v11, v12, :cond_527

    .line 4530
    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/autofill/AutofillId;

    .line 4531
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/autofill/AutofillValue;

    if-nez v13, :cond_4ce

    .line 4533
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_523

    .line 4534
    const-string v13, "AutofillSession"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dataset has value for field that is null: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_523

    .line 4538
    :cond_4ce
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/autofill/AutofillValue;

    .line 4539
    invoke-virtual {v13, v14}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_508

    .line 4540
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_504

    .line 4541
    const-string v7, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found a dataset change on id "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": from "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_504
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_464

    .line 4552
    :cond_508
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_523

    const-string v13, "AutofillSession"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no dataset changes for id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_523
    :goto_523
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_49f

    .line 4554
    :cond_527
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_549

    .line 4555
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring Save UI because all fields match contents of dataset #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4563
    :cond_549
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 4564
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 4565
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-direct {v0, v1, v8, v6}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 4572
    :cond_55c
    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v14

    .line 4573
    new-instance v0, Lcom/android/server/autofill/ui/PendingUi;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iget v3, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-direct {v0, v2, v3, v14}, Lcom/android/server/autofill/ui/PendingUi;-><init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V

    iput-object v0, v5, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 4577
    iget-object v2, v5, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    move-object v3, v2

    .line 4578
    :try_start_572
    invoke-virtual {v5, v1}, Lcom/android/server/autofill/Session;->getServiceIcon(Landroid/service/autofill/FillResponse;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v1

    .line 4579
    invoke-virtual {v5, v0}, Lcom/android/server/autofill/Session;->getServiceLabel(Landroid/service/autofill/FillResponse;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4580
    monitor-exit v3
    :try_end_57c
    .catchall {:try_start_572 .. :try_end_57c} :catchall_60b

    if-eqz v1, :cond_580

    if-nez v2, :cond_583

    :cond_580
    const/4 v1, 0x0

    const/4 v8, 0x1

    goto :goto_5f2

    :cond_583
    move-object v3, v0

    .line 4590
    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    iget-object v6, v5, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 4594
    invoke-virtual {v6}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    move-object v3, v6

    iget-object v6, v5, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v8, v5, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget-object v9, v5, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-boolean v11, v5, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 4603
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getShowSaveDialogIcon()Z

    move-result v12

    iget-object v13, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    move-object/from16 v7, p0

    .line 4591
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/autofill/ui/AutoFillUI;->showSaveUi(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;ZZZLcom/android/server/autofill/SaveEventLogger;)V

    if-eqz v14, :cond_5c3

    .line 4607
    :try_start_5a5
    iget v0, v5, Lcom/android/server/autofill/Session;->id:I

    const/4 v8, 0x1

    invoke-interface {v14, v0, v8}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_5ab
    .catch Landroid/os/RemoteException; {:try_start_5a5 .. :try_end_5ab} :catch_5ac

    goto :goto_5c3

    :catch_5ac
    move-exception v0

    .line 4609
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error notifying client to set save UI state to shown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    :cond_5c3
    :goto_5c3
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 4613
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_5ea

    .line 4614
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Good news, everyone! All checks passed, show save UI for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    :cond_5ea
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-direct {v0, v8, v1, v1}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 4582
    :goto_5f2
    const-string/jumbo v0, "showSaveLocked(): no service label or icon"

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v5, v3, v0, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4583
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0, v8}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 4584
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 4585
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v0, v1, v8, v1}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    :catchall_60b
    move-exception v0

    .line 4580
    :try_start_60c
    monitor-exit v3
    :try_end_60d
    .catchall {:try_start_60c .. :try_end_60d} :catchall_60b

    throw v0
.end method

.method public final startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 13

    .line 7086
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_14

    .line 7087
    :try_start_3
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 7089
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    :try_start_13
    throw p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    move-object p0, v0

    .line 7091
    const-string p1, "AutofillSession"

    const-string p2, "Error launching auth intent"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 5

    .line 3119
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3120
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_28

    .line 3121
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#startIntentSender() rejected - session: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    goto :goto_3d

    :cond_28
    if-nez p2, :cond_2d

    .line 3129
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 3131
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_26

    .line 3132
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda9;-><init>()V

    .line 3133
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3132
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 3131
    :goto_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_26

    throw p0
.end method

.method public startIntentSenderAndFinishSession(Landroid/content/IntentSender;)V
    .registers 3

    const/4 v0, 0x0

    .line 3113
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public final startNewEventForPresentationStatsEventLogger()V
    .registers 4

    .line 7063
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7064
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->startNewEvent()V

    .line 7071
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 7074
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 7075
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getDetectionPreferenceForLogging()I

    move-result v2

    .line 7074
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetDetectionPreference(I)V

    .line 7076
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAutofillServiceUid(I)V

    .line 7077
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    .line 1849
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1850
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_28

    .line 1851
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#switchActivity() rejected - session: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    goto :goto_32

    .line 1858
    :cond_28
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 1859
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 1862
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 1863
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_26

    throw p0
.end method

.method public final toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 3

    .line 6135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, 0x0

    .line 6136
    invoke-virtual {p1, p0, v0}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6137
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6139
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 6140
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 7401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 7406
    invoke-static {p0}, Lcom/android/server/autofill/Session;->sessionStateAsString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;
    .registers 13

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 6457
    :cond_6
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 6458
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getSupportedSmartSuggestionModesLocked()I

    move-result v0

    .line 6459
    const-string v2, "AutofillSession"

    if-nez v0, :cond_1b

    .line 6460
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_1a

    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no supported modes"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-object v1

    .line 6466
    :cond_1b
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 6467
    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v3

    if-nez v3, :cond_2e

    .line 6469
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_2d

    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no service for user"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-object v1

    :cond_2e
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_18d

    .line 6482
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_3d

    .line 6483
    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no view currently focused"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 6487
    :cond_3d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 6488
    invoke-virtual {v0, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result v8

    const/4 v6, 0x1

    if-nez v8, :cond_79

    .line 6491
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_6c

    .line 6492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "triggerAugmentedAutofillLocked(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 6495
    invoke-static {v0}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not whitelisted "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6492
    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6500
    :cond_6c
    invoke-virtual {v3}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    move v9, v8

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    const/4 v10, 0x0

    move-object v5, p0

    .line 6498
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    return-object v1

    :cond_79
    move-object v5, p0

    move v9, v8

    .line 6507
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_bb

    .line 6508
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calling Augmented Autofill Service ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6511
    invoke-virtual {v3}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") on view "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " using suggestion mode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6515
    invoke-static {v6}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when server returned null for session "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6508
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6520
    :cond_bb
    iget-object p0, v5, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/FillRequestEventLogger;->startLogForNewRequest()V

    .line 6521
    iget p0, v5, Lcom/android/server/autofill/Session;->mRequestCount:I

    const/4 v0, 0x1

    add-int/2addr p0, v0

    iput p0, v5, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 6522
    iget-object p0, v5, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget v4, v5, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetAppPackageUid(I)V

    .line 6523
    iget-object p0, v5, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget v4, v5, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {p0, v4}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetFlags(I)V

    .line 6524
    iget-object p0, v5, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestId(I)V

    .line 6525
    iget-object p0, v5, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetIsAugmented(Z)V

    .line 6527
    iget-object p0, v5, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget-object v0, v5, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 6528
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAugmentedAutofillServiceUidLocked()I

    move-result v0

    .line 6527
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetAutofillServiceUid(I)V

    .line 6530
    iget-object p0, v5, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/FillRequestEventLogger;->logAndEndEvent()V

    .line 6532
    iget-object p0, v5, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v0, v5, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    const/16 v0, 0x1000

    .line 6533
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 6534
    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 6536
    iget-object p0, v5, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez p0, :cond_10c

    .line 6537
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v5, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 6542
    :cond_10c
    invoke-virtual {v3}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x65e

    .line 6540
    invoke-virtual {v5, v0, p0}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 6543
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6545
    iget-object v7, v5, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    move v8, v9

    move v9, v6

    move-object v6, v5

    .line 6547
    new-instance v5, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;

    invoke-direct/range {v5 .. v10}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;ZILandroid/view/autofill/AutofillValue;)V

    move-object p0, v5

    move-object v5, v6

    .line 6559
    iget-object v0, v5, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 6560
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    if-eqz v0, :cond_170

    .line 6561
    iget-object v4, v5, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v4}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v4

    if-nez v4, :cond_14b

    iget-object v4, v5, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v4}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v4

    if-eqz v4, :cond_14b

    iget-object v4, v5, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v4}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v4

    if-eqz v4, :cond_170

    .line 6565
    :cond_14b
    invoke-virtual {v5, p1}, Lcom/android/server/autofill/Session;->isViewFocusedLocked(I)Z

    move-result v4

    if-nez v4, :cond_157

    invoke-virtual {v5, p1}, Lcom/android/server/autofill/Session;->isRequestSupportFillDialog(I)Z

    move-result p1

    if-eqz p1, :cond_170

    .line 6566
    :cond_157
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_160

    const-string p1, "Create inline request for augmented autofill"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6567
    :cond_160
    new-instance p1, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;

    invoke-direct {v1, v5, v7, p0}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;)V

    iget-object p0, v5, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v1, p0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    goto :goto_17f

    .line 6573
    :cond_170
    iget-object p1, v5, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 6574
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->getInlineSuggestionsRequestLocked()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 6573
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6576
    :goto_17f
    iget-object p0, v5, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez p0, :cond_18a

    .line 6577
    new-instance p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;

    invoke-direct {p0, v3}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    iput-object p0, v5, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 6579
    :cond_18a
    iget-object p0, v5, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    return-object p0

    .line 6478
    :cond_18d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported Smart Suggestion mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final unlinkClientVultureLocked()V
    .registers 4

    .line 1896
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_31

    .line 1897
    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlinking vulture from death failed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    .line 1901
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    :cond_31
    return-void
.end method

.method public final unregisterDelayedFillBroadcastLocked()V
    .registers 3

    .line 1232
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_16

    .line 1233
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "unregisterDelayedFillBroadcastLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1235
    iput-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    :cond_16
    return-void
.end method

.method public final updateFillDialogTriggerIdsLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 5724
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    .line 5728
    :cond_8
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_13

    .line 5729
    :cond_f
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    return-void
.end method

.method public final updateFilteringStateOnValueChangedLocked(Ljava/lang/String;Lcom/android/server/autofill/ViewState;)V
    .registers 5

    .line 5555
    const-string p0, ""

    if-nez p1, :cond_5

    move-object p1, p0

    .line 5560
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 5562
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_1a

    .line 5565
    :cond_12
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5568
    :cond_1a
    :goto_1a
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v0

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-nez v0, :cond_2d

    .line 5569
    invoke-static {p1, p0}, Lcom/android/server/autofill/Helper;->containsCharsInOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_39

    .line 5570
    invoke-virtual {p2, v1}, Lcom/android/server/autofill/ViewState;->setState(I)V

    return-void

    .line 5572
    :cond_2d
    invoke-static {p0, p1}, Lcom/android/server/autofill/Helper;->containsCharsInOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_39

    const p0, 0x8000

    .line 5574
    invoke-virtual {p2, p0}, Lcom/android/server/autofill/ViewState;->setState(I)V

    :cond_39
    return-void
.end method

.method public updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .registers 16

    .line 5090
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_21

    .line 5091
    const-string p0, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateLocked("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "):  rejected - session: destroyed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p4, v1, :cond_58

    .line 5095
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p2, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 5096
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_4b

    .line 5097
    const-string p2, "AutofillSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateLocked("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): Set the response has expired."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5099
    :cond_4b
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReasonIfNoReasonExists(I)V

    .line 5101
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string p1, "ACTION_RESPONSE_EXPIRED"

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    return-void

    .line 5105
    :cond_58
    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, v3}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 5106
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    .line 5107
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_be

    .line 5108
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLocked("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "): id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5116
    invoke-static {p4}, Lcom/android/server/autofill/Session;->actionAsString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mCurrentViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mExpiredResponse="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v6}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", viewState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5108
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v3, :cond_124

    if-eq p4, v2, :cond_d5

    if-eq p4, v4, :cond_d5

    if-ne p4, v5, :cond_c9

    goto :goto_d5

    .line 5149
    :cond_c9
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_3be

    const-string p0, "AutofillSession"

    const-string p1, "Ignoring specific action when viewState=null"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5131
    :cond_d5
    :goto_d5
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_ef

    const-string v3, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating viewState for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    :cond_ef
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v3

    .line 5133
    new-instance v6, Lcom/android/server/autofill/ViewState;

    if-eqz v3, :cond_fa

    const/16 v7, 0x80

    goto :goto_fb

    :cond_fa
    move v7, v2

    .line 5137
    :goto_fb
    iget-boolean v8, p0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    invoke-direct {v6, p1, p0, v7, v8}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;IZ)V

    .line 5139
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_123

    .line 5145
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_3be

    const-string p0, "AutofillSession"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateLocked(): ignoring view "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_123
    move-object v3, v6

    :cond_124
    and-int/lit16 v6, p5, 0x100

    const/4 v7, 0x0

    if-eqz v6, :cond_139

    .line 5155
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_134

    const-string v6, "AutofillSession"

    const-string v8, "force to reset fill dialog state"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    :cond_134
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v6, v7}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    :cond_139
    and-int/lit16 v6, p5, 0x200

    if-eqz v6, :cond_141

    .line 5161
    invoke-virtual {p0, p5}, Lcom/android/server/autofill/Session;->requestAssistStructureForPccLocked(I)V

    return-void

    :cond_141
    and-int/lit16 v6, p5, 0x400

    if-eqz v6, :cond_14a

    .line 5166
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v6, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmScreenHasCredmanField(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    :cond_14a
    if-eq p4, v2, :cond_382

    const/4 v6, 0x0

    if-eq p4, v5, :cond_238

    if-eq p4, v0, :cond_1f0

    if-eq p4, v4, :cond_16b

    .line 5405
    const-string p0, "AutofillSession"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateLocked(): unknown action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5198
    :cond_16b
    iget-boolean p2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz p2, :cond_1df

    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p2

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_1df

    .line 5201
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez p1, :cond_17d

    move-object p1, v6

    goto :goto_189

    :cond_17d
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_189
    if-nez p1, :cond_193

    .line 5204
    const-string p1, "URL bar value changed, but current value is null"

    new-array p2, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_193
    if-eqz p3, :cond_1d5

    .line 5207
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result p2

    if-nez p2, :cond_19c

    goto :goto_1d5

    .line 5212
    :cond_19c
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5213
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b6

    .line 5214
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_3be

    const-string p0, "AutofillSession"

    const-string p1, "Ignoring change on URL bar as it\'s the same"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5217
    :cond_1b6
    iget-boolean p1, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz p1, :cond_1c6

    .line 5221
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_3be

    .line 5222
    const-string p0, "AutofillSession"

    const-string p1, "Ignoring change on URL because session will finish when views are gone"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5229
    :cond_1c6
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_1d1

    const-string p1, "AutofillSession"

    const-string p2, "Finishing session because URL bar changed"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5230
    :cond_1d1
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    return-void

    .line 5209
    :cond_1d5
    :goto_1d5
    const-string p1, "URL bar value changed to null or non-text: %s"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5233
    :cond_1df
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3be

    .line 5234
    invoke-virtual {p0, p1, p3, v3}, Lcom/android/server/autofill/Session;->logIfViewClearedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;)V

    .line 5235
    invoke-virtual {p0, p1, p3, v3, p5}, Lcom/android/server/autofill/Session;->updateViewStateAndUiOnValueChangedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;I)V

    return-void

    .line 5375
    :cond_1f0
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object p3, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3be

    .line 5376
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_214

    const-string p2, "AutofillSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exiting view "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5377
    :cond_214
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 5378
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialog(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 5379
    invoke-virtual {p0, v3}, Lcom/android/server/autofill/Session;->hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V

    .line 5382
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->resetInlineFillUiLocked()V

    .line 5384
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p1

    const/high16 p2, 0x10000

    and-int/2addr p1, p2

    if-eqz p1, :cond_230

    goto :goto_232

    .line 5389
    :cond_230
    iput-object v6, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 5399
    :goto_232
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    return-void

    .line 5239
    :cond_238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    .line 5240
    iget-boolean p4, p0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    .line 5241
    iput-boolean v7, p0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    .line 5242
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_266

    if-eqz p2, :cond_266

    .line 5243
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entered on virtual child "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5246
    :cond_266
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v1, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 5248
    iget-object v1, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz p3, :cond_277

    .line 5250
    invoke-virtual {v3, p3}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    :cond_277
    if-nez v0, :cond_281

    .line 5255
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

    .line 5257
    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 5258
    :cond_281
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_287

    .line 5259
    iput-object v1, p0, Lcom/android/server/autofill/Session;->mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

    :cond_287
    and-int/lit16 v1, p5, 0x800

    if-eqz v1, :cond_28c

    move v7, v2

    .line 5262
    :cond_28c
    invoke-virtual {p0, p5}, Lcom/android/server/autofill/Session;->shouldRequestSecondaryProvider(I)Z

    move-result v1

    if-eqz v1, :cond_2b1

    .line 5264
    invoke-virtual {p0, p1, v3, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Ljava/util/Optional;

    move-result-object p1

    .line 5266
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_2a4

    .line 5267
    const-string p0, "AutofillSession"

    const-string p1, "Started a new fill request for secondary provider."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5271
    :cond_2a4
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getSecondaryResponse()Landroid/service/autofill/FillResponse;

    move-result-object p1

    if-eqz p1, :cond_2ad

    .line 5273
    invoke-virtual {p0, p1, v7}, Lcom/android/server/autofill/Session;->logPresentationStatsOnViewEnteredLocked(Landroid/service/autofill/FillResponse;Z)V

    .line 5277
    :cond_2ad
    invoke-virtual {v3, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    return-void

    .line 5283
    :cond_2b1
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v1, :cond_2dd

    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2dd

    .line 5284
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_3be

    const-string p0, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring VIEW_ENTERED on URL BAR (id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5288
    :cond_2dd
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5289
    :try_start_2e0
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    if-nez v4, :cond_2f5

    .line 5299
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v5, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 5300
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v9

    .line 5299
    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logViewEntered(ILandroid/os/Bundle;Landroid/view/autofill/AutofillId;Z)V

    goto :goto_2f5

    :catchall_2f2
    move-exception p0

    goto/16 :goto_380

    .line 5308
    :cond_2f5
    :goto_2f5
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    .line 5309
    monitor-exit v1
    :try_end_2f8
    .catchall {:try_start_2e0 .. :try_end_2f8} :catchall_2f2

    and-int/lit8 v1, p5, 0x1

    if-nez v1, :cond_33c

    .line 5314
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_325

    .line 5315
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_325

    if-nez v0, :cond_318

    .line 5319
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_314

    const-string p1, "AutofillSession"

    const-string/jumbo p2, "trigger augmented autofill."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5320
    :cond_314
    invoke-virtual {p0, p5}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    return-void

    .line 5322
    :cond_318
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_3be

    .line 5323
    const-string p0, "AutofillSession"

    const-string/jumbo p1, "skip augmented autofill for same view: same view entered"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5330
    :cond_325
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-eqz v1, :cond_33c

    if-eqz v0, :cond_33c

    .line 5332
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_3be

    .line 5333
    const-string p0, "AutofillSession"

    const-string/jumbo p1, "skip augmented autofill for same view: standard autofill disabled."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5343
    :cond_33c
    invoke-virtual {p0, p1, v3, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Ljava/util/Optional;

    move-result-object p1

    if-nez p4, :cond_36a

    if-eqz v0, :cond_34a

    .line 5350
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p4

    if-eqz p4, :cond_36a

    .line 5351
    :cond_34a
    iget-object p4, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo v1, "new view entered"

    invoke-virtual {p4, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    .line 5352
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->startNewEventForPresentationStatsEventLogger()V

    .line 5353
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p4

    if-eqz p4, :cond_36a

    .line 5354
    iget-object p4, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetRequestId(I)V

    .line 5363
    :cond_36a
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getResponse()Landroid/service/autofill/FillResponse;

    move-result-object p1

    .line 5362
    invoke-virtual {p0, p1, v7}, Lcom/android/server/autofill/Session;->logPresentationStatsOnViewEnteredLocked(Landroid/service/autofill/FillResponse;Z)V

    .line 5364
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->updateTextFieldLength(Landroid/view/autofill/AutofillValue;)V

    if-eqz v0, :cond_37c

    .line 5367
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabledAndStartInput()V

    return-void

    .line 5372
    :cond_37c
    invoke-virtual {v3, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    return-void

    .line 5309
    :goto_380
    :try_start_380
    monitor-exit v1
    :try_end_381
    .catchall {:try_start_380 .. :try_end_381} :catchall_2f2

    throw p0

    .line 5172
    :cond_382
    iget-object p1, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 5173
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

    .line 5174
    invoke-virtual {v3, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 5175
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->startNewEventForPresentationStatsEventLogger()V

    .line 5176
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetIsNewRequest(Z)V

    .line 5177
    invoke-virtual {p0, p5}, Lcom/android/server/autofill/Session;->isRequestSupportFillDialog(I)Z

    move-result p1

    if-nez p1, :cond_3a1

    .line 5178
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {p1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 5179
    iput-boolean v7, p0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    goto :goto_3a3

    .line 5181
    :cond_3a1
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    :goto_3a3
    const/16 p1, 0x10

    .line 5191
    invoke-virtual {p0, v3, p1, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)Ljava/util/Optional;

    move-result-object p1

    .line 5193
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_3be

    .line 5194
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetRequestId(I)V

    :cond_3be
    return-void
.end method

.method public final updateTrackedIdsLocked()V
    .registers 19

    move-object/from16 v0, p0

    .line 6188
    const-string v1, "AutofillSession"

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v3

    if-nez v3, :cond_c

    return-void

    :cond_c
    const/4 v4, 0x0

    .line 6192
    iput-boolean v4, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 6194
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_98

    .line 6198
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getTriggerId()Landroid/view/autofill/AutofillId;

    move-result-object v8

    if-eqz v8, :cond_28

    const/16 v9, 0x4cc

    .line 6200
    invoke-virtual {v0, v9}, Lcom/android/server/autofill/Session;->writeLog(I)V

    .line 6201
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiShownReason(I)V

    .line 6203
    :cond_28
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v9

    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_32

    move v10, v7

    goto :goto_33

    :cond_32
    move v10, v4

    .line 6204
    :goto_33
    iput-boolean v10, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 6206
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v10, v7}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetSaveUiTriggerIds(I)V

    .line 6209
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetRequestId(I)V

    .line 6210
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget v11, v0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v10, v11}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetAppPackageUid(I)V

    .line 6211
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v10, v7}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiTriggerIds(I)V

    .line 6212
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v10, v9}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetFlag(I)V

    .line 6215
    iget-boolean v10, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v10, :cond_82

    .line 6217
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 6219
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    if-eqz v11, :cond_6f

    .line 6220
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6221
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v11, v7}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiShownReason(I)V

    .line 6225
    :cond_6f
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    if-eqz v11, :cond_83

    .line 6226
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6227
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v11, v6}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiShownReason(I)V

    goto :goto_83

    :cond_82
    move-object v10, v2

    :cond_83
    :goto_83
    and-int/lit8 v6, v9, 0x2

    if-eqz v6, :cond_96

    .line 6232
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v6, v4}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiShownReason(I)V

    .line 6233
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    move v13, v4

    :goto_94
    move-object v15, v8

    goto :goto_a1

    :cond_96
    move v13, v7

    goto :goto_94

    .line 6240
    :cond_98
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v8, v6}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    move-object v10, v2

    move-object v15, v10

    move v9, v4

    move v13, v7

    .line 6244
    :goto_a1
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v6

    if-eqz v6, :cond_a9

    move v6, v7

    goto :goto_aa

    :cond_a9
    move v6, v4

    .line 6249
    :goto_aa
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_ed

    move v8, v4

    .line 6252
    :goto_b1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_ed

    .line 6253
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/service/autofill/Dataset;

    .line 6254
    invoke-virtual {v11}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v12

    if-nez v12, :cond_c4

    goto :goto_e9

    :cond_c4
    move v14, v4

    .line 6257
    :goto_c5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_e2

    .line 6258
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    if-eqz v4, :cond_df

    if-eqz v10, :cond_db

    .line 6260
    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_df

    .line 6261
    :cond_db
    invoke-static {v2, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    :cond_df
    add-int/lit8 v14, v14, 0x1

    goto :goto_c5

    .line 6265
    :cond_e2
    invoke-virtual {v11}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v4

    if-eqz v4, :cond_e9

    move v6, v7

    :cond_e9
    :goto_e9
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_b1

    .line 6272
    :cond_ed
    :try_start_ed
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_136

    .line 6273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTrackedIdsLocked(): trackedViews: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " fillableIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " triggerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " saveOnFinish:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hasSaveInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_128

    move v4, v7

    goto :goto_129

    :cond_128
    const/4 v4, 0x0

    :goto_129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    :catch_134
    move-exception v0

    goto :goto_14b

    .line 6288
    :cond_136
    :goto_136
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    move-object v3, v10

    iget v10, v0, Lcom/android/server/autofill/Session;->id:I

    .line 6290
    invoke-static {v3}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v11

    iget-boolean v12, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 6293
    invoke-static {v2}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v14

    move/from16 v16, v6

    .line 6288
    invoke-interface/range {v9 .. v16}, Landroid/view/autofill/IAutoFillManagerClient;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V
    :try_end_14a
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_14a} :catch_134

    return-void

    .line 6297
    :goto_14b
    const-string v2, "Cannot set tracked ids"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final updateValuesForSaveLocked()V
    .registers 16

    .line 4745
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 4747
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_109

    .line 4749
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillContext;

    .line 4752
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    .line 4754
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v7, "updateValuesForSaveLocked(): updating "

    const-string v8, "AutofillSession"

    if-eqz v6, :cond_3d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move v6, v2

    .line 4756
    :goto_3e
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v6, v9, :cond_d9

    .line 4757
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/autofill/ViewState;

    .line 4759
    iget-object v10, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 4760
    invoke-virtual {v9}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v11

    if-nez v11, :cond_70

    .line 4762
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_d5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateValuesForSaveLocked(): skipping "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 4765
    :cond_70
    aget-object v12, v5, v6

    if-nez v12, :cond_89

    .line 4767
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callSaveLocked(): did not find node with id "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 4770
    :cond_89
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_a7

    .line 4771
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4774
    :cond_a7
    invoke-virtual {v9}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v9

    if-nez v9, :cond_b1

    .line 4778
    invoke-virtual {p0, v0, v10, v11}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v9

    :cond_b1
    if-eqz v9, :cond_b7

    .line 4781
    invoke-virtual {v12, v9}, Landroid/app/assist/AssistStructure$ViewNode;->updateAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_d5

    .line 4782
    :cond_b7
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_d5

    .line 4783
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateValuesForSaveLocked(): not updating field "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " because it failed sanitization"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    :goto_d5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3e

    .line 4792
    :cond_d9
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 4794
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_105

    .line 4795
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateValuesForSaveLocked(): dumping structure of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " before calling service.save()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/assist/AssistStructure;->dump(Z)V

    :cond_105
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_10

    :cond_109
    return-void
.end method

.method public final updateViewStateAndUiOnValueChangedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;I)V
    .registers 10

    .line 5472
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mIgnoreViewStateResetToEmpty:Z

    const/4 v1, 0x0

    const-string v2, "AutofillSession"

    if-eqz v0, :cond_4a

    if-eqz p2, :cond_f

    .line 5473
    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 5474
    :cond_f
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 5475
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 5476
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 5477
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_4a

    .line 5478
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_42

    .line 5479
    const-string/jumbo v0, "value is resetting to empty, caching the last non-empty value"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5481
    :cond_42
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/autofill/ViewState;->setCandidateSaveValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_4d

    .line 5483
    :cond_4a
    invoke-virtual {p3, v1}, Lcom/android/server/autofill/ViewState;->setCandidateSaveValue(Landroid/view/autofill/AutofillValue;)V

    :goto_4d
    if-eqz p2, :cond_61

    .line 5486
    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_61

    .line 5489
    :cond_56
    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_5d

    goto :goto_61

    .line 5492
    :cond_5d
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5494
    :cond_61
    :goto_61
    invoke-virtual {p0, v1, p3}, Lcom/android/server/autofill/Session;->updateFilteringStateOnValueChangedLocked(Ljava/lang/String;Lcom/android/server/autofill/ViewState;)V

    .line 5496
    invoke-virtual {p3, p2}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 5498
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    if-eqz v1, :cond_72

    .line 5501
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v3, p3, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->onFieldTextUpdated(Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;)V

    :cond_72
    const/16 v3, 0x8

    if-eqz v0, :cond_d9

    .line 5505
    invoke-virtual {v0, p2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9f

    .line 5508
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_94

    .line 5509
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ignoring autofilled change on id "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5513
    :cond_94
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p1, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 5514
    invoke-virtual {p3, v3}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    return-void

    .line 5516
    :cond_9f
    iget-object p2, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d9

    .line 5517
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p2

    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-eqz p2, :cond_d9

    .line 5519
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_c9

    .line 5520
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "field changed after autofill on id "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5522
    :cond_c9
    invoke-virtual {p3, v0}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 5523
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/ViewState;

    .line 5524
    invoke-virtual {p1, p4}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 5528
    :cond_d9
    iget-object p1, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_104

    .line 5529
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p1

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_104

    .line 5530
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p1

    const p2, 0x8000

    and-int/2addr p1, p2

    if-eqz p1, :cond_fc

    .line 5531
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p2, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/AutofillInlineSessionController;->disableFilterMatching(Landroid/view/autofill/AutofillId;)V

    .line 5533
    :cond_fc
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2, v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->filterInlineFillUiLocked(Landroid/view/autofill/AutofillId;Ljava/lang/String;)Z

    goto :goto_123

    .line 5534
    :cond_104
    iget-object p1, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_123

    .line 5535
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p1

    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_123

    .line 5536
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_123

    .line 5539
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 5543
    :cond_123
    :goto_123
    invoke-virtual {p3, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 5544
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public final writeLog(I)V
    .registers 3

    .line 8077
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final varargs wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 8152
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 8153
    iget-object p3, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 8154
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    invoke-virtual {p0, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 8155
    monitor-exit p3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1b

    if-eqz p1, :cond_15

    .line 8158
    const-string p0, "AutofillSession"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 8160
    :cond_15
    const-string p0, "AutofillSession"

    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1b
    move-exception p0

    .line 8155
    :try_start_1c
    monitor-exit p3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method
