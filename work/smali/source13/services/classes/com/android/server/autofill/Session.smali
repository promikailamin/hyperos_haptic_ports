.class final Lcom/android/server/autofill/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.implements Lcom/android/server/autofill/ViewState$Listener;
.implements Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
.implements Landroid/service/autofill/ValueFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/Session$SaveResult;,
        Lcom/android/server/autofill/Session$AssistDataReceiverImpl;,
        Lcom/android/server/autofill/Session$SessionFlags;,
        Lcom/android/server/autofill/Session$SessionState;
    }
.end annotation


# static fields
.field private static final ACTION_DELAYED_FILL:Ljava/lang/String; = "android.service.autofill.action.DELAYED_FILL"

.field static final AUGMENTED_AUTOFILL_REQUEST_ID:I = 0x1

.field private static final EXTRA_REQUEST_ID:Ljava/lang/String; = "android.service.autofill.extra.REQUEST_ID"

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_FINISHED:I = 0x2

.field public static final STATE_REMOVED:I = 0x3

.field public static final STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutofillSession"

.field private static sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final id:I

.field private mActivityToken:Landroid/os/IBinder;

.field private final mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

.field private mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

.field private mAugmentedAutofillableIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mAugmentedRequestsLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Landroid/view/autofill/IAutoFillManagerClient;

.field private mClientState:Landroid/os/Bundle;

.field private mClientVulture:Landroid/os/IBinder$DeathRecipient;

.field private final mCompatMode:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentViewId:Landroid/view/autofill/AutofillId;

.field private final mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDelayedFillBroadcastReceiverRegistered:Z

.field private mDelayedFillPendingIntent:Landroid/app/PendingIntent;

.field private mDestroyed:Z

.field public final mFlags:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasCallback:Z

.field private final mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

.field private mLastInlineSuggestionsRequest:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

.field private mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field private final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

.field private final mRequestLogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mResponses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveOnAllViewsInvisible:Z

.field private mSelectedDatasetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

.field private final mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

.field private mSessionState:I

.field private final mStartTime:J

.field private final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field private final mUiLatencyHistory:Landroid/util/LocalLog;

.field private mUiShownTime:J

.field private mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

.field private final mViewStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Lcom/android/server/autofill/ViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWtfHistory:Landroid/util/LocalLog;

.field public final taskId:I

.field public final uid:I

.field public final userId:I


# direct methods
.method public static synthetic $r8$lambda$48lf7EoyN57sB4ZuPC9AyWBh5FY(Lcom/android/server/autofill/Session;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->handleLogContextCommitted(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$6rEBrMV-oCtdOaVAXVRHLmI-g8E(Lcom/android/server/autofill/Session;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->doStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$92rc8p5ur7GxIKq_CcXalnEwHwU(Lcom/android/server/autofill/Session;ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$cvpKlPL1gF-ZEFRW7HO0XSOcW2Y(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void
.end method

.method public static synthetic $r8$lambda$ob2VRQBpTmucgItVbNSRhctaxxg(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->logSaveShown()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivityToken(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAssistReceiver(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$AssistDataReceiverImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientState(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompatMode(Lcom/android/server/autofill/Session;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmComponentName(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContexts(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentViewId(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInlineSessionController(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillInlineSessionController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteFillService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionFlags(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$SessionFlags;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUrlBar(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewStates(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmContexts(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUrlBar(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelCurrentRequestLocked(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreatePendingIntent(Lcom/android/server/autofill/Session;I)Landroid/app/PendingIntent;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->createPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfillContextWithAllowedValuesLocked(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergePreviousSessionLocked(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyFillUiHidden(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->notifyFillUiHidden(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyFillUiShown(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->notifyFillUiShown(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwtf(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 176
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZILcom/android/server/inputmethod/InputMethodManagerInternal;)V
    .registers 39
    .param p1, "service"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .param p2, "ui"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .param p6, "lock"    # Ljava/lang/Object;
    .param p7, "sessionId"    # I
    .param p8, "taskId"    # I
    .param p9, "uid"    # I
    .param p10, "activityToken"    # Landroid/os/IBinder;
    .param p11, "client"    # Landroid/os/IBinder;
    .param p12, "hasCallback"    # Z
    .param p13, "uiLatencyHistory"    # Landroid/util/LocalLog;
    .param p14, "wtfHistory"    # Landroid/util/LocalLog;
    .param p15, "serviceComponentName"    # Landroid/content/ComponentName;
    .param p16, "componentName"    # Landroid/content/ComponentName;
    .param p17, "compatMode"    # Z
    .param p18, "bindInstantServiceAllowed"    # Z
    .param p19, "forAugmentedAutofillOnly"    # Z
    .param p20, "flags"    # I
    .param p21, "inputMethodManagerInternal"    # Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1009
    move-object/from16 v7, p0

    move-object/from16 v15, p6

    move/from16 v14, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, v7, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 178
    const/4 v1, 0x0

    iput v1, v7, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 240
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v7, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 334
    new-instance v2, Landroid/util/SparseArray;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v7, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 371
    new-instance v2, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    const/4 v9, 0x0

    invoke-direct {v2, v7, v9}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session$AssistDataReceiverImpl-IA;)V

    iput-object v2, v7, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 375
    new-instance v2, Lcom/android/server/autofill/Session$1;

    invoke-direct {v2, v7}, Lcom/android/server/autofill/Session$1;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v2, v7, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1010
    if-gez v14, :cond_40

    .line 1011
    const-string v2, "Non-positive sessionId: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {v7, v9, v2, v3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    :cond_40
    iput v14, v7, Lcom/android/server/autofill/Session;->id:I

    .line 1014
    move/from16 v13, p20

    iput v13, v7, Lcom/android/server/autofill/Session;->mFlags:I

    .line 1015
    move/from16 v12, p5

    iput v12, v7, Lcom/android/server/autofill/Session;->userId:I

    .line 1016
    move/from16 v11, p8

    iput v11, v7, Lcom/android/server/autofill/Session;->taskId:I

    .line 1017
    move/from16 v10, p9

    iput v10, v7, Lcom/android/server/autofill/Session;->uid:I

    .line 1018
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 1019
    move-object/from16 v6, p1

    iput-object v6, v7, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1020
    iput-object v15, v7, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 1021
    move-object/from16 v5, p2

    iput-object v5, v7, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 1022
    move-object/from16 v4, p4

    iput-object v4, v7, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 1023
    if-nez p15, :cond_6a

    move-object v1, v9

    goto :goto_7b

    .line 1024
    :cond_6a
    new-instance v16, Lcom/android/server/autofill/RemoteFillService;

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    move-object/from16 v3, p15

    move/from16 v4, p5

    move-object/from16 v5, p0

    move/from16 v6, p18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V

    :goto_7b
    iput-object v1, v7, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 1026
    move-object/from16 v1, p10

    iput-object v1, v7, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 1027
    move/from16 v2, p12

    iput-boolean v2, v7, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 1028
    move-object/from16 v3, p13

    iput-object v3, v7, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 1029
    move-object/from16 v4, p14

    iput-object v4, v7, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    .line 1030
    move-object/from16 v5, p3

    iput-object v5, v7, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 1031
    move-object/from16 v6, p16

    iput-object v6, v7, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 1032
    move/from16 v9, p17

    iput-boolean v9, v7, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 1033
    iput v8, v7, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 1034
    invoke-static/range {p7 .. p7}, Lcom/android/server/autofill/PresentationStatsEventLogger;->forSessionId(I)Lcom/android/server/autofill/PresentationStatsEventLogger;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1035
    monitor-enter p6

    .line 1036
    :try_start_a2
    new-instance v8, Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v1, 0x0

    invoke-direct {v8, v7, v1}, Lcom/android/server/autofill/Session$SessionFlags;-><init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session$SessionFlags-IA;)V

    iput-object v8, v7, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 1037
    move/from16 v1, p19

    invoke-static {v8, v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1038
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isInlineSuggestionsEnabledLocked()Z

    move-result v1

    invoke-static {v8, v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1039
    move-object/from16 v1, p11

    invoke-direct {v7, v1}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 1040
    monitor-exit p6
    :try_end_bc
    .catchall {:try_start_a2 .. :try_end_bc} :catchall_eb

    .line 1042
    new-instance v8, Lcom/android/server/autofill/AutofillInlineSessionController;

    new-instance v1, Lcom/android/server/autofill/Session$2;

    invoke-direct {v1, v7}, Lcom/android/server/autofill/Session$2;-><init>(Lcom/android/server/autofill/Session;)V

    move-object/from16 v16, v8

    move-object/from16 v9, p21

    move/from16 v10, p5

    move-object/from16 v11, p16

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move-object v14, v1

    invoke-direct/range {v8 .. v14}, Lcom/android/server/autofill/AutofillInlineSessionController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;)V

    move-object/from16 v1, v16

    iput-object v1, v7, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 1056
    const/16 v1, 0x38a

    invoke-direct {v7, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v8, 0x5ac

    .line 1057
    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1056
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1058
    return-void

    .line 1040
    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit p6
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v0
.end method

.method private static actionAsString(I)Ljava/lang/String;
    .registers 3
    .param p0, "action"    # I

    .line 4611
    packed-switch p0, :pswitch_data_26

    .line 4623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4621
    :pswitch_17
    const-string v0, "RESPONSE_EXPIRED"

    return-object v0

    .line 4619
    :pswitch_1a
    const-string v0, "VALUE_CHANGED"

    return-object v0

    .line 4617
    :pswitch_1d
    const-string v0, "VIEW_EXITED"

    return-object v0

    .line 4615
    :pswitch_20
    const-string v0, "VIEW_ENTERED"

    return-object v0

    .line 4613
    :pswitch_23
    const-string v0, "START_SESSION"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "tag"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 4574
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    .line 4575
    .local v0, "requestLog":Landroid/metrics/LogMaker;
    if-nez v0, :cond_2d

    .line 4576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTaggedDataToRequestLogLocked(tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): no log for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    return-void

    .line 4580
    :cond_2d
    invoke-virtual {v0, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4581
    return-void
.end method

.method private cancelAugmentedAutofillLocked()V
    .registers 5

    .line 3820
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3821
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    .line 3822
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    const-string v1, "AutofillSession"

    if-nez v0, :cond_10

    .line 3823
    const-string v2, "cancelAugmentedAutofillLocked(): no service for user"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    return-void

    .line 3826
    :cond_10
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAugmentedAutofillLocked() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    :cond_2c
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    .line 3828
    return-void
.end method

.method private cancelCurrentRequestLocked()V
    .registers 6

    .line 860
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v0, :cond_1b

    .line 861
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v3

    .line 862
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 861
    const-string v2, "cancelCurrentRequestLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    return-void

    .line 865
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->cancelCurrentRequest()I

    move-result v0

    .line 868
    .local v0, "canceledRequest":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_62

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v1, :cond_62

    .line 869
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 872
    .local v1, "numContexts":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_2d
    if-ltz v2, :cond_62

    .line 873
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v3

    if-ne v3, v0, :cond_5f

    .line 874
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_59

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelCurrentRequest(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_59
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 876
    goto :goto_62

    .line 872
    :cond_5f
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 880
    .end local v1    # "numContexts":I
    .end local v2    # "i":I
    :cond_62
    :goto_62
    return-void
.end method

.method private clearPendingIntentLocked()V
    .registers 4

    .line 676
    const-string v0, "AutofillSession"

    const-string v1, "clearPendingIntentLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_c

    .line 678
    return-void

    .line 680
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 682
    .local v0, "identity":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 683
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1d

    .line 685
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    nop

    .line 687
    return-void

    .line 685
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    throw v2
.end method

.method private createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 4011
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4013
    .local v0, "fillInIntent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v1

    .line 4015
    .local v1, "context":Landroid/service/autofill/FillContext;
    if-nez v1, :cond_21

    .line 4016
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4017
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    .line 4016
    const/4 v3, 0x0

    const-string v4, "createAuthFillInIntentLocked(): no FillContext. requestId=%d; mContexts=%s"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4018
    return-object v3

    .line 4020
    :cond_21
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    if-eqz v2, :cond_3a

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 4021
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_3a

    .line 4022
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "android.view.autofill.extra.INLINE_SUGGESTIONS_REQUEST"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4025
    :cond_3a
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v2

    const-string v3, "android.view.autofill.extra.ASSIST_STRUCTURE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4026
    const-string v2, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4027
    return-object v0
.end method

.method private createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;
    .registers 7
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "state"    # I
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;

    .line 3950
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 3951
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    if-eqz v0, :cond_e

    .line 3952
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_46

    .line 3954
    :cond_e
    new-instance v1, Lcom/android/server/autofill/ViewState;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    move-object v0, v1

    .line 3955
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_3a

    .line 3956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding autofillable view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 3959
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3961
    :goto_46
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_4d

    .line 3962
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setAutofilledValue(Landroid/view/autofill/AutofillValue;)V

    .line 3964
    :cond_4d
    return-object v0
.end method

.method private createPendingIntent(I)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "requestId"    # I

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPendingIntent for request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 661
    .local v0, "identity":J
    :try_start_1c
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.autofill.action.DELAYED_FILL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.service.autofill.extra.REQUEST_ID"

    .line 662
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 663
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    const/high16 v5, 0x52000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_3f

    move-object v2, v3

    .line 669
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    nop

    .line 671
    return-object v2

    .line 669
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_3f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    throw v2
.end method

.method private doStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 6
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1615
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_d

    .line 1616
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 1617
    monitor-exit v0

    .line 1620
    goto :goto_15

    .line 1617
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .end local p0    # "this":Lcom/android/server/autofill/Session;
    .end local p1    # "intentSender":Landroid/content/IntentSender;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_c
    throw v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_d} :catch_d

    .line 1618
    .restart local p0    # "this":Lcom/android/server/autofill/Session;
    .restart local p1    # "intentSender":Landroid/content/IntentSender;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catch_d
    move-exception v0

    .line 1619
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    const-string v2, "Error launching auth intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1621
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method private static dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "log"    # Landroid/metrics/LogMaker;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "tag"    # I

    .line 4296
    invoke-static {p1, p3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v0

    .line 4297
    .local v0, "value":I
    if-eqz v0, :cond_16

    .line 4298
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4300
    :cond_16
    return-void
.end method

.method private static dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "log"    # Landroid/metrics/LogMaker;

    .line 4253
    const-string v0, "CAT="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4254
    const-string v0, ", TYPE="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4255
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    .line 4256
    .local v0, "type":I
    const-string v1, "UNSUPPORTED"

    sparse-switch v0, :sswitch_data_bc

    .line 4260
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f

    .line 4258
    :sswitch_1e
    const-string v2, "FAILURE"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f

    .line 4257
    :sswitch_24
    const-string v2, "SUCCESS"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f

    .line 4259
    :sswitch_2a
    const-string v2, "CLOSE"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4262
    :goto_2f
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 4263
    const-string v4, ", PKG="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4264
    const-string v4, ", SERVICE="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x38c

    .line 4265
    invoke-virtual {p1, v4}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v4

    .line 4264
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4266
    const-string v4, ", ORDINAL="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x5ae

    .line 4267
    invoke-virtual {p1, v4}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v4

    .line 4266
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4268
    const/16 v4, 0x5ac

    const-string v5, "FLAGS"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 4269
    const/16 v4, 0x38d

    const-string v5, "NUM_DATASETS"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 4270
    const/16 v4, 0x479

    const-string v5, "UI_LATENCY"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 4271
    const/16 v4, 0x5ad

    .line 4272
    invoke-static {p1, v4}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v4

    .line 4273
    .local v4, "authStatus":I
    if-eqz v4, :cond_ad

    .line 4274
    const-string v5, ", AUTH_STATUS="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4275
    sparse-switch v4, :sswitch_data_ca

    .line 4284
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a4

    .line 4281
    :sswitch_8d
    const-string v1, "INVALID_AUTHENTICATION"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a4

    .line 4283
    :sswitch_93
    const-string v1, "INVALID_DATASET_AUTHENTICATION"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a4

    .line 4279
    :sswitch_99
    const-string v1, "DATASET_AUTHENTICATED"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a4

    .line 4277
    :sswitch_9f
    const-string v1, "AUTHENTICATED"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4286
    :goto_a4
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 4288
    :cond_ad
    const/16 v1, 0x4f7

    const-string v2, "FC_IDS"

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 4290
    const/16 v1, 0x586

    const-string v2, "COMPAT_MODE"

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 4292
    return-void

    :sswitch_data_bc
    .sparse-switch
        0x2 -> :sswitch_2a
        0xa -> :sswitch_24
        0xb -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_ca
    .sparse-switch
        0x390 -> :sswitch_9f
        0x466 -> :sswitch_99
        0x467 -> :sswitch_93
        0x468 -> :sswitch_8d
    .end sparse-switch
.end method

.method private fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V
    .registers 13
    .param p1, "fillContext"    # Landroid/service/autofill/FillContext;
    .param p2, "flags"    # I

    .line 818
    nop

    .line 819
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    .line 821
    .local v0, "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 822
    .local v1, "numViewState":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_70

    .line 823
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    .line 825
    .local v3, "viewState":Lcom/android/server/autofill/ViewState;
    aget-object v4, v0, v2

    .line 826
    .local v4, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-nez v4, :cond_3d

    .line 827
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_6d

    .line 828
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fillContextWithAllowedValuesLocked(): no node for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 834
    :cond_3d
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 835
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 836
    .local v6, "filledValue":Landroid/view/autofill/AutofillValue;
    new-instance v7, Landroid/app/assist/AssistStructure$AutofillOverlay;

    invoke-direct {v7}, Landroid/app/assist/AssistStructure$AutofillOverlay;-><init>()V

    .line 839
    .local v7, "overlay":Landroid/app/assist/AssistStructure$AutofillOverlay;
    if-eqz v6, :cond_54

    invoke-virtual {v6, v5}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 840
    iput-object v5, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 843
    :cond_54
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v8, :cond_6a

    .line 845
    iget-object v9, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v8, v9}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    .line 847
    iget-boolean v8, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v8, :cond_6a

    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_6a

    .line 848
    iput-object v5, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 851
    :cond_6a
    invoke-virtual {v4, v7}, Landroid/app/assist/AssistStructure$ViewNode;->setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V

    .line 822
    .end local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v4    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v7    # "overlay":Landroid/app/assist/AssistStructure$AutofillOverlay;
    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 853
    .end local v2    # "i":I
    :cond_70
    return-void
.end method

.method private findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 7
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 793
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 794
    .local v0, "state":Lcom/android/server/autofill/ViewState;
    const-string v1, "AutofillSession"

    if-nez v0, :cond_28

    .line 795
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findValueLocked(): no view state for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_26
    const/4 v1, 0x0

    return-object v1

    .line 798
    :cond_28
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 799
    .local v2, "value":Landroid/view/autofill/AutofillValue;
    if-nez v2, :cond_4c

    .line 800
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findValueLocked(): no current value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_48
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 803
    :cond_4c
    return-object v2
.end method

.method private findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 8
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 765
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 766
    .local v0, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v0, :cond_13

    .line 767
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    return-object v1

    .line 772
    :cond_13
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v1

    .line 773
    .local v1, "previousSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/Session;>;"
    if-eqz v1, :cond_69

    .line 774
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_45

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findValueLocked(): looking on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " previous sessions for autofillId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_45
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_69

    .line 779
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 780
    .local v3, "previousSession":Lcom/android/server/autofill/Session;
    nop

    .line 781
    invoke-direct {v3, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 782
    .local v4, "previousValue":Landroid/view/autofill/AutofillValue;
    if-eqz v4, :cond_66

    .line 783
    invoke-direct {v3}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-direct {p0, v5, p1, v4}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v5

    return-object v5

    .line 778
    .end local v3    # "previousSession":Lcom/android/server/autofill/Session;
    .end local v4    # "previousValue":Landroid/view/autofill/AutofillValue;
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 788
    .end local v2    # "i":I
    :cond_69
    const/4 v2, 0x0

    return-object v2
.end method

.method private getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;
    .registers 7
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 2628
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2629
    .local v0, "numContexts":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_2a

    .line 2630
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    .line 2631
    .local v2, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    .line 2633
    .local v3, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 2634
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 2629
    .end local v2    # "context":Landroid/service/autofill/FillContext;
    .end local v3    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2637
    .end local v1    # "i":I
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;
    .registers 7
    .param p1, "requestId"    # I

    .line 1369
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1370
    return-object v1

    .line 1373
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1374
    .local v0, "numContexts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_1f

    .line 1375
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 1377
    .local v3, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_1c

    .line 1378
    return-object v3

    .line 1374
    .end local v3    # "context":Landroid/service/autofill/FillContext;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1382
    .end local v2    # "i":I
    :cond_1f
    return-object v1
.end method

.method private getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;
    .registers 5

    .line 713
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 714
    .local v0, "numViewState":I
    new-array v1, v0, [Landroid/view/autofill/AutofillId;

    .line 715
    .local v1, "ids":[Landroid/view/autofill/AutofillId;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1a

    .line 716
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    iget-object v3, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v3, v1, v2

    .line 715
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 719
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method

.method private getLastResponseIndexLocked()I
    .registers 6

    .line 4540
    const/4 v0, -0x1

    .line 4541
    .local v0, "lastResponseIdx":I
    const/4 v1, -0x1

    .line 4542
    .local v1, "lastResponseId":I
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-eqz v2, :cond_1f

    .line 4543
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4544
    .local v2, "responseCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_1f

    .line 4545
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-le v4, v1, :cond_1c

    .line 4546
    move v0, v3

    .line 4547
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 4544
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4551
    .end local v2    # "responseCount":I
    .end local v3    # "i":I
    :cond_1f
    return v0
.end method

.method private getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;
    .registers 9
    .param p1, "logPrefixFmt"    # Ljava/lang/String;

    .line 1826
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    .line 1827
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 1828
    :cond_18
    move-object v0, v1

    :goto_19
    nop

    .line 1829
    .local v0, "logPrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const-string v3, "AutofillSession"

    if-nez v2, :cond_39

    .line 1830
    if-eqz v0, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": no contexts"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_38
    return-object v1

    .line 1833
    :cond_39
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v2, :cond_5a

    .line 1836
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_59

    if-eqz v0, :cond_59

    .line 1837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": no responses on session"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_59
    return-object v1

    .line 1842
    :cond_5a
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getLastResponseIndexLocked()I

    move-result v2

    .line 1843
    .local v2, "lastResponseIdx":I
    const-string v4, ", mViewStates="

    if-gez v2, :cond_8b

    .line 1844
    if-eqz v0, :cond_8a

    .line 1845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": did not get last response. mResponses="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_8a
    return-object v1

    .line 1851
    :cond_8b
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillResponse;

    .line 1852
    .local v1, "response":Landroid/service/autofill/FillResponse;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_cb

    if-eqz v0, :cond_cb

    .line 1853
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": mResponses="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mContexts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    :cond_cb
    return-object v1
.end method

.method private getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;
    .registers 9
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/InternalSanitizer;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ")",
            "Landroid/view/autofill/AutofillValue;"
        }
    .end annotation

    .line 2568
    .local p1, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    if-eqz p1, :cond_5a

    if-nez p3, :cond_5

    goto :goto_5a

    .line 2570
    :cond_5
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2571
    .local v0, "state":Lcom/android/server/autofill/ViewState;
    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 2572
    .local v1, "sanitized":Landroid/view/autofill/AutofillValue;
    :goto_15
    if-nez v1, :cond_59

    .line 2573
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/InternalSanitizer;

    .line 2574
    .local v2, "sanitizer":Landroid/service/autofill/InternalSanitizer;
    if-nez v2, :cond_20

    .line 2575
    return-object p3

    .line 2578
    :cond_20
    invoke-virtual {v2, p3}, Landroid/service/autofill/InternalSanitizer;->sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 2579
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_54

    .line 2580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") sanitized to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    :cond_54
    if-eqz v0, :cond_59

    .line 2583
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 2586
    .end local v2    # "sanitizer":Landroid/service/autofill/InternalSanitizer;
    :cond_59
    return-object v1

    .line 2568
    .end local v0    # "state":Lcom/android/server/autofill/ViewState;
    .end local v1    # "sanitized":Landroid/view/autofill/AutofillValue;
    :cond_5a
    :goto_5a
    return-object p3
.end method

.method private getSaveInfoLocked()Landroid/service/autofill/SaveInfo;
    .registers 3

    .line 1862
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1863
    .local v1, "response":Landroid/service/autofill/FillResponse;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method private getServiceIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 3409
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3410
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3411
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;
    .registers 3

    .line 4356
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4357
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 4358
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    monitor-exit v0

    return-object v1

    .line 4359
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 9
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 2603
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2604
    .local v0, "numContexts":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_69

    .line 2605
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    .line 2606
    .local v2, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    .line 2608
    .local v3, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v3, :cond_66

    .line 2609
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 2610
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_5d

    .line 2611
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getValueFromContexts("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :cond_5d
    if-eqz v4, :cond_66

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_66

    .line 2615
    return-object v4

    .line 2604
    .end local v2    # "context":Landroid/service/autofill/FillContext;
    .end local v3    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v4    # "value":Landroid/view/autofill/AutofillValue;
    :cond_66
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2619
    .end local v1    # "i":I
    :cond_69
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleLogContextCommitted(II)V
    .registers 9
    .param p1, "saveDialogNotShowReason"    # I
    .param p2, "commitReason"    # I

    .line 1898
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1899
    :try_start_3
    const-string/jumbo v1, "logContextCommited(%s)"

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1900
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4d

    .line 1902
    if-nez v1, :cond_16

    .line 1903
    const-string v0, "AutofillSession"

    const-string/jumbo v2, "handleLogContextCommitted(): last response is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    return-void

    .line 1909
    :cond_16
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v0

    .line 1910
    .local v0, "genericUserData":Landroid/service/autofill/UserData;
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v2

    .line 1912
    .local v2, "packageUserData":Landroid/service/autofill/UserData;
    if-nez v2, :cond_26

    if-nez v0, :cond_26

    .line 1913
    const/4 v3, 0x0

    .local v3, "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_3a

    .line 1914
    .end local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_26
    if-eqz v2, :cond_30

    if-eqz v0, :cond_30

    .line 1915
    new-instance v3, Landroid/service/autofill/CompositeUserData;

    invoke-direct {v3, v0, v2}, Landroid/service/autofill/CompositeUserData;-><init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V

    .restart local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_3a

    .line 1916
    .end local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_30
    if-eqz v2, :cond_34

    .line 1917
    move-object v3, v2

    .restart local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_3a

    .line 1919
    .end local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_34
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v3

    .line 1922
    .restart local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :goto_3a
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFieldClassificationStrategy()Lcom/android/server/autofill/FieldClassificationStrategy;

    move-result-object v4

    .line 1925
    .local v4, "fcStrategy":Lcom/android/server/autofill/FieldClassificationStrategy;
    if-eqz v3, :cond_48

    if-eqz v4, :cond_48

    .line 1926
    invoke-direct {p0, v4, v3, p1, p2}, Lcom/android/server/autofill/Session;->logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;II)V

    goto :goto_4c

    .line 1929
    :cond_48
    const/4 v5, 0x0

    invoke-direct {p0, v5, v5, p1, p2}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1931
    :goto_4c
    return-void

    .line 1900
    .end local v0    # "genericUserData":Landroid/service/autofill/UserData;
    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2    # "packageUserData":Landroid/service/autofill/UserData;
    .end local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    .end local v4    # "fcStrategy":Lcom/android/server/autofill/FieldClassificationStrategy;
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V
    .registers 4
    .param p1, "viewState"    # Lcom/android/server/autofill/ViewState;

    .line 3102
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v0

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 3104
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 3105
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    .line 3107
    :cond_f
    return-void
.end method

.method private inlineSuggestionsRequestCacheDecorator(Ljava/util/function/Consumer;I)Ljava/util/function/Consumer;
    .registers 4
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;I)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation

    .line 4033
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/Session;Ljava/util/function/Consumer;I)V

    return-object v0
.end method

.method private static isAuthResultDatasetEphemeral(Landroid/service/autofill/Dataset;Landroid/os/Bundle;)Z
    .registers 4
    .param p0, "oldDataset"    # Landroid/service/autofill/Dataset;
    .param p1, "authResultData"    # Landroid/os/Bundle;

    .line 1710
    const-string v0, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1712
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1715
    :cond_d
    invoke-static {p0}, Lcom/android/server/autofill/Session;->isPinnedDataset(Landroid/service/autofill/Dataset;)Z

    move-result v0

    return v0
.end method

.method private isFillDialogUiEnabled()Z
    .registers 4

    .line 3361
    const/4 v0, 0x1

    .line 3362
    .local v0, "isSettingsEnabledFillDialog":Z
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3363
    :try_start_4
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    monitor-exit v1

    return v2

    .line 3364
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v2
.end method

.method private isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 3115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 3116
    .local v0, "response":Landroid/service/autofill/FillResponse;
    if-nez v0, :cond_9

    const/4 v1, 0x0

    return v1

    .line 3118
    :cond_9
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isPinnedDataset(Landroid/service/autofill/Dataset;)Z
    .registers 5
    .param p0, "dataset"    # Landroid/service/autofill/Dataset;

    .line 1727
    if-eqz p0, :cond_24

    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1728
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1729
    .local v0, "numOfFields":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_24

    .line 1730
    invoke-virtual {p0, v1}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v2

    .line 1731
    .local v2, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1732
    const/4 v3, 0x1

    return v3

    .line 1729
    .end local v2    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1736
    .end local v0    # "numOfFields":I
    .end local v1    # "i":I
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private isRequestSupportFillDialog(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 980
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isSaveUiPendingLocked()Z
    .registers 3

    .line 4531
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private isViewFocusedLocked(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 883
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V
    .registers 8
    .param p1, "mode"    # I
    .param p2, "augmentedRemoteServiceName"    # Landroid/content/ComponentName;
    .param p3, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p4, "isWhitelisted"    # Z
    .param p5, "isInline"    # Ljava/lang/Boolean;

    .line 4587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aug:id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 4589
    invoke-static {v1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4594
    .local v0, "historyItem":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/AutofillManagerService;->logRequestLocked(Ljava/lang/String;)V

    .line 4595
    return-void
.end method

.method private logAuthenticationStatusLocked(II)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "status"    # I

    .line 4568
    nop

    .line 4569
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4568
    const/16 v1, 0x5ad

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 4570
    return-void
.end method

.method private logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 7
    .param p3, "saveDialogNotShowReason"    # I
    .param p4, "commitReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification;",
            ">;II)V"
        }
    .end annotation

    .line 1937
    .local p1, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p2, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1938
    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1940
    monitor-exit v0

    .line 1941
    return-void

    .line 1940
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 40
    .param p3, "saveDialogNotShowReason"    # I
    .param p4, "commitReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification;",
            ">;II)V"
        }
    .end annotation

    .line 1948
    .local p1, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p2, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    move-object/from16 v0, p0

    const-string/jumbo v1, "logContextCommited(%s)"

    invoke-direct {v0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1949
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    if-nez v1, :cond_c

    return-void

    .line 1951
    :cond_c
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1952
    invoke-static/range {p4 .. p4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getNoPresentationEventReason(I)I

    move-result v3

    .line 1951
    invoke-virtual {v2, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 1953
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 1955
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v2

    .line 1956
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x1

    const-string v4, "AutofillSession"

    if-nez v3, :cond_40

    .line 1957
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logContextCommittedLocked(): ignored by flags "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_3f
    return-void

    .line 1961
    :cond_40
    const/4 v3, 0x0

    .line 1962
    .local v3, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1963
    .local v5, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v6, 0x0

    .line 1964
    .local v6, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1966
    .local v7, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 1967
    .local v8, "hasAtLeastOneDataset":Z
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1968
    .local v9, "responseCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4c
    const-string v11, "adding ignored dataset "

    const-string/jumbo v12, "logContextCommitted() skipping idless dataset "

    const-string/jumbo v13, "logContextCommitted() no datasets at "

    if-ge v10, v9, :cond_111

    .line 1969
    iget-object v14, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/autofill/FillResponse;

    .line 1970
    .local v14, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v15

    .line 1971
    .local v15, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v15, :cond_e9

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_72

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v5

    goto/16 :goto_ef

    .line 1974
    :cond_72
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_73
    move-object/from16 v16, v1

    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .local v16, "lastResponse":Landroid/service/autofill/FillResponse;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_e4

    .line 1975
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 1976
    .local v1, "dataset":Landroid/service/autofill/Dataset;
    move/from16 v17, v2

    .end local v2    # "flags":I
    .local v17, "flags":I
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1977
    .local v2, "datasetId":Ljava/lang/String;
    if-nez v2, :cond_a7

    .line 1978
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v18, :cond_a4

    .line 1979
    move-object/from16 v18, v5

    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v18, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    .line 1978
    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_a4
    move-object/from16 v18, v5

    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    goto :goto_db

    .line 1982
    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_a7
    move-object/from16 v18, v5

    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v5, 0x1

    .line 1983
    .end local v8    # "hasAtLeastOneDataset":Z
    .local v5, "hasAtLeastOneDataset":Z
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v8, :cond_b7

    .line 1984
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b5

    goto :goto_b7

    :cond_b5
    move v8, v5

    goto :goto_db

    .line 1985
    :cond_b7
    :goto_b7
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_cf

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    :cond_cf
    if-nez v3, :cond_d7

    .line 1987
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v8

    .line 1989
    :cond_d7
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move v8, v5

    .line 1974
    .end local v1    # "dataset":Landroid/service/autofill/Dataset;
    .end local v2    # "datasetId":Ljava/lang/String;
    .end local v5    # "hasAtLeastOneDataset":Z
    .restart local v8    # "hasAtLeastOneDataset":Z
    :goto_db
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v5, v18

    goto :goto_73

    .end local v17    # "flags":I
    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v2, "flags":I
    .local v5, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_e4
    move/from16 v17, v2

    move-object/from16 v18, v5

    .end local v2    # "flags":I
    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v17    # "flags":I
    .restart local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    goto :goto_107

    .line 1971
    .end local v13    # "j":I
    .end local v16    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v17    # "flags":I
    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v2    # "flags":I
    .restart local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_e9
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v5

    .line 1972
    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2    # "flags":I
    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v16    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v17    # "flags":I
    .restart local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :goto_ef
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_107

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    .end local v14    # "response":Landroid/service/autofill/FillResponse;
    .end local v15    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_107
    :goto_107
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v5, v18

    goto/16 :goto_4c

    .end local v16    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v17    # "flags":I
    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v2    # "flags":I
    .restart local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_111
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v5

    .line 1996
    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2    # "flags":I
    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v10    # "i":I
    .restart local v16    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v17    # "flags":I
    .restart local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v1, 0x0

    .end local v18    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v1, "i":I
    .restart local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :goto_118
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3bd

    .line 1997
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 1998
    .local v2, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v10

    .line 2003
    .local v10, "state":I
    and-int/lit8 v14, v10, 0x8

    if-eqz v14, :cond_3ab

    .line 2005
    and-int/lit16 v14, v10, 0x800

    if-eqz v14, :cond_1e3

    .line 2006
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getDatasetId()Ljava/lang/String;

    move-result-object v14

    .line 2007
    .local v14, "datasetId":Ljava/lang/String;
    if-nez v14, :cond_15b

    .line 2009
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v10

    .end local v10    # "state":I
    .local v18, "state":I
    const-string/jumbo v10, "logContextCommitted(): no dataset id on "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v23, v12

    goto/16 :goto_3b3

    .line 2015
    .end local v18    # "state":I
    .restart local v10    # "state":I
    :cond_15b
    move/from16 v18, v10

    .end local v10    # "state":I
    .restart local v18    # "state":I
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 2016
    .local v10, "autofilledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v15

    .line 2017
    .local v15, "currentValue":Landroid/view/autofill/AutofillValue;
    if-eqz v10, :cond_1a6

    invoke-virtual {v10, v15}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a6

    .line 2018
    sget-boolean v19, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v19, :cond_19a

    .line 2019
    move-object/from16 v19, v10

    .end local v10    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .local v19, "autofilledValue":Landroid/view/autofill/AutofillValue;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v15

    .end local v15    # "currentValue":Landroid/view/autofill/AutofillValue;
    .local v20, "currentValue":Landroid/view/autofill/AutofillValue;
    const-string/jumbo v15, "logContextCommitted(): ignoring changed "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " because it has same value that was autofilled"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v23, v12

    goto/16 :goto_3b3

    .line 2018
    .end local v19    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v20    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v10    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v15    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_19a
    move-object/from16 v19, v10

    move-object/from16 v20, v15

    .end local v10    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v15    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v19    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v20    # "currentValue":Landroid/view/autofill/AutofillValue;
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v23, v12

    goto/16 :goto_3b3

    .line 2017
    .end local v19    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v20    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v10    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v15    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_1a6
    move-object/from16 v19, v10

    move-object/from16 v20, v15

    .line 2025
    .end local v10    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v15    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v19    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v20    # "currentValue":Landroid/view/autofill/AutofillValue;
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_1c5

    .line 2026
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "logContextCommitted() found changed state: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_1c5
    if-nez v5, :cond_1d3

    .line 2029
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v10

    .line 2030
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v10

    .line 2032
    :cond_1d3
    iget-object v10, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2033
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2034
    .end local v14    # "datasetId":Ljava/lang/String;
    .end local v19    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v20    # "currentValue":Landroid/view/autofill/AutofillValue;
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v23, v12

    goto/16 :goto_3b3

    .line 2035
    .end local v18    # "state":I
    .local v10, "state":I
    :cond_1e3
    move/from16 v18, v10

    .end local v10    # "state":I
    .restart local v18    # "state":I
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 2036
    .local v10, "currentValue":Landroid/view/autofill/AutofillValue;
    if-nez v10, :cond_21c

    .line 2037
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v14, :cond_214

    .line 2038
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "logContextCommitted(): skipping view without current value ( "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v23, v12

    goto/16 :goto_3b3

    .line 2037
    :cond_214
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v23, v12

    goto/16 :goto_3b3

    .line 2045
    :cond_21c
    if-eqz v8, :cond_3a2

    .line 2046
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_21f
    if-ge v14, v9, :cond_397

    .line 2047
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/autofill/FillResponse;

    .line 2048
    .local v15, "response":Landroid/service/autofill/FillResponse;
    move-object/from16 v19, v3

    .end local v3    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v19, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    .line 2049
    .local v3, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v3, :cond_367

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_243

    move-object/from16 v21, v3

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v25, v10

    move-object/from16 v23, v12

    goto/16 :goto_371

    .line 2054
    :cond_243
    const/16 v20, 0x0

    move/from16 v34, v20

    move-object/from16 v20, v7

    move/from16 v7, v34

    .local v7, "k":I
    .local v20, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_24b
    move/from16 v32, v8

    .end local v8    # "hasAtLeastOneDataset":Z
    .local v32, "hasAtLeastOneDataset":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_35a

    .line 2055
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/Dataset;

    .line 2056
    .local v8, "dataset":Landroid/service/autofill/Dataset;
    move-object/from16 v21, v3

    .end local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v21, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2057
    .local v3, "datasetId":Ljava/lang/String;
    if-nez v3, :cond_284

    .line 2058
    sget-boolean v22, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v22, :cond_27c

    .line 2059
    move/from16 v33, v9

    .end local v9    # "responseCount":I
    .local v33, "responseCount":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27e

    .line 2058
    .end local v33    # "responseCount":I
    .restart local v9    # "responseCount":I
    :cond_27c
    move/from16 v33, v9

    .line 2054
    .end local v3    # "datasetId":Ljava/lang/String;
    .end local v8    # "dataset":Landroid/service/autofill/Dataset;
    .end local v9    # "responseCount":I
    .restart local v33    # "responseCount":I
    :goto_27e
    move-object/from16 v25, v10

    move-object/from16 v23, v12

    goto/16 :goto_34c

    .line 2063
    .end local v33    # "responseCount":I
    .restart local v3    # "datasetId":Ljava/lang/String;
    .restart local v8    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v9    # "responseCount":I
    :cond_284
    move/from16 v33, v9

    .line 2064
    .end local v9    # "responseCount":I
    .restart local v33    # "responseCount":I
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v9

    .line 2065
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/16 v22, 0x0

    move/from16 v34, v22

    move-object/from16 v22, v8

    move/from16 v8, v34

    .local v8, "l":I
    .local v22, "dataset":Landroid/service/autofill/Dataset;
    :goto_292
    move-object/from16 v23, v12

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_315

    .line 2066
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/autofill/AutofillValue;

    .line 2067
    .local v12, "candidate":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v10, v12}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_305

    .line 2068
    sget-boolean v24, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v24, :cond_2d1

    .line 2069
    move-object/from16 v24, v9

    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .local v24, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v10

    .end local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    .local v25, "currentValue":Landroid/view/autofill/AutofillValue;
    const-string v10, "field "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was manually filled with value set by dataset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d5

    .line 2068
    .end local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_2d1
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .line 2073
    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    :goto_2d5
    if-nez v20, :cond_2df

    .line 2074
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v20, v9

    goto :goto_2e1

    .line 2073
    :cond_2df
    move-object/from16 v9, v20

    .line 2076
    .end local v20    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v9, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_2e1
    iget-object v10, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 2077
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 2078
    .local v10, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v10, :cond_2fb

    .line 2079
    move-object/from16 v20, v10

    .end local v10    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v20, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v10, Landroid/util/ArraySet;

    move-object/from16 v26, v12

    .end local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .local v26, "candidate":Landroid/view/autofill/AutofillValue;
    const/4 v12, 0x1

    invoke-direct {v10, v12}, Landroid/util/ArraySet;-><init>(I)V

    .line 2080
    .end local v20    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v12, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v9, v12, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2ff

    .line 2078
    .end local v26    # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    :cond_2fb
    move-object/from16 v20, v10

    move-object/from16 v26, v12

    .line 2082
    .end local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v26    # "candidate":Landroid/view/autofill/AutofillValue;
    :goto_2ff
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v9

    goto :goto_30b

    .line 2067
    .end local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v26    # "candidate":Landroid/view/autofill/AutofillValue;
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .local v10, "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .local v20, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_305
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    .line 2065
    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    :goto_30b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v12, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto/16 :goto_292

    .end local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_315
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .line 2085
    .end local v8    # "l":I
    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v8, :cond_323

    .line 2086
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_34c

    .line 2087
    :cond_323
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_33b

    .line 2088
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_33b
    if-nez v19, :cond_345

    .line 2091
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v19, v8

    goto :goto_347

    .line 2090
    :cond_345
    move-object/from16 v8, v19

    .line 2093
    .end local v19    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v8, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_347
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v8

    .line 2054
    .end local v3    # "datasetId":Ljava/lang/String;
    .end local v8    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "dataset":Landroid/service/autofill/Dataset;
    .end local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v19    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_34c
    :goto_34c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v21

    move-object/from16 v12, v23

    move-object/from16 v10, v25

    move/from16 v8, v32

    move/from16 v9, v33

    goto/16 :goto_24b

    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v33    # "responseCount":I
    .local v3, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v9, "responseCount":I
    .restart local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_35a
    move-object/from16 v21, v3

    move/from16 v33, v9

    move-object/from16 v25, v10

    move-object/from16 v23, v12

    .end local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v9    # "responseCount":I
    .end local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v33    # "responseCount":I
    move-object/from16 v3, v19

    move-object/from16 v7, v20

    goto :goto_38b

    .line 2049
    .end local v20    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v32    # "hasAtLeastOneDataset":Z
    .end local v33    # "responseCount":I
    .restart local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v7, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v8, "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    .restart local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_367
    move-object/from16 v21, v3

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v25, v10

    move-object/from16 v23, v12

    .line 2050
    .end local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .end local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v32    # "hasAtLeastOneDataset":Z
    .restart local v33    # "responseCount":I
    :goto_371
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_389

    .line 2051
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    .end local v15    # "response":Landroid/service/autofill/FillResponse;
    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_389
    move-object/from16 v3, v19

    .end local v19    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_38b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v23

    move-object/from16 v10, v25

    move/from16 v8, v32

    move/from16 v9, v33

    goto/16 :goto_21f

    .end local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v32    # "hasAtLeastOneDataset":Z
    .end local v33    # "responseCount":I
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    .restart local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_397
    move-object/from16 v19, v3

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v25, v10

    move-object/from16 v23, v12

    .end local v3    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .end local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v19    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v32    # "hasAtLeastOneDataset":Z
    .restart local v33    # "responseCount":I
    goto :goto_3b3

    .line 2045
    .end local v14    # "j":I
    .end local v19    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v32    # "hasAtLeastOneDataset":Z
    .end local v33    # "responseCount":I
    .restart local v3    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    .restart local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_3a2
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v25, v10

    move-object/from16 v23, v12

    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .end local v10    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v32    # "hasAtLeastOneDataset":Z
    .restart local v33    # "responseCount":I
    goto :goto_3b3

    .line 2003
    .end local v18    # "state":I
    .end local v25    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v32    # "hasAtLeastOneDataset":Z
    .end local v33    # "responseCount":I
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    .local v10, "state":I
    :cond_3ab
    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v18, v10

    move-object/from16 v23, v12

    .line 1996
    .end local v2    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .end local v10    # "state":I
    .restart local v32    # "hasAtLeastOneDataset":Z
    .restart local v33    # "responseCount":I
    :goto_3b3
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v12, v23

    move/from16 v8, v32

    move/from16 v9, v33

    goto/16 :goto_118

    .end local v32    # "hasAtLeastOneDataset":Z
    .end local v33    # "responseCount":I
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    :cond_3bd
    move/from16 v32, v8

    move/from16 v33, v9

    .line 2104
    .end local v1    # "i":I
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .restart local v32    # "hasAtLeastOneDataset":Z
    .restart local v33    # "responseCount":I
    const/4 v1, 0x0

    .line 2105
    .local v1, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v2, 0x0

    .line 2108
    .local v2, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_3f2

    .line 2109
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 2110
    .local v4, "size":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v8

    .line 2111
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v8

    .line 2112
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3d6
    if-ge v8, v4, :cond_3f2

    .line 2113
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillId;

    .line 2114
    .local v9, "fieldId":Landroid/view/autofill/AutofillId;
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 2115
    .local v10, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2116
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2112
    .end local v9    # "fieldId":Landroid/view/autofill/AutofillId;
    .end local v10    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_3d6

    .line 2120
    .end local v4    # "size":I
    .end local v8    # "i":I
    :cond_3f2
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v8, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v12, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-object/from16 v18, v4

    move/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, p1

    move-object/from16 v28, p2

    move-object/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, p3

    invoke-virtual/range {v18 .. v31}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;ZI)V

    .line 2124
    return-void
.end method

.method private logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;II)V
    .registers 34
    .param p1, "fcStrategy"    # Lcom/android/server/autofill/FieldClassificationStrategy;
    .param p2, "userData"    # Landroid/service/autofill/FieldClassificationUserData;
    .param p3, "saveDialogNotShowReason"    # I
    .param p4, "commitReason"    # I

    .line 2135
    move-object/from16 v11, p0

    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getValues()[Ljava/lang/String;

    move-result-object v15

    .line 2136
    .local v15, "userValues":[Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v14

    .line 2138
    .local v14, "categoryIds":[Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v21

    .line 2139
    .local v21, "defaultAlgorithm":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v22

    .line 2141
    .local v22, "defaultArgs":Landroid/os/Bundle;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v23

    .line 2142
    .local v23, "algorithms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v24

    .line 2145
    .local v24, "args":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    if-eqz v15, :cond_a9

    if-eqz v14, :cond_a9

    array-length v0, v15

    array-length v1, v14

    if-eq v0, v1, :cond_26

    move-object v3, v14

    move-object v4, v15

    goto/16 :goto_ab

    .line 2153
    :cond_26
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v12

    .line 2155
    .local v12, "maxFieldsSize":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 2156
    .local v9, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 2160
    .local v10, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    iget-object v1, v11, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2161
    :try_start_37
    iget-object v0, v11, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2162
    .local v0, "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_a1

    .line 2164
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v13

    .line 2167
    .local v13, "viewsSize":I
    new-array v8, v13, [Landroid/view/autofill/AutofillId;

    .line 2168
    .local v8, "autofillIds":[Landroid/view/autofill/AutofillId;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v1

    .line 2169
    .local v7, "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/4 v1, 0x0

    .line 2170
    .local v1, "k":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v25, v1

    .end local v1    # "k":I
    .local v25, "k":I
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 2171
    .local v1, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    add-int/lit8 v3, v25, 0x1

    .end local v25    # "k":I
    .local v3, "k":I
    iget-object v4, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v4, v8, v25

    .line 2173
    .end local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    move/from16 v25, v3

    goto :goto_51

    .line 2176
    .end local v3    # "k":I
    .restart local v25    # "k":I
    :cond_6d
    new-instance v6, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    move-object v1, v5

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v26, v0

    move-object v0, v5

    .end local v0    # "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    .local v26, "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    move v5, v13

    move-object v11, v6

    move-object v6, v8

    move-object/from16 v27, v7

    .end local v7    # "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .local v27, "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    move-object v7, v15

    move-object/from16 v28, v8

    .end local v8    # "autofillIds":[Landroid/view/autofill/AutofillId;
    .local v28, "autofillIds":[Landroid/view/autofill/AutofillId;
    move-object v8, v14

    invoke-direct/range {v1 .. v10}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/Session;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v11, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move v0, v13

    .end local v13    # "viewsSize":I
    .local v0, "viewsSize":I
    move-object v13, v11

    .line 2244
    .local v13, "callback":Landroid/os/RemoteCallback;
    move v2, v12

    .end local v12    # "maxFieldsSize":I
    .local v2, "maxFieldsSize":I
    move-object/from16 v12, p1

    move-object v3, v14

    .end local v14    # "categoryIds":[Ljava/lang/String;
    .local v3, "categoryIds":[Ljava/lang/String;
    move-object/from16 v14, v27

    move-object v4, v15

    .end local v15    # "userValues":[Ljava/lang/String;
    .local v4, "userValues":[Ljava/lang/String;
    move-object/from16 v16, v3

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/autofill/FieldClassificationStrategy;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 2246
    return-void

    .line 2162
    .end local v0    # "viewsSize":I
    .end local v2    # "maxFieldsSize":I
    .end local v3    # "categoryIds":[Ljava/lang/String;
    .end local v4    # "userValues":[Ljava/lang/String;
    .end local v13    # "callback":Landroid/os/RemoteCallback;
    .end local v25    # "k":I
    .end local v26    # "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    .end local v27    # "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v28    # "autofillIds":[Landroid/view/autofill/AutofillId;
    .restart local v12    # "maxFieldsSize":I
    .restart local v14    # "categoryIds":[Ljava/lang/String;
    .restart local v15    # "userValues":[Ljava/lang/String;
    :catchall_a1
    move-exception v0

    move v2, v12

    move-object v3, v14

    move-object v4, v15

    .end local v12    # "maxFieldsSize":I
    .end local v14    # "categoryIds":[Ljava/lang/String;
    .end local v15    # "userValues":[Ljava/lang/String;
    .restart local v2    # "maxFieldsSize":I
    .restart local v3    # "categoryIds":[Ljava/lang/String;
    .restart local v4    # "userValues":[Ljava/lang/String;
    :goto_a5
    :try_start_a5
    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a7

    throw v0

    :catchall_a7
    move-exception v0

    goto :goto_a5

    .line 2145
    .end local v2    # "maxFieldsSize":I
    .end local v3    # "categoryIds":[Ljava/lang/String;
    .end local v4    # "userValues":[Ljava/lang/String;
    .end local v9    # "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v10    # "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    .restart local v14    # "categoryIds":[Ljava/lang/String;
    .restart local v15    # "userValues":[Ljava/lang/String;
    :cond_a9
    move-object v3, v14

    move-object v4, v15

    .line 2146
    .end local v14    # "categoryIds":[Ljava/lang/String;
    .end local v15    # "userValues":[Ljava/lang/String;
    .restart local v3    # "categoryIds":[Ljava/lang/String;
    .restart local v4    # "userValues":[Ljava/lang/String;
    :goto_ab
    const/4 v0, -0x1

    if-nez v4, :cond_b0

    move v1, v0

    goto :goto_b1

    :cond_b0
    array-length v1, v4

    .line 2147
    .local v1, "valuesLength":I
    :goto_b1
    if-nez v3, :cond_b4

    goto :goto_b5

    :cond_b4
    array-length v0, v3

    .line 2148
    .local v0, "idsLength":I
    :goto_b5
    const-string v2, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScores(): user data mismatch: values.length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ids.length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    return-void
.end method

.method private logIfViewClearedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;)V
    .registers 8
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "viewState"    # Lcom/android/server/autofill/ViewState;

    .line 3123
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 3124
    :cond_8
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 3125
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 3126
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 3127
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 3128
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3129
    .local v0, "length":I
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_61

    .line 3130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): resetting value that was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    :cond_61
    const/16 v1, 0x464

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x465

    .line 3134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 3135
    .local v1, "log":Landroid/metrics/LogMaker;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3137
    .end local v0    # "length":I
    .end local v1    # "log":Landroid/metrics/LogMaker;
    :cond_76
    return-void
.end method

.method private logSaveShown()V
    .registers 4

    .line 2560
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logSaveShown(ILandroid/os/Bundle;)V

    .line 2561
    return-void
.end method

.method private mergePreviousSessionLocked(Z)Ljava/util/ArrayList;
    .registers 11
    .param p1, "forSave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation

    .line 2755
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2757
    .local v0, "previousSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/Session;>;"
    if-eqz v0, :cond_f2

    .line 2758
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string/jumbo v2, "mergeSessions("

    const-string v3, "AutofillSession"

    if-eqz v1, :cond_41

    .line 2759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "): Merging the content of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2760
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " sessions for task "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2759
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    :cond_41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2763
    .local v1, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_ec

    .line 2764
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    .line 2765
    .local v5, "previousSession":Lcom/android/server/autofill/Session;
    iget-object v6, v5, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 2766
    .local v6, "previousContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    if-nez v6, :cond_7a

    .line 2767
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): Not merging null contexts from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    goto :goto_e8

    .line 2771
    :cond_7a
    if-eqz p1, :cond_7f

    .line 2772
    invoke-direct {v5}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 2774
    :cond_7f
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_b3

    .line 2775
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " context from previous session #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :cond_b3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2779
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-nez v7, :cond_e8

    iget-object v7, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v7, :cond_e8

    .line 2780
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_e4

    .line 2781
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): setting client state from previous session"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_e4
    iget-object v7, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iput-object v7, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 2763
    .end local v5    # "previousSession":Lcom/android/server/autofill/Session;
    .end local v6    # "previousContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :cond_e8
    :goto_e8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_47

    .line 2787
    .end local v4    # "i":I
    :cond_ec
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_f9

    .line 2793
    .end local v1    # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :cond_f2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2795
    .restart local v1    # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :goto_f9
    return-object v1
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .registers 3
    .param p1, "category"    # I

    .line 4555
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "category"    # I
    .param p2, "servicePackageName"    # Ljava/lang/String;

    .line 4559
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private notifyClientFillDialogTriggerIds(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 3350
    .local p1, "fieldIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    const-string v0, "AutofillSession"

    :try_start_2
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1d

    .line 3351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyFillDialogTriggerIds(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillDialogTriggerIds(Ljava/util/List;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_24} :catch_25

    .line 3356
    goto :goto_2b

    .line 3354
    :catch_25
    move-exception v1

    .line 3355
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Cannot set trigger ids for fill dialog"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3357
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method

.method private notifyDisableAutofillToClient(JLandroid/content/ComponentName;)V
    .registers 9
    .param p1, "disableDuration"    # J
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 3501
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3502
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2c

    return-void

    .line 3504
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/autofill/IAutoFillManagerClient;->notifyDisableAutofill(JLandroid/content/ComponentName;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_2c

    .line 3507
    goto :goto_2a

    .line 3505
    :catch_f
    move-exception v1

    .line 3506
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_10
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying client disable autofill: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3508
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2a
    monitor-exit v0

    .line 3509
    return-void

    .line 3508
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private notifyFillUiHidden(Landroid/view/autofill/AutofillId;)V
    .registers 6
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 1594
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1596
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    .line 1599
    goto :goto_15

    .line 1600
    :catchall_b
    move-exception v1

    goto :goto_17

    .line 1597
    :catch_d
    move-exception v1

    .line 1598
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v2, "AutofillSession"

    const-string v3, "Error sending fill UI hidden notification"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1600
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_15
    monitor-exit v0

    .line 1601
    return-void

    .line 1600
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    throw v1
.end method

.method private notifyFillUiShown(Landroid/view/autofill/AutofillId;)V
    .registers 6
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 1604
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1606
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    .line 1609
    goto :goto_15

    .line 1610
    :catchall_b
    move-exception v1

    goto :goto_17

    .line 1607
    :catch_d
    move-exception v1

    .line 1608
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v2, "AutofillSession"

    const-string v3, "Error sending fill UI shown notification"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1610
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_15
    monitor-exit v0

    .line 1611
    return-void

    .line 1610
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    throw v1
.end method

.method private notifyUnavailableToClient(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "sessionFinishedState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 3486
    .local p2, "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3487
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3a

    return-void

    .line 3489
    :cond_9
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    if-eqz v2, :cond_15

    .line 3490
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v2, v3, v1, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    goto :goto_1c

    .line 3491
    :cond_15
    if-eqz p1, :cond_1c

    .line 3492
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1c} :catch_1d
    .catchall {:try_start_9 .. :try_end_1c} :catchall_3a

    .line 3496
    :cond_1c
    :goto_1c
    goto :goto_38

    .line 3494
    :catch_1d
    move-exception v1

    .line 3495
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying client no fill UI: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3497
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_38
    monitor-exit v0

    .line 3498
    return-void

    .line 3497
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V
    .registers 11
    .param p1, "requestId"    # I
    .param p2, "timedOut"    # Z
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 1254
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1255
    .local v0, "showMessage":Z
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1256
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 1257
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_3c

    .line 1258
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call to Session#onFillRequestFailureOrTimeout(req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") rejected - session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " destroyed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    monitor-exit v1

    return-void

    .line 1262
    :cond_3c
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_60

    .line 1263
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishing session due to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1264
    if-eqz p2, :cond_53

    const-string/jumbo v4, "timeout"

    goto :goto_55

    :cond_53
    const-string v4, "failure"

    :goto_55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1263
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_60
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 1267
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/metrics/LogMaker;

    .line 1268
    .local v2, "requestLog":Landroid/metrics/LogMaker;
    if-nez v2, :cond_89

    .line 1269
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onFillRequestFailureOrTimeout(): no log for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 1271
    :cond_89
    if-eqz p2, :cond_8d

    const/4 v3, 0x2

    goto :goto_8f

    :cond_8d
    const/16 v3, 0xb

    :goto_8f
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1273
    :goto_92
    if-eqz v0, :cond_d1

    .line 1274
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getTargedSdkLocked()I

    move-result v3

    .line 1275
    .local v3, "targetSdk":I
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_c2

    .line 1276
    const/4 v0, 0x0

    .line 1277
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFillRequestFailureOrTimeout(): not showing \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' because service\'s targetting API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_c2
    if-eqz p3, :cond_d1

    .line 1281
    const/16 v4, 0x624

    .line 1282
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1281
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1287
    .end local v3    # "targetSdk":I
    :cond_d1
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 1289
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 1290
    .end local v2    # "requestLog":Landroid/metrics/LogMaker;
    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_9 .. :try_end_dd} :catchall_ef

    .line 1291
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 1293
    if-eqz v0, :cond_eb

    .line 1294
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    invoke-virtual {v1, p3, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 1296
    :cond_eb
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 1297
    return-void

    .line 1290
    :catchall_ef
    move-exception v2

    :try_start_f0
    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v2
.end method

.method private processNullResponseLocked(II)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "flags"    # I

    .line 3623
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 3624
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    .line 3625
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    const v1, 0x1040188

    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3628
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v0

    .line 3631
    .local v0, "context":Landroid/service/autofill/FillContext;
    const-string v1, "AutofillSession"

    if-eqz v0, :cond_23

    .line 3632
    invoke-virtual {v0}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v2

    .line 3633
    .local v2, "structure":Landroid/app/assist/AssistStructure;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 3634
    .local v2, "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    goto :goto_3b

    .line 3635
    .end local v2    # "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNullResponseLocked(): no context for req "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    const/4 v2, 0x0

    .line 3639
    .restart local v2    # "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :goto_3b
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 3643
    invoke-direct {p0, p2}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 3644
    if-nez v3, :cond_7a

    and-int/lit8 v3, p2, 0x4

    if-nez v3, :cond_7a

    .line 3645
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_72

    .line 3646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canceling session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when service returned null and it cannot be augmented. AutofillableIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    :cond_72
    const/4 v1, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 3651
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    goto :goto_e1

    .line 3653
    :cond_7a
    and-int/lit8 v3, p2, 0x4

    const-string/jumbo v4, "keeping session "

    if-eqz v3, :cond_ad

    .line 3654
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_a5

    .line 3655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when service returned null and augmented service is disabled for password fields. AutofillableIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    :cond_a5
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    goto :goto_d1

    .line 3661
    :cond_ad
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_d1

    .line 3662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when service returned null but it can be augmented. AutofillableIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    :cond_d1
    :goto_d1
    iput-object v2, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 3668
    :try_start_d3
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_da} :catch_db

    .line 3671
    goto :goto_e1

    .line 3669
    :catch_db
    move-exception v3

    .line 3670
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error setting client to autofill-only"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3673
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_e1
    return-void
.end method

.method private processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "newResponse"    # Landroid/service/autofill/FillResponse;
    .param p2, "newClientState"    # Landroid/os/Bundle;
    .param p3, "flags"    # I

    .line 3835
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3837
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const-string v1, "AutofillSession"

    if-nez v0, :cond_17

    .line 3838
    const-string v0, "Service did not request to wait for delayed fill response."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 3842
    :cond_17
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    .line 3843
    .local v0, "requestId":I
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_60

    .line 3844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processResponseLocked(): mCurrentViewId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reqId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",newClientState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    :cond_60
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x2

    if-nez v1, :cond_6c

    .line 3853
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 3855
    :cond_6c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3856
    if-eqz p2, :cond_75

    move-object v1, p2

    goto :goto_79

    :cond_75
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v1

    :goto_79
    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 3858
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3859
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3858
    invoke-virtual {v1, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAvailableCount(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    .line 3861
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 3862
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateFillDialogTriggerIdsLocked()V

    .line 3863
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 3865
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_95

    .line 3866
    return-void

    .line 3870
    :cond_95
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 3871
    .local v1, "currentView":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 3872
    return-void
.end method

.method private registerDelayedFillBroadcastLocked()V
    .registers 4

    .line 691
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    if-nez v0, :cond_1d

    .line 692
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "registerDelayedFillBroadcastLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.service.autofill.action.DELAYED_FILL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 694
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 695
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    .line 697
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1d
    return-void
.end method

.method private removeFromService()V
    .registers 3

    .line 4482
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4483
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 4484
    monitor-exit v0

    .line 4485
    return-void

    .line 4484
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "oldResponse"    # Landroid/service/autofill/FillResponse;
    .param p2, "newResponse"    # Landroid/service/autofill/FillResponse;
    .param p3, "newClientState"    # Landroid/os/Bundle;

    .line 3612
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 3614
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 3616
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3618
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 3619
    return-void
.end method

.method private requestAssistStructureLocked(II)V
    .registers 9
    .param p1, "requestId"    # I
    .param p2, "flags"    # I

    .line 986
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 987
    .local v0, "receiverExtras":Landroid/os/Bundle;
    const-string v1, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 988
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_41

    .line 990
    .local v1, "identity":J
    :try_start_e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {v3, v4, v0, v5, p2}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v3

    if-nez v3, :cond_36

    .line 992
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to request autofill data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_3b

    .line 995
    :cond_36
    :try_start_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    nop

    .line 999
    .end local v0    # "receiverExtras":Landroid/os/Bundle;
    .end local v1    # "identity":J
    goto :goto_42

    .line 995
    .restart local v0    # "receiverExtras":Landroid/os/Bundle;
    .restart local v1    # "identity":J
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    nop

    .end local p0    # "this":Lcom/android/server/autofill/Session;
    .end local p1    # "requestId":I
    .end local p2    # "flags":I
    throw v3
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_41} :catch_41

    .line 997
    .end local v0    # "receiverExtras":Landroid/os/Bundle;
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/autofill/Session;
    .restart local p1    # "requestId":I
    .restart local p2    # "flags":I
    :catch_41
    move-exception v0

    .line 1000
    :goto_42
    return-void
.end method

.method private requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V
    .registers 15
    .param p1, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .line 895
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getResponse()Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 896
    .local v0, "existingResponse":Landroid/service/autofill/FillResponse;
    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 897
    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 902
    :cond_a
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 903
    iput v1, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 904
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v2

    const-string v4, ", flags="

    const-string v5, "AutofillSession"

    if-nez v2, :cond_d1

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v2, :cond_24

    goto/16 :goto_d1

    .line 915
    :cond_24
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 920
    :cond_27
    sget-object v2, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 921
    .local v2, "requestId":I
    const/high16 v6, -0x80000000

    if-eq v2, v6, :cond_27

    .line 924
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/2addr v6, v1

    .line 925
    .local v6, "ordinal":I
    const/16 v7, 0x38b

    invoke-direct {p0, v7}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v7

    const/16 v8, 0x5ae

    .line 926
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 927
    .local v7, "log":Landroid/metrics/LogMaker;
    if-eqz p3, :cond_53

    .line 928
    const/16 v8, 0x5ac

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 930
    :cond_53
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 932
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_84

    .line 933
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requesting structure for request #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,requestId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_84
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v4, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetRequestId(I)V

    .line 943
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 948
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 949
    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v4

    .line 950
    .local v4, "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v5}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v5

    if-eqz v5, :cond_c8

    if-eqz v4, :cond_c8

    .line 952
    invoke-direct {p0, p3}, Lcom/android/server/autofill/Session;->isViewFocusedLocked(I)Z

    move-result v5

    if-nez v5, :cond_a8

    invoke-direct {p0, p3}, Lcom/android/server/autofill/Session;->isRequestSupportFillDialog(I)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 953
    :cond_a8
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 954
    invoke-virtual {v3, p1, v1}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;

    move-result-object v1

    .line 956
    .local v1, "inlineSuggestionsRequestConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    if-eqz v1, :cond_c7

    .line 957
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 958
    .local v3, "focusedId":Landroid/view/autofill/AutofillId;
    move v5, v2

    .line 959
    .local v5, "requestIdCopy":I
    new-instance v8, Landroid/os/RemoteCallback;

    new-instance v9, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0, v3, v1, v5}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;I)V

    iget-object v10, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v9, v10}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {v4, v8}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    .line 969
    const/high16 v8, 0x10000

    invoke-virtual {p1, v8}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 971
    .end local v1    # "inlineSuggestionsRequestConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    .end local v3    # "focusedId":Landroid/view/autofill/AutofillId;
    .end local v5    # "requestIdCopy":I
    :cond_c7
    goto :goto_cd

    .line 972
    :cond_c8
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;

    .line 976
    :goto_cd
    invoke-direct {p0, v2, p3}, Lcom/android/server/autofill/Session;->requestAssistStructureLocked(II)V

    .line 977
    return-void

    .line 905
    .end local v2    # "requestId":I
    .end local v4    # "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .end local v6    # "ordinal":I
    .end local v7    # "log":Landroid/metrics/LogMaker;
    :cond_d1
    :goto_d1
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_100

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNewFillResponse(): triggering augmented autofill instead (mForAugmentedAutofillOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_100
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v2, v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 911
    invoke-direct {p0, p3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 912
    return-void
.end method

.method private requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Z
    .registers 10
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p3, "flags"    # I

    .line 2816
    and-int/lit8 v0, p3, 0x1

    const-string v1, "AutofillSession"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_37

    .line 2817
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2818
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-starting session on view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and flags "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    :cond_31
    const/16 v0, 0x100

    invoke-direct {p0, p2, v0, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 2820
    return v3

    .line 2824
    :cond_37
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v0

    const-string v4, ": "

    if-eqz v0, :cond_70

    .line 2825
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_65

    .line 2826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting partition or augmented request for view id "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2827
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2826
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    :cond_65
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2833
    const/16 v0, 0x20

    invoke-direct {p0, p2, v0, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 2834
    return v3

    .line 2837
    :cond_70
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_96

    .line 2838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not starting new partition for view "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2839
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2838
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_96
    return v2
.end method

.method private requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)Z
    .registers 18
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "filledId"    # Landroid/view/autofill/AutofillId;
    .param p3, "filterText"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 3387
    move-object v10, p0

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isFillDialogUiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 3389
    return v1

    .line 3392
    :cond_9
    move/from16 v11, p4

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_10

    .line 3394
    return v1

    .line 3397
    :cond_10
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getServiceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 3399
    .local v12, "serviceIcon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3400
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v8, v10, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v9, v10, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 3399
    move-object v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v6, v12

    move-object v7, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/autofill/ui/AutoFillUI;->showFillDialog(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZ)V

    .line 3402
    const/4 v0, 0x1

    return v0
.end method

.method private requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z
    .registers 15
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "filterText"    # Ljava/lang/String;

    .line 3419
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    const-string v2, "AutofillSession"

    if-nez v0, :cond_e

    .line 3420
    const-string/jumbo v0, "requestShowInlineSuggestionsLocked(): no view currently focused"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    return v1

    .line 3423
    :cond_e
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3425
    .local v0, "focusedId":Landroid/view/autofill/AutofillId;
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 3426
    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillInlineSessionController;->getInlineSuggestionsRequestLocked()Ljava/util/Optional;

    move-result-object v10

    .line 3427
    .local v10, "inlineSuggestionsRequest":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    invoke-virtual {v10}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_22

    .line 3428
    const-string v3, "InlineSuggestionsRequest unavailable"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    return v1

    .line 3432
    :cond_22
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3433
    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v11

    .line 3434
    .local v11, "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    if-nez v11, :cond_30

    .line 3435
    const-string v3, "RemoteInlineSuggestionRenderService not found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    return v1

    .line 3439
    :cond_30
    new-instance v1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;

    .line 3440
    invoke-virtual {v10}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget v8, p0, Lcom/android/server/autofill/Session;->userId:I

    iget v9, p0, Lcom/android/server/autofill/Session;->id:I

    move-object v3, v1

    move-object v5, v0

    move-object v6, p2

    move-object v7, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;-><init>(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)V

    .line 3442
    .local v1, "inlineFillUiInfo":Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    new-instance v2, Lcom/android/server/autofill/Session$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/autofill/Session$3;-><init>(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/autofill/ui/InlineFillUi;->forAutofill(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v2

    .line 3469
    .local v2, "inlineFillUi":Lcom/android/server/autofill/ui/InlineFillUi;
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v3, v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result v3

    return v3
.end method

.method private static sessionStateAsString(I)Ljava/lang/String;
    .registers 3
    .param p0, "sessionState"    # I

    .line 4628
    packed-switch p0, :pswitch_data_24

    .line 4638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_SESSION_STATE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4636
    :pswitch_17
    const-string v0, "STATE_REMOVED"

    return-object v0

    .line 4634
    :pswitch_1a
    const-string v0, "STATE_FINISHED"

    return-object v0

    .line 4632
    :pswitch_1d
    const-string v0, "STATE_ACTIVE"

    return-object v0

    .line 4630
    :pswitch_20
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private setClientLocked(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "client"    # Landroid/os/IBinder;

    .line 1093
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 1094
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 1095
    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 1107
    :try_start_10
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 1111
    goto :goto_39

    .line 1108
    :catch_1d
    move-exception v0

    .line 1109
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not set binder death listener on autofill client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 1112
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method private setFillDialogDisabled()V
    .registers 4

    .line 3368
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 3370
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    .line 3371
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    .line 3372
    return-void

    .line 3370
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private setFillDialogDisabledAndStartInput()V
    .registers 3

    .line 3375
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->isFillDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3376
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 3378
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3379
    :try_start_10
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3380
    .local v1, "id":Landroid/view/autofill/AutofillId;
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 3381
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    goto :goto_1a

    .line 3380
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1

    .line 3383
    :cond_1a
    :goto_1a
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V
    .registers 13
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "state"    # I
    .param p3, "clearResponse"    # Z

    .line 3879
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    .line 3880
    .local v0, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 3881
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 3882
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    .line 3883
    .local v4, "dataset":Landroid/service/autofill/Dataset;
    if-nez v4, :cond_30

    .line 3884
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring null dataset on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    goto :goto_33

    .line 3887
    :cond_30
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 3881
    .end local v4    # "dataset":Landroid/service/autofill/Dataset;
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .end local v3    # "i":I
    :cond_36
    goto :goto_57

    .line 3889
    :cond_37
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 3890
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_43
    if-ge v5, v4, :cond_57

    aget-object v6, v3, v5

    .line 3891
    .local v6, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v6, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v7

    .line 3892
    .local v7, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez p3, :cond_51

    .line 3893
    invoke-virtual {v7, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_54

    .line 3895
    :cond_51
    invoke-virtual {v7, v2}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 3890
    .end local v6    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v7    # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 3899
    :cond_57
    :goto_57
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v3

    .line 3900
    .local v3, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-eqz v3, :cond_81

    .line 3901
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 3902
    .local v4, "requiredIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_6f

    .line 3903
    array-length v5, v4

    move v6, v1

    :goto_65
    if-ge v6, v5, :cond_6f

    aget-object v7, v4, v6

    .line 3904
    .local v7, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v7, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 3903
    .end local v7    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    .line 3907
    :cond_6f
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    .line 3908
    .local v5, "optionalIds":[Landroid/view/autofill/AutofillId;
    if-eqz v5, :cond_81

    .line 3909
    array-length v6, v5

    move v7, v1

    :goto_77
    if-ge v7, v6, :cond_81

    aget-object v8, v5, v7

    .line 3910
    .local v8, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v8, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 3909
    .end local v8    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v7, v7, 0x1

    goto :goto_77

    .line 3915
    .end local v4    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v5    # "optionalIds":[Landroid/view/autofill/AutofillId;
    :cond_81
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 3916
    .local v4, "authIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_92

    .line 3917
    array-length v5, v4

    :goto_88
    if-ge v1, v5, :cond_92

    aget-object v6, v4, v1

    .line 3918
    .local v6, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v6, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 3917
    .end local v6    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 3921
    :cond_92
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    .registers 13
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "dataset"    # Landroid/service/autofill/Dataset;
    .param p3, "state"    # I
    .param p4, "clearResponse"    # Z

    .line 3929
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 3930
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 3931
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 3932
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 3933
    .local v3, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 3934
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    invoke-direct {p0, v3, p3, v4}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v5

    .line 3935
    .local v5, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v6

    .line 3936
    .local v6, "datasetId":Ljava/lang/String;
    if-eqz v6, :cond_28

    .line 3937
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/ViewState;->setDatasetId(Ljava/lang/String;)V

    .line 3939
    :cond_28
    if-eqz p4, :cond_2f

    .line 3940
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_34

    .line 3941
    :cond_2f
    if-eqz p1, :cond_34

    .line 3942
    invoke-virtual {v5, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 3931
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    .end local v4    # "value":Landroid/view/autofill/AutofillValue;
    .end local v5    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v6    # "datasetId":Ljava/lang/String;
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3945
    .end local v2    # "j":I
    :cond_37
    return-void
.end method

.method private shouldResetSessionStateOnInputMethodSwitch()Z
    .registers 5

    .line 433
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 434
    return v1

    .line 437
    :cond_a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 438
    return v2

    .line 441
    :cond_14
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 442
    .local v0, "state":Lcom/android/server/autofill/ViewState;
    if-eqz v0, :cond_29

    .line 443
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v3

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_29

    .line 444
    return v2

    .line 447
    :cond_29
    return v1
.end method

.method private shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z
    .registers 14
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 2853
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2854
    .local v0, "currentView":Lcom/android/server/autofill/ViewState;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1c

    .line 2855
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v1

    const/high16 v4, 0x10000

    and-int/2addr v1, v4

    if-nez v1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v3

    :goto_1b
    return v2

    .line 2859
    :cond_1c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    const-string v4, "AutofillSession"

    if-eqz v1, :cond_30

    .line 2860
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2f

    .line 2861
    const-string v1, "Starting a new partition because the response has expired."

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    :cond_2f
    return v2

    .line 2866
    :cond_30
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2867
    .local v1, "numResponses":I
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result v5

    if-lt v1, v5, :cond_6d

    .line 2868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not starting a new partition on "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " because session "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " reached maximum of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2869
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2868
    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    return v3

    .line 2873
    :cond_6d
    const/4 v4, 0x0

    .local v4, "responseNum":I
    :goto_6e
    if-ge v4, v1, :cond_cf

    .line 2874
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/FillResponse;

    .line 2876
    .local v5, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 2877
    return v3

    .line 2880
    :cond_83
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v6

    .line 2881
    .local v6, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-eqz v6, :cond_9e

    .line 2882
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9d

    .line 2883
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 2884
    :cond_9d
    return v3

    .line 2888
    :cond_9e
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v7

    .line 2889
    .local v7, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v7, :cond_c1

    .line 2890
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 2892
    .local v8, "numDatasets":I
    const/4 v9, 0x0

    .local v9, "dataSetNum":I
    :goto_a9
    if-ge v9, v8, :cond_c1

    .line 2893
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/service/autofill/Dataset;

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v10

    .line 2895
    .local v10, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-eqz v10, :cond_be

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_be

    .line 2896
    return v3

    .line 2892
    .end local v10    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_be
    add-int/lit8 v9, v9, 0x1

    goto :goto_a9

    .line 2901
    .end local v8    # "numDatasets":I
    .end local v9    # "dataSetNum":I
    :cond_c1
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 2902
    return v3

    .line 2873
    .end local v5    # "response":Landroid/service/autofill/FillResponse;
    .end local v6    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .end local v7    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_cc
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 2906
    .end local v4    # "responseNum":I
    :cond_cf
    return v2
.end method

.method private startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 12
    .param p1, "authenticationId"    # I
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "authenticateInline"    # Z

    .line 4044
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_13

    .line 4045
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 4047
    monitor-exit v0

    .line 4050
    goto :goto_1b

    .line 4047
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .end local p0    # "this":Lcom/android/server/autofill/Session;
    .end local p1    # "authenticationId":I
    .end local p2    # "intent":Landroid/content/IntentSender;
    .end local p3    # "fillInIntent":Landroid/content/Intent;
    .end local p4    # "authenticateInline":Z
    :try_start_12
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_13} :catch_13

    .line 4048
    .restart local p0    # "this":Lcom/android/server/autofill/Session;
    .restart local p1    # "authenticationId":I
    .restart local p2    # "intent":Landroid/content/IntentSender;
    .restart local p3    # "fillInIntent":Landroid/content/Intent;
    .restart local p4    # "authenticateInline":Z
    :catch_13
    move-exception v0

    .line 4049
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    const-string v2, "Error launching auth intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4051
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method private triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;
    .registers 21
    .param p1, "flags"    # I

    .line 3688
    move-object/from16 v8, p0

    and-int/lit8 v0, p1, 0x4

    const/4 v9, 0x0

    if-eqz v0, :cond_8

    .line 3689
    return-object v9

    .line 3693
    :cond_8
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3694
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getSupportedSmartSuggestionModesLocked()I

    move-result v10

    .line 3695
    .local v10, "supportedModes":I
    const-string v11, "AutofillSession"

    if-nez v10, :cond_1d

    .line 3696
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "triggerAugmentedAutofillLocked(): no supported modes"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    :cond_1c
    return-object v9

    .line 3702
    :cond_1d
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3703
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v12

    .line 3704
    .local v12, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    if-nez v12, :cond_30

    .line 3705
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "triggerAugmentedAutofillLocked(): no service for user"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3706
    :cond_2f
    return-object v9

    .line 3711
    :cond_30
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_179

    .line 3712
    const/4 v13, 0x1

    .line 3718
    .local v13, "mode":I
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_40

    .line 3719
    const-string/jumbo v0, "triggerAugmentedAutofillLocked(): no view currently focused"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    return-object v9

    .line 3723
    :cond_40
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v1, v8, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 3724
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result v14

    .line 3726
    .local v14, "isWhitelisted":Z
    if-nez v14, :cond_80

    .line 3727
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_71

    .line 3728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "triggerAugmentedAutofillLocked(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 3729
    invoke-static {v1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not whitelisted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3728
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    :cond_71
    invoke-virtual {v12}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    .line 3733
    return-object v9

    .line 3736
    :cond_80
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_c8

    .line 3737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling Augmented Autofill Service ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3738
    invoke-virtual {v12}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") on view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " using suggestion mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3740
    invoke-static {v13}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when server returned null for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3737
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    :cond_c8
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v1, v8, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/autofill/ViewState;

    .line 3745
    .local v15, "viewState":Lcom/android/server/autofill/ViewState;
    const/16 v0, 0x1000

    invoke-virtual {v15, v0}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3746
    invoke-virtual {v15}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v16

    .line 3748
    .local v16, "currentValue":Landroid/view/autofill/AutofillValue;
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v0, :cond_e7

    .line 3749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 3751
    :cond_e7
    const/16 v0, 0x65e

    .line 3752
    invoke-virtual {v12}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3751
    invoke-direct {v8, v0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 3753
    .local v6, "log":Landroid/metrics/LogMaker;
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3755
    iget-object v5, v8, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3757
    .local v5, "focusedId":Landroid/view/autofill/AutofillId;
    new-instance v7, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda11;

    invoke-direct {v7, v8}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/autofill/Session;)V

    .line 3763
    .local v7, "inlineSuggestionsResponseCallback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/autofill/ui/InlineFillUi;Ljava/lang/Boolean;>;"
    new-instance v17, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda12;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move v2, v13

    move-object v3, v12

    move-object v4, v5

    move-object v9, v5

    .end local v5    # "focusedId":Landroid/view/autofill/AutofillId;
    .local v9, "focusedId":Landroid/view/autofill/AutofillId;
    move v5, v14

    move-object/from16 v18, v6

    .end local v6    # "log":Landroid/metrics/LogMaker;
    .local v18, "log":Landroid/metrics/LogMaker;
    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/autofill/Session;ILcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;Ljava/util/function/Function;)V

    .line 3792
    .local v0, "requestAugmentedAutofill":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    iget-object v1, v8, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3793
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v1

    .line 3794
    .local v1, "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    if-eqz v1, :cond_158

    iget-object v2, v8, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v2

    if-nez v2, :cond_133

    iget-object v2, v8, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v2

    if-eqz v2, :cond_133

    iget-object v2, v8, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v2

    if-eqz v2, :cond_158

    .line 3798
    :cond_133
    invoke-direct/range {p0 .. p1}, Lcom/android/server/autofill/Session;->isViewFocusedLocked(I)Z

    move-result v2

    if-nez v2, :cond_13f

    invoke-direct/range {p0 .. p1}, Lcom/android/server/autofill/Session;->isRequestSupportFillDialog(I)Z

    move-result v2

    if-eqz v2, :cond_158

    .line 3799
    :cond_13f
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_148

    const-string v2, "Create inline request for augmented autofill"

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    :cond_148
    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda13;

    invoke-direct {v3, v8, v9, v0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;)V

    iget-object v4, v8, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    goto :goto_168

    .line 3809
    :cond_158
    iget-object v2, v8, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 3810
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->getInlineSuggestionsRequestLocked()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 3809
    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3812
    :goto_168
    iget-object v2, v8, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez v2, :cond_176

    .line 3813
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda14;

    invoke-direct {v2, v12}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    iput-object v2, v8, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 3815
    :cond_176
    iget-object v2, v8, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    return-object v2

    .line 3714
    .end local v0    # "requestAugmentedAutofill":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    .end local v1    # "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .end local v7    # "inlineSuggestionsResponseCallback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/autofill/ui/InlineFillUi;Ljava/lang/Boolean;>;"
    .end local v9    # "focusedId":Landroid/view/autofill/AutofillId;
    .end local v13    # "mode":I
    .end local v14    # "isWhitelisted":Z
    .end local v15    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v16    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v18    # "log":Landroid/metrics/LogMaker;
    :cond_179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Smart Suggestion mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    const/4 v0, 0x0

    return-object v0
.end method

.method private unlinkClientVultureLocked()V
    .registers 4

    .line 1116
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_33

    .line 1117
    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    .line 1118
    .local v0, "unlinked":Z
    if-nez v0, :cond_30

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlinking vulture from death failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 1123
    .end local v0    # "unlinked":Z
    :cond_33
    return-void
.end method

.method private unregisterDelayedFillBroadcastLocked()V
    .registers 3

    .line 701
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_16

    .line 702
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "unregisterDelayedFillBroadcastLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    .line 706
    :cond_16
    return-void
.end method

.method private updateFillDialogTriggerIdsLocked()V
    .registers 4

    .line 3340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 3342
    .local v1, "response":Landroid/service/autofill/FillResponse;
    if-nez v1, :cond_8

    return-void

    .line 3344
    :cond_8
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 3345
    .local v2, "ids":[Landroid/view/autofill/AutofillId;
    if-nez v2, :cond_f

    goto :goto_13

    :cond_f
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_13
    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    .line 3346
    return-void
.end method

.method private updateFilteringStateOnValueChangedLocked(Ljava/lang/String;Lcom/android/server/autofill/ViewState;)V
    .registers 7
    .param p1, "newTextValue"    # Ljava/lang/String;
    .param p2, "viewState"    # Lcom/android/server/autofill/ViewState;

    .line 3209
    if-nez p1, :cond_4

    .line 3212
    const-string p1, ""

    .line 3214
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 3216
    .local v0, "currentValue":Landroid/view/autofill/AutofillValue;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_1a

    .line 3219
    :cond_11
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "currentTextValue":Ljava/lang/String;
    goto :goto_1c

    .line 3217
    .end local v1    # "currentTextValue":Ljava/lang/String;
    :cond_1a
    :goto_1a
    const-string v1, ""

    .line 3222
    .restart local v1    # "currentTextValue":Ljava/lang/String;
    :goto_1c
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v2

    const/16 v3, 0x4000

    and-int/2addr v2, v3

    if-nez v2, :cond_2f

    .line 3223
    invoke-static {p1, v1}, Lcom/android/server/autofill/Helper;->containsCharsInOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 3224
    invoke-virtual {p2, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_3b

    .line 3226
    :cond_2f
    invoke-static {v1, p1}, Lcom/android/server/autofill/Helper;->containsCharsInOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 3228
    const v2, 0x8000

    invoke-virtual {p2, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3230
    :cond_3b
    :goto_3b
    return-void
.end method

.method private updateTrackedIdsLocked()V
    .registers 19

    .line 3515
    move-object/from16 v1, p0

    const-string v2, "AutofillSession"

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v3

    .line 3516
    .local v3, "response":Landroid/service/autofill/FillResponse;
    if-nez v3, :cond_c

    return-void

    .line 3518
    :cond_c
    const/4 v0, 0x0

    .line 3519
    .local v0, "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 3520
    const/4 v5, 0x1

    .line 3521
    .local v5, "saveOnFinish":Z
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v6

    .line 3524
    .local v6, "saveInfo":Landroid/service/autofill/SaveInfo;
    const/4 v7, 0x1

    if-eqz v6, :cond_63

    .line 3525
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getTriggerId()Landroid/view/autofill/AutofillId;

    move-result-object v8

    .line 3526
    .local v8, "saveTriggerId":Landroid/view/autofill/AutofillId;
    if-eqz v8, :cond_23

    .line 3527
    const/16 v9, 0x4cc

    invoke-direct {v1, v9}, Lcom/android/server/autofill/Session;->writeLog(I)V

    .line 3529
    :cond_23
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v9

    .line 3530
    .local v9, "flags":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2d

    move v10, v7

    goto :goto_2e

    :cond_2d
    move v10, v4

    :goto_2e
    iput-boolean v10, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 3533
    if-eqz v10, :cond_54

    .line 3534
    if-nez v0, :cond_3a

    .line 3535
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v10

    .line 3537
    :cond_3a
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_47

    .line 3538
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3541
    :cond_47
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_54

    .line 3542
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3545
    :cond_54
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_5e

    .line 3546
    const/4 v5, 0x0

    move v15, v5

    move-object v14, v8

    move v13, v9

    move-object v5, v0

    goto :goto_69

    .line 3545
    :cond_5e
    move v15, v5

    move-object v14, v8

    move v13, v9

    move-object v5, v0

    goto :goto_69

    .line 3550
    .end local v8    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    .end local v9    # "flags":I
    :cond_63
    const/4 v9, 0x0

    .line 3551
    .restart local v9    # "flags":I
    const/4 v8, 0x0

    move v15, v5

    move-object v14, v8

    move v13, v9

    move-object v5, v0

    .line 3557
    .end local v0    # "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9    # "flags":I
    .local v5, "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v13, "flags":I
    .local v14, "saveTriggerId":Landroid/view/autofill/AutofillId;
    .local v15, "saveOnFinish":Z
    :goto_69
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v12

    .line 3558
    .local v12, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const/4 v0, 0x0

    .line 3559
    .local v0, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    if-eqz v12, :cond_a7

    .line 3560
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_71
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_a5

    .line 3561
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/Dataset;

    .line 3562
    .local v9, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v9}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v10

    .line 3563
    .local v10, "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-nez v10, :cond_84

    goto :goto_a1

    .line 3565
    :cond_84
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_85
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_a1

    .line 3566
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 3567
    .local v4, "id":Landroid/view/autofill/AutofillId;
    if-eqz v5, :cond_99

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9d

    .line 3568
    :cond_99
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 3565
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    :cond_9d
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_85

    .line 3560
    .end local v9    # "dataset":Landroid/service/autofill/Dataset;
    .end local v10    # "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v11    # "j":I
    :cond_a1
    :goto_a1
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_71

    :cond_a5
    move-object v4, v0

    goto :goto_a8

    .line 3559
    .end local v8    # "i":I
    :cond_a7
    move-object v4, v0

    .line 3575
    .end local v0    # "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v4, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :goto_a8
    :try_start_a8
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_aa} :catch_11c

    if-eqz v0, :cond_101

    .line 3576
    :try_start_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateTrackedIdsLocked(): "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " => "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " triggerId: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " saveOnFinish:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " flags: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " hasSaveInfo: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v6, :cond_ed

    goto :goto_ee

    :cond_ed
    const/4 v7, 0x0

    :goto_ee
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_f9} :catch_fa

    goto :goto_101

    .line 3582
    :catch_fa
    move-exception v0

    move-object v7, v12

    move/from16 v16, v13

    move-object/from16 v17, v14

    goto :goto_122

    .line 3580
    :cond_101
    :goto_101
    :try_start_101
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v9, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v5}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v10

    iget-boolean v11, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 3581
    invoke-static {v4}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v0
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_10f} :catch_11c

    .line 3580
    move-object v7, v12

    .end local v12    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v7, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move v12, v15

    move/from16 v16, v13

    .end local v13    # "flags":I
    .local v16, "flags":I
    move-object v13, v0

    move-object/from16 v17, v14

    .end local v14    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    .local v17, "saveTriggerId":Landroid/view/autofill/AutofillId;
    :try_start_116
    invoke-interface/range {v8 .. v14}, Landroid/view/autofill/IAutoFillManagerClient;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_116 .. :try_end_119} :catch_11a

    .line 3584
    goto :goto_127

    .line 3582
    :catch_11a
    move-exception v0

    goto :goto_122

    .end local v7    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v16    # "flags":I
    .end local v17    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    .restart local v12    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v13    # "flags":I
    .restart local v14    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    :catch_11c
    move-exception v0

    move-object v7, v12

    move/from16 v16, v13

    move-object/from16 v17, v14

    .line 3583
    .end local v12    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v13    # "flags":I
    .end local v14    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v7    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v16    # "flags":I
    .restart local v17    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    :goto_122
    const-string v8, "Cannot set tracked ids"

    invoke-static {v2, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3585
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_127
    return-void
.end method

.method private updateValuesForSaveLocked()V
    .registers 16

    .line 2645
    nop

    .line 2646
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2648
    .local v0, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2649
    .local v1, "numContexts":I
    const/4 v2, 0x0

    .local v2, "contextNum":I
    :goto_10
    if-ge v2, v1, :cond_11b

    .line 2650
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 2652
    .local v3, "context":Landroid/service/autofill/FillContext;
    nop

    .line 2653
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    .line 2655
    .local v4, "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v6, "updateValuesForSaveLocked(): updating "

    const-string v7, "AutofillSession"

    if-eqz v5, :cond_40

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :cond_40
    const/4 v5, 0x0

    .local v5, "viewStateNum":I
    :goto_41
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_e7

    .line 2658
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/ViewState;

    .line 2660
    .local v8, "viewState":Lcom/android/server/autofill/ViewState;
    iget-object v9, v8, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 2661
    .local v9, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 2662
    .local v10, "value":Landroid/view/autofill/AutofillValue;
    if-nez v10, :cond_75

    .line 2663
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v11, :cond_e3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateValuesForSaveLocked(): skipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 2666
    :cond_75
    aget-object v11, v4, v5

    .line 2667
    .local v11, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-nez v11, :cond_90

    .line 2668
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callSaveLocked(): did not find node with id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    goto :goto_e3

    .line 2671
    :cond_90
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v12, :cond_b2

    .line 2672
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    :cond_b2
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v12

    .line 2677
    .local v12, "sanitizedValue":Landroid/view/autofill/AutofillValue;
    if-nez v12, :cond_bc

    .line 2679
    invoke-direct {p0, v0, v9, v10}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v12

    .line 2681
    :cond_bc
    if-eqz v12, :cond_c2

    .line 2682
    invoke-virtual {v11, v12}, Landroid/app/assist/AssistStructure$ViewNode;->updateAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_e3

    .line 2683
    :cond_c2
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_e3

    .line 2684
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateValuesForSaveLocked(): not updating field "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " because it failed sanitization"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    .end local v8    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v9    # "id":Landroid/view/autofill/AutofillId;
    .end local v10    # "value":Landroid/view/autofill/AutofillValue;
    .end local v11    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v12    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_e3
    :goto_e3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_41

    .line 2690
    .end local v5    # "viewStateNum":I
    :cond_e7
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 2692
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_117

    .line 2693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateValuesForSaveLocked(): dumping structure of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " before calling service.save()"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 2649
    .end local v3    # "context":Landroid/service/autofill/FillContext;
    .end local v4    # "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    :cond_117
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 2698
    .end local v2    # "contextNum":I
    :cond_11b
    return-void
.end method

.method private updateViewStateAndUiOnValueChangedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;I)V
    .registers 13
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p4, "flags"    # I

    .line 3143
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 3146
    :cond_9
    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3149
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "textValue":Ljava/lang/String;
    :goto_15
    goto :goto_17

    .line 3144
    .end local v0    # "text":Ljava/lang/CharSequence;
    .end local v1    # "textValue":Ljava/lang/String;
    :cond_16
    :goto_16
    const/4 v1, 0x0

    .line 3151
    .restart local v1    # "textValue":Ljava/lang/String;
    :goto_17
    invoke-direct {p0, v1, p3}, Lcom/android/server/autofill/Session;->updateFilteringStateOnValueChangedLocked(Ljava/lang/String;Lcom/android/server/autofill/ViewState;)V

    .line 3153
    invoke-virtual {p3, p2}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 3155
    move-object v0, v1

    .line 3157
    .local v0, "filterText":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 3158
    .local v2, "filledValue":Landroid/view/autofill/AutofillValue;
    const/16 v3, 0x8

    if-eqz v2, :cond_90

    .line 3159
    invoke-virtual {v2, p2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "AutofillSession"

    if-eqz v4, :cond_54

    .line 3162
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_49

    .line 3163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ignoring autofilled change on id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    :cond_49
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v5, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 3168
    invoke-virtual {p3, v3}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 3169
    return-void

    .line 3170
    :cond_54
    iget-object v4, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v6}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 3171
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    const/4 v6, 0x4

    and-int/2addr v4, v6

    if-eqz v4, :cond_90

    .line 3173
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_80

    .line 3174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "field changed after autofill on id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    :cond_80
    invoke-virtual {p3, v6}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 3177
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/ViewState;

    .line 3178
    .local v4, "currentView":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v4, p4}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 3182
    .end local v4    # "currentView":Lcom/android/server/autofill/ViewState;
    :cond_90
    iget-object v4, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 3183
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_bb

    .line 3184
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_b3

    .line 3185
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v5, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Lcom/android/server/autofill/AutofillInlineSessionController;->disableFilterMatching(Landroid/view/autofill/AutofillId;)V

    .line 3187
    :cond_b3
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->filterInlineFillUiLocked(Landroid/view/autofill/AutofillId;Ljava/lang/String;)Z

    goto :goto_da

    .line 3188
    :cond_bb
    iget-object v4, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 3189
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_da

    .line 3190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_da

    .line 3193
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 3197
    :cond_da
    :goto_da
    invoke-virtual {p3, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3198
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3199
    return-void
.end method

.method private writeLog(I)V
    .registers 4
    .param p1, "category"    # I

    .line 4563
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4564
    return-void
.end method

.method private varargs wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 4598
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4599
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4600
    :try_start_7
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4601
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1b

    .line 4603
    if-eqz p1, :cond_15

    .line 4604
    const-string v1, "AutofillSession"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 4606
    :cond_15
    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    :goto_1a
    return-void

    .line 4601
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method


# virtual methods
.method public authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;Z)V
    .registers 15
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "authenticateInline"    # Z

    .line 1398
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_30

    .line 1399
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate(): requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; datasetIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; intentSender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_30
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1404
    :try_start_33
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_59

    .line 1405
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#authenticate() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    monitor-exit v0

    return-void

    .line 1409
    :cond_59
    invoke-direct {p0, p1, p4}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 1410
    .local v1, "fillInIntent":Landroid/content/Intent;
    if-nez v1, :cond_64

    .line 1411
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    .line 1412
    monitor-exit v0

    return-void

    .line 1414
    :cond_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_33 .. :try_end_65} :catchall_8c

    .line 1416
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationSelected(ILandroid/os/Bundle;)V

    .line 1418
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v0

    .line 1419
    .local v0, "authenticationId":I
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;-><init>()V

    .line 1421
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1419
    move-object v3, p0

    move-object v5, p3

    move-object v6, v1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1422
    return-void

    .line 1414
    .end local v0    # "authenticationId":I
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    :catchall_8c
    move-exception v1

    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method autoFill(IILandroid/service/autofill/Dataset;ZI)V
    .registers 11
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I
    .param p3, "dataset"    # Landroid/service/autofill/Dataset;
    .param p4, "generateEvent"    # Z
    .param p5, "uiType"    # I

    .line 3969
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_30

    .line 3970
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFill(): requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; datasetIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; dataset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    :cond_30
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3974
    :try_start_33
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_59

    .line 3975
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#autoFill() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    monitor-exit v0

    return-void

    .line 3980
    :cond_59
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v1

    if-nez v1, :cond_7c

    .line 3981
    if-eqz p4, :cond_6e

    .line 3982
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4, p5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetSelected(Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 3984
    :cond_6e
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_77

    .line 3985
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v2, v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 3987
    :cond_77
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->autoFillApp(Landroid/service/autofill/Dataset;)V

    .line 3988
    monitor-exit v0

    return-void

    .line 3992
    :cond_7c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 3993
    const/4 v1, 0x0

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-direct {p0, v1, p3, v2, v3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 3994
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-direct {p0, p1, v1}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 3995
    .local v1, "fillInIntent":Landroid/content/Intent;
    if-nez v1, :cond_9d

    .line 3996
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    .line 3997
    monitor-exit v0

    return-void

    .line 3999
    :cond_9d
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v2

    .line 4001
    .local v2, "authenticationId":I
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v4

    invoke-direct {p0, v2, v4, v1, v3}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 4004
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v2    # "authenticationId":I
    monitor-exit v0

    .line 4005
    return-void

    .line 4004
    :catchall_aa
    move-exception v1

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_33 .. :try_end_ac} :catchall_aa

    throw v1
.end method

.method autoFillApp(Landroid/service/autofill/Dataset;)V
    .registers 16
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;

    .line 4303
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4304
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_29

    .line 4305
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#autoFillApp() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_123

    return-void

    .line 4311
    :cond_29
    :try_start_29
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4312
    .local v1, "entryCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4313
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4314
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    const/4 v4, 0x0

    .line 4315
    .local v4, "waitingDatasetAuth":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_53

    .line 4316
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillId;

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7, v8}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    goto :goto_54

    :cond_53
    move v6, v5

    .line 4317
    .local v6, "hideHighlight":Z
    :goto_54
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_55
    if-ge v7, v1, :cond_b8

    .line 4318
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_62

    .line 4319
    goto :goto_b5

    .line 4321
    :cond_62
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 4322
    .local v8, "viewId":Landroid/view/autofill/AutofillId;
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4323
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillValue;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4324
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/autofill/ViewState;

    .line 4325
    .local v9, "viewState":Lcom/android/server/autofill/ViewState;
    if-eqz v9, :cond_b5

    .line 4326
    invoke-virtual {v9}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v10

    const/16 v11, 0x40

    and-int/2addr v10, v11

    if-eqz v10, :cond_b5

    .line 4327
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v10, :cond_b1

    .line 4328
    const-string v10, "AutofillSession"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autofillApp(): view "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting auth"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    :cond_b1
    const/4 v4, 0x1

    .line 4331
    invoke-virtual {v9, v11}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 4317
    .end local v8    # "viewId":Landroid/view/autofill/AutofillId;
    .end local v9    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_b5
    :goto_b5
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 4334
    .end local v7    # "i":I
    :cond_b8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_107

    .line 4335
    if-eqz v4, :cond_c5

    .line 4336
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v7, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 4338
    :cond_c5
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_e1

    const-string v7, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoFillApp(): the buck is on the app: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4340
    :cond_e1
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v7, v8, v2, v3, v6}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 4341
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_102

    .line 4342
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-nez v7, :cond_f9

    .line 4343
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 4345
    :cond_f9
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4347
    :cond_102
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-direct {p0, v7, p1, v8, v5}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_107} :catch_108
    .catchall {:try_start_29 .. :try_end_107} :catchall_123

    .line 4351
    .end local v1    # "entryCount":I
    .end local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v4    # "waitingDatasetAuth":Z
    .end local v6    # "hideHighlight":Z
    :cond_107
    goto :goto_121

    .line 4349
    :catch_108
    move-exception v1

    .line 4350
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_109
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error autofilling activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_121
    monitor-exit v0

    .line 4353
    return-void

    .line 4352
    :catchall_123
    move-exception v1

    monitor-exit v0
    :try_end_125
    .catchall {:try_start_109 .. :try_end_125} :catchall_123

    throw v1
.end method

.method callSaveLocked()V
    .registers 5

    .line 2705
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_25

    .line 2706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#callSaveLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    return-void

    .line 2710
    :cond_25
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    const/4 v2, 0x1

    if-nez v0, :cond_40

    .line 2711
    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v3

    .line 2712
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2711
    const-string v2, "callSaveLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2713
    return-void

    .line 2716
    :cond_40
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callSaveLocked("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "): mViewStates="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    :cond_68
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_72

    .line 2719
    const-string v0, "callSaveLocked(): no contexts"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    return-void

    .line 2723
    :cond_72
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 2726
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 2728
    invoke-direct {p0, v2}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2730
    .local v0, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    new-instance v1, Landroid/service/autofill/SaveRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2, v3}, Landroid/service/autofill/SaveRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 2732
    .local v1, "saveRequest":Landroid/service/autofill/SaveRequest;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v2, v1}, Lcom/android/server/autofill/RemoteFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;)V

    .line 2733
    return-void
.end method

.method public cancelSave()V
    .registers 5

    .line 1457
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1458
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1460
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_2f

    .line 1461
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#cancelSave() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    monitor-exit v0

    return-void

    .line 1465
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_3f

    .line 1466
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1468
    return-void

    .line 1465
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public cancelSession()V
    .registers 3

    .line 1538
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1539
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 1540
    monitor-exit v0

    .line 1541
    return-void

    .line 1540
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method destroyAugmentedAutofillWindowsLocked()V
    .registers 2

    .line 4472
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 4473
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 4476
    :cond_a
    return-void
.end method

.method destroyLocked()Lcom/android/server/autofill/RemoteFillService;
    .registers 9

    .line 4375
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_6

    .line 4376
    const/4 v0, 0x0

    return-object v0

    .line 4379
    :cond_6
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->clearPendingIntentLocked()V

    .line 4380
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 4382
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 4383
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 4384
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 4385
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v0, :cond_25

    .line 4386
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->destroyLocked(Landroid/view/autofill/AutofillId;)V

    .line 4388
    :cond_25
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 4389
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    .line 4390
    .local v0, "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    if-eqz v0, :cond_34

    .line 4391
    iget v1, p0, Lcom/android/server/autofill/Session;->userId:I

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->destroySuggestionViews(II)V

    .line 4394
    :cond_34
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 4397
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4398
    .local v1, "totalRequests":I
    const-string v3, "destroyLocked(): logging "

    const-string v4, "AutofillSession"

    if-lez v1, :cond_73

    .line 4399
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_60

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requests"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4400
    :cond_60
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_61
    if-ge v5, v1, :cond_73

    .line 4401
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/metrics/LogMaker;

    .line 4402
    .local v6, "log":Landroid/metrics/LogMaker;
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4400
    .end local v6    # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 4406
    .end local v5    # "i":I
    :cond_73
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v5, :cond_79

    const/4 v5, 0x0

    goto :goto_7d

    .line 4407
    :cond_79
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_7d
    nop

    .line 4408
    .local v5, "totalAugmentedRequests":I
    if-lez v5, :cond_b1

    .line 4409
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_9e

    .line 4410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " augmented requests"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    :cond_9e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9f
    if-ge v3, v5, :cond_b1

    .line 4413
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/metrics/LogMaker;

    .line 4414
    .local v4, "log":Landroid/metrics/LogMaker;
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v6, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4412
    .end local v4    # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    .line 4418
    .end local v3    # "i":I
    :cond_b1
    const/16 v3, 0x397

    invoke-direct {p0, v3}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x5af

    .line 4419
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 4420
    .local v3, "log":Landroid/metrics/LogMaker;
    if-lez v5, :cond_cc

    .line 4421
    const/16 v4, 0x65f

    .line 4422
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4421
    invoke-virtual {v3, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4424
    :cond_cc
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v4}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 4425
    const/16 v4, 0x6b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4427
    :cond_dd
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4429
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object v2
.end method

.method public dispatchUnhandledKey(Landroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1500
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1501
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_27

    .line 1502
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#dispatchUnhandledKey() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    monitor-exit v0

    return-void

    .line 1506
    :cond_27
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_6d

    if-eqz v1, :cond_41

    .line 1508
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_37
    .catchall {:try_start_2f .. :try_end_36} :catchall_6d

    .line 1511
    goto :goto_6b

    .line 1509
    :catch_37
    move-exception v1

    .line 1510
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_38
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to dispatch unhandled key"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1511
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_6b

    .line 1513
    :cond_41
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not dispatch unhandled key on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as it is not the current view ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") anymore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :goto_6b
    monitor-exit v0

    .line 1517
    return-void

    .line 1516
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_38 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 4152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4153
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "id: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "uid: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "taskId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4156
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flags: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "state: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    invoke-static {v1}, Lcom/android/server/autofill/Session;->sessionStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4158
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mComponentName: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4159
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mActivityToken: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4160
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStartTime: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 4161
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Time to show UI: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4162
    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "N/A"

    if-nez v3, :cond_9c

    .line 4163
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a5

    .line 4165
    :cond_9c
    iget-wide v5, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4166
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4168
    :goto_a5
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4169
    .local v1, "requestLogsSizes":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mSessionLogs: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4170
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b8
    const/16 v3, 0x23

    if-ge v2, v1, :cond_e9

    .line 4171
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 4172
    .local v5, "requestId":I
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/metrics/LogMaker;

    .line 4173
    .local v6, "log":Landroid/metrics/LogMaker;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": req="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4174
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ", log="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, v6}, Lcom/android/server/autofill/Session;->dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4170
    .end local v5    # "requestId":I
    .end local v6    # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b8

    .line 4176
    .end local v2    # "i":I
    :cond_e9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mResponses: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4177
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const-string/jumbo v5, "null"

    if-nez v2, :cond_fd

    .line 4178
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_127

    .line 4180
    :cond_fd
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4181
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_105
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_127

    .line 4182
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4183
    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4181
    add-int/lit8 v2, v2, 0x1

    goto :goto_105

    .line 4186
    .end local v2    # "i":I
    :cond_127
    :goto_127
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCurrentViewId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4187
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDestroyed: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mShowingSaveUi: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4189
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingSaveUi: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4190
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 4191
    .local v2, "numberViews":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mViewStates size: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4192
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17c
    if-ge v3, v2, :cond_197

    .line 4193
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "ViewState at #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4194
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/ViewState;

    invoke-virtual {v6, v0, p2}, Lcom/android/server/autofill/ViewState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4192
    add-int/lit8 v3, v3, 0x1

    goto :goto_17c

    .line 4197
    .end local v3    # "i":I
    :cond_197
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mContexts: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4198
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v3, :cond_1ce

    .line 4199
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4200
    .local v3, "numContexts":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a9
    if-ge v5, v3, :cond_1cd

    .line 4201
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/FillContext;

    .line 4203
    .local v6, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4204
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_1ca

    .line 4205
    const-string v7, "AssistStructure dumped at logcat)"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4208
    invoke-virtual {v6}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 4200
    .end local v6    # "context":Landroid/service/autofill/FillContext;
    :cond_1ca
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a9

    .line 4211
    .end local v3    # "numContexts":I
    .end local v5    # "i":I
    :cond_1cd
    goto :goto_1d1

    .line 4212
    :cond_1ce
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4215
    :goto_1d1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mHasCallback: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4216
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v3, :cond_1fa

    .line 4217
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mClientState: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->getSize()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4218
    const-string v3, " bytes"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    :cond_1fa
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mCompatMode: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mUrlBar: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4222
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v3, :cond_219

    .line 4223
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_244

    .line 4225
    :cond_219
    const-string/jumbo v3, "id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4226
    const-string v3, " domain="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4227
    const-string v3, " text="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 4229
    :goto_244
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mSaveOnAllViewsInvisible: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4231
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mSelectedDatasetIds: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4232
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v3

    if-eqz v3, :cond_270

    .line 4233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "For Augmented Autofill Only"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4235
    :cond_270
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v3, :cond_27d

    .line 4236
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "has mAugmentedAutofillDestroyer"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4238
    :cond_27d
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-eqz v3, :cond_293

    .line 4239
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "number augmented requests: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4240
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4243
    :cond_293
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_2a5

    .line 4244
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mAugmentedAutofillableIds: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4245
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4247
    :cond_2a5
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-eqz v3, :cond_2ac

    .line 4248
    invoke-virtual {v3, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4250
    :cond_2ac
    return-void
.end method

.method public fill(IILandroid/service/autofill/Dataset;I)V
    .registers 13
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I
    .param p3, "dataset"    # Landroid/service/autofill/Dataset;
    .param p4, "uiType"    # I

    .line 1427
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1428
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_29

    .line 1429
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#fill() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    monitor-exit v0

    return-void

    .line 1433
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_4c

    .line 1434
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda7;-><init>()V

    .line 1436
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1434
    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1437
    return-void

    .line 1433
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .registers 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 729
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 731
    .local v1, "value":Landroid/view/autofill/AutofillValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    .line 732
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 733
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 736
    :cond_1a
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 737
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 738
    .local v3, "options":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_34

    .line 739
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v4

    .line 740
    .local v4, "index":I
    aget-object v5, v3, v4

    .line 741
    .local v5, "option":Ljava/lang/CharSequence;
    if-eqz v5, :cond_32

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_32
    monitor-exit v0

    return-object v2

    .line 743
    .end local v4    # "index":I
    .end local v5    # "option":Ljava/lang/CharSequence;
    :cond_34
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findByAutofillId(): no autofill options for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    .end local v1    # "value":Landroid/view/autofill/AutofillValue;
    .end local v3    # "options":[Ljava/lang/CharSequence;
    :cond_4c
    monitor-exit v0

    .line 748
    return-object v2

    .line 747
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 753
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 755
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method forceRemoveFromServiceIfForAugmentedOnlyLocked()V
    .registers 3

    .line 4443
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2e

    .line 4444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceRemoveFromServiceIfForAugmentedOnlyLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    :cond_2e
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    if-nez v0, :cond_37

    return-void

    .line 4449
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    .line 4450
    return-void
.end method

.method forceRemoveFromServiceLocked()V
    .registers 2

    .line 4438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    .line 4439
    return-void
.end method

.method forceRemoveFromServiceLocked(I)V
    .registers 8
    .param p1, "clientState"    # I

    .line 4454
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRemoveFromServiceLocked(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    .line 4457
    .local v0, "isPendingSaveUi":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 4458
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 4459
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 4460
    if-nez v0, :cond_3e

    .line 4462
    :try_start_32
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38

    .line 4465
    goto :goto_3e

    .line 4463
    :catch_38
    move-exception v2

    .line 4464
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error notifying client to finish session"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4467
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyAugmentedAutofillWindowsLocked()V

    .line 4468
    return-void
.end method

.method getActivityTokenLocked()Landroid/os/IBinder;
    .registers 2

    .line 1067
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getClient()Landroid/view/autofill/IAutoFillManagerClient;
    .registers 3

    .line 3479
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3480
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    monitor-exit v0

    return-object v1

    .line 3481
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSaveInfoFlagsLocked()I
    .registers 3

    .line 1868
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    .line 1869
    .local v0, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v1

    :goto_c
    return v1
.end method

.method isDestroyed()Z
    .registers 3

    .line 3473
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3474
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 3475
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isSaveUiPendingForTokenLocked(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4523
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method isSaveUiShowingLocked()Z
    .registers 2

    .line 2594
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$inlineSuggestionsRequestCacheDecorator$7$com-android-server-autofill-Session(Ljava/util/function/Consumer;ILandroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 6
    .param p1, "consumer"    # Ljava/util/function/Consumer;
    .param p2, "requestId"    # I
    .param p3, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 4034
    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4035
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4036
    :try_start_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    .line 4037
    monitor-exit v0

    .line 4038
    return-void

    .line 4037
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method synthetic lambda$logFieldClassificationScore$2$com-android-server-autofill-Session(III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 27
    .param p1, "saveDialogNotShowReason"    # I
    .param p2, "commitReason"    # I
    .param p3, "viewsSize"    # I
    .param p4, "autofillIds"    # [Landroid/view/autofill/AutofillId;
    .param p5, "userValues"    # [Ljava/lang/String;
    .param p6, "categoryIds"    # [Ljava/lang/String;
    .param p7, "detectedFieldIds"    # Ljava/util/ArrayList;
    .param p8, "detectedFieldClassifications"    # Ljava/util/ArrayList;
    .param p9, "result"    # Landroid/os/Bundle;

    .line 2177
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    const-string v0, "AutofillSession"

    if-nez v7, :cond_21

    .line 2178
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_1c

    const-string/jumbo v8, "setFieldClassificationScore(): no results"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_1c
    const/4 v0, 0x0

    invoke-direct {v1, v0, v0, v2, v3}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2180
    return-void

    .line 2182
    :cond_21
    const-string/jumbo v8, "scores"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 2183
    .local v8, "scores":Landroid/service/autofill/AutofillFieldClassificationService$Scores;
    if-nez v8, :cond_43

    .line 2184
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No field classification score on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    return-void

    .line 2187
    :cond_43
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v10, 0x0

    .line 2190
    .local v10, "j":I
    const/4 v9, 0x0

    :goto_46
    move/from16 v11, p3

    if-ge v9, v11, :cond_183

    .line 2191
    :try_start_4a
    aget-object v12, p4, v9

    .line 2195
    .local v12, "autofillId":Landroid/view/autofill/AutofillId;
    const/4 v13, 0x0

    .line 2196
    .local v13, "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    const/4 v10, 0x0

    :goto_4e
    array-length v14, v4

    if-ge v10, v14, :cond_107

    .line 2197
    aget-object v14, p6, v10

    .line 2198
    .local v14, "categoryId":Ljava/lang/String;
    iget-object v15, v8, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v15, v15, v9

    aget v15, v15, v10
    :try_end_59
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4a .. :try_end_59} :catch_165

    .line 2199
    .local v15, "score":F
    const/16 v16, 0x0

    cmpl-float v16, v15, v16

    const-string v7, " and id "

    if-lez v16, :cond_da

    .line 2200
    if-nez v13, :cond_6a

    .line 2201
    :try_start_63
    new-instance v11, Landroid/util/ArrayMap;

    array-length v2, v4

    invoke-direct {v11, v2}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v13, v11

    .line 2203
    :cond_6a
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 2204
    .local v2, "currentScore":Ljava/lang/Float;
    if-eqz v2, :cond_a0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v11, v11, v15

    if-lez v11, :cond_a0

    .line 2205
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_fd

    .line 2206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skipping score "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " because it\'s less than "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    .line 2211
    :cond_a0
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v11, :cond_cf

    .line 2212
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "currentScore":Ljava/lang/Float;
    .local v16, "currentScore":Ljava/lang/Float;
    const-string v2, "adding score "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " at index "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 2211
    .end local v16    # "currentScore":Ljava/lang/Float;
    .restart local v2    # "currentScore":Ljava/lang/Float;
    :cond_cf
    move-object/from16 v16, v2

    .line 2215
    .end local v2    # "currentScore":Ljava/lang/Float;
    .restart local v16    # "currentScore":Ljava/lang/Float;
    :goto_d1
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    nop

    .end local v16    # "currentScore":Ljava/lang/Float;
    goto :goto_fd

    :cond_da
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_fd

    .line 2217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skipping score 0 at index "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    .end local v14    # "categoryId":Ljava/lang/String;
    .end local v15    # "score":F
    :cond_fd
    :goto_fd
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p1

    move/from16 v11, p3

    move-object/from16 v7, p9

    goto/16 :goto_4e

    .line 2220
    :cond_107
    if-nez v13, :cond_125

    .line 2221
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_15d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no score for autofillId="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15d

    .line 2226
    :cond_125
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2227
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification$Match;>;"
    const/4 v7, 0x0

    .end local v10    # "j":I
    .local v7, "j":I
    move v10, v7

    .end local v7    # "j":I
    .restart local v10    # "j":I
    :goto_130
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v10, v7, :cond_152

    .line 2228
    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2229
    .local v7, "fieldId":Ljava/lang/String;
    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 2230
    .local v11, "score":F
    new-instance v14, Landroid/service/autofill/FieldClassification$Match;

    invoke-direct {v14, v7, v11}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2227
    nop

    .end local v7    # "fieldId":Ljava/lang/String;
    .end local v11    # "score":F
    add-int/lit8 v10, v10, 0x1

    goto :goto_130

    .line 2232
    :cond_152
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    new-instance v7, Landroid/service/autofill/FieldClassification;

    invoke-direct {v7, v2}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_63 .. :try_end_15d} :catch_165

    .line 2190
    .end local v2    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification$Match;>;"
    .end local v12    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v13    # "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    :cond_15d
    :goto_15d
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p1

    move-object/from16 v7, p9

    goto/16 :goto_46

    .line 2235
    :catch_165
    move-exception v0

    .line 2236
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v2, v11

    const/4 v7, 0x2

    aput-object v8, v2, v7

    const/4 v7, 0x3

    aput-object v0, v2, v7

    const-string v7, "Error accessing FC score at [%d, %d] (%s): %s"

    invoke-direct {v1, v0, v7, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2237
    return-void

    .line 2238
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_183
    nop

    .line 2240
    move/from16 v2, p1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2242
    return-void
.end method

.method synthetic lambda$requestNewFillResponseLocked$0$com-android-server-autofill-Session(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p2, "inlineSuggestionsRequestConsumer"    # Ljava/util/function/Consumer;
    .param p3, "requestIdCopy"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 961
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 962
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 963
    invoke-direct {p0, p2, p3}, Lcom/android/server/autofill/Session;->inlineSuggestionsRequestCacheDecorator(Ljava/util/function/Consumer;I)Ljava/util/function/Consumer;

    move-result-object v2

    .line 962
    invoke-virtual {v1, p1, v2, p4}, Lcom/android/server/autofill/AutofillInlineSessionController;->onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    .line 966
    monitor-exit v0

    .line 967
    return-void

    .line 966
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method synthetic lambda$setClientLocked$1$com-android-server-autofill-Session()V
    .registers 5

    .line 1096
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1097
    :try_start_3
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handling death of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when saving="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1100
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    goto :goto_44

    .line 1102
    :cond_3c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 1104
    :goto_44
    monitor-exit v0

    .line 1105
    return-void

    .line 1104
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method synthetic lambda$triggerAugmentedAutofillLocked$3$com-android-server-autofill-Session(Lcom/android/server/autofill/ui/InlineFillUi;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "response"    # Lcom/android/server/autofill/ui/InlineFillUi;

    .line 3759
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3760
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3761
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method synthetic lambda$triggerAugmentedAutofillLocked$4$com-android-server-autofill-Session()V
    .registers 4

    .line 3773
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3774
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    .line 3777
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3778
    invoke-static {v2}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v2

    .line 3777
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 3779
    monitor-exit v0

    .line 3780
    return-void

    .line 3779
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method synthetic lambda$triggerAugmentedAutofillLocked$5$com-android-server-autofill-Session(ILcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 30
    .param p1, "mode"    # I
    .param p2, "remoteService"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .param p3, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p4, "isWhitelisted"    # Z
    .param p5, "currentValue"    # Landroid/view/autofill/AutofillValue;
    .param p6, "inlineSuggestionsResponseCallback"    # Ljava/util/function/Function;
    .param p7, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 3765
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3766
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz p7, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 3767
    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 3766
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    .line 3768
    iget v10, v7, Lcom/android/server/autofill/Session;->id:I

    iget-object v11, v7, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v12, v7, Lcom/android/server/autofill/Session;->taskId:I

    iget-object v13, v7, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v14, v7, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 3770
    invoke-static/range {p3 .. p3}, Landroid/view/autofill/AutofillId;->withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    move-result-object v15

    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/Session;)V

    iget-object v1, v7, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3780
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v20

    iget v1, v7, Lcom/android/server/autofill/Session;->userId:I

    .line 3768
    move-object/from16 v9, p2

    move-object/from16 v16, p5

    move-object/from16 v17, p7

    move-object/from16 v18, p6

    move-object/from16 v19, v0

    move/from16 v21, v1

    invoke-virtual/range {v9 .. v21}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V

    .line 3781
    monitor-exit v8

    .line 3782
    return-void

    .line 3781
    :catchall_49
    move-exception v0

    monitor-exit v8
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_49

    throw v0
.end method

.method synthetic lambda$triggerAugmentedAutofillLocked$6$com-android-server-autofill-Session(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p2, "requestAugmentedAutofill"    # Ljava/util/function/Consumer;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3802
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3803
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSessionController;->onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    .line 3806
    monitor-exit v0

    .line 3807
    return-void

    .line 3806
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public logContextCommitted()V
    .registers 4

    .line 1877
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda15;-><init>()V

    .line 1878
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1879
    nop

    .line 1877
    invoke-static {v1, p0, v2, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1880
    return-void
.end method

.method public logContextCommitted(II)V
    .registers 7
    .param p1, "saveDialogNotShowReason"    # I
    .param p2, "commitReason"    # I

    .line 1891
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda15;-><init>()V

    .line 1892
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1891
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1893
    return-void
.end method

.method public logSaveUiShown()V
    .registers 3

    .line 2255
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2256
    return-void
.end method

.method public onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;I)V
    .registers 25
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "filledId"    # Landroid/view/autofill/AutofillId;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .param p4, "flags"    # I

    .line 3235
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3236
    :try_start_9
    iget-boolean v0, v12, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_2f

    .line 3237
    const-string v0, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onFillReady() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    monitor-exit v1

    return-void

    .line 3241
    :cond_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_1c4

    .line 3243
    const/4 v0, 0x0

    .line 3244
    .local v0, "filterText":Ljava/lang/String;
    if-eqz p3, :cond_43

    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 3245
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_44

    .line 3250
    :cond_43
    move-object v15, v0

    .end local v0    # "filterText":Ljava/lang/String;
    .local v15, "filterText":Ljava/lang/String;
    :goto_44
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3251
    :try_start_47
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v16, v0

    .line 3252
    .local v16, "serviceLabel":Ljava/lang/CharSequence;
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v17, v0

    .line 3253
    .local v17, "serviceIcon":Landroid/graphics/drawable/Drawable;
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_1c1

    .line 3254
    if-eqz v16, :cond_1b6

    if-nez v17, :cond_5e

    goto/16 :goto_1b6

    .line 3259
    :cond_5e
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    .line 3260
    .local v11, "ids":[Landroid/view/autofill/AutofillId;
    if-eqz v11, :cond_aa

    invoke-static {v11, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 3261
    move/from16 v10, p4

    invoke-direct {v12, v13, v14, v15, v10}, Lcom/android/server/autofill/Session;->requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 3262
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3263
    :try_start_75
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v2, v12, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 3264
    .local v0, "currentView":Lcom/android/server/autofill/ViewState;
    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3265
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v3, v12, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;I)V

    .line 3267
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3268
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3267
    invoke-virtual {v2, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetCountShown(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    .line 3269
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v2, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetDisplayPresentationType(I)V

    .line 3270
    .end local v0    # "currentView":Lcom/android/server/autofill/ViewState;
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_75 .. :try_end_9f} :catchall_a3

    .line 3274
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 3275
    return-void

    .line 3270
    :catchall_a3
    move-exception v0

    :try_start_a4
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v0

    .line 3277
    :cond_a6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    goto :goto_ac

    .line 3260
    :cond_aa
    move/from16 v10, p4

    .line 3282
    :goto_ac
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->supportsInlineSuggestions()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 3283
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3284
    :try_start_b5
    invoke-direct {v12, v13, v15}, Lcom/android/server/autofill/Session;->requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 3285
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v2, v12, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 3286
    .restart local v0    # "currentView":Lcom/android/server/autofill/ViewState;
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3289
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v3, v12, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;I)V

    .line 3293
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3294
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3293
    invoke-virtual {v2, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetCountShown(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    .line 3295
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v2, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetDisplayPresentationType(I)V

    .line 3296
    monitor-exit v1

    return-void

    .line 3298
    .end local v0    # "currentView":Lcom/android/server/autofill/ViewState;
    :cond_e6
    monitor-exit v1

    goto :goto_eb

    :catchall_e8
    move-exception v0

    monitor-exit v1
    :try_end_ea
    .catchall {:try_start_b5 .. :try_end_ea} :catchall_e8

    throw v0

    .line 3301
    :cond_eb
    :goto_eb
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3302
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v12, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v0, v12, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v9, v12, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 3301
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v18, v9

    move-object/from16 v9, p0

    move v10, v0

    move-object/from16 v19, v11

    .end local v11    # "ids":[Landroid/view/autofill/AutofillId;
    .local v19, "ids":[Landroid/view/autofill/AutofillId;
    move/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZ)V

    .line 3305
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3306
    :try_start_113
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, v12, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, v12, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;I)V

    .line 3308
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3309
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    iget-object v3, v12, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3308
    invoke-virtual {v0, v2, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetCountShown(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    .line 3310
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetDisplayPresentationType(I)V

    .line 3311
    monitor-exit v1
    :try_end_12e
    .catchall {:try_start_113 .. :try_end_12e} :catchall_1b3

    .line 3313
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3314
    :try_start_131
    iget-wide v0, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1ae

    .line 3316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 3317
    iget-wide v3, v12, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v0, v3

    .line 3318
    .local v0, "duration":J
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_165

    .line 3319
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1st UI for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 3320
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shown in "

    .line 3321
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3322
    .local v3, "msg":Ljava/lang/StringBuilder;
    invoke-static {v0, v1, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3323
    const-string v4, "AutofillSession"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    .end local v3    # "msg":Ljava/lang/StringBuilder;
    :cond_165
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " app="

    .line 3326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " svc="

    .line 3327
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " latency="

    .line 3328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3329
    .local v3, "historyLog":Ljava/lang/StringBuilder;
    invoke-static {v0, v1, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3330
    iget-object v4, v12, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3332
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v4

    const/16 v5, 0x479

    .line 3333
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 3332
    invoke-direct {v12, v4, v5, v6}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 3335
    .end local v0    # "duration":J
    .end local v3    # "historyLog":Ljava/lang/StringBuilder;
    :cond_1ae
    monitor-exit v2

    .line 3336
    return-void

    .line 3335
    :catchall_1b0
    move-exception v0

    monitor-exit v2
    :try_end_1b2
    .catchall {:try_start_131 .. :try_end_1b2} :catchall_1b0

    throw v0

    .line 3311
    :catchall_1b3
    move-exception v0

    :try_start_1b4
    monitor-exit v1
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b3

    throw v0

    .line 3255
    .end local v19    # "ids":[Landroid/view/autofill/AutofillId;
    :cond_1b6
    :goto_1b6
    const/4 v0, 0x0

    const-string/jumbo v1, "onFillReady(): no service label or icon"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v12, v0, v1, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3256
    return-void

    .line 3253
    .end local v16    # "serviceLabel":Ljava/lang/CharSequence;
    .end local v17    # "serviceIcon":Landroid/graphics/drawable/Drawable;
    :catchall_1c1
    move-exception v0

    :try_start_1c2
    monitor-exit v2
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_1c1

    throw v0

    .line 3241
    .end local v15    # "filterText":Ljava/lang/String;
    :catchall_1c4
    move-exception v0

    :try_start_1c5
    monitor-exit v1
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_1c4

    throw v0
.end method

.method public onFillRequestFailure(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 1243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    .line 1244
    return-void
.end method

.method public onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V
    .registers 28
    .param p1, "requestId"    # I
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "servicePackageName"    # Ljava/lang/String;
    .param p4, "requestFlags"    # I

    .line 1133
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    iget-object v5, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1134
    :try_start_b
    iget-boolean v0, v1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_31

    .line 1135
    const-string v0, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call to Session#onFillRequestSuccess() rejected - session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " destroyed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    monitor-exit v5

    return-void

    .line 1140
    :cond_31
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    move-object v6, v0

    .line 1141
    .local v6, "requestLog":Landroid/metrics/LogMaker;
    if-eqz v6, :cond_42

    .line 1142
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_5b

    .line 1144
    :cond_42
    const-string v0, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFillRequestSuccess(): no request log for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :goto_5b
    const/16 v0, 0x38d

    if-nez v3, :cond_6e

    .line 1147
    if-eqz v6, :cond_69

    .line 1148
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1150
    :cond_69
    invoke-direct {v1, v2, v4}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1151
    monitor-exit v5

    return-void

    .line 1154
    :cond_6e
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 1155
    .local v7, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    if-eqz v7, :cond_9f

    iget-object v8, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v8

    if-nez v8, :cond_9f

    .line 1156
    const-string v0, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " because field detection is disabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-direct {v1, v2, v4}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1158
    monitor-exit v5

    return-void

    .line 1161
    :cond_9f
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v8

    .line 1162
    .local v8, "flags":I
    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_b1

    .line 1163
    const-string v9, "AutofillSession"

    const-string v10, "Service requested to wait for delayed fill response."

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->registerDelayedFillBroadcastLocked()V

    .line 1166
    .end local v8    # "flags":I
    :cond_b1
    monitor-exit v5
    :try_end_b2
    .catchall {:try_start_b .. :try_end_b2} :catchall_1f3

    .line 1168
    iget-object v5, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v8, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v8, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setLastResponse(ILandroid/service/autofill/FillResponse;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDisableDuration()J

    move-result-wide v14

    .line 1171
    .local v14, "disableDuration":J
    const-wide/16 v8, 0x0

    cmp-long v5, v14, v8

    const/4 v8, 0x1

    const/16 v16, 0x0

    if-lez v5, :cond_c8

    move v5, v8

    goto :goto_ca

    :cond_c8
    move/from16 v5, v16

    :goto_ca
    move/from16 v17, v5

    .line 1172
    .local v17, "autofillDisabled":Z
    if-eqz v17, :cond_18c

    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v13

    .line 1174
    .local v13, "flags":I
    and-int/lit8 v9, v13, 0x2

    if-eqz v9, :cond_d8

    move v9, v8

    goto :goto_da

    :cond_d8
    move/from16 v9, v16

    :goto_da
    move/from16 v18, v9

    .line 1176
    .local v18, "disableActivityOnly":Z
    nop

    .line 1177
    if-eqz v18, :cond_e2

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    goto :goto_e3

    :cond_e2
    const/4 v9, 0x0

    .line 1176
    :goto_e3
    invoke-direct {v1, v14, v15, v9}, Lcom/android/server/autofill/Session;->notifyDisableAutofillToClient(JLandroid/content/ComponentName;)V

    .line 1179
    if-eqz v18, :cond_100

    .line 1180
    iget-object v9, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v10, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v11, v1, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v12, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move/from16 v19, v11

    move/from16 v20, v12

    move-wide v11, v14

    move v5, v13

    .end local v13    # "flags":I
    .local v5, "flags":I
    move/from16 v13, v19

    move-wide/from16 v21, v14

    .end local v14    # "disableDuration":J
    .local v21, "disableDuration":J
    move/from16 v14, v20

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V

    goto :goto_114

    .line 1183
    .end local v5    # "flags":I
    .end local v21    # "disableDuration":J
    .restart local v13    # "flags":I
    .restart local v14    # "disableDuration":J
    :cond_100
    move v5, v13

    move-wide/from16 v21, v14

    .end local v13    # "flags":I
    .end local v14    # "disableDuration":J
    .restart local v5    # "flags":I
    .restart local v21    # "disableDuration":J
    iget-object v9, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v10, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget v13, v1, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v14, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-wide/from16 v11, v21

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForApp(Ljava/lang/String;JIZ)V

    .line 1187
    :goto_114
    iget-object v9, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1188
    :try_start_117
    iget-object v10, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v10, v8}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAutofillDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1192
    invoke-direct {v1, v4}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v10
    :try_end_120
    .catchall {:try_start_117 .. :try_end_120} :catchall_185

    if-eqz v10, :cond_151

    .line 1193
    :try_start_122
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0, v8}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1194
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_14b

    .line 1195
    const-string v0, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Service disabled autofill for "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", but session is kept for augmented autofill only"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_14b
    monitor-exit v9
    :try_end_14c
    .catchall {:try_start_122 .. :try_end_14c} :catchall_14d

    return-void

    .line 1200
    :catchall_14d
    move-exception v0

    move-wide/from16 v10, v21

    goto :goto_188

    :cond_151
    :try_start_151
    monitor-exit v9
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_185

    .line 1202
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_182

    .line 1203
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Service disabled autofill for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 1204
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": flags="

    .line 1205
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", duration="

    .line 1206
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1207
    .local v8, "message":Ljava/lang/StringBuilder;
    move-wide/from16 v10, v21

    .end local v21    # "disableDuration":J
    .local v10, "disableDuration":J
    invoke-static {v10, v11, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1208
    const-string v9, "AutofillSession"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18d

    .line 1202
    .end local v8    # "message":Ljava/lang/StringBuilder;
    .end local v10    # "disableDuration":J
    .restart local v21    # "disableDuration":J
    :cond_182
    move-wide/from16 v10, v21

    .end local v21    # "disableDuration":J
    .restart local v10    # "disableDuration":J
    goto :goto_18d

    .line 1200
    .end local v10    # "disableDuration":J
    .restart local v21    # "disableDuration":J
    :catchall_185
    move-exception v0

    move-wide/from16 v10, v21

    .end local v21    # "disableDuration":J
    .restart local v10    # "disableDuration":J
    :goto_188
    :try_start_188
    monitor-exit v9
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_18a

    throw v0

    :catchall_18a
    move-exception v0

    goto :goto_188

    .line 1172
    .end local v5    # "flags":I
    .end local v10    # "disableDuration":J
    .end local v18    # "disableActivityOnly":Z
    .restart local v14    # "disableDuration":J
    :cond_18c
    move-wide v10, v14

    .line 1212
    .end local v14    # "disableDuration":J
    .restart local v10    # "disableDuration":J
    :goto_18d
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_19d

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1a3

    .line 1213
    :cond_19d
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v5

    if-eqz v5, :cond_1a5

    :cond_1a3
    if-eqz v17, :cond_1bf

    .line 1216
    :cond_1a5
    nop

    .line 1217
    if-eqz v17, :cond_1aa

    const/4 v5, 0x4

    goto :goto_1ac

    :cond_1aa
    move/from16 v5, v16

    .line 1216
    :goto_1ac
    const/4 v8, 0x0

    invoke-direct {v1, v5, v8}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 1219
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1220
    :try_start_1b3
    iget-object v5, v1, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1221
    invoke-static {v9}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v9

    .line 1220
    invoke-virtual {v5, v9}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 1222
    monitor-exit v8
    :try_end_1bf
    .catchall {:try_start_1b3 .. :try_end_1bf} :catchall_1f0

    .line 1225
    :cond_1bf
    if-eqz v6, :cond_1e4

    .line 1226
    nop

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1c9

    goto :goto_1d1

    :cond_1c9
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    :goto_1d1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1226
    invoke-virtual {v6, v0, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1228
    if-eqz v7, :cond_1e4

    .line 1229
    const/16 v0, 0x4f7

    array-length v5, v7

    .line 1231
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1229
    invoke-virtual {v6, v0, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1235
    :cond_1e4
    iget-object v5, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1236
    const/4 v0, 0x0

    :try_start_1e8
    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 1237
    monitor-exit v5

    .line 1238
    return-void

    .line 1237
    :catchall_1ed
    move-exception v0

    monitor-exit v5
    :try_end_1ef
    .catchall {:try_start_1e8 .. :try_end_1ef} :catchall_1ed

    throw v0

    .line 1222
    :catchall_1f0
    move-exception v0

    :try_start_1f1
    monitor-exit v8
    :try_end_1f2
    .catchall {:try_start_1f1 .. :try_end_1f2} :catchall_1f0

    throw v0

    .line 1166
    .end local v6    # "requestLog":Landroid/metrics/LogMaker;
    .end local v7    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v10    # "disableDuration":J
    .end local v17    # "autofillDisabled":Z
    :catchall_1f3
    move-exception v0

    :try_start_1f4
    monitor-exit v5
    :try_end_1f5
    .catchall {:try_start_1f4 .. :try_end_1f5} :catchall_1f3

    throw v0
.end method

.method public onFillRequestTimeout(I)V
    .registers 4
    .param p1, "requestId"    # I

    .line 1249
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    .line 1250
    return-void
.end method

.method onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 4
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 4513
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 4514
    return-void
.end method

.method public onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 9
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "servicePackageName"    # Ljava/lang/String;

    .line 1328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1329
    .local v0, "showMessage":Z
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1330
    :try_start_9
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1332
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_35

    .line 1333
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call to Session#onSaveRequestFailure() rejected - session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " destroyed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    monitor-exit v1

    return-void

    .line 1337
    :cond_35
    if-eqz v0, :cond_65

    .line 1338
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getTargedSdkLocked()I

    move-result v2

    .line 1339
    .local v2, "targetSdk":I
    const/16 v3, 0x1d

    if-lt v2, v3, :cond_65

    .line 1340
    const/4 v0, 0x0

    .line 1341
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSaveRequestFailure(): not showing \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' because service\'s targetting API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    .end local v2    # "targetSdk":I
    :cond_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_9 .. :try_end_66} :catchall_93

    .line 1346
    const/16 v1, 0x396

    .line 1347
    invoke-direct {p0, v1, p2}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0xb

    .line 1348
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1349
    .local v1, "log":Landroid/metrics/LogMaker;
    if-eqz p1, :cond_81

    .line 1350
    const/16 v2, 0x624

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1352
    :cond_81
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1354
    if-eqz v0, :cond_8f

    .line 1355
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 1357
    :cond_8f
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 1358
    return-void

    .line 1345
    .end local v1    # "log":Landroid/metrics/LogMaker;
    :catchall_93
    move-exception v2

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v2
.end method

.method public onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 7
    .param p1, "servicePackageName"    # Ljava/lang/String;
    .param p2, "intentSender"    # Landroid/content/IntentSender;

    .line 1303
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1304
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1306
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_2f

    .line 1307
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onSaveRequestSuccess() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    monitor-exit v0

    return-void

    .line 1311
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_59

    .line 1312
    const/16 v0, 0x396

    invoke-direct {p0, v0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1313
    if-nez p2, :cond_3b

    const/16 v1, 0xa

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x1

    :goto_3c
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1314
    .local v0, "log":Landroid/metrics/LogMaker;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1315
    if-eqz p2, :cond_55

    .line 1316
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_52

    const-string v1, "AutofillSession"

    const-string v2, "Starting intent sender on save()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_52
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->startIntentSenderAndFinishSession(Landroid/content/IntentSender;)V

    .line 1321
    :cond_55
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 1322
    return-void

    .line 1311
    .end local v0    # "log":Landroid/metrics/LogMaker;
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/autofill/RemoteFillService;

    .line 1388
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "removing session because service died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1390
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    .line 1391
    monitor-exit v0

    .line 1392
    return-void

    .line 1391
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v1
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 157
    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method

.method onSwitchInputMethodLocked()V
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 409
    return-void

    .line 411
    :cond_9
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->shouldResetSessionStateOnInputMethodSwitch()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 414
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 419
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v1}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 420
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 423
    :cond_22
    return-void
.end method

.method removeFromServiceLocked()V
    .registers 4

    .line 4493
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFromServiceLocked("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_4e

    .line 4495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#removeFromServiceLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    return-void

    .line 4499
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 4500
    const-string/jumbo v0, "removeFromServiceLocked() ignored, waiting for pending save ui"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    return-void

    .line 4504
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 4505
    .local v0, "remoteFillService":Lcom/android/server/autofill/RemoteFillService;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeSessionLocked(I)V

    .line 4506
    if-eqz v0, :cond_6b

    .line 4507
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    .line 4509
    :cond_6b
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 4510
    return-void
.end method

.method public requestFallbackFromFillDialog()V
    .registers 4

    .line 1583
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 1584
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1585
    :try_start_6
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_c

    .line 1586
    monitor-exit v0

    return-void

    .line 1588
    :cond_c
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 1589
    .local v1, "currentView":Lcom/android/server/autofill/ViewState;
    iget v2, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 1590
    .end local v1    # "currentView":Lcom/android/server/autofill/ViewState;
    monitor-exit v0

    .line 1591
    return-void

    .line 1590
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public requestHideFillUi(Landroid/view/autofill/AutofillId;)V
    .registers 6
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 1522
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1526
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    .line 1529
    goto :goto_15

    .line 1532
    :catchall_b
    move-exception v1

    goto :goto_1c

    .line 1527
    :catch_d
    move-exception v1

    .line 1528
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to hide fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1531
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_15
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 1532
    monitor-exit v0

    .line 1533
    return-void

    .line 1532
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_b

    throw v1
.end method

.method public requestShowFillUi(Landroid/view/autofill/AutofillId;IILandroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 14
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 1474
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1475
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_27

    .line 1476
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#requestShowFillUi() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    monitor-exit v0

    return-void

    .line 1480
    :cond_27
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_81

    if-eqz v1, :cond_51

    .line 1482
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 1483
    .local v1, "view":Lcom/android/server/autofill/ViewState;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getVirtualBounds()Landroid/graphics/Rect;

    move-result-object v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_46} :catch_47
    .catchall {:try_start_2f .. :try_end_46} :catchall_81

    .line 1487
    .end local v1    # "view":Lcom/android/server/autofill/ViewState;
    goto :goto_7f

    .line 1485
    :catch_47
    move-exception v1

    .line 1486
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_48
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to show fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1487
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_7f

    .line 1489
    :cond_51
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_7f

    .line 1490
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not show full UI on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as it is not the current view ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") anymore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_7f
    :goto_7f
    monitor-exit v0

    .line 1495
    return-void

    .line 1494
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_48 .. :try_end_83} :catchall_81

    throw v1
.end method

.method public requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .registers 6
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    .line 1571
    .local v0, "client":Landroid/view/autofill/IAutoFillManagerClient;
    if-eqz v0, :cond_12

    .line 1573
    :try_start_6
    invoke-interface {v0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1576
    goto :goto_12

    .line 1574
    :catch_a
    move-exception v1

    .line 1575
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AutofillSession"

    const-string v3, "Error sending input show up notification"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1578
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public save()V
    .registers 5

    .line 1442
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1443
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_29

    .line 1444
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#save() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    monitor-exit v0

    return-void

    .line 1448
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_3b

    .line 1449
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda10;-><init>()V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v1, v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1452
    return-void

    .line 1448
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method setAuthenticationResultForAugmentedAutofillLocked(Landroid/os/Bundle;I)V
    .registers 19
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "authId"    # I

    .line 1741
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    if-nez v2, :cond_9

    move-object v3, v0

    goto :goto_11

    .line 1742
    :cond_9
    const-string v3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/Dataset;

    :goto_11
    nop

    .line 1743
    .local v3, "dataset":Landroid/service/autofill/Dataset;
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v5, "AutofillSession"

    if-eqz v4, :cond_47

    .line 1744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auth result for augmented autofill: sessionId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", authId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v6, p2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", dataset="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1743
    :cond_47
    move/from16 v6, p2

    .line 1747
    :goto_49
    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_62

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v7, :cond_62

    .line 1748
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    goto :goto_63

    :cond_62
    move-object v8, v0

    .line 1749
    .local v8, "fieldId":Landroid/view/autofill/AutofillId;
    :goto_63
    if-eqz v3, :cond_7a

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v7, :cond_7a

    .line 1750
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    goto :goto_7b

    :cond_7a
    move-object v4, v0

    .line 1751
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    :goto_7b
    if-eqz v3, :cond_81

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    move-result-object v0

    :cond_81
    move-object v9, v0

    .line 1752
    .local v9, "content":Landroid/content/ClipData;
    if-eqz v8, :cond_142

    if-nez v4, :cond_8a

    if-nez v9, :cond_8a

    goto/16 :goto_142

    .line 1765
    :cond_8a
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1766
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceIfCreatedLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v10

    .line 1767
    .local v10, "remoteAugmentedAutofillService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    if-nez v10, :cond_a0

    .line 1768
    const-string v0, "Can\'t fill after auth: RemoteAugmentedAutofillService is null"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastAugmentedAutofillResponse()V

    .line 1770
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 1771
    return-void

    .line 1779
    :cond_a0
    iget v0, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v8, v0}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 1780
    iput-object v8, v1, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1783
    const-string v0, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 1784
    .local v11, "clientState":Landroid/os/Bundle;
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v12, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13, v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1787
    if-eqz v9, :cond_c8

    .line 1788
    nop

    .line 1789
    invoke-virtual {v10}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getAutofillUriGrantsManager()Lcom/android/server/autofill/AutofillUriGrantsManager;

    move-result-object v0

    .line 1790
    .local v0, "autofillUgm":Lcom/android/server/autofill/AutofillUriGrantsManager;
    iget-object v12, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v13, v1, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    iget v14, v1, Lcom/android/server/autofill/Session;->userId:I

    invoke-virtual {v0, v12, v13, v14, v9}, Lcom/android/server/autofill/AutofillUriGrantsManager;->grantUriPermissions(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/content/ClipData;)V

    .line 1794
    .end local v0    # "autofillUgm":Lcom/android/server/autofill/AutofillUriGrantsManager;
    :cond_c8
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v12, ", content="

    const-string v13, ", value="

    if-eqz v0, :cond_f6

    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Filling after auth: fieldId="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_f6
    if-eqz v9, :cond_100

    .line 1800
    :try_start_f8
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v7, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v0, v7, v8, v9}, Landroid/view/autofill/IAutoFillManagerClient;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    goto :goto_110

    .line 1802
    :cond_100
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v14, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v2, 0x1

    invoke-interface {v0, v14, v15, v7, v2}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V
    :try_end_110
    .catch Landroid/os/RemoteException; {:try_start_f8 .. :try_end_110} :catch_111

    .line 1807
    :goto_110
    goto :goto_138

    .line 1804
    :catch_111
    move-exception v0

    .line 1805
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error filling after auth: fieldId="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1810
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_138
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-static {v8}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 1811
    return-void

    .line 1753
    .end local v10    # "remoteAugmentedAutofillService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .end local v11    # "clientState":Landroid/os/Bundle;
    :cond_142
    :goto_142
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_14b

    .line 1754
    const-string v0, "Rejecting empty/invalid auth result"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    :cond_14b
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastAugmentedAutofillResponse()V

    .line 1757
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 1758
    return-void
.end method

.method setAuthenticationResultLocked(Landroid/os/Bundle;I)V
    .registers 16
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "authenticationId"    # I

    .line 1625
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_25

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#setAuthenticationResultLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    return-void

    .line 1630
    :cond_25
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getRequestIdFromAuthenticationId(I)I

    move-result v0

    .line 1631
    .local v0, "requestId":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_30

    .line 1632
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->setAuthenticationResultForAugmentedAutofillLocked(Landroid/os/Bundle;I)V

    .line 1633
    return-void

    .line 1635
    :cond_30
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v2, :cond_55

    .line 1638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAuthenticationResultLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): no responses"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 1640
    return-void

    .line 1642
    :cond_55
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/service/autofill/FillResponse;

    .line 1643
    .local v8, "authenticatedResponse":Landroid/service/autofill/FillResponse;
    if-eqz v8, :cond_170

    if-nez p1, :cond_62

    goto/16 :goto_170

    .line 1649
    :cond_62
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getDatasetIdFromAuthenticationId(I)I

    move-result v9

    .line 1652
    .local v9, "datasetIdx":I
    const v2, 0xffff

    if-eq v9, v2, :cond_98

    .line 1653
    invoke-virtual {v8}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/Dataset;

    .line 1654
    .local v3, "dataset":Landroid/service/autofill/Dataset;
    if-nez v3, :cond_98

    .line 1655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no dataset with index "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " on fill response"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 1657
    return-void

    .line 1662
    .end local v3    # "dataset":Landroid/service/autofill/Dataset;
    :cond_98
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 1664
    const-string v3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .line 1665
    .local v10, "result":Landroid/os/Parcelable;
    const-string v3, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 1666
    .local v11, "newClientState":Landroid/os/Bundle;
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_d9

    .line 1667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAuthenticationResultLocked(): result="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", clientState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", authenticationId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_d9
    instance-of v3, v10, Landroid/service/autofill/FillResponse;

    if-eqz v3, :cond_ea

    .line 1671
    const/16 v1, 0x390

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1672
    move-object v1, v10

    check-cast v1, Landroid/service/autofill/FillResponse;

    invoke-direct {p0, v8, v1, v11}, Lcom/android/server/autofill/Session;->replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V

    goto/16 :goto_16f

    .line 1673
    :cond_ea
    instance-of v3, v10, Landroid/service/autofill/Dataset;

    if-eqz v3, :cond_14e

    .line 1674
    if-eq v9, v2, :cond_127

    .line 1675
    const/16 v2, 0x466

    invoke-direct {p0, v0, v2}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1677
    if-eqz v11, :cond_102

    .line 1678
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_100

    const-string v2, "Updating client state from auth dataset"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_100
    iput-object v11, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 1681
    :cond_102
    move-object v1, v10

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 1682
    .local v1, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v8}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/service/autofill/Dataset;

    .line 1683
    .local v12, "oldDataset":Landroid/service/autofill/Dataset;
    invoke-static {v12, p1}, Lcom/android/server/autofill/Session;->isAuthResultDatasetEphemeral(Landroid/service/autofill/Dataset;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_11d

    .line 1684
    invoke-virtual {v8}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1686
    :cond_11d
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v0

    move v4, v9

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;ZI)V

    .line 1687
    .end local v1    # "dataset":Landroid/service/autofill/Dataset;
    .end local v12    # "oldDataset":Landroid/service/autofill/Dataset;
    goto :goto_16f

    .line 1688
    :cond_127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid index ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for authentication id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const/16 v1, 0x467

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    goto :goto_16f

    .line 1694
    :cond_14e
    if-eqz v10, :cond_167

    .line 1695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "service returned invalid auth type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_167
    const/16 v1, 0x468

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1699
    invoke-direct {p0, v0, v4}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1701
    :goto_16f
    return-void

    .line 1644
    .end local v9    # "datasetIdx":I
    .end local v10    # "result":Landroid/os/Parcelable;
    .end local v11    # "newClientState":Landroid/os/Bundle;
    :cond_170
    :goto_170
    const-string/jumbo v2, "no authenticated response"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 1646
    return-void
.end method

.method setAutofillFailureLocked(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 3592
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 3593
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 3594
    .local v1, "id":Landroid/view/autofill/AutofillId;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 3595
    .local v2, "viewState":Lcom/android/server/autofill/ViewState;
    const-string v3, "AutofillSession"

    if-nez v2, :cond_31

    .line 3596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAutofillFailure(): no view for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    goto :goto_66

    .line 3599
    :cond_31
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 3600
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    .line 3601
    .local v4, "state":I
    or-int/lit16 v5, v4, 0x400

    invoke-virtual {v2, v5}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3602
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_66

    .line 3603
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changed state of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .end local v2    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v4    # "state":I
    :cond_66
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3606
    .end local v0    # "i":I
    :cond_69
    return-void
.end method

.method setHasCallbackLocked(Z)V
    .registers 4
    .param p1, "hasIt"    # Z

    .line 1815
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_25

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#setHasCallbackLocked() rejected - session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    return-void

    .line 1820
    :cond_25
    iput-boolean p1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 1821
    return-void
.end method

.method public showSaveLocked()Lcom/android/server/autofill/Session$SaveResult;
    .registers 31

    .line 2266
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v13, 0x0

    if-eqz v0, :cond_2d

    .line 2267
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#showSaveLocked() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v0, v13, v13, v13}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 2272
    :cond_2d
    const/4 v0, 0x2

    iput v0, v12, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 2273
    const-string/jumbo v1, "showSaveLocked(%s)"

    invoke-direct {v12, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v14

    .line 2274
    .local v14, "response":Landroid/service/autofill/FillResponse;
    if-nez v14, :cond_3b

    const/4 v2, 0x0

    goto :goto_3f

    :cond_3b
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v2

    :goto_3f
    move-object v15, v2

    .line 2286
    .local v15, "saveInfo":Landroid/service/autofill/SaveInfo;
    const/4 v11, 0x1

    if-nez v15, :cond_6e

    .line 2287
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_68

    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSaveLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): no saveInfo from service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    :cond_68
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v0, v13, v11, v11}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 2292
    :cond_6e
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a1

    .line 2294
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_9b

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSaveLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): service asked to delay save"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    :cond_9b
    new-instance v1, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v1, v13, v13, v0}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v1

    .line 2299
    :cond_a1
    invoke-static {v15}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v10

    .line 2302
    .local v10, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 2304
    .local v9, "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v0

    .line 2306
    .local v8, "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 2307
    .local v7, "requiredIds":[Landroid/view/autofill/AutofillId;
    const/4 v0, 0x1

    .line 2308
    .local v0, "allRequiredAreNotEmpty":Z
    const/4 v2, 0x0

    .line 2311
    .local v2, "atLeastOneChanged":Z
    const/4 v3, 0x0

    .line 2312
    .local v3, "isUpdate":Z
    if-eqz v7, :cond_268

    .line 2313
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_bb
    array-length v5, v7

    if-ge v4, v5, :cond_25f

    .line 2314
    aget-object v5, v7, v4

    .line 2315
    .local v5, "id":Landroid/view/autofill/AutofillId;
    if-nez v5, :cond_e7

    .line 2316
    const-string v6, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "null autofill id on "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    move/from16 v18, v0

    move/from16 v19, v2

    move/from16 v21, v3

    goto/16 :goto_228

    .line 2319
    :cond_e7
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2320
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 2321
    .local v1, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez v1, :cond_111

    .line 2322
    const-string v6, "AutofillSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "showSaveLocked(): no ViewState for required "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    const/4 v0, 0x0

    .line 2324
    move v13, v0

    goto/16 :goto_26c

    .line 2327
    :cond_111
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 2328
    .local v6, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v6, :cond_123

    invoke-virtual {v6}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_11e

    goto :goto_123

    :cond_11e
    move/from16 v18, v0

    move/from16 v19, v2

    goto :goto_15f

    .line 2329
    :cond_123
    :goto_123
    invoke-direct {v12, v5}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v11

    .line 2330
    .local v11, "initialValue":Landroid/view/autofill/AutofillValue;
    if-eqz v11, :cond_234

    .line 2331
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_15a

    .line 2332
    const-string v13, "AutofillSession"

    move/from16 v18, v0

    .end local v0    # "allRequiredAreNotEmpty":Z
    .local v18, "allRequiredAreNotEmpty":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    .end local v2    # "atLeastOneChanged":Z
    .local v19, "atLeastOneChanged":Z
    const-string v2, "Value of required field "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " didn\'t change; using initial value ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") instead"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    .line 2331
    .end local v18    # "allRequiredAreNotEmpty":Z
    .end local v19    # "atLeastOneChanged":Z
    .restart local v0    # "allRequiredAreNotEmpty":Z
    .restart local v2    # "atLeastOneChanged":Z
    :cond_15a
    move/from16 v18, v0

    move/from16 v19, v2

    .line 2335
    .end local v0    # "allRequiredAreNotEmpty":Z
    .end local v2    # "atLeastOneChanged":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    .restart local v19    # "atLeastOneChanged":Z
    :goto_15e
    move-object v6, v11

    .line 2345
    .end local v11    # "initialValue":Landroid/view/autofill/AutofillValue;
    :goto_15f
    invoke-direct {v12, v10, v5, v6}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 2346
    .end local v6    # "value":Landroid/view/autofill/AutofillValue;
    .local v0, "value":Landroid/view/autofill/AutofillValue;
    if-nez v0, :cond_18e

    .line 2347
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_188

    .line 2348
    const-string v2, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "value of required field "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " failed sanitization"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_188
    const/4 v2, 0x0

    .line 2351
    .end local v18    # "allRequiredAreNotEmpty":Z
    .local v2, "allRequiredAreNotEmpty":Z
    move v13, v2

    move/from16 v2, v19

    goto/16 :goto_26c

    .line 2353
    .end local v2    # "allRequiredAreNotEmpty":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    :cond_18e
    invoke-virtual {v1, v0}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 2354
    invoke-virtual {v9, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 2357
    .local v2, "filledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v0, v2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_224

    .line 2358
    const/4 v6, 0x1

    .line 2359
    .local v6, "changed":Z
    if-nez v2, :cond_1e7

    .line 2361
    invoke-direct {v12, v5}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v11

    .line 2362
    .restart local v11    # "initialValue":Landroid/view/autofill/AutofillValue;
    if-eqz v11, :cond_1e0

    invoke-virtual {v11, v0}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e0

    .line 2363
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_1d9

    .line 2364
    const-string v13, "AutofillSession"

    move-object/from16 v20, v1

    .end local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v20, "viewState":Lcom/android/server/autofill/ViewState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v3

    .end local v3    # "isUpdate":Z
    .local v21, "isUpdate":Z
    const-string/jumbo v3, "id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is part of dataset but initial value didn\'t change: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1dd

    .line 2363
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v21    # "isUpdate":Z
    .restart local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v3    # "isUpdate":Z
    :cond_1d9
    move-object/from16 v20, v1

    move/from16 v21, v3

    .line 2367
    .end local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v3    # "isUpdate":Z
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v21    # "isUpdate":Z
    :goto_1dd
    const/4 v1, 0x0

    move v6, v1

    .end local v6    # "changed":Z
    .local v1, "changed":Z
    goto :goto_1e4

    .line 2362
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v21    # "isUpdate":Z
    .local v1, "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v3    # "isUpdate":Z
    .restart local v6    # "changed":Z
    :cond_1e0
    move-object/from16 v20, v1

    move/from16 v21, v3

    .line 2369
    .end local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v3    # "isUpdate":Z
    .end local v11    # "initialValue":Landroid/view/autofill/AutofillValue;
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v21    # "isUpdate":Z
    :goto_1e4
    move/from16 v3, v21

    goto :goto_1ec

    .line 2370
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v21    # "isUpdate":Z
    .restart local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v3    # "isUpdate":Z
    :cond_1e7
    move-object/from16 v20, v1

    move/from16 v21, v3

    .end local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v3    # "isUpdate":Z
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v21    # "isUpdate":Z
    const/4 v3, 0x1

    .line 2372
    .end local v21    # "isUpdate":Z
    .restart local v3    # "isUpdate":Z
    :goto_1ec
    if-eqz v6, :cond_221

    .line 2373
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_21e

    .line 2374
    const-string v1, "AutofillSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found a change on required "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ": "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " => "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    :cond_21e
    const/4 v1, 0x1

    move v2, v1

    .end local v19    # "atLeastOneChanged":Z
    .local v1, "atLeastOneChanged":Z
    goto :goto_22c

    .line 2372
    .end local v1    # "atLeastOneChanged":Z
    .restart local v19    # "atLeastOneChanged":Z
    :cond_221
    move/from16 v2, v19

    goto :goto_22c

    .line 2357
    .end local v6    # "changed":Z
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v1, "viewState":Lcom/android/server/autofill/ViewState;
    :cond_224
    move-object/from16 v20, v1

    move/from16 v21, v3

    .line 2313
    .end local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v5    # "id":Landroid/view/autofill/AutofillId;
    .end local v18    # "allRequiredAreNotEmpty":Z
    .end local v19    # "atLeastOneChanged":Z
    .local v0, "allRequiredAreNotEmpty":Z
    .local v2, "atLeastOneChanged":Z
    :goto_228
    move/from16 v2, v19

    move/from16 v3, v21

    .end local v0    # "allRequiredAreNotEmpty":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    :goto_22c
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v18

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_bb

    .line 2337
    .end local v18    # "allRequiredAreNotEmpty":Z
    .restart local v0    # "allRequiredAreNotEmpty":Z
    .restart local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v5    # "id":Landroid/view/autofill/AutofillId;
    .local v6, "value":Landroid/view/autofill/AutofillValue;
    .restart local v11    # "initialValue":Landroid/view/autofill/AutofillValue;
    :cond_234
    move/from16 v18, v0

    move-object/from16 v20, v1

    move/from16 v19, v2

    move/from16 v21, v3

    .end local v0    # "allRequiredAreNotEmpty":Z
    .end local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "isUpdate":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    .restart local v19    # "atLeastOneChanged":Z
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v21    # "isUpdate":Z
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_258

    .line 2338
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty value for required "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_258
    const/4 v0, 0x0

    .line 2341
    .end local v18    # "allRequiredAreNotEmpty":Z
    .restart local v0    # "allRequiredAreNotEmpty":Z
    move v13, v0

    move/from16 v2, v19

    move/from16 v3, v21

    goto :goto_26c

    .line 2313
    .end local v5    # "id":Landroid/view/autofill/AutofillId;
    .end local v6    # "value":Landroid/view/autofill/AutofillValue;
    .end local v11    # "initialValue":Landroid/view/autofill/AutofillValue;
    .end local v19    # "atLeastOneChanged":Z
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v21    # "isUpdate":Z
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v3    # "isUpdate":Z
    :cond_25f
    move/from16 v18, v0

    move/from16 v19, v2

    move/from16 v21, v3

    .end local v0    # "allRequiredAreNotEmpty":Z
    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "isUpdate":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    .restart local v19    # "atLeastOneChanged":Z
    .restart local v21    # "isUpdate":Z
    move/from16 v13, v18

    goto :goto_26c

    .line 2312
    .end local v4    # "i":I
    .end local v18    # "allRequiredAreNotEmpty":Z
    .end local v19    # "atLeastOneChanged":Z
    .end local v21    # "isUpdate":Z
    .restart local v0    # "allRequiredAreNotEmpty":Z
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v3    # "isUpdate":Z
    :cond_268
    move/from16 v18, v0

    .end local v0    # "allRequiredAreNotEmpty":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    move/from16 v13, v18

    .line 2383
    .end local v18    # "allRequiredAreNotEmpty":Z
    .local v13, "allRequiredAreNotEmpty":Z
    :goto_26c
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    .line 2384
    .local v11, "optionalIds":[Landroid/view/autofill/AutofillId;
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_29b

    .line 2385
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allRequiredAreNotEmpty: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " hasOptional: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v11, :cond_28f

    const/4 v4, 0x1

    goto :goto_290

    :cond_28f
    const/4 v4, 0x0

    :goto_290
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_29b
    if-nez v13, :cond_2a0

    .line 2390
    const/4 v0, 0x3

    .local v0, "saveDialogNotShowReason":I
    goto/16 :goto_3bf

    .line 2397
    .end local v0    # "saveDialogNotShowReason":I
    :cond_2a0
    if-eqz v11, :cond_3b4

    if-eqz v2, :cond_2a6

    if-nez v3, :cond_3b4

    .line 2399
    :cond_2a6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a7
    array-length v1, v11

    if-ge v0, v1, :cond_3af

    .line 2400
    aget-object v1, v11, v0

    .line 2401
    .local v1, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2402
    iget-object v4, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/ViewState;

    .line 2403
    .local v4, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez v4, :cond_2d8

    .line 2404
    const-string v5, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    .end local v2    # "atLeastOneChanged":Z
    .local v18, "atLeastOneChanged":Z
    const-string/jumbo v2, "no ViewState for optional "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    move/from16 v20, v3

    goto/16 :goto_3a7

    .line 2407
    .end local v18    # "atLeastOneChanged":Z
    .restart local v2    # "atLeastOneChanged":Z
    :cond_2d8
    move/from16 v18, v2

    .end local v2    # "atLeastOneChanged":Z
    .restart local v18    # "atLeastOneChanged":Z
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_373

    .line 2408
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 2409
    .local v2, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-direct {v12, v10, v1, v2}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 2410
    .local v5, "value":Landroid/view/autofill/AutofillValue;
    if-nez v5, :cond_31b

    .line 2411
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_315

    .line 2412
    const-string v6, "AutofillSession"

    move-object/from16 v19, v2

    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .local v19, "currentValue":Landroid/view/autofill/AutofillValue;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v3

    .end local v3    # "isUpdate":Z
    .local v20, "isUpdate":Z
    const-string/jumbo v3, "value of opt. field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed sanitization"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a7

    .line 2411
    .end local v19    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v20    # "isUpdate":Z
    .restart local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v3    # "isUpdate":Z
    :cond_315
    move-object/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v3    # "isUpdate":Z
    .restart local v19    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v20    # "isUpdate":Z
    goto/16 :goto_3a7

    .line 2417
    .end local v19    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v20    # "isUpdate":Z
    .restart local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v3    # "isUpdate":Z
    :cond_31b
    move-object/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v3    # "isUpdate":Z
    .restart local v19    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v20    # "isUpdate":Z
    invoke-virtual {v9, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 2419
    .local v2, "filledValue":Landroid/view/autofill/AutofillValue;
    if-eqz v5, :cond_36c

    invoke-virtual {v5, v2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36c

    .line 2420
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_361

    .line 2421
    const-string v3, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v21, "viewState":Lcom/android/server/autofill/ViewState;
    const-string v4, "found a change on optional "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " => "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_363

    .line 2420
    .end local v21    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_361
    move-object/from16 v21, v4

    .line 2424
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v21    # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_363
    if-eqz v2, :cond_367

    .line 2425
    const/4 v3, 0x1

    .end local v20    # "isUpdate":Z
    .restart local v3    # "isUpdate":Z
    goto :goto_369

    .line 2424
    .end local v3    # "isUpdate":Z
    .restart local v20    # "isUpdate":Z
    :cond_367
    move/from16 v3, v20

    .line 2427
    .end local v20    # "isUpdate":Z
    .restart local v3    # "isUpdate":Z
    :goto_369
    const/4 v4, 0x1

    move v2, v4

    .end local v18    # "atLeastOneChanged":Z
    .local v4, "atLeastOneChanged":Z
    goto :goto_372

    .line 2419
    .end local v3    # "isUpdate":Z
    .end local v21    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v4, "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v18    # "atLeastOneChanged":Z
    .restart local v20    # "isUpdate":Z
    :cond_36c
    move-object/from16 v21, v4

    .line 2429
    .end local v2    # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v5    # "value":Landroid/view/autofill/AutofillValue;
    .end local v19    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v21    # "viewState":Lcom/android/server/autofill/ViewState;
    move/from16 v2, v18

    move/from16 v3, v20

    .end local v18    # "atLeastOneChanged":Z
    .end local v20    # "isUpdate":Z
    .local v2, "atLeastOneChanged":Z
    .restart local v3    # "isUpdate":Z
    :goto_372
    goto :goto_3ab

    .line 2431
    .end local v2    # "atLeastOneChanged":Z
    .end local v21    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v18    # "atLeastOneChanged":Z
    :cond_373
    move/from16 v20, v3

    move-object/from16 v21, v4

    .end local v3    # "isUpdate":Z
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20    # "isUpdate":Z
    .restart local v21    # "viewState":Lcom/android/server/autofill/ViewState;
    invoke-direct {v12, v1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 2432
    .local v2, "initialValue":Landroid/view/autofill/AutofillValue;
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_3a2

    .line 2433
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no current value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; initial value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_3a2
    if-eqz v2, :cond_3a7

    .line 2437
    invoke-virtual {v9, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .end local v2    # "initialValue":Landroid/view/autofill/AutofillValue;
    .end local v20    # "isUpdate":Z
    .end local v21    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v3    # "isUpdate":Z
    :cond_3a7
    :goto_3a7
    move/from16 v2, v18

    move/from16 v3, v20

    .end local v18    # "atLeastOneChanged":Z
    .local v2, "atLeastOneChanged":Z
    :goto_3ab
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2a7

    :cond_3af
    move/from16 v18, v2

    move/from16 v20, v3

    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "isUpdate":Z
    .restart local v18    # "atLeastOneChanged":Z
    .restart local v20    # "isUpdate":Z
    goto :goto_3b8

    .line 2442
    .end local v0    # "i":I
    .end local v18    # "atLeastOneChanged":Z
    .end local v20    # "isUpdate":Z
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v3    # "isUpdate":Z
    :cond_3b4
    move/from16 v18, v2

    move/from16 v20, v3

    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "isUpdate":Z
    .restart local v18    # "atLeastOneChanged":Z
    .restart local v20    # "isUpdate":Z
    :goto_3b8
    if-nez v18, :cond_3fa

    .line 2443
    const/4 v0, 0x4

    move/from16 v2, v18

    move/from16 v3, v20

    .line 2550
    .end local v18    # "atLeastOneChanged":Z
    .end local v20    # "isUpdate":Z
    .local v0, "saveDialogNotShowReason":I
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v3    # "isUpdate":Z
    :goto_3bf
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3f2

    .line 2551
    const-string v1, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showSaveLocked("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): with no changes, comes no responsibilities.allRequiredAreNotNull="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", atLeastOneChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    :cond_3f2
    new-instance v1, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v5, v4, v0}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v1

    .line 2445
    .end local v0    # "saveDialogNotShowReason":I
    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "isUpdate":Z
    .restart local v18    # "atLeastOneChanged":Z
    .restart local v20    # "isUpdate":Z
    :cond_3fa
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_405

    .line 2446
    const-string v0, "AutofillSession"

    const-string v1, "at least one field changed, validate fields for save UI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_405
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getValidator()Landroid/service/autofill/InternalValidator;

    move-result-object v6

    .line 2449
    .local v6, "validator":Landroid/service/autofill/InternalValidator;
    if-eqz v6, :cond_471

    .line 2450
    const/16 v0, 0x46d

    invoke-direct {v12, v0}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 2453
    .local v1, "log":Landroid/metrics/LogMaker;
    const/4 v2, 0x5

    :try_start_412
    invoke-virtual {v6, v12}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v0

    .line 2454
    .local v0, "isValid":Z
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_436

    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    :cond_436
    if-eqz v0, :cond_43b

    .line 2456
    const/16 v3, 0xa

    goto :goto_43c

    .line 2457
    :cond_43b
    move v3, v2

    .line 2455
    :goto_43c
    invoke-virtual {v1, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
    :try_end_43f
    .catch Ljava/lang/Exception; {:try_start_412 .. :try_end_43f} :catch_457

    .line 2464
    nop

    .line 2466
    iget-object v3, v12, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2467
    if-nez v0, :cond_471

    .line 2468
    const-string v3, "AutofillSession"

    const-string/jumbo v4, "not showing save UI because fields failed validation"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    new-instance v3, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v2}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v3

    .line 2458
    .end local v0    # "isValid":Z
    :catch_457
    move-exception v0

    .line 2459
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AutofillSession"

    const-string v4, "Not showing save UI because validation failed:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2460
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2461
    iget-object v3, v12, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2462
    new-instance v3, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v2}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v3

    .line 2476
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "log":Landroid/metrics/LogMaker;
    :cond_471
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    .line 2477
    .local v5, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v5, :cond_5c3

    .line 2478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_478
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b9

    .line 2479
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 2480
    .local v1, "dataset":Landroid/service/autofill/Dataset;
    nop

    .line 2481
    invoke-static {v1}, Lcom/android/server/autofill/Helper;->getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 2482
    .local v2, "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_4bc

    .line 2483
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v19, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const-string v5, "Checking if saved fields match contents of dataset #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; savableIds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4be

    .line 2482
    .end local v19    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_4bc
    move-object/from16 v19, v5

    .line 2486
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v19    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :goto_4be
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4bf
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_581

    .line 2487
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 2488
    .local v4, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    .line 2489
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    if-nez v5, :cond_503

    .line 2490
    sget-boolean v21, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v21, :cond_4f9

    .line 2491
    move-object/from16 v21, v6

    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .local v21, "validator":Landroid/service/autofill/InternalValidator;
    const-string v6, "AutofillSession"

    move-object/from16 v22, v7

    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .local v22, "requiredIds":[Landroid/view/autofill/AutofillId;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v8

    .end local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v23, "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    const-string v8, "dataset has value for field that is null: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v2

    goto/16 :goto_575

    .line 2490
    .end local v21    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v23    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :cond_4f9
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v21    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v23    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    move-object/from16 v24, v2

    goto/16 :goto_575

    .line 2495
    .end local v21    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v23    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :cond_503
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v21    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v23    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillValue;

    .line 2496
    .local v6, "datasetValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v5, v6}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_556

    .line 2497
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_548

    .line 2498
    const-string v7, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v2

    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v24, "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    const-string v2, "found a dataset change on id "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ": from "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " to "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54a

    .line 2497
    .end local v24    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    :cond_548
    move-object/from16 v24, v2

    .line 2478
    .end local v1    # "dataset":Landroid/service/autofill/Dataset;
    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v3    # "j":I
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "datasetValue":Landroid/view/autofill/AutofillValue;
    :goto_54a
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    goto/16 :goto_478

    .line 2503
    .restart local v1    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v3    # "j":I
    .restart local v4    # "id":Landroid/view/autofill/AutofillId;
    .restart local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v6    # "datasetValue":Landroid/view/autofill/AutofillValue;
    :cond_556
    move-object/from16 v24, v2

    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v24    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_575

    const-string v2, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no dataset changes for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "datasetValue":Landroid/view/autofill/AutofillValue;
    :cond_575
    :goto_575
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v2, v24

    goto/16 :goto_4bf

    .end local v21    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v23    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v24    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v6, "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :cond_581
    move-object/from16 v24, v2

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .line 2505
    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v3    # "j":I
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v21    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v23    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v24    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_5b0

    .line 2506
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ignoring Save UI because all fields match contents of dataset #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :cond_5b0
    new-instance v2, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-direct {v2, v4, v8, v3}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v2

    .line 2478
    .end local v1    # "dataset":Landroid/service/autofill/Dataset;
    .end local v19    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v21    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v23    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v24    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v5, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :cond_5b9
    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    const/4 v8, 0x1

    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v19    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v21    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v23    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    goto :goto_5cc

    .line 2477
    .end local v0    # "i":I
    .end local v19    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v21    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v23    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :cond_5c3
    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    const/4 v8, 0x1

    .line 2514
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v19    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v21    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v23    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :goto_5cc
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_5f0

    .line 2515
    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Good news, everyone! All checks passed, show save UI for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    :cond_5f0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v7

    .line 2520
    .local v7, "client":Landroid/view/autofill/IAutoFillManagerClient;
    new-instance v0, Lcom/android/server/autofill/ui/PendingUi;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget v2, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-direct {v0, v1, v2, v7}, Lcom/android/server/autofill/ui/PendingUi;-><init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V

    iput-object v0, v12, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 2524
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2525
    :try_start_605
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v17, v0

    .line 2526
    .local v17, "serviceLabel":Ljava/lang/CharSequence;
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v24, v0

    .line 2527
    .local v24, "serviceIcon":Landroid/graphics/drawable/Drawable;
    monitor-exit v1
    :try_end_616
    .catchall {:try_start_605 .. :try_end_616} :catchall_6a8

    .line 2528
    if-eqz v17, :cond_68c

    if-nez v24, :cond_629

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move/from16 v26, v13

    move-object/from16 v29, v14

    const/4 v1, 0x0

    move-object v13, v7

    move v14, v8

    goto/16 :goto_699

    .line 2534
    :cond_629
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2535
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v6, v12, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-boolean v5, v12, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 2534
    move-object/from16 v2, v17

    move-object/from16 v3, v24

    move/from16 v16, v5

    move-object v5, v15

    move-object/from16 v25, v6

    move-object/from16 v6, p0

    move/from16 v26, v13

    move-object v13, v7

    .end local v7    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .local v13, "client":Landroid/view/autofill/IAutoFillManagerClient;
    .local v26, "allRequiredAreNotEmpty":Z
    move-object v7, v0

    move/from16 v27, v8

    move-object/from16 v8, p0

    move-object/from16 v28, v9

    .end local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v28, "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    move-object/from16 v9, v25

    move-object/from16 v25, v10

    .end local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .local v25, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    move/from16 v10, v20

    move-object/from16 v29, v14

    move/from16 v14, v27

    move-object/from16 v27, v11

    .end local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v14    # "response":Landroid/service/autofill/FillResponse;
    .local v27, "optionalIds":[Landroid/view/autofill/AutofillId;
    .local v29, "response":Landroid/service/autofill/FillResponse;
    move/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->showSaveUi(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;ZZ)V

    .line 2537
    if-eqz v13, :cond_680

    .line 2539
    :try_start_661
    iget v0, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v13, v0, v14}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_666
    .catch Landroid/os/RemoteException; {:try_start_661 .. :try_end_666} :catch_667

    .line 2542
    goto :goto_680

    .line 2540
    :catch_667
    move-exception v0

    .line 2541
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error notifying client to set save UI state to shown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_680
    :goto_680
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0, v14}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2545
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    const/4 v1, 0x0

    invoke-direct {v0, v14, v1, v1}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 2528
    .end local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26    # "allRequiredAreNotEmpty":Z
    .end local v27    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v29    # "response":Landroid/service/autofill/FillResponse;
    .restart local v7    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .local v13, "allRequiredAreNotEmpty":Z
    .restart local v14    # "response":Landroid/service/autofill/FillResponse;
    :cond_68c
    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move/from16 v26, v13

    move-object/from16 v29, v14

    const/4 v1, 0x0

    move-object v13, v7

    move v14, v8

    .line 2529
    .end local v7    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v14    # "response":Landroid/service/autofill/FillResponse;
    .local v13, "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26    # "allRequiredAreNotEmpty":Z
    .restart local v27    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v29    # "response":Landroid/service/autofill/FillResponse;
    :goto_699
    const-string/jumbo v0, "showSaveLocked(): no service label or icon"

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v12, v3, v0, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2530
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    invoke-direct {v0, v1, v14, v1}, Lcom/android/server/autofill/Session$SaveResult;-><init>(ZZI)V

    return-object v0

    .line 2527
    .end local v17    # "serviceLabel":Ljava/lang/CharSequence;
    .end local v24    # "serviceIcon":Landroid/graphics/drawable/Drawable;
    .end local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26    # "allRequiredAreNotEmpty":Z
    .end local v27    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v29    # "response":Landroid/service/autofill/FillResponse;
    .restart local v7    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .local v13, "allRequiredAreNotEmpty":Z
    .restart local v14    # "response":Landroid/service/autofill/FillResponse;
    :catchall_6a8
    move-exception v0

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move/from16 v26, v13

    move-object/from16 v29, v14

    move-object v13, v7

    .end local v7    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v14    # "response":Landroid/service/autofill/FillResponse;
    .local v13, "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26    # "allRequiredAreNotEmpty":Z
    .restart local v27    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v29    # "response":Landroid/service/autofill/FillResponse;
    :goto_6b4
    :try_start_6b4
    monitor-exit v1
    :try_end_6b5
    .catchall {:try_start_6b4 .. :try_end_6b5} :catchall_6b6

    throw v0

    :catchall_6b6
    move-exception v0

    goto :goto_6b4
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 7
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1552
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1553
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_29

    .line 1554
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#startIntentSender() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    monitor-exit v0

    return-void

    .line 1558
    :cond_29
    if-nez p2, :cond_2e

    .line 1559
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 1561
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3e

    .line 1562
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1565
    return-void

    .line 1561
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public startIntentSenderAndFinishSession(Landroid/content/IntentSender;)V
    .registers 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 1546
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 1547
    return-void
.end method

.method switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "newActivity"    # Landroid/os/IBinder;
    .param p2, "newClient"    # Landroid/os/IBinder;

    .line 1077
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_29

    .line 1079
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#switchActivity() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    monitor-exit v0

    return-void

    .line 1083
    :cond_29
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 1084
    invoke-direct {p0, p2}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 1087
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 1088
    monitor-exit v0

    .line 1089
    return-void

    .line 1088
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 4147
    invoke-static {v1}, Lcom/android/server/autofill/Session;->sessionStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4146
    return-object v0
.end method

.method updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .registers 14
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualBounds"    # Landroid/graphics/Rect;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .param p4, "action"    # I
    .param p5, "flags"    # I

    .line 2912
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_23

    .line 2913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#updateLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    return-void

    .line 2917
    :cond_23
    const/4 v0, 0x5

    const/4 v2, 0x1

    if-ne p4, v0, :cond_41

    .line 2918
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2919
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_35

    .line 2920
    const-string v0, "Set the response has expired."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :cond_35
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 2924
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 2925
    return-void

    .line 2928
    :cond_41
    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, v3}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 2929
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v4, "updateLocked("

    if-eqz v3, :cond_85

    .line 2930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "): id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", action="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2931
    invoke-static {p4}, Lcom/android/server/autofill/Session;->actionAsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", flags="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2930
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :cond_85
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    .line 2934
    .local v3, "viewState":Lcom/android/server/autofill/ViewState;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_cd

    .line 2935
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): mCurrentViewId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mExpiredResponse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v5}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", viewState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    :cond_cd
    const/4 v4, 0x2

    if-nez v3, :cond_12f

    .line 2941
    if-eq p4, v2, :cond_e2

    const/4 v5, 0x4

    if-eq p4, v5, :cond_e2

    if-ne p4, v4, :cond_d8

    goto :goto_e2

    .line 2957
    :cond_d8
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_e1

    const-string v0, "Ignoring specific action when viewState=null"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :cond_e1
    return-void

    .line 2943
    :cond_e2
    :goto_e2
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_fc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating viewState for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    :cond_fc
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v5

    .line 2945
    .local v5, "isIgnored":Z
    new-instance v6, Lcom/android/server/autofill/ViewState;

    .line 2946
    if-eqz v5, :cond_107

    const/16 v7, 0x80

    goto :goto_108

    :cond_107
    move v7, v2

    :goto_108
    invoke-direct {v6, p1, p0, v7}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    move-object v3, v6

    .line 2947
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    if-eqz v5, :cond_12f

    .line 2953
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_12e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocked(): ignoring view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_12e
    return-void

    .line 2962
    .end local v5    # "isIgnored":Z
    :cond_12f
    const/4 v5, 0x0

    packed-switch p4, :pswitch_data_310

    .line 3096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocked(): unknown action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30f

    .line 2974
    :pswitch_14c
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v4, :cond_1bc

    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1bc

    .line 2976
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v4, :cond_15e

    move-object v4, v5

    goto :goto_16a

    .line 2977
    :cond_15e
    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_16a
    nop

    .line 2978
    .local v4, "currentUrl":Ljava/lang/String;
    const/4 v6, 0x0

    if-nez v4, :cond_176

    .line 2980
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "URL bar value changed, but current value is null"

    invoke-direct {p0, v5, v1, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2981
    return-void

    .line 2983
    :cond_176
    if-eqz p3, :cond_1b2

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v7

    if-nez v7, :cond_17f

    goto :goto_1b2

    .line 2988
    :cond_17f
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2989
    .local v2, "newUrl":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_197

    .line 2990
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_196

    const-string v0, "Ignoring change on URL bar as it\'s the same"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    :cond_196
    return-void

    .line 2993
    :cond_197
    iget-boolean v5, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v5, :cond_1a5

    .line 2997
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1a4

    .line 2998
    const-string v0, "Ignoring change on URL because session will finish when views are gone"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    :cond_1a4
    return-void

    .line 3003
    :cond_1a5
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_1ae

    const-string v5, "Finishing session because URL bar changed"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_1ae
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    .line 3005
    return-void

    .line 2985
    .end local v2    # "newUrl":Ljava/lang/String;
    :cond_1b2
    :goto_1b2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v6

    const-string v1, "URL bar value changed to null or non-text: %s"

    invoke-direct {p0, v5, v1, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2986
    return-void

    .line 3007
    .end local v4    # "currentUrl":Ljava/lang/String;
    :cond_1bc
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30f

    .line 3008
    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/autofill/Session;->logIfViewClearedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;)V

    .line 3009
    invoke-direct {p0, p1, p3, v3, p5}, Lcom/android/server/autofill/Session;->updateViewStateAndUiOnValueChangedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;I)V

    goto/16 :goto_30f

    .line 3080
    :pswitch_1ce
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v2, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30f

    .line 3081
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1f2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exiting view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    :cond_1f2
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3083
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialog(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3084
    invoke-direct {p0, v3}, Lcom/android/server/autofill/Session;->hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V

    .line 3087
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->resetInlineFillUiLocked()V

    .line 3088
    iput-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3090
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 3092
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    goto/16 :goto_30f

    .line 3013
    :pswitch_212
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_238

    if-eqz p2, :cond_238

    .line 3014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered on virtual child "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    :cond_238
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v2, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 3019
    .local v0, "isSameViewEntered":Z
    iget-object v2, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3020
    if-eqz p3, :cond_249

    .line 3021
    invoke-virtual {v3, p3}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 3024
    :cond_249
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v2, :cond_276

    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_276

    .line 3025
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_275

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring VIEW_ENTERED on URL BAR (id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    :cond_275
    return-void

    .line 3029
    :cond_276
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 3031
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 3033
    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_2be

    .line 3035
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_2a9

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a9

    .line 3039
    if-nez v0, :cond_29e

    .line 3040
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_29a

    const-string/jumbo v2, "trigger augmented autofill."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    :cond_29a
    invoke-direct {p0, p5}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    goto :goto_2a8

    .line 3043
    :cond_29e
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2a8

    .line 3044
    const-string/jumbo v2, "skip augmented autofill for same view: same view entered"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    :cond_2a8
    :goto_2a8
    return-void

    .line 3049
    :cond_2a9
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v2

    if-eqz v2, :cond_2be

    if-eqz v0, :cond_2be

    .line 3051
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2bd

    .line 3052
    const-string/jumbo v2, "skip augmented autofill for same view: standard autofill disabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    :cond_2bd
    return-void

    .line 3059
    :cond_2be
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->startNewEvent()V

    .line 3060
    invoke-direct {p0, p1, v3, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Z

    move-result v1

    if-eqz v1, :cond_2ca

    .line 3061
    return-void

    .line 3064
    :cond_2ca
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getResponse()Landroid/service/autofill/FillResponse;

    move-result-object v1

    if-eqz v1, :cond_2e8

    .line 3065
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getResponse()Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 3066
    .local v1, "response":Landroid/service/autofill/FillResponse;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetRequestId(I)V

    .line 3067
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3068
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3067
    invoke-virtual {v2, v4, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAvailableCount(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    .line 3071
    .end local v1    # "response":Landroid/service/autofill/FillResponse;
    :cond_2e8
    if-eqz v0, :cond_2ee

    .line 3072
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabledAndStartInput()V

    .line 3073
    return-void

    .line 3077
    :cond_2ee
    invoke-virtual {v3, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 3078
    goto :goto_30f

    .line 2965
    .end local v0    # "isSameViewEntered":Z
    :pswitch_2f2
    iget-object v0, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2966
    invoke-virtual {v3, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 2967
    invoke-direct {p0, p5}, Lcom/android/server/autofill/Session;->isRequestSupportFillDialog(I)Z

    move-result v0

    if-nez v0, :cond_304

    .line 2968
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-static {v0, v2}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fputmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V

    .line 2970
    :cond_304
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->startNewEvent()V

    .line 2971
    const/16 v0, 0x10

    invoke-direct {p0, v3, v0, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 2972
    nop

    .line 3098
    :cond_30f
    :goto_30f
    return-void

    :pswitch_data_310
    .packed-switch 0x1
        :pswitch_2f2
        :pswitch_212
        :pswitch_1ce
        :pswitch_14c
    .end packed-switch
.end method
