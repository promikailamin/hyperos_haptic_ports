.class public Landroid/app/Activity;
.super Landroid/view/ContextThemeWrapper;
.source "Activity.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/Window$OnWindowDismissedCallback;
.implements Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$HostCallbacks;,
        Landroid/app/Activity$TranslucentConversionListener;,
        Landroid/app/Activity$RequestFinishCallback;,
        Landroid/app/Activity$DefaultKeyMode;,
        Landroid/app/Activity$ContentCaptureNotificationType;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$ManagedDialog;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_CAPTURE_PAUSE:I = 0x3

.field private static final blacklist CONTENT_CAPTURE_RESUME:I = 0x2

.field private static final blacklist CONTENT_CAPTURE_START:I = 0x1

.field private static final blacklist CONTENT_CAPTURE_STOP:I = 0x4

.field private static final greylist-max-o DEBUG_LIFECYCLE:Z = false

.field public static final whitelist DEFAULT_KEYS_DIALER:I = 0x1

.field public static final whitelist DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final whitelist DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final whitelist DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final whitelist DEFAULT_KEYS_SHORTCUT:I = 0x2

.field public static final greylist-max-o DONT_FINISH_TASK_WITH_ACTIVITY:I = 0x0

.field public static final blacklist DUMP_ARG_AUTOFILL:Ljava/lang/String; = "--autofill"

.field public static final blacklist DUMP_ARG_CONTENT_CAPTURE:Ljava/lang/String; = "--contentcapture"

.field public static final blacklist DUMP_ARG_DUMP_DUMPABLE:Ljava/lang/String; = "--dump-dumpable"

.field public static final blacklist DUMP_ARG_LIST_DUMPABLES:Ljava/lang/String; = "--list-dumpables"

.field public static final blacklist DUMP_ARG_TRANSLATION:Ljava/lang/String; = "--translation"

.field private static final blacklist DUMP_IGNORES_SPECIAL_ARGS:J = 0x8e56fa2L

.field public static final greylist-max-o FINISH_TASK_WITH_ACTIVITY:I = 0x2

.field public static final greylist-max-o FINISH_TASK_WITH_ROOT_ACTIVITY:I = 0x1

.field protected static final whitelist FOCUSED_STATE_SET:[I

.field static final greylist-max-r FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final greylist-max-o HAS_CURENT_PERMISSIONS_REQUEST_KEY:Ljava/lang/String; = "android:hasCurrentPermissionsRequest"

.field private static final greylist-max-o KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final greylist-max-o LOG_AM_ON_ACTIVITY_RESULT_CALLED:I = 0x756e

.field private static final greylist-max-o LOG_AM_ON_CREATE_CALLED:I = 0x7569

.field private static final greylist-max-o LOG_AM_ON_DESTROY_CALLED:I = 0x756c

.field private static final greylist-max-o LOG_AM_ON_PAUSE_CALLED:I = 0x7545

.field private static final greylist-max-o LOG_AM_ON_RESTART_CALLED:I = 0x756a

.field private static final greylist-max-o LOG_AM_ON_RESUME_CALLED:I = 0x7546

.field private static final greylist-max-o LOG_AM_ON_START_CALLED:I = 0x756b

.field private static final greylist-max-o LOG_AM_ON_STOP_CALLED:I = 0x7561

.field private static final blacklist LOG_AM_ON_TOP_RESUMED_GAINED_CALLED:I = 0x7570

.field private static final blacklist LOG_AM_ON_TOP_RESUMED_LOST_CALLED:I = 0x7571

.field private static final greylist-max-o REQUEST_PERMISSIONS_WHO_PREFIX:Ljava/lang/String; = "@android:requestPermissions:"

.field public static final whitelist RESULT_CANCELED:I = 0x0

.field public static final whitelist RESULT_FIRST_USER:I = 0x1

.field public static final whitelist RESULT_OK:I = -0x1

.field private static final greylist-max-o SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final greylist-max-o SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final greylist-max-o SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final greylist-max-o SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final blacklist SLOW_ON_ACTIVITY_RESULT_THRESHOLD_MS:J = 0x64L

.field private static final blacklist SLOW_ON_CREATE_THRESHOLD_MS:J = 0x1f4L

.field private static final blacklist SLOW_ON_DESTROY_THRESHOLD_MS:J = 0x64L

.field private static final blacklist SLOW_ON_PAUSE_THRESHOLD_MS:J = 0x32L

.field private static final blacklist SLOW_ON_RESTART_THRESHOLD_MS:J = 0x64L

.field private static final blacklist SLOW_ON_RESUME_THRESHOLD_MS:J = 0x64L

.field private static final blacklist SLOW_ON_START_THRESHOLD_MS:J = 0x64L

.field private static final blacklist SLOW_ON_STOP_THRESHOLD_MS:J = 0x64L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Activity"

.field private static final greylist-max-o WINDOW_HIERARCHY_TAG:Ljava/lang/String; = "android:viewHierarchyState"


# instance fields
.field greylist-max-o mActionBar:Landroid/app/ActionBar;

.field private greylist-max-o mActionModeTypeStarting:I

.field greylist mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final blacklist mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mActivityStub:Landroid/app/ActivityStub;

.field greylist mActivityTransitionState:Landroid/app/ActivityTransitionState;

.field private greylist mApplication:Landroid/app/Application;

.field private blacklist mAssistToken:Landroid/os/IBinder;

.field private blacklist mAutofillClientController:Landroid/view/autofill/AutofillClientController;

.field private blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field greylist mCalled:Z

.field private greylist-max-o mCanEnterPictureInPicture:Z

.field private greylist-max-o mChangeCanvasToTranslucent:Z

.field greylist-max-o mChangingConfigurations:Z

.field private greylist mComponent:Landroid/content/ComponentName;

.field greylist mConfigChangeFlags:I

.field private blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field greylist mCurrentConfig:Landroid/content/res/Configuration;

.field greylist-max-o mDecor:Landroid/view/View;

.field private blacklist mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

.field private greylist-max-o mDefaultKeyMode:I

.field private greylist-max-o mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private greylist mDestroyed:Z

.field private greylist-max-o mDoReportFullyDrawn:Z

.field private blacklist mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

.field private greylist mEmbeddedApplication:Landroid/app/Application;

.field greylist mEmbeddedID:Ljava/lang/String;

.field private greylist mEmbeddingScaleParameter:Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

.field private greylist-max-o mEnableDefaultActionBarUp:Z

.field blacklist mEnterAnimationComplete:Z

.field greylist-max-o mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field greylist-max-o mExitTransitionListener:Landroid/app/SharedElementCallback;

.field greylist mFinished:Z

.field final greylist mFragments:Landroid/app/FragmentController;

.field final greylist mHandler:Landroid/os/Handler;

.field private greylist-max-o mHasCurrentPermissionsRequest:Z

.field private greylist mIdent:I

.field private final greylist-max-o mInstanceTracker:Ljava/lang/Object;

.field private greylist mInstrumentation:Landroid/app/Instrumentation;

.field greylist mIntent:Landroid/content/Intent;

.field private blacklist mIsBackgroundColorDecline:Z

.field private blacklist mIsInMultiWindowMode:Z

.field blacklist mIsInPictureInPictureMode:Z

.field greylist mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field blacklist mLaunchedFromBubble:Z

.field greylist mMainThread:Landroid/app/ActivityThread;

.field private final greylist-max-o mManagedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity$ManagedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Activity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMenuInflater:Landroid/view/MenuInflater;

.field greylist-max-q mParent:Landroid/app/Activity;

.field blacklist mPendingOptions:Landroid/app/ActivityOptions;

.field greylist mReferrer:Ljava/lang/String;

.field private greylist-max-o mRestoredFromBundle:Z

.field greylist mResultCode:I

.field greylist mResultData:Landroid/content/Intent;

.field greylist mResumed:Z

.field private greylist-max-o mSearchEvent:Landroid/view/SearchEvent;

.field private greylist-max-o mSearchManager:Landroid/app/SearchManager;

.field private blacklist mShareableActivityToken:Landroid/os/IBinder;

.field private blacklist mShouldDockBigOverlays:Z

.field private blacklist mSplashScreen:Landroid/window/SplashScreen;

.field greylist-max-o mStartedActivity:Z

.field greylist mStopped:Z

.field private greylist-max-o mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private greylist mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleColor:I

.field private greylist-max-o mTitleReady:Z

.field private greylist mToken:Landroid/os/IBinder;

.field private greylist-max-o mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

.field private greylist-max-o mUiThread:Ljava/lang/Thread;

.field private blacklist mUiTranslationController:Landroid/view/translation/UiTranslationController;

.field greylist-max-p mVisibleFromClient:Z

.field greylist-max-o mVisibleFromServer:Z

.field greylist-max-p mVoiceInteractor:Landroid/app/VoiceInteractor;

.field private greylist mWindow:Landroid/view/Window;

.field greylist mWindowAdded:Z

.field private final blacklist mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private greylist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$kHLZd6jBbWtXdNq0XZIR2rP3qPI(Landroid/app/Activity;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;->navigateBack()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;
    .registers 1

    iget-object p0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartActivityAsUserFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/Activity;->startActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartIntentSenderFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1000
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009c

    aput v2, v0, v1

    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 763
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    .line 871
    new-instance v0, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    invoke-direct {v0}, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mEmbeddingScaleParameter:Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 905
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 907
    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 910
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 918
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 936
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 937
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 939
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 940
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 942
    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 950
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 953
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 955
    new-instance v0, Landroid/app/Activity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/app/Activity$HostCallbacks;-><init>(Landroid/app/Activity;)V

    .line 956
    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    .line 976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    .line 979
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 982
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 991
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 992
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 994
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 995
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 997
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1002
    nop

    .line 1003
    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    .line 1007
    new-instance v0, Landroid/app/ActivityTransitionState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1009
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 1010
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 1033
    iput-boolean v1, p0, Landroid/app/Activity;->mIsBackgroundColorDecline:Z

    .line 1041
    new-instance v0, Landroid/app/Activity$1;

    invoke-direct {v0, p0}, Landroid/app/Activity$1;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-void
.end method

.method private greylist-max-o cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "options"    # Landroid/os/Bundle;

    .line 5707
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 5708
    .local v0, "decor":Landroid/view/View;
    :goto_a
    if-eqz v0, :cond_f

    .line 5709
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 5711
    :cond_f
    if-eqz p1, :cond_16

    .line 5712
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 5714
    :cond_16
    return-void
.end method

.method private blacklist checkLifecycleTime(JJLjava/lang/String;)V
    .registers 8
    .param p1, "took"    # J
    .param p3, "threshold"    # J
    .param p5, "callbackName"    # Ljava/lang/String;

    .line 9277
    cmp-long v0, p1, p3

    if-lez v0, :cond_51

    .line 9278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfMonitor: Slow Operation: Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9279
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9278
    const-string v1, "Activity"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9282
    :cond_51
    return-void
.end method

.method private blacklist collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .registers 4

    .line 1705
    const/4 v0, 0x0

    .line 1706
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1707
    :try_start_4
    iget-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1708
    iget-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 1710
    :cond_13
    monitor-exit v1

    .line 1711
    return-object v0

    .line 1710
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v2
.end method

.method private blacklist convertFromTranslucentInternal()Z
    .registers 4

    .line 7830
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 7831
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7832
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 7833
    return v2

    .line 7835
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .param p1, "dialogId"    # Ljava/lang/Integer;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 1956
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1957
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_c

    .line 1958
    const/4 v1, 0x0

    return-object v1

    .line 1960
    :cond_c
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 1961
    return-object v0
.end method

.method private greylist-max-o deviceSupportsPictureInPictureMode()Z
    .registers 3

    .line 3102
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist dispatchActivityConfigurationChanged()V
    .registers 4

    .line 1684
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1685
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 1689
    :cond_d
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/app/Activity;->getEmbeddedApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1690
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getEmbeddedApplication()Landroid/app/Application;

    move-result-object v1

    if-eq v0, v1, :cond_2a

    .line 1691
    invoke-virtual {p0}, Landroid/app/Activity;->getEmbeddedApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 1695
    :cond_2a
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1696
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_3e

    .line 1697
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    array-length v2, v0

    if-ge v1, v2, :cond_3e

    .line 1698
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1699
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 1697
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1702
    .end local v1    # "i":I
    :cond_3e
    return-void
.end method

.method private blacklist dispatchActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1469
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1470
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1471
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1472
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1473
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1472
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1477
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityDestroyed()V
    .registers 4

    .line 1662
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1663
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1664
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1665
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 1664
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1668
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    .line 1669
    return-void
.end method

.method private blacklist dispatchActivityPaused()V
    .registers 4

    .line 1567
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1568
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1569
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1570
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 1569
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1573
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    .line 1574
    return-void
.end method

.method private blacklist dispatchActivityPostCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1480
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1481
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 1482
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 1483
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1482
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1487
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1489
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getEmbeddedApplication()Landroid/app/Application;

    move-result-object v2

    if-eq v1, v2, :cond_32

    .line 1490
    invoke-virtual {p0}, Landroid/app/Activity;->getEmbeddedApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1493
    :cond_32
    return-void
.end method

.method private blacklist dispatchActivityPostDestroyed()V
    .registers 4

    .line 1672
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1673
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1674
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1675
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1676
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostDestroyed(Landroid/app/Activity;)V

    .line 1674
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1679
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostDestroyed(Landroid/app/Activity;)V

    .line 1680
    return-void
.end method

.method private blacklist dispatchActivityPostPaused()V
    .registers 4

    .line 1577
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1578
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1579
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1580
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostPaused(Landroid/app/Activity;)V

    .line 1579
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1583
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostPaused(Landroid/app/Activity;)V

    .line 1584
    return-void
.end method

.method private blacklist dispatchActivityPostResumed()V
    .registers 4

    .line 1547
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1548
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 1549
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 1550
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostResumed(Landroid/app/Activity;)V

    .line 1549
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1553
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostResumed(Landroid/app/Activity;)V

    .line 1554
    return-void
.end method

.method private blacklist dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1640
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1641
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1642
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1643
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1644
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1642
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1647
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1648
    return-void
.end method

.method private blacklist dispatchActivityPostStarted()V
    .registers 4

    .line 1516
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1517
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 1518
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 1519
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1520
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 1518
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1523
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostStarted(Landroid/app/Activity;)V

    .line 1524
    return-void
.end method

.method private blacklist dispatchActivityPostStopped()V
    .registers 4

    .line 1607
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1608
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1609
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1610
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1611
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStopped(Landroid/app/Activity;)V

    .line 1609
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1614
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostStopped(Landroid/app/Activity;)V

    .line 1615
    return-void
.end method

.method private blacklist dispatchActivityPreCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1458
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1459
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1460
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1461
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1462
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1461
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1466
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityPreDestroyed()V
    .registers 4

    .line 1651
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreDestroyed(Landroid/app/Activity;)V

    .line 1652
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1653
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1c

    .line 1654
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1c

    .line 1655
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1656
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreDestroyed(Landroid/app/Activity;)V

    .line 1654
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1659
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityPrePaused()V
    .registers 4

    .line 1557
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPrePaused(Landroid/app/Activity;)V

    .line 1558
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1559
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1c

    .line 1560
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1c

    .line 1561
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPrePaused(Landroid/app/Activity;)V

    .line 1560
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1564
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityPreResumed()V
    .registers 4

    .line 1527
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreResumed(Landroid/app/Activity;)V

    .line 1528
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1529
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1530
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1531
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreResumed(Landroid/app/Activity;)V

    .line 1530
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1534
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1618
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1619
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1620
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1c

    .line 1621
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1c

    .line 1622
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1623
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1621
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1626
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityPreStarted()V
    .registers 4

    .line 1496
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreStarted(Landroid/app/Activity;)V

    .line 1497
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1498
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1500
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 1499
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1503
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityPreStopped()V
    .registers 4

    .line 1587
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreStopped(Landroid/app/Activity;)V

    .line 1588
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1589
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1c

    .line 1590
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1c

    .line 1591
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStopped(Landroid/app/Activity;)V

    .line 1590
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1594
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityResumed()V
    .registers 4

    .line 1537
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    .line 1538
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1539
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1540
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1541
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 1540
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1544
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivitySaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1629
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1630
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1631
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1632
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1633
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1631
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1636
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1637
    return-void
.end method

.method private blacklist dispatchActivityStarted()V
    .registers 4

    .line 1506
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    .line 1507
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1508
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 1509
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1510
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 1509
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1513
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityStopped()V
    .registers 4

    .line 1597
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1598
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1599
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_15

    .line 1600
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 1599
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1603
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    .line 1604
    return-void
.end method

.method private greylist-max-o dispatchRequestPermissionsResult(ILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 9118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 9120
    if-eqz p2, :cond_c

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 9121
    :cond_c
    new-array v1, v0, [Ljava/lang/String;

    :goto_e
    nop

    .line 9122
    .local v1, "permissions":[Ljava/lang/String;
    if-eqz p2, :cond_18

    const-string v0, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_1a

    .line 9123
    :cond_18
    new-array v0, v0, [I

    :goto_1a
    nop

    .line 9124
    .local v0, "grantResults":[I
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 9125
    return-void
.end method

.method private greylist-max-o dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .line 9130
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 9131
    :cond_a
    new-array v1, v0, [Ljava/lang/String;

    :goto_c
    nop

    .line 9132
    .local v1, "permissions":[Ljava/lang/String;
    if-eqz p2, :cond_16

    const-string v0, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_18

    .line 9133
    :cond_16
    new-array v0, v0, [I

    :goto_18
    nop

    .line 9134
    .local v0, "grantResults":[I
    invoke-virtual {p3, p1, v1, v0}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 9135
    return-void
.end method

.method private blacklist dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "legacyOption"    # Ljava/lang/String;
    .param p4, "dumpableName"    # Ljava/lang/String;

    .line 7761
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    const-string v2, "--dump-dumpable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const-string v1, "%s%s option deprecated. Use %s %s instead\n"

    invoke-virtual {p2, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 7763
    return-void
.end method

.method private greylist-max-o ensureSearchManager()V
    .registers 3

    .line 7279
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_5

    .line 7280
    return-void

    .line 7284
    :cond_5
    :try_start_5
    new-instance v0, Landroid/app/SearchManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;
    :try_end_d
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_5 .. :try_end_d} :catch_f

    .line 7287
    nop

    .line 7288
    return-void

    .line 7285
    :catch_f
    move-exception v0

    .line 7286
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-r finish(I)V
    .registers 7
    .param p1, "finishTask"    # I

    .line 6886
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_4e

    .line 6889
    monitor-enter p0

    .line 6890
    :try_start_5
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    .line 6891
    .local v0, "resultCode":I
    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 6892
    .local v1, "resultData":Landroid/content/Intent;
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_4b

    .line 6894
    if-eqz v1, :cond_f

    .line 6895
    invoke-virtual {v1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6898
    :cond_f
    invoke-static {}, Landroid/appcompat/ApplicationCompatUtilsStub;->get()Landroid/appcompat/ApplicationCompatUtilsStub;

    move-result-object v2

    invoke-interface {v2}, Landroid/appcompat/ApplicationCompatUtilsStub;->isContinuityEnabled()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Landroid/app/Activity;->mDestroyed:Z

    if-eqz v2, :cond_3b

    .line 6900
    add-int/lit16 p1, p1, 0xc8

    .line 6901
    const-string v2, "Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config change causes Activity called onDestroy, intercept calling finish. finishTask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6904
    :cond_3b
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 6906
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mFinished:Z

    .line 6908
    .end local v0    # "resultCode":I
    .end local v1    # "resultData":Landroid/content/Intent;
    :cond_4a
    goto :goto_51

    .line 6892
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0

    .line 6909
    :cond_4e
    invoke-virtual {v0, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    .line 6912
    :goto_51
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillClientController;->onActivityFinish(Landroid/content/Intent;)V

    .line 6913
    return-void
.end method

.method private blacklist getAutofillClientController()Landroid/view/autofill/AutofillClientController;
    .registers 2

    .line 1371
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    if-nez v0, :cond_b

    .line 1372
    new-instance v0, Landroid/view/autofill/AutofillClientController;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillClientController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    .line 1374
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    return-object v0
.end method

.method private blacklist getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;
    .registers 2

    .line 1268
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 1269
    :cond_c
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-nez v0, :cond_1a

    .line 1270
    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureManager;

    iput-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 1272
    :cond_1a
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0
.end method

.method private blacklist getContentCaptureTypeAsString(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .line 1291
    packed-switch p1, :pswitch_data_24

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOW-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1299
    :pswitch_17
    const-string v0, "STOP"

    return-object v0

    .line 1297
    :pswitch_1a
    const-string v0, "PAUSE"

    return-object v0

    .line 1295
    :pswitch_1d
    const-string v0, "RESUME"

    return-object v0

    .line 1293
    :pswitch_20
    const-string v0, "START"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private static native greylist-max-o getDlWarning()Ljava/lang/String;
.end method

.method private blacklist getOrCreateSplashScreen()Landroid/window/SplashScreen;
    .registers 2

    .line 1797
    monitor-enter p0

    .line 1798
    :try_start_1
    iget-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    if-nez v0, :cond_c

    .line 1799
    new-instance v0, Landroid/window/SplashScreen$SplashScreenImpl;

    invoke-direct {v0, p0}, Landroid/window/SplashScreen$SplashScreenImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    .line 1801
    :cond_c
    iget-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    monitor-exit p0

    return-object v0

    .line 1802
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private greylist-max-o initWindowDecorActionBar()V
    .registers 4

    .line 3700
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3704
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 3706
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-nez v1, :cond_3d

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1a

    goto :goto_3d

    .line 3710
    :cond_1a
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3711
    iget-boolean v2, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 3713
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 3714
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 3715
    return-void

    .line 3707
    :cond_3d
    :goto_3d
    return-void
.end method

.method private greylist-max-o missingDialog(I)Ljava/lang/IllegalArgumentException;
    .registers 5
    .param p1, "id"    # I

    .line 5178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was ever shown via Activity#showDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist navigateBack()V
    .registers 5

    .line 4140
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4142
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 4143
    return-void

    .line 4148
    :cond_a
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    new-instance v2, Landroid/app/Activity$RequestFinishCallback;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Landroid/app/Activity$RequestFinishCallback;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V

    .line 4151
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillClientController;->onActivityBackPressed(Landroid/content/Intent;)V

    .line 4152
    return-void
.end method

.method private blacklist notifyContentCaptureManagerIfNeeded(I)V
    .registers 9
    .param p1, "type"    # I

    .line 1306
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyContentCapture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1308
    invoke-direct {p0, p1}, Landroid/app/Activity;->getContentCaptureTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 1309
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1307
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1312
    :cond_33
    :try_start_33
    invoke-direct {p0}, Landroid/app/Activity;->getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_83

    .line 1313
    .local v2, "cm":Landroid/view/contentcapture/ContentCaptureManager;
    if-nez v2, :cond_3d

    .line 1338
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1313
    return-void

    .line 1315
    :cond_3d
    packed-switch p1, :pswitch_data_88

    .line 1335
    :try_start_40
    const-string v3, "Activity"

    goto :goto_68

    .line 1332
    :pswitch_43
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityDestroyed()V

    .line 1333
    goto :goto_7e

    .line 1329
    :pswitch_47
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityPaused()V

    .line 1330
    goto :goto_7e

    .line 1326
    :pswitch_4b
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityResumed()V

    .line 1327
    goto :goto_7e

    .line 1319
    :pswitch_4f
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1320
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_5c

    .line 1321
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/contentcapture/ContentCaptureManager;->updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1323
    :cond_5c
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityCreated(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 1324
    goto :goto_7e

    .line 1335
    .end local v3    # "window":Landroid/view/Window;
    :goto_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid @ContentCaptureNotificationType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_40 .. :try_end_7e} :catchall_83

    .line 1338
    .end local v2    # "cm":Landroid/view/contentcapture/ContentCaptureManager;
    :goto_7e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1339
    nop

    .line 1340
    return-void

    .line 1338
    :catchall_83
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1339
    throw v2

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
    .end packed-switch
.end method

.method private greylist-max-o restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 8958
    if-eqz p1, :cond_b

    .line 8959
    const/4 v0, 0x0

    const-string v1, "android:hasCurrentPermissionsRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 8962
    :cond_b
    return-void
.end method

.method private greylist-max-o restoreManagedDialogs(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1929
    const-string v0, "android:savedDialogs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1930
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_9

    .line 1931
    return-void

    .line 1934
    :cond_9
    const-string v1, "android:savedDialogIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 1935
    .local v1, "ids":[I
    array-length v2, v1

    .line 1936
    .local v2, "numDialogs":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1937
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v2, :cond_6a

    .line 1938
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1939
    .local v4, "dialogId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 1940
    .local v5, "dialogState":Landroid/os/Bundle;
    if-eqz v5, :cond_67

    .line 1943
    new-instance v6, Landroid/app/Activity$ManagedDialog;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog-IA;)V

    .line 1944
    .local v6, "md":Landroid/app/Activity$ManagedDialog;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 1945
    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-direct {p0, v4, v5, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 1946
    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_67

    .line 1947
    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1948
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v9, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1949
    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v5}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1937
    .end local v4    # "dialogId":Ljava/lang/Integer;
    .end local v5    # "dialogState":Landroid/os/Bundle;
    .end local v6    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1953
    .end local v3    # "i":I
    :cond_6a
    return-void
.end method

.method private greylist saveManagedDialogs(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2465
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 2466
    return-void

    .line 2469
    :cond_5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2470
    .local v0, "numDialogs":I
    if-nez v0, :cond_c

    .line 2471
    return-void

    .line 2474
    :cond_c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2476
    .local v1, "dialogState":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2479
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v0, :cond_49

    .line 2480
    iget-object v4, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2481
    .local v4, "key":I
    aput v4, v2, v3

    .line 2482
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity$ManagedDialog;

    .line 2483
    .local v5, "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {v4}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2484
    iget-object v6, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    if-eqz v6, :cond_46

    .line 2485
    invoke-static {v4}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2479
    .end local v4    # "key":I
    .end local v5    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 2489
    .end local v3    # "i":I
    :cond_49
    const-string v3, "android:savedDialogIds"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2490
    const-string v3, "android:savedDialogs"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2491
    return-void
.end method

.method private static greylist-max-o savedDialogArgsKeyFor(I)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # I

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o savedDialogKeyFor(I)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # I

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setLocusContextToContentCapture(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "locusId"    # Landroid/content/LocusId;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 1343
    invoke-direct {p0}, Landroid/app/Activity;->getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v0

    .line 1344
    .local v0, "cm":Landroid/view/contentcapture/ContentCaptureManager;
    if-nez v0, :cond_7

    return-void

    .line 1346
    :cond_7
    new-instance v1, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    invoke-direct {v1, p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    .line 1348
    .local v1, "contentCaptureContextBuilder":Landroid/view/contentcapture/ContentCaptureContext$Builder;
    if-eqz p2, :cond_11

    .line 1349
    invoke-virtual {v1, p2}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/contentcapture/ContentCaptureContext$Builder;

    .line 1351
    :cond_11
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v2

    .line 1352
    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->build()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v3

    .line 1351
    invoke-virtual {v2, v3}, Landroid/view/contentcapture/MainContentCaptureSession;->setContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 1353
    return-void
.end method

.method private greylist-max-o startActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 6505
    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6506
    return-void
.end method

.method private blacklist startIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 16
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6587
    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 6589
    return-void
.end method

.method private greylist-max-o storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 8952
    if-eqz p1, :cond_c

    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v0, :cond_c

    .line 8953
    const/4 v0, 0x1

    const-string v1, "android:hasCurrentPermissionsRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8955
    :cond_c
    return-void
.end method

.method private greylist-max-o transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .line 5729
    if-nez p1, :cond_1e

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5730
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 5731
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v0, :cond_1e

    .line 5732
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1e

    .line 5733
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 5736
    .end local v0    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_1e
    return-object p1
.end method

.method private blacklist updateShouldDeclineIfNeed(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 7899
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->updateShouldDeclineIfNeed(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mIsBackgroundColorDecline:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 7902
    goto :goto_f

    .line 7900
    :catch_b
    move-exception v0

    .line 7901
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7903
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method private blacklist writeEventLog(ILjava/lang/String;J)V
    .registers 8
    .param p1, "event"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .line 9272
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/Activity;->mIdent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p2, v0, v1

    .line 9273
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 9272
    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9274
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3775
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3776
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3777
    return-void
.end method

.method public final blacklist addDumpable(Landroid/util/Dumpable;)Z
    .registers 3
    .param p1, "dumpable"    # Landroid/util/Dumpable;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 7633
    iget-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v0, :cond_b

    .line 7634
    new-instance v0, Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-direct {v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    .line 7636
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/dump/DumpableContainerImpl;->addDumpable(Landroid/util/Dumpable;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-r attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aThread"    # Landroid/app/ActivityThread;
    .param p3, "instr"    # Landroid/app/Instrumentation;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "ident"    # I
    .param p6, "application"    # Landroid/app/Application;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "title"    # Ljava/lang/CharSequence;
    .param p10, "parent"    # Landroid/app/Activity;
    .param p11, "id"    # Ljava/lang/String;
    .param p12, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "referrer"    # Ljava/lang/String;
    .param p15, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p16, "window"    # Landroid/view/Window;
    .param p17, "activityConfigCallback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;
    .param p18, "assistToken"    # Landroid/os/IBinder;
    .param p19, "shareableActivityToken"    # Landroid/os/IBinder;

    .line 8462
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p12

    move-object/from16 v4, p15

    invoke-virtual/range {p0 .. p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 8464
    iget-object v5, v0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    .line 8466
    new-instance v5, Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    invoke-direct {v5, v0, v6, v7}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    iput-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 8467
    iget-object v8, v0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-virtual {v5, v8}, Landroid/view/Window;->setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V

    .line 8468
    iget-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 8469
    iget-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 8470
    iget-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 8471
    iget v5, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v5, :cond_41

    .line 8472
    iget-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v8, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 8474
    :cond_41
    iget v5, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v5, :cond_4c

    .line 8475
    iget-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v8, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->setUiOptions(I)V

    .line 8477
    :cond_4c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    .line 8479
    move-object/from16 v5, p2

    iput-object v5, v0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 8480
    move-object/from16 v8, p3

    iput-object v8, v0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 8481
    move-object/from16 v9, p4

    iput-object v9, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 8482
    move-object/from16 v10, p18

    iput-object v10, v0, Landroid/app/Activity;->mAssistToken:Landroid/os/IBinder;

    .line 8483
    move-object/from16 v11, p19

    iput-object v11, v0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    .line 8484
    move/from16 v12, p5

    iput v12, v0, Landroid/app/Activity;->mIdent:I

    .line 8485
    iput-object v1, v0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 8487
    iput-object v1, v0, Landroid/app/Activity;->mEmbeddedApplication:Landroid/app/Application;

    .line 8488
    move-object/from16 v13, p7

    iput-object v13, v0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 8489
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 8490
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    iput-object v15, v0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8491
    iput-object v2, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 8492
    move-object/from16 v15, p9

    iput-object v15, v0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 8493
    move-object/from16 v5, p10

    iput-object v5, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 8494
    move-object/from16 v5, p11

    iput-object v5, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 8495
    iput-object v3, v0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 8496
    if-eqz v4, :cond_a0

    .line 8497
    if-eqz v3, :cond_95

    .line 8498
    iget-object v5, v3, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_a0

    .line 8500
    :cond_95
    new-instance v5, Landroid/app/VoiceInteractor;

    .line 8501
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v5, v4, v0, v0, v3}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v5, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 8505
    :cond_a0
    :goto_a0
    iget-object v3, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 8506
    const-string/jumbo v5, "window"

    move-object/from16 v4, p1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iget-object v4, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v6, v0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8507
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x200

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v7, :cond_c2

    move/from16 v7, v16

    goto :goto_c4

    :cond_c2
    move/from16 v7, v17

    .line 8505
    :goto_c4
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 8509
    iget-object v3, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v3, :cond_d4

    .line 8510
    iget-object v4, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 8512
    :cond_d4
    iget-object v3, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 8513
    move-object/from16 v3, p13

    iput-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 8515
    iget-object v4, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v5, v2, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setColorMode(I)V

    .line 8516
    iget-object v4, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v5, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x2000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_f3

    move/from16 v5, v16

    goto :goto_f5

    :cond_f3
    move/from16 v5, v17

    :goto_f5
    invoke-virtual {v4, v5}, Landroid/view/Window;->setPreferMinimalPostProcessing(Z)V

    .line 8519
    invoke-direct/range {p0 .. p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/autofill/AutofillClientController;->onActivityAttached(Landroid/app/Application;)V

    .line 8520
    invoke-virtual/range {p6 .. p6}, Landroid/app/Application;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 8522
    iget-object v4, v0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/Activity;->updateShouldDeclineIfNeed(Ljava/lang/String;)V

    .line 8523
    return-void
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "newBase"    # Landroid/content/Context;

    .line 1357
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 1358
    if-eqz p1, :cond_13

    .line 1359
    invoke-virtual {p0}, Landroid/app/Activity;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V

    .line 1360
    invoke-virtual {p0}, Landroid/app/Activity;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 1362
    :cond_13
    return-void
.end method

.method public greylist-max-o canStartActivityForResult()Z
    .registers 2

    .line 6542
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist closeContextMenu()V
    .registers 3

    .line 4951
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4952
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 4954
    :cond_e
    return-void
.end method

.method public whitelist closeOptionsMenu()V
    .registers 3

    .line 4889
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_13

    .line 4890
    invoke-virtual {v0}, Landroid/app/ActionBar;->closeOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4891
    :cond_13
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 4893
    :cond_18
    return-void
.end method

.method public final blacklist contentCaptureClientGetComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 7240
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist convertFromTranslucent()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7826
    invoke-direct {p0}, Landroid/app/Activity;->convertFromTranslucentInternal()Z

    .line 7827
    return-void
.end method

.method public whitelist convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .registers 6
    .param p1, "callback"    # Landroid/app/Activity$TranslucentConversionListener;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7862
    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 7863
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 7864
    if-nez p2, :cond_c

    const/4 v2, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 7863
    :goto_10
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 7865
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 7867
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_2c

    .line 7869
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 7871
    :cond_2c
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    return v0
.end method

.method public whitelist createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 21
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 7120
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 7122
    .local v15, "packageName":Ljava/lang/String;
    const/16 v16, 0x0

    :try_start_a
    invoke-virtual {v2, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 7123
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x3

    .line 7124
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 7125
    iget-object v0, v1, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1d

    iget-object v0, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    goto :goto_1f

    :cond_1d
    iget-object v0, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_1f
    move-object v7, v0

    iget-object v8, v1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v10, v0, [Landroid/content/Intent;

    const/4 v0, 0x0

    aput-object v2, v10, v0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 7126
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getUserId()I

    move-result v14

    .line 7123
    move-object v5, v15

    move/from16 v9, p1

    move/from16 v12, p3

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 7127
    .local v0, "target":Landroid/content/IIntentSender;
    if-eqz v0, :cond_40

    new-instance v3, Landroid/app/PendingIntent;

    invoke-direct {v3, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3e} :catch_41

    move-object/from16 v16, v3

    :cond_40
    return-object v16

    .line 7128
    .end local v0    # "target":Landroid/content/IIntentSender;
    :catch_41
    move-exception v0

    .line 7131
    return-object v16
.end method

.method public final whitelist dismissDialog(I)V
    .registers 4
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5162
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_17

    .line 5166
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5167
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_12

    .line 5170
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 5171
    return-void

    .line 5168
    :cond_12
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 5163
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_17
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public final whitelist dismissKeyboardShortcutsHelper()V
    .registers 4

    .line 2695
    nop

    .line 2696
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2695
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2698
    .local v0, "sysuiComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2699
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2700
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2701
    return-void
.end method

.method greylist-max-r dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    .registers 16
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;
    .param p5, "reason"    # Ljava/lang/String;

    .line 8970
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 8972
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8973
    .local v0, "startTime":J
    if-nez p1, :cond_10

    .line 8974
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_88

    .line 8975
    :cond_10
    const-string v2, "@android:requestPermissions:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 8976
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 8977
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 8978
    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    goto :goto_88

    .line 8980
    :cond_2a
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 8981
    .local v2, "frag":Landroid/app/Fragment;
    if-eqz v2, :cond_35

    .line 8982
    invoke-direct {p0, p2, p4, v2}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    .line 8984
    .end local v2    # "frag":Landroid/app/Fragment;
    :cond_35
    goto :goto_88

    .line 8985
    :cond_36
    const-string v2, "@android:view:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 8986
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    .line 8987
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    .line 8986
    invoke-virtual {v2, v3}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8988
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootImpl;

    .line 8989
    .local v4, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6b

    .line 8990
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 8992
    return-void

    .line 8994
    .end local v4    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_6b
    goto :goto_4e

    .line 8995
    .end local v2    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :cond_6c
    goto :goto_88

    :cond_6d
    const-string v2, "@android:autoFillAuth:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 8996
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Landroid/view/autofill/AutofillClientController;->onDispatchActivityResult(IILandroid/content/Intent;)V

    goto :goto_88

    .line 8998
    :cond_7d
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 8999
    .local v2, "frag":Landroid/app/Fragment;
    if-eqz v2, :cond_88

    .line 9000
    invoke-virtual {v2, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 9006
    .end local v2    # "frag":Landroid/app/Fragment;
    :cond_88
    :goto_88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 9007
    .local v2, "took":J
    const/16 v4, 0x756e

    invoke-direct {p0, v4, p5, v2, v3}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    .line 9008
    const-wide/16 v7, 0x64

    const-string/jumbo v9, "onActivityResult"

    move-object v4, p0

    move-wide v5, v2

    invoke-direct/range {v4 .. v9}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    .line 9010
    return-void
.end method

.method public greylist-max-o dispatchEnterAnimationComplete()V
    .registers 3

    .line 8065
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mEnterAnimationComplete:Z

    .line 8066
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onEnterAnimationComplete()V

    .line 8067
    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 8068
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 8069
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 8070
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnEnterAnimationComplete()V

    .line 8072
    .end local v0    # "decorView":Landroid/view/View;
    :cond_2a
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4491
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4492
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4493
    const/4 v0, 0x1

    return v0

    .line 4495
    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4398
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4402
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4403
    .local v0, "keyCode":I
    const/4 v1, 0x1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_17

    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_17

    .line 4404
    invoke-virtual {v2, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4405
    return v1

    .line 4409
    :cond_17
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2a

    .line 4410
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_22

    move v2, v1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    .line 4409
    :goto_23
    invoke-static {p0, v2}, Landroid/app/ActivityThread;->interceptBackPressedForEmbedding(Landroid/app/Activity;Z)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 4411
    return v1

    .line 4415
    :cond_2a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 4416
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 4417
    return v1

    .line 4419
    :cond_35
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4420
    .local v1, "decor":Landroid/view/View;
    if-nez v1, :cond_3d

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4421
    :cond_3d
    if-eqz v1, :cond_44

    .line 4422
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    .line 4421
    :goto_45
    invoke-virtual {p1, p0, v3, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public blacklist dispatchKeyEventForCatcher(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "attachedActivity"    # Landroid/app/Activity;

    .line 9453
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    .line 9454
    invoke-interface {v0, p1, p2, p3}, Landroid/app/ActivityStub;->dispatchKeyEventForCatcher(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)V

    .line 9456
    :cond_7
    return-void
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4435
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4436
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4437
    const/4 v0, 0x1

    return v0

    .line 4439
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3160
    invoke-virtual {p0, p1}, Landroid/app/Activity;->updateDisplay(I)V

    .line 3161
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 3162
    return-void
.end method

.method final greylist-max-o dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 6
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 8910
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 8911
    .local v0, "windowingMode":I
    if-eqz p1, :cond_1a

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 8912
    invoke-static {}, Landroid/util/MiuiFreeformUtils;->getListAboutNoNeedInFreeform()Ljava/util/List;

    move-result-object v1

    .line 8913
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8912
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 8914
    return-void

    .line 8918
    :cond_1a
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 8919
    return-void

    .line 8922
    :cond_21
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p1, p2}, Landroid/app/FragmentController;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8923
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_2d

    .line 8924
    invoke-virtual {v1}, Landroid/view/Window;->onMultiWindowModeChanged()V

    .line 8926
    :cond_2d
    iput-boolean p1, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    .line 8927
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8928
    return-void
.end method

.method final greylist-max-o dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 8935
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentController;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8936
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_c

    .line 8937
    invoke-virtual {v0, p1}, Landroid/view/Window;->onPictureInPictureModeChanged(Z)V

    .line 8939
    :cond_c
    iput-boolean p1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 8940
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8941
    return-void
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 4499
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4500
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4502
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4503
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_26

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_26

    move v1, v2

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 4505
    .local v1, "isFullScreen":Z
    :goto_27
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 4507
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 4508
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 4509
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4512
    :cond_3b
    return v2
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 4454
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4456
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4457
    const/4 v0, 0x1

    return v0

    .line 4459
    :cond_15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist dispatchTouchEventForCatcher(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "attachedActivity"    # Landroid/app/Activity;

    .line 9444
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    .line 9445
    invoke-interface {v0, p1, p2, p3}, Landroid/app/ActivityStub;->dispatchTouchEventForCatcher(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)V

    .line 9447
    :cond_7
    return-void
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4473
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4474
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4475
    const/4 v0, 0x1

    return v0

    .line 4477
    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 7622
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7623
    return-void
.end method

.method greylist-max-o dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 7720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7722
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local Activity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7723
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7724
    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7725
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7726
    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7727
    iget-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mFinished="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7728
    iget-boolean v1, p0, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7729
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsInMultiWindowMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7730
    iget-boolean v1, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7731
    const-string v1, " mIsInPictureInPictureMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7732
    iget-boolean v1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7733
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7734
    iget-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7735
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentConfig="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7736
    iget-object v1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7738
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7739
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7740
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_96

    .line 7741
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7744
    :cond_96
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_c3

    .line 7745
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c3

    .line 7746
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_c3

    .line 7747
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7750
    :cond_c3
    iget-object v1, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 7752
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/app/ResourcesManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7754
    iget-object v1, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-eqz v1, :cond_df

    .line 7755
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpAllDumpables(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7757
    :cond_df
    return-void
.end method

.method public blacklist dumpInternal(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 7653
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    if-eqz v0, :cond_7

    .line 7654
    invoke-virtual {p0, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 7656
    :cond_7
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-eqz v0, :cond_e

    .line 7657
    invoke-virtual {p0, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 7659
    :cond_e
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v0, :cond_15

    .line 7660
    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager;->addDumpable(Landroid/app/Activity;)V

    .line 7663
    :cond_15
    const/4 v0, 0x1

    .line 7664
    .local v0, "dumpInternalState":Z
    const/4 v1, 0x0

    .line 7665
    .local v1, "arg":Ljava/lang/String;
    if-eqz p4, :cond_b6

    array-length v2, p4

    if-lez v2, :cond_b6

    .line 7666
    const/4 v2, 0x0

    aget-object v1, p4, v2

    .line 7667
    const/4 v3, 0x1

    .line 7669
    .local v3, "isSpecialCase":Z
    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "--dump-dumpable"

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_e0

    :cond_2c
    goto :goto_5c

    :sswitch_2d
    const-string v5, "--autofill"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v4, v2

    goto :goto_5c

    :sswitch_37
    const-string v5, "--contentcapture"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v4, v8

    goto :goto_5c

    :sswitch_41
    const-string v5, "--list-dumpables"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v4, 0x3

    goto :goto_5c

    :sswitch_4b
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v4, 0x4

    goto :goto_5c

    :sswitch_53
    const-string v5, "--translation"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v4, v7

    :goto_5c
    packed-switch v4, :pswitch_data_f6

    .line 7703
    const/4 v3, 0x0

    goto :goto_ab

    .line 7690
    :pswitch_61
    array-length v4, p4

    if-ne v4, v8, :cond_6d

    .line 7691
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7692
    const-string v2, " requires the dumpable name"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ab

    .line 7693
    :cond_6d
    iget-object v4, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v4, :cond_78

    .line 7694
    const-string/jumbo v2, "no dumpables"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ab

    .line 7697
    :cond_78
    array-length v4, p4

    sub-int/2addr v4, v7

    new-array v4, v4, [Ljava/lang/String;

    .line 7698
    .local v4, "prunedArgs":[Ljava/lang/String;
    array-length v5, v4

    invoke-static {p4, v7, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7699
    iget-object v2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    aget-object v5, p4, v8

    invoke-virtual {v2, p1, p3, v5, v4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpOneDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7701
    .end local v4    # "prunedArgs":[Ljava/lang/String;
    goto :goto_ab

    .line 7683
    :pswitch_88
    iget-object v2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v2, :cond_95

    .line 7684
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No dumpables"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_98

    .line 7686
    :cond_95
    invoke-virtual {v2, p1, p3}, Lcom/android/internal/util/dump/DumpableContainerImpl;->listDumpables(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7688
    :goto_98
    return-void

    .line 7679
    :pswitch_99
    const-string v2, "UiTranslationController"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 7681
    return-void

    .line 7675
    :pswitch_9f
    const-string v2, "ContentCaptureManager"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 7677
    return-void

    .line 7671
    :pswitch_a5
    const-string v2, "AutofillManager"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 7673
    return-void

    .line 7706
    :goto_ab
    if-eqz v3, :cond_b6

    .line 7707
    const-wide/32 v4, 0x8e56fa2

    invoke-static {v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    xor-int/2addr v2, v8

    move v0, v2

    .line 7711
    .end local v3    # "isSpecialCase":Z
    :cond_b6
    if-eqz v0, :cond_bc

    .line 7712
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_de

    .line 7714
    :cond_bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not calling dump() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because of special argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7716
    :goto_de
    return-void

    nop

    :sswitch_data_e0
    .sparse-switch
        -0x2673d6ef -> :sswitch_53
        0x5fd0f67 -> :sswitch_4b
        0x1c2b8816 -> :sswitch_41
        0x4519f64d -> :sswitch_37
        0x56b9c952 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_9f
        :pswitch_99
        :pswitch_88
        :pswitch_61
    .end packed-switch
.end method

.method public whitelist enterPictureInPictureMode()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3026
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    .line 3027
    return-void
.end method

.method public whitelist enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/PictureInPictureParams;

    .line 3053
    invoke-direct {p0}, Landroid/app/Activity;->deviceSupportsPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3054
    const/4 v0, 0x0

    return v0

    .line 3056
    :cond_8
    if-eqz p1, :cond_23

    .line 3059
    iget-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    if-eqz v0, :cond_1b

    .line 3067
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 3069
    return v0

    .line 3060
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity must be resumed to enter picture-in-picture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3057
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-null picture-in-picture params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3612
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist finish()V
    .registers 2

    .line 6921
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    .line 6923
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_b

    .line 6924
    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->finish(Landroid/app/Activity;)V

    .line 6927
    :cond_b
    return-void
.end method

.method public whitelist finishActivity(I)V
    .registers 5
    .param p1, "requestCode"    # I

    .line 6993
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_10

    .line 6994
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/ActivityClient;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_13

    .line 6996
    :cond_10
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 6998
    :goto_13
    return-void
.end method

.method public whitelist finishActivityFromChild(Landroid/app/Activity;I)V
    .registers 6
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7011
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/ActivityClient;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 7012
    return-void
.end method

.method public whitelist finishAffinity()V
    .registers 3

    .line 6944
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_24

    .line 6947
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-nez v0, :cond_1c

    .line 6950
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6951
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    .line 6953
    :cond_1b
    return-void

    .line 6948
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called to deliver a result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6945
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called from an embedded activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist finishAfterTransition()V
    .registers 2

    .line 6978
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 6979
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6981
    :cond_b
    return-void
.end method

.method public whitelist finishAndRemoveTask()V
    .registers 2

    .line 7019
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    .line 7020
    return-void
.end method

.method public whitelist finishFromChild(Landroid/app/Activity;)V
    .registers 2
    .param p1, "child"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6967
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6968
    return-void
.end method

.method public whitelist getActionBar()Landroid/app/ActionBar;
    .registers 2

    .line 3646
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3647
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final blacklist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 8549
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method greylist getActivityOptions()Landroid/app/ActivityOptions;
    .registers 3

    .line 7942
    iget-object v0, p0, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 7944
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 7945
    return-object v0
.end method

.method public final greylist-max-o getActivityThread()Landroid/app/ActivityThread;
    .registers 2

    .line 8544
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public final greylist getActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 8528
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_b
    return-object v0
.end method

.method public final whitelist getApplication()Landroid/app/Application;
    .registers 2

    .line 1185
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public final blacklist getAssistToken()Landroid/os/IBinder;
    .registers 2

    .line 8533
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->getAssistToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/app/Activity;->mAssistToken:Landroid/os/IBinder;

    :goto_b
    return-object v0
.end method

.method public final greylist-max-o getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    .line 1367
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallingActivity()Landroid/content/ComponentName;
    .registers 3

    .line 6779
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallingPackage()Ljava/lang/String;
    .registers 3

    .line 6760
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 2

    .line 3249
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    return v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 7234
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final blacklist getContentCaptureClient()Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;
    .registers 1

    .line 1380
    return-object p0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .registers 2

    .line 3811
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContentTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    .line 3789
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .registers 2

    .line 1258
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final blacklist getEmbeddedApplication()Landroid/app/Application;
    .registers 2

    .line 1194
    iget-object v0, p0, Landroid/app/Activity;->mEmbeddedApplication:Landroid/app/Application;

    return-object v0
.end method

.method public final greylist getEmbeddingScaleParameter()Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;
    .registers 2

    .line 1206
    iget-object v0, p0, Landroid/app/Activity;->mEmbeddingScaleParameter:Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    return-object v0
.end method

.method public whitelist getFragmentManager()Landroid/app/FragmentManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3425
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 1129
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getIsBackgroundColorDecline()Z
    .registers 2

    .line 7905
    iget-boolean v0, p0, Landroid/app/Activity;->mIsBackgroundColorDecline:Z

    return v0
.end method

.method greylist-max-o getLastNonConfigurationChildInstances()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3353
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_7

    .line 3354
    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 3353
    :goto_8
    return-object v0
.end method

.method public whitelist getLastNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .line 3274
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_7

    .line 3275
    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 3274
    :goto_8
    return-object v0
.end method

.method public blacklist getLaunchedFromPackage()Ljava/lang/String;
    .registers 3

    .line 6796
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLaunchedFromUid()I
    .registers 3

    .line 6787
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 5391
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLoaderManager()Landroid/app/LoaderManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1244
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalClassName()Ljava/lang/String;
    .registers 6

    .line 7218
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7219
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 7220
    .local v1, "cls":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 7221
    .local v2, "packageLen":I
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_2a

    .line 7222
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_23

    goto :goto_2a

    .line 7225
    :cond_23
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7223
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public whitelist getMaxNumPictureInPictureActions()I
    .registers 2

    .line 3095
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->getMaxNumPictureInPictureActions(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final whitelist getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .line 7544
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 5400
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_20

    .line 5401
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 5402
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_19

    .line 5403
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_20

    .line 5405
    :cond_19
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 5408
    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public greylist-max-o getNextAutofillId()I
    .registers 2

    .line 2222
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->getNextAutofillId()I

    move-result v0

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .registers 3

    .line 9423
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    .line 9427
    invoke-virtual {v0}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    return-object v0

    .line 9424
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OnBackInvokedDispatcher are not available on non-visual activities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getParent()Landroid/app/Activity;
    .registers 2

    .line 1217
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method public whitelist getParentActivityIntent()Landroid/content/Intent;
    .registers 7

    .line 8351
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 8352
    .local v0, "parentName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 8353
    return-object v2

    .line 8357
    :cond_c
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8359
    .local v1, "target":Landroid/content/ComponentName;
    :try_start_11
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 8360
    .local v3, "parentInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 8361
    .local v4, "parentActivity":Ljava/lang/String;
    if-nez v4, :cond_23

    .line 8362
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_2c

    .line 8363
    :cond_23
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_2c} :catch_2e

    :goto_2c
    nop

    .line 8364
    .local v2, "parentIntent":Landroid/content/Intent;
    return-object v2

    .line 8365
    .end local v2    # "parentIntent":Landroid/content/Intent;
    .end local v3    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "parentActivity":Ljava/lang/String;
    :catch_2e
    move-exception v3

    .line 8366
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Activity"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8368
    return-object v2
.end method

.method public whitelist getPreferences(I)Landroid/content/SharedPreferences;
    .registers 3
    .param p1, "mode"    # I

    .line 7256
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getReferrer()Landroid/net/Uri;
    .registers 5

    .line 6706
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6707
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_27

    .line 6709
    :try_start_6
    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 6710
    .local v1, "referrer":Landroid/net/Uri;
    if-eqz v1, :cond_11

    .line 6711
    return-object v1

    .line 6713
    :cond_11
    const-string v2, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6714
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_1e

    .line 6715
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_1d
    .catch Landroid/os/BadParcelableException; {:try_start_6 .. :try_end_1d} :catch_1f

    return-object v3

    .line 6720
    .end local v1    # "referrer":Landroid/net/Uri;
    .end local v2    # "referrerName":Ljava/lang/String;
    :cond_1e
    goto :goto_27

    .line 6717
    :catch_1f
    move-exception v1

    .line 6718
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string v2, "Activity"

    const-string v3, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6722
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_27
    :goto_27
    iget-object v1, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 6723
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "android-app"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 6725
    :cond_41
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getRequestedOrientation()I
    .registers 3

    .line 7168
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_f

    .line 7169
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    return v0

    .line 7171
    :cond_f
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public final whitelist getSearchEvent()Landroid/view/SearchEvent;
    .registers 2

    .line 5269
    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final blacklist getShareableActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 8538
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->getShareableActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    :goto_b
    return-object v0
.end method

.method public final whitelist getSplashScreen()Landroid/window/SplashScreen;
    .registers 2

    .line 1793
    invoke-direct {p0}, Landroid/app/Activity;->getOrCreateSplashScreen()Landroid/window/SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 7292
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 7297
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7298
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 7299
    :cond_12
    const-string/jumbo v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7300
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 7301
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    return-object v0

    .line 7303
    :cond_21
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 7293
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System services not available to Activities before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTaskId()I
    .registers 4

    .line 7182
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    return v0
.end method

.method public final whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 7348
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final whitelist getTitleColor()I
    .registers 2

    .line 7352
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    return v0
.end method

.method public whitelist getVoiceInteractor()Landroid/app/VoiceInteractor;
    .registers 2

    .line 2255
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    return-object v0
.end method

.method public final whitelist getVolumeControlStream()I
    .registers 2

    .line 7511
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .registers 2

    .line 1234
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .line 1222
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public whitelist getWindowingMode()I
    .registers 5

    .line 7887
    const/4 v0, 0x0

    .line 7889
    .local v0, "mode":I
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityTaskManager;->handleFreeformModeRequst(Landroid/os/IBinder;I)I

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 7892
    goto :goto_12

    .line 7890
    :catch_e
    move-exception v1

    .line 7891
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7893
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12
    return v0
.end method

.method public whitelist hasWindowFocus()Z
    .registers 4

    .line 4365
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4366
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_11

    .line 4367
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4368
    .local v1, "d":Landroid/view/View;
    if-eqz v1, :cond_11

    .line 4369
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    return v2

    .line 4372
    .end local v1    # "d":Landroid/view/View;
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist invalidateOptionsMenu()V
    .registers 3

    .line 4663
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_13

    .line 4664
    invoke-virtual {v0}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4665
    :cond_13
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 4667
    :cond_18
    return-void
.end method

.method public whitelist isActivityTransitionRunning()Z
    .registers 2

    .line 5725
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->isTransitionRunning()Z

    move-result v0

    return v0
.end method

.method public whitelist isBackgroundVisibleBehind()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8029
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isChangingConfigurations()Z
    .registers 2

    .line 6861
    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    return v0
.end method

.method public final whitelist isChild()Z
    .registers 2

    .line 1212
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isDestroyed()Z
    .registers 2

    .line 6848
    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    return v0
.end method

.method public whitelist isFinishing()Z
    .registers 2

    .line 6840
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    return v0
.end method

.method public whitelist isImmersive()Z
    .registers 3

    .line 7777
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public whitelist isInMultiWindowMode()Z
    .registers 2

    .line 2947
    iget-boolean v0, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    return v0
.end method

.method public whitelist isInPictureInPictureMode()Z
    .registers 2

    .line 3013
    iget-boolean v0, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    return v0
.end method

.method public whitelist isLaunchedFromBubble()Z
    .registers 2

    .line 7275
    iget-boolean v0, p0, Landroid/app/Activity;->mLaunchedFromBubble:Z

    return v0
.end method

.method public whitelist isLocalVoiceInteractionSupported()Z
    .registers 2

    .line 2267
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->supportsLocalVoiceInteraction()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2268
    :catch_9
    move-exception v0

    .line 2270
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isOverlayWithDecorCaptionEnabled()Z
    .registers 2

    .line 9076
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    return v0
.end method

.method public final greylist isResumed()Z
    .registers 2

    .line 8948
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public blacklist isSettingsInSplit()Z
    .registers 4

    .line 9482
    const/4 v0, 0x0

    .line 9484
    .local v0, "isInSplitMode":Z
    :try_start_1
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_10

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->isSettingsInSplit(Landroid/os/IBinder;)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    move v0, v1

    .line 9487
    goto :goto_17

    .line 9485
    :catch_13
    move-exception v1

    .line 9486
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9488
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    return v0
.end method

.method public whitelist isTaskRoot()Z
    .registers 2

    .line 7192
    iget-object v0, p0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method final greylist-max-o isTopOfTask()Z
    .registers 3

    .line 7788
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_9

    goto :goto_16

    .line 7791
    :cond_9
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    .line 7789
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist isVisibleForAutofill()Z
    .registers 2

    .line 9141
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isVoiceInteraction()Z
    .registers 2

    .line 2231
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isVoiceInteractionRoot()Z
    .registers 3

    .line 2246
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_12

    .line 2247
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 2246
    :goto_13
    return v0
.end method

.method greylist-max-o makeVisible()V
    .registers 4

    .line 6820
    iget-boolean v0, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v0, :cond_18

    .line 6821
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 6822
    .local v0, "wm":Landroid/view/ViewManager;
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6823
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 6825
    .end local v0    # "wm":Landroid/view/ViewManager;
    :cond_18
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6826
    return-void
.end method

.method public final greylist-max-r managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3474
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3475
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_12

    .line 3476
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 3478
    :cond_12
    return-object v0
.end method

.method public final whitelist managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3514
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3515
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_12

    .line 3516
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 3518
    :cond_12
    return-object v0
.end method

.method public whitelist moveTaskToBack(Z)Z
    .registers 4
    .param p1, "nonRoot"    # Z

    .line 7207
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist navigateUpTo(Landroid/content/Intent;)Z
    .registers 7
    .param p1, "upIntent"    # Landroid/content/Intent;

    .line 8293
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_3f

    .line 8294
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 8295
    .local v0, "destInfo":Landroid/content/ComponentName;
    if-nez v0, :cond_21

    .line 8296
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 8297
    if-nez v0, :cond_16

    .line 8298
    const/4 v1, 0x0

    return v1

    .line 8300
    :cond_16
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 8301
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v2, v0

    goto :goto_23

    .line 8295
    :cond_21
    move-object v1, p1

    move-object v2, v0

    .line 8305
    .end local v0    # "destInfo":Landroid/content/ComponentName;
    .end local p1    # "upIntent":Landroid/content/Intent;
    .local v1, "upIntent":Landroid/content/Intent;
    .local v2, "destInfo":Landroid/content/ComponentName;
    :goto_23
    monitor-enter p0

    .line 8306
    :try_start_24
    iget p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 8307
    .local p1, "resultCode":I
    iget-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 8308
    .local v0, "resultData":Landroid/content/Intent;
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_3c

    .line 8309
    if-eqz v0, :cond_2e

    .line 8310
    invoke-virtual {v0, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 8312
    :cond_2e
    invoke-virtual {v1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 8313
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1, p1, v0}, Landroid/app/ActivityClient;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v3

    return v3

    .line 8308
    .end local v0    # "resultData":Landroid/content/Intent;
    .end local p1    # "resultCode":I
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1

    .line 8316
    .end local v1    # "upIntent":Landroid/content/Intent;
    .end local v2    # "destInfo":Landroid/content/ComponentName;
    .local p1, "upIntent":Landroid/content/Intent;
    :cond_3f
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public whitelist navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 4
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8335
    invoke-virtual {p0, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public blacklist notifyContentChange()V
    .registers 2

    .line 9435
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    .line 9436
    invoke-interface {v0}, Landroid/app/ActivityStub;->notifyContentChange()V

    .line 9438
    :cond_7
    return-void
.end method

.method public whitelist notifyRemoveSnapshotQs()V
    .registers 4

    .line 9302
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->notifyRemoveSnapshotQS(Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 9306
    goto :goto_15

    .line 9303
    :catch_a
    move-exception v0

    .line 9304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9305
    const-string v1, "Activity"

    const-string v2, " notifyRemoveSnapshotQs failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9308
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    return-void
.end method

.method public whitelist notifyTakeSnapshotQs()V
    .registers 2

    .line 9287
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/Activity;->notifyTakeSnapshotQs(Ljava/lang/String;)V

    .line 9288
    return-void
.end method

.method public whitelist notifyTakeSnapshotQs(Ljava/lang/String;)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;

    .line 9292
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityTaskManager;->notifyTakeSnapshotQS(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 9296
    goto :goto_15

    .line 9293
    :catch_a
    move-exception v0

    .line 9294
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9295
    const-string v1, "Activity"

    const-string v2, " notifyTakeSnapshotQS failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9298
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    return-void
.end method

.method public blacklist notifyWebView(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLoad"    # Z

    .line 9471
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    .line 9472
    invoke-interface {v0, p1, p2}, Landroid/app/ActivityStub;->notifyWebView(Landroid/view/View;Z)V

    .line 9474
    :cond_7
    return-void
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 8238
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 8227
    return-void
.end method

.method public whitelist onActivityReenter(ILandroid/content/Intent;)V
    .registers 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 7089
    return-void
.end method

.method protected whitelist onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 7068
    return-void
.end method

.method protected whitelist onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 15
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 5420
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 5421
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_15

    .line 5424
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    .line 5427
    goto :goto_12

    .line 5425
    :catch_11
    move-exception v0

    .line 5428
    :goto_12
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 5432
    :goto_15
    sget-object v0, Lcom/android/internal/R$styleable;->ActivityTaskDescription:[I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5434
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-nez v2, :cond_37

    .line 5435
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 5437
    .local v2, "colorPrimary":I
    if-eqz v2, :cond_37

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-ne v5, v3, :cond_37

    .line 5438
    iget-object v5, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 5442
    .end local v2    # "colorPrimary":I
    :cond_37
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 5444
    .local v2, "colorBackground":I
    if-eqz v2, :cond_48

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-ne v5, v3, :cond_48

    .line 5445
    iget-object v5, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 5448
    :cond_48
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 5451
    .local v5, "colorBackgroundFloating":I
    if-eqz v5, :cond_5a

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-ne v6, v3, :cond_5a

    .line 5452
    iget-object v3, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 5455
    :cond_5a
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 5457
    .local v3, "statusBarColor":I
    if-eqz v3, :cond_66

    .line 5458
    iget-object v6, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v6, v3}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 5461
    :cond_66
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 5463
    .local v6, "navigationBarColor":I
    if-eqz v6, :cond_72

    .line 5464
    iget-object v7, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v7, v6}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 5467
    :cond_72
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 5468
    .local v7, "targetSdk":I
    const/16 v8, 0x1d

    if-ge v7, v8, :cond_7e

    move v8, v4

    goto :goto_7f

    :cond_7e
    move v8, v1

    .line 5469
    .local v8, "targetPreQ":Z
    :goto_7f
    if-nez v8, :cond_95

    .line 5470
    iget-object v9, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v10, 0x5

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v9, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 5473
    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v9, 0x6

    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 5479
    :cond_95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5480
    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 5481
    return-void
.end method

.method public whitelist onAttachFragment(Landroid/app/Fragment;)V
    .registers 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3438
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 1

    .line 4344
    return-void
.end method

.method public whitelist onBackPressed()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4122
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4123
    return-void

    .line 4126
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_12

    .line 4127
    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onBackPressed(Landroid/app/Activity;)V

    .line 4131
    :cond_12
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 4133
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 4134
    return-void

    .line 4136
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->navigateBack()V

    .line 4137
    return-void
.end method

.method public whitelist onBackgroundVisibleBehindChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8051
    return-void
.end method

.method protected whitelist onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 7371
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3210
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_a

    .line 3211
    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 3215
    :cond_a
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3217
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_16

    .line 3219
    invoke-virtual {v0, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3222
    :cond_16
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1d

    .line 3225
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3228
    :cond_1d
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityConfigurationChanged()V

    .line 3229
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_27

    .line 3230
    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3232
    :cond_27
    return-void
.end method

.method public whitelist onContentChanged()V
    .registers 1

    .line 4280
    return-void
.end method

.method public whitelist onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 4974
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 4975
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 4977
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onContextMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4988
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 4989
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 4991
    :cond_7
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1745
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_b

    .line 1746
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    .line 1748
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 1749
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_19

    .line 1750
    iput-boolean v1, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    goto :goto_1c

    .line 1752
    :cond_19
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 1756
    :cond_1c
    :goto_1c
    if-eqz p1, :cond_38

    .line 1757
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillClientController;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1759
    const-string v0, "android:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1760
    .local v0, "p":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v3, :cond_34

    .line 1761
    iget-object v3, v3, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    .line 1760
    :goto_35
    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    .line 1763
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_38
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchCreate()V

    .line 1764
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityCreated(Landroid/os/Bundle;)V

    .line 1765
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_47

    .line 1766
    invoke-virtual {v0, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    .line 1768
    :cond_47
    if-eqz p1, :cond_4b

    move v0, v1

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    iput-boolean v0, p0, Landroid/app/Activity;->mRestoredFromBundle:Z

    .line 1769
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 1771
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-nez v0, :cond_5a

    .line 1772
    invoke-static {}, Landroid/app/ActivityStub;->newInstance()Landroid/app/ActivityStub;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    .line 1774
    :cond_5a
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_63

    .line 1775
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/app/ActivityStub;->onCreate(Landroid/app/Activity;Landroid/os/IBinder;)V

    .line 1779
    :cond_63
    nop

    .line 1780
    invoke-static {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1781
    .local v0, "aheadOfTimeBack":Z
    if-eqz v0, :cond_7a

    .line 1783
    new-instance v1, Landroid/app/Activity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/Activity$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 1784
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 1786
    :cond_7a
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1827
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1828
    return-void
.end method

.method public whitelist onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4909
    return-void
.end method

.method public whitelist onCreateDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 2589
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4998
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5037
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .registers 2
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .line 4842
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    .line 4843
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4698
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 4699
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 4701
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4536
    if-nez p1, :cond_12

    .line 4537
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 4538
    .local v0, "show":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4539
    return v0

    .line 4541
    .end local v0    # "show":Z
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .line 4524
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .registers 4
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2568
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 7592
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 7593
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 7596
    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 7576
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onDestroy()V
    .registers 7

    .line 2808
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2810
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityDestroyed()V

    .line 2813
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 2814
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2815
    .local v0, "numDialogs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_2e

    .line 2816
    iget-object v3, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity$ManagedDialog;

    .line 2817
    .local v3, "md":Landroid/app/Activity$ManagedDialog;
    iget-object v4, v3, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2818
    iget-object v4, v3, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 2815
    .end local v3    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2821
    .end local v2    # "i":I
    :cond_2e
    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 2825
    .end local v0    # "numDialogs":I
    :cond_30
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2826
    :try_start_33
    iget-object v2, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2827
    .local v2, "numCursors":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    if-ge v3, v2, :cond_50

    .line 2828
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedCursor;

    .line 2829
    .local v4, "c":Landroid/app/Activity$ManagedCursor;
    if-eqz v4, :cond_4d

    .line 2830
    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2827
    .end local v4    # "c":Landroid/app/Activity$ManagedCursor;
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 2833
    .end local v3    # "i":I
    :cond_50
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2834
    .end local v2    # "numCursors":I
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_33 .. :try_end_56} :catchall_90

    .line 2837
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_5d

    .line 2838
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 2841
    :cond_5d
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_64

    .line 2842
    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    .line 2845
    :cond_64
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityDestroyed()V

    .line 2847
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2849
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-eqz v0, :cond_72

    .line 2850
    invoke-virtual {v0}, Landroid/view/translation/UiTranslationController;->onActivityDestroyed()V

    .line 2852
    :cond_72
    iget-object v0, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_81

    .line 2853
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v2}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 2854
    iput-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2856
    :cond_81
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_88

    .line 2857
    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    .line 2860
    :cond_88
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_8f

    .line 2861
    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onDestroy(Landroid/app/Activity;)V

    .line 2864
    :cond_8f
    return-void

    .line 2834
    :catchall_90
    move-exception v1

    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v1
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 4354
    return-void
.end method

.method public whitelist onEnterAnimationComplete()V
    .registers 1

    .line 8059
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4239
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/DirectAction;",
            ">;>;)V"
        }
    .end annotation

    .line 2657
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/DirectAction;>;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2658
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3945
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    .line 3946
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_11

    .line 3948
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_14

    .line 3950
    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 3952
    :goto_14
    return v0

    .line 3955
    :cond_15
    iget v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 3956
    return v2

    .line 3957
    :cond_1b
    const/4 v3, 0x2

    if-ne v1, v3, :cond_30

    .line 3958
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3959
    .local v1, "w":Landroid/view/Window;
    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3960
    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 3962
    return v0

    .line 3964
    :cond_2f
    return v2

    .line 3965
    .end local v1    # "w":Landroid/view/Window;
    :cond_30
    const/16 v1, 0x3d

    if-ne p1, v1, :cond_35

    .line 3968
    return v2

    .line 3971
    :cond_35
    const/4 v1, 0x0

    .line 3973
    .local v1, "clearSpannable":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_95

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_95

    .line 3977
    :cond_43
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 3979
    .local v3, "handled":Z
    if-eqz v3, :cond_97

    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_97

    .line 3982
    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3983
    .local v4, "str":Ljava/lang/String;
    const/4 v1, 0x1

    .line 3985
    iget v6, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch v6, :pswitch_data_aa

    :pswitch_64
    goto :goto_97

    .line 3995
    :pswitch_65
    invoke-virtual {p0, v4, v2, v5, v0}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_97

    .line 3992
    :pswitch_69
    invoke-virtual {p0, v4, v2, v5, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3993
    goto :goto_97

    .line 3987
    :pswitch_6d
    new-instance v0, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3988
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3989
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3990
    goto :goto_97

    .line 3974
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "handled":Z
    .end local v4    # "str":Ljava/lang/String;
    :cond_95
    :goto_95
    const/4 v1, 0x1

    .line 3975
    const/4 v3, 0x0

    .line 4000
    .restart local v3    # "handled":Z
    :cond_97
    :goto_97
    if-eqz v1, :cond_a8

    .line 4001
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4002
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 4003
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4005
    :cond_a8
    return v3

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_64
        :pswitch_69
        :pswitch_65
    .end packed-switch
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 4020
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 4059
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 4166
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 4167
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 4039
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4040
    .local v0, "sdkVersion":I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_21

    .line 4041
    const/4 v1, 0x4

    if-ne p1, v1, :cond_21

    .line 4042
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4043
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-nez v1, :cond_21

    .line 4046
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 4047
    const/4 v1, 0x1

    return v1

    .line 4050
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist onLocalVoiceInteractionStarted()V
    .registers 1

    .line 2289
    return-void
.end method

.method public whitelist onLocalVoiceInteractionStopped()V
    .registers 1

    .line 2298
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 2

    .line 3401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3402
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    .line 3403
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_f

    .line 3404
    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->dispatchLowMemory()V

    .line 3406
    :cond_f
    return-void
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 4590
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4592
    .local v0, "titleCondensed":Ljava/lang/CharSequence;
    const/4 v1, 0x2

    const v2, 0xc350

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_76

    .line 4626
    return v3

    .line 4617
    :sswitch_e
    if-eqz v0, :cond_21

    .line 4618
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4620
    :cond_21
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4621
    return v4

    .line 4623
    :cond_28
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 4597
    :sswitch_2f
    if-eqz v0, :cond_42

    .line 4598
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4600
    :cond_42
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 4601
    return v4

    .line 4603
    :cond_49
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 4604
    return v4

    .line 4606
    :cond_52
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_75

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_75

    .line 4607
    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_75

    .line 4608
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_70

    .line 4609
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v1

    return v1

    .line 4611
    :cond_70
    invoke-virtual {v1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v1

    return v1

    .line 4614
    :cond_75
    return v3

    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_2f
        0x6 -> :sswitch_e
    .end sparse-switch
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4569
    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_17

    .line 4570
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4571
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_10

    .line 4572
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_17

    .line 4574
    :cond_10
    const-string v1, "Activity"

    const-string v2, "Tried to open action bar menu with no action bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4577
    :cond_17
    :goto_17
    return v0
.end method

.method public greylist-max-r onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3188
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(Z)V
    .registers 2
    .param p1, "isInMultiWindowMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2938
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 2916
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 2918
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_a

    .line 2919
    invoke-interface {v0, p0, p1, p2}, Landroid/app/ActivityStub;->onMultiWindowModeChanged(Landroid/app/Activity;ZLandroid/content/res/Configuration;)V

    .line 2922
    :cond_a
    return-void
.end method

.method public whitelist onNavigateUp()Z
    .registers 5

    .line 4780
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4781
    .local v0, "upIntent":Landroid/content/Intent;
    if-eqz v0, :cond_41

    .line 4782
    iget-object v1, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 4786
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3f

    .line 4787
    :cond_10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 4788
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 4789
    .local v1, "b":Landroid/app/TaskStackBuilder;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 4790
    invoke-virtual {p0, v1}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 4791
    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 4795
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v2, :cond_30

    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v2, :cond_2c

    goto :goto_30

    .line 4800
    :cond_2c
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_3b

    .line 4797
    :cond_30
    :goto_30
    const-string v2, "Activity"

    const-string/jumbo v3, "onNavigateUp only finishing topmost activity to return a result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4802
    .end local v1    # "b":Landroid/app/TaskStackBuilder;
    :goto_3b
    goto :goto_3f

    .line 4803
    :cond_3c
    invoke-virtual {p0, v0}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 4805
    :goto_3f
    const/4 v1, 0x1

    return v1

    .line 4807
    :cond_41
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist onNavigateUpFromChild(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "child"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4819
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onNewActivityOptions(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 7926
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 7927
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v0, :cond_e

    .line 7928
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 7930
    :cond_e
    return-void
.end method

.method protected whitelist onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2336
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    .line 2337
    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2340
    :cond_7
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 4748
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 4749
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 4751
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4868
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 4869
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4871
    :cond_7
    return-void
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4640
    sparse-switch p1, :sswitch_data_1c

    goto :goto_1b

    .line 4651
    :sswitch_4
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4652
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_1b

    .line 4647
    :sswitch_e
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 4648
    goto :goto_1b

    .line 4642
    :sswitch_12
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4643
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4644
    nop

    .line 4655
    :goto_1b
    return-void

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_12
        0x6 -> :sswitch_e
        0x8 -> :sswitch_4
    .end sparse-switch
.end method

.method protected whitelist onPause()V
    .registers 2

    .line 2532
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPaused()V

    .line 2533
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityPaused()V

    .line 2535
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2536
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2538
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_18

    .line 2539
    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onPause(Landroid/app/Activity;)V

    .line 2542
    :cond_18
    return-void
.end method

.method public whitelist onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "actionId"    # Ljava/lang/String;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2676
    .local p4, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(Z)V
    .registers 2
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3004
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 2965
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPictureInPictureModeChanged(Z)V

    .line 2966
    return-void
.end method

.method public whitelist onPictureInPictureRequested()Z
    .registers 2

    .line 3120
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V
    .registers 2
    .param p1, "pipState"    # Landroid/app/PictureInPictureUiState;

    .line 2989
    return-void
.end method

.method protected whitelist onPostCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1989
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 1990
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 1991
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1994
    :cond_14
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 1996
    invoke-direct {p0, v1}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 1997
    return-void
.end method

.method public whitelist onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 2012
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2013
    return-void
.end method

.method protected whitelist onPostResume()V
    .registers 4

    .line 2153
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2154
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    .line 2155
    :cond_9
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 2156
    :cond_11
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 2157
    return-void
.end method

.method protected whitelist onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5046
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 5047
    return-void
.end method

.method protected whitelist onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5075
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 5076
    return-void
.end method

.method public whitelist onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .registers 2
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .line 4858
    return-void
.end method

.method public whitelist onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4723
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 4724
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 4726
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 4554
    if-nez p1, :cond_e

    .line 4555
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 4556
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4557
    return v0

    .line 4559
    .end local v0    # "goforit":Z
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .registers 2
    .param p1, "outContent"    # Landroid/app/assist/AssistContent;

    .line 2626
    return-void
.end method

.method public whitelist onProvideAssistData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 2604
    return-void
.end method

.method public whitelist onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 14
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 2706
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    if-nez p2, :cond_3

    .line 2707
    return-void

    .line 2709
    :cond_3
    const/4 v0, 0x0

    .line 2710
    .local v0, "group":Landroid/view/KeyboardShortcutGroup;
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v1

    .line 2711
    .local v1, "menuSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_42

    .line 2712
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2713
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2714
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v5

    .line 2715
    .local v5, "alphaShortcut":C
    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticModifiers()I

    move-result v6

    .line 2716
    .local v6, "alphaModifiers":I
    if-eqz v4, :cond_3f

    if-eqz v5, :cond_3f

    .line 2717
    if-nez v0, :cond_37

    .line 2718
    iget-object v7, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 2719
    .local v7, "resource":I
    new-instance v8, Landroid/view/KeyboardShortcutGroup;

    if-eqz v7, :cond_32

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_33

    :cond_32
    const/4 v9, 0x0

    :goto_33
    invoke-direct {v8, v9}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v8

    .line 2721
    .end local v7    # "resource":I
    :cond_37
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    invoke-direct {v7, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;CI)V

    invoke-virtual {v0, v7}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 2711
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "alphaShortcut":C
    .end local v6    # "alphaModifiers":I
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2725
    .end local v2    # "i":I
    :cond_42
    if-eqz v0, :cond_47

    .line 2726
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2728
    :cond_47
    return-void
.end method

.method public whitelist onProvideReferrer()Landroid/net/Uri;
    .registers 2

    .line 6735
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 5593
    return-void
.end method

.method protected whitelist onRestart()V
    .registers 2

    .line 2072
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2073
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1883
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_11

    .line 1884
    const-string v0, "android:viewHierarchyState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1885
    .local v0, "windowState":Landroid/os/Bundle;
    if-eqz v0, :cond_11

    .line 1886
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1889
    .end local v0    # "windowState":Landroid/os/Bundle;
    :cond_11
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1918
    if-eqz p1, :cond_5

    .line 1919
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1921
    :cond_5
    return-void
.end method

.method protected whitelist onResume()V
    .registers 2

    .line 2119
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityResumed()V

    .line 2120
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;)V

    .line 2121
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityResumed()V

    .line 2123
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2125
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2127
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_1d

    .line 2128
    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onResume(Landroid/app/Activity;)V

    .line 2130
    :cond_1d
    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->isCoreAppOptimizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2131
    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/TurboSchedMonitor;->setForegroundActivity(Landroid/content/Context;)V

    .line 2133
    :cond_2e
    invoke-static {}, Lcom/xiaomi/aiinput/AIInputTextStub;->getInstance()Lcom/xiaomi/aiinput/AIInputTextStub;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 2134
    invoke-static {}, Lcom/xiaomi/aiinput/AIInputTextStub;->getInstance()Lcom/xiaomi/aiinput/AIInputTextStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaomi/aiinput/AIInputTextStub;->updateAIInputClient(Landroid/app/Activity;)V

    .line 2137
    :cond_3b
    return-void
.end method

.method greylist-max-o onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3366
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .line 3331
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2428
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2430
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2431
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_18

    .line 2432
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2434
    :cond_18
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/autofill/AutofillClientController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2435
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivitySaveInstanceState(Landroid/os/Bundle;)V

    .line 2436
    return-void
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .line 2455
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2456
    return-void
.end method

.method public whitelist onSearchRequested()Z
    .registers 4

    .line 5250
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 5252
    .local v0, "uiMode":I
    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_19

    const/4 v2, 0x6

    if-eq v0, v2, :cond_19

    .line 5254
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2, v1}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 5255
    const/4 v1, 0x1

    return v1

    .line 5257
    :cond_19
    return v1
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 4
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 5240
    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 5241
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 5242
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 5243
    return v0
.end method

.method protected whitelist onStart()V
    .registers 2

    .line 2036
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2038
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 2040
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityStarted()V

    .line 2042
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityStarted()V

    .line 2044
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_19

    .line 2045
    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onStart(Landroid/app/Activity;)V

    .line 2048
    :cond_19
    return-void
.end method

.method public whitelist onStateNotSaved()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2088
    return-void
.end method

.method protected whitelist onStop()V
    .registers 5

    .line 2762
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 2763
    :cond_8
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->onStop(Landroid/app/Activity;)V

    .line 2764
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityStopped()V

    .line 2765
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 2766
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2768
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    iget-boolean v3, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v0, v2, v3}, Landroid/view/autofill/AutofillClientController;->onActivityStopped(Landroid/content/Intent;Z)V

    .line 2769
    iput-boolean v1, p0, Landroid/app/Activity;->mEnterAnimationComplete:Z

    .line 2771
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_2a

    .line 2772
    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onStop(Landroid/app/Activity;)V

    .line 2775
    :cond_2a
    return-void
.end method

.method protected whitelist onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 7356
    iget-boolean v0, p0, Landroid/app/Activity;->mTitleReady:Z

    if-eqz v0, :cond_19

    .line 7357
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7358
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_12

    .line 7359
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 7360
    if-eqz p2, :cond_12

    .line 7361
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    .line 7364
    :cond_12
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_19

    .line 7365
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 7368
    .end local v0    # "win":Landroid/view/Window;
    :cond_19
    return-void
.end method

.method public whitelist onTopResumedActivityChanged(Z)V
    .registers 2
    .param p1, "isTopResumedActivity"    # Z

    .line 2180
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4181
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 4183
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_1e

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1e

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4184
    invoke-interface {v0, v2, v3}, Landroid/app/ActivityStub;->onSkipTouchActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4185
    return v1

    .line 4188
    :cond_1e
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4189
    const/4 v0, 0x1

    return v0

    .line 4192
    :cond_23
    return v1
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4210
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o onTranslucentConversionComplete(Z)V
    .registers 5
    .param p1, "drawComplete"    # Z

    .line 7876
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_a

    .line 7877
    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 7878
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 7880
    :cond_a
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-eqz v0, :cond_18

    .line 7881
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 7883
    :cond_18
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I

    .line 3410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3411
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    .line 3412
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_f

    .line 3413
    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchTrimMemory(I)V

    .line 3415
    :cond_f
    return-void
.end method

.method public whitelist onUserInteraction()V
    .registers 1

    .line 4262
    return-void
.end method

.method protected whitelist onUserLeaveHint()V
    .registers 1

    .line 2561
    return-void
.end method

.method public whitelist onVisibleBehindCanceled()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8008
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 8009
    return-void
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 4268
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1c

    .line 4269
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4270
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 4271
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4272
    iget-object v1, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v1, :cond_1c

    .line 4273
    invoke-virtual {v1, p1}, Landroid/view/contentcapture/ContentCaptureManager;->updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4277
    .end local v0    # "decor":Landroid/view/View;
    :cond_1c
    return-void
.end method

.method public greylist-max-o onWindowDismissed(ZZ)V
    .registers 5
    .param p1, "finishTask"    # Z
    .param p2, "suppressWindowTransition"    # Z

    .line 4381
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-direct {p0, v1}, Landroid/app/Activity;->finish(I)V

    .line 4382
    if-eqz p2, :cond_e

    .line 4383
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 4385
    :cond_e
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .line 4324
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/window/MiuiEmbeddingWindowStub;->onWindowFocusChanged(Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4325
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    .line 4326
    invoke-virtual {p0}, Landroid/app/Activity;->onResume()V

    .line 4330
    :cond_10
    if-eqz p1, :cond_1f

    invoke-static {}, Lcom/xiaomi/aiinput/AIInputTextStub;->getInstance()Lcom/xiaomi/aiinput/AIInputTextStub;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 4331
    invoke-static {}, Lcom/xiaomi/aiinput/AIInputTextStub;->getInstance()Lcom/xiaomi/aiinput/AIInputTextStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaomi/aiinput/AIInputTextStub;->updateAIInputClient(Landroid/app/Activity;)V

    .line 4334
    :cond_1f
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 8195
    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    if-nez v0, :cond_10

    .line 8196
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 8197
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_10

    .line 8198
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 8201
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 8211
    const/4 v0, 0x0

    :try_start_1
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8212
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    .line 8214
    iput v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8212
    return-object v1

    .line 8214
    :catchall_a
    move-exception v1

    iput v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8215
    throw v1
.end method

.method public whitelist openContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 4944
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 4945
    return-void
.end method

.method public whitelist openOptionsMenu()V
    .registers 4

    .line 4878
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_13

    .line 4879
    invoke-virtual {v0}, Landroid/app/ActionBar;->openOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_19

    .line 4880
    :cond_13
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 4882
    :cond_19
    return-void
.end method

.method public whitelist overridePendingTransition(II)V
    .registers 4
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .line 6613
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(III)V

    .line 6614
    return-void
.end method

.method public whitelist overridePendingTransition(III)V
    .registers 10
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I
    .param p3, "backgroundColor"    # I

    .line 6636
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityClient;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 6638
    return-void
.end method

.method final greylist-max-o performCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 8553
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 8554
    return-void
.end method

.method final greylist-max-r performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 19
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 8558
    move-object/from16 v6, p0

    const-wide/16 v7, 0x20

    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 8559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performCreate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8560
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8559
    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8562
    :cond_27
    invoke-direct/range {p0 .. p1}, Landroid/app/Activity;->dispatchActivityPreCreated(Landroid/os/Bundle;)V

    .line 8563
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 8565
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8566
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    .line 8567
    .local v10, "windowingMode":I
    invoke-static {v10}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    iput-boolean v0, v6, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    .line 8570
    const/4 v0, 0x5

    const/4 v11, 0x0

    if-ne v10, v0, :cond_55

    .line 8571
    invoke-static {}, Landroid/util/MiuiFreeformUtils;->getListAboutNoNeedInFreeform()Ljava/util/List;

    move-result-object v0

    .line 8572
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 8571
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 8573
    iput-boolean v11, v6, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    .line 8577
    :cond_55
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 8578
    iput-boolean v11, v6, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    .line 8581
    :cond_5d
    const/4 v0, 0x2

    if-ne v10, v0, :cond_62

    move v0, v9

    goto :goto_63

    :cond_62
    move v0, v11

    :goto_63
    iput-boolean v0, v6, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 8582
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v6, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    .line 8583
    invoke-direct/range {p0 .. p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 8585
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 8586
    .local v12, "startTime":J
    if-eqz p2, :cond_7f

    .line 8587
    invoke-virtual/range {p0 .. p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_82

    .line 8589
    :cond_7f
    invoke-virtual/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 8594
    :goto_82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v14, v0, v12

    .line 8595
    .local v14, "took":J
    const/16 v0, 0x7569

    const-string/jumbo v1, "performCreate"

    invoke-direct {v6, v0, v1, v14, v15}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    .line 8596
    const-wide/16 v3, 0x1f4

    const-string/jumbo v5, "onCreate"

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-direct/range {v0 .. v5}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    .line 8598
    iget-object v0, v6, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 8600
    iget-object v0, v6, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    xor-int/2addr v0, v9

    iput-boolean v0, v6, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 8602
    iget-object v0, v6, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    .line 8603
    iget-object v0, v6, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 8604
    invoke-direct/range {p0 .. p1}, Landroid/app/Activity;->dispatchActivityPostCreated(Landroid/os/Bundle;)V

    .line 8605
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 8606
    return-void
.end method

.method final greylist-max-o performDestroy()V
    .registers 13

    .line 8877
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 8878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performDestroy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8879
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8878
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8881
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreDestroyed()V

    .line 8882
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mDestroyed:Z

    .line 8883
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->destroy()V

    .line 8884
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchDestroy()V

    .line 8886
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 8887
    .local v2, "startTime":J
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    .line 8891
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 8892
    .local v4, "took":J
    const/16 v6, 0x756c

    const-string/jumbo v7, "performDestroy"

    invoke-direct {p0, v6, v7, v4, v5}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    .line 8893
    const-wide/16 v9, 0x64

    const-string/jumbo v11, "onDestroy"

    move-object v6, p0

    move-wide v7, v4

    invoke-direct/range {v6 .. v11}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    .line 8895
    iget-object v6, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v6}, Landroid/app/FragmentController;->doLoaderDestroy()V

    .line 8896
    iget-object v6, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v6, :cond_5f

    .line 8897
    invoke-virtual {v6}, Landroid/app/VoiceInteractor;->detachActivity()V

    .line 8899
    :cond_5f
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostDestroyed()V

    .line 8900
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8901
    return-void
.end method

.method final greylist-max-o performNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 8609
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 8610
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 8611
    return-void
.end method

.method final greylist-max-o performPause()V
    .registers 14

    .line 8782
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 8783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performPause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8784
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8783
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8786
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPrePaused()V

    .line 8787
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 8788
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->dispatchPause()V

    .line 8789
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 8791
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 8792
    .local v3, "startTime":J
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    .line 8796
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 8797
    .local v5, "took":J
    const/16 v7, 0x7545

    const-string/jumbo v8, "performPause"

    invoke-direct {p0, v7, v8, v5, v6}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    .line 8798
    const-wide/16 v10, 0x32

    const-string/jumbo v12, "onPause"

    move-object v7, p0

    move-wide v8, v5

    invoke-direct/range {v7 .. v12}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    .line 8800
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 8801
    iget-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_86

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x9

    if-ge v2, v7, :cond_61

    goto :goto_86

    .line 8803
    :cond_61
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8804
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8807
    :cond_86
    :goto_86
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostPaused()V

    .line 8808
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8809
    return-void
.end method

.method final greylist-max-o performRestart(ZLjava/lang/String;)V
    .registers 13
    .param p1, "start"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 8672
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 8673
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 8675
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1a

    .line 8677
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 8680
    :cond_1a
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-eqz v0, :cond_ce

    .line 8681
    iput-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    .line 8683
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8684
    :try_start_23
    iget-object v2, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 8685
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v2, :cond_7c

    .line 8686
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedCursor;

    .line 8687
    .local v4, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z

    move-result v5

    if-nez v5, :cond_40

    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmUpdated(Landroid/app/Activity$ManagedCursor;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 8688
    :cond_40
    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->requery()Z

    move-result v5

    if-nez v5, :cond_73

    .line 8689
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_55

    goto :goto_73

    .line 8691
    :cond_55
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trying to requery an already closed cursor  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/Activity;
    .end local p1    # "start":Z
    .end local p2    # "reason":Ljava/lang/String;
    throw v1

    .line 8696
    .restart local p0    # "this":Landroid/app/Activity;
    .restart local p1    # "start":Z
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_73
    :goto_73
    invoke-static {v4, v1}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V

    .line 8697
    invoke-static {v4, v1}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmUpdated(Landroid/app/Activity$ManagedCursor;Z)V

    .line 8685
    .end local v4    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 8700
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_23 .. :try_end_7d} :catchall_cb

    .line 8702
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 8704
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8705
    .local v0, "startTime":J
    iget-object v2, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 8708
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 8709
    .local v2, "took":J
    const/16 v4, 0x756a

    invoke-direct {p0, v4, p2, v2, v3}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    .line 8710
    const-wide/16 v7, 0x64

    const-string/jumbo v9, "onRestart"

    move-object v4, p0

    move-wide v5, v2

    invoke-direct/range {v4 .. v9}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    .line 8712
    iget-boolean v4, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v4, :cond_a6

    .line 8717
    if-eqz p1, :cond_ce

    .line 8718
    invoke-virtual {p0, p2}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    goto :goto_ce

    .line 8713
    :cond_a6
    new-instance v4, Landroid/util/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8714
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onRestart()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 8700
    .end local v0    # "startTime":J
    .end local v2    # "took":J
    :catchall_cb
    move-exception v1

    :try_start_cc
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v1

    .line 8721
    :cond_ce
    :goto_ce
    return-void
.end method

.method final greylist-max-o performRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1839
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1840
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1841
    return-void
.end method

.method final greylist-max-o performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1854
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1855
    if-eqz p1, :cond_8

    .line 1856
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1858
    :cond_8
    return-void
.end method

.method final greylist-max-o performResume(ZLjava/lang/String;)V
    .registers 16
    .param p1, "followedByPause"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 8724
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 8725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performResume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8726
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8725
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8728
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreResumed()V

    .line 8729
    const/4 v2, 0x1

    invoke-virtual {p0, v2, p2}, Landroid/app/Activity;->performRestart(ZLjava/lang/String;)V

    .line 8731
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 8733
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 8735
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/autofill/AutofillClientController;->onActivityPerformResume(Z)V

    .line 8737
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 8740
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 8741
    .local v3, "startTime":J
    iget-object v5, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 8744
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 8745
    .local v5, "took":J
    const/16 v7, 0x7546

    invoke-direct {p0, v7, p2, v5, v6}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    .line 8746
    const-wide/16 v10, 0x64

    const-string/jumbo v12, "onResume"

    move-object v7, p0

    move-wide v8, v5

    invoke-direct/range {v7 .. v12}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    .line 8748
    iget-boolean v7, p0, Landroid/app/Activity;->mCalled:Z

    const-string v8, "Activity "

    if-eqz v7, :cond_db

    .line 8755
    iget-boolean v7, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-nez v7, :cond_9e

    iget-boolean v7, p0, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_9e

    .line 8756
    const-string v7, "Activity"

    const-string v9, "An activity without a UI must call finish() before onResume() completes"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8757
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x16

    if-gt v7, v9, :cond_7b

    goto :goto_9e

    .line 8759
    :cond_7b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8760
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call finish() prior to onResume() completing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8766
    :cond_9e
    :goto_9e
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 8768
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchResume()V

    .line 8769
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 8771
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    .line 8772
    iget-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_b8

    .line 8777
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostResumed()V

    .line 8778
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8779
    return-void

    .line 8773
    :cond_b8
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8774
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPostResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8749
    :cond_db
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8750
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2351
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V

    .line 2352
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2353
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 2354
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    .line 2355
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 2357
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V

    .line 2358
    return-void
.end method

.method final greylist-max-o performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .line 2371
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V

    .line 2372
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2373
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 2374
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 2377
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V

    .line 2378
    return-void
.end method

.method final greylist-max-o performStart(Ljava/lang/String;)V
    .registers 14
    .param p1, "reason"    # Ljava/lang/String;

    .line 8614
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreStarted()V

    .line 8615
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 8616
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 8617
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 8618
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 8620
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 8621
    .local v1, "startTime":J
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 8624
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 8625
    .local v3, "took":J
    const/16 v5, 0x756b

    invoke-direct {p0, v5, p1, v3, v4}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    .line 8626
    const-wide/16 v8, 0x64

    const-string/jumbo v10, "onStart"

    move-object v5, p0

    move-wide v6, v3

    invoke-direct/range {v5 .. v10}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    .line 8628
    iget-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v5, :cond_cc

    .line 8633
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->dispatchStart()V

    .line 8634
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->reportLoaderStart()V

    .line 8637
    iget-object v5, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 8638
    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-eqz v5, :cond_53

    move v5, v6

    goto :goto_54

    :cond_53
    move v5, v0

    .line 8639
    .local v5, "isAppDebuggable":Z
    :goto_54
    if-eqz v5, :cond_bc

    .line 8640
    invoke-static {}, Landroid/app/Activity;->getDlWarning()Ljava/lang/String;

    move-result-object v7

    .line 8641
    .local v7, "dlwarning":Ljava/lang/String;
    if-eqz v7, :cond_bc

    .line 8642
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 8643
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 8644
    .local v8, "appName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Detected problems with app native libraries\n(please consult log for detail):\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 8646
    .local v9, "warning":Ljava/lang/String;
    if-eqz v5, :cond_9e

    .line 8647
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8648
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 8649
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v10, 0x104000a

    const/4 v11, 0x0

    .line 8650
    invoke-virtual {v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 8651
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 8652
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_bc

    .line 8654
    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8659
    .end local v7    # "dlwarning":Ljava/lang/String;
    .end local v8    # "appName":Ljava/lang/String;
    .end local v9    # "warning":Ljava/lang/String;
    :cond_bc
    :goto_bc
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/GraphicsEnvironment;->showAngleInUseDialogBox(Landroid/content/Context;)V

    .line 8661
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 8662
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostStarted()V

    .line 8663
    return-void

    .line 8629
    .end local v5    # "isAppDebuggable":Z
    :cond_cc
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8630
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onStart()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o performStop(ZLjava/lang/String;)V
    .registers 19
    .param p1, "preserveWindow"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 8817
    move-object/from16 v7, p0

    const-wide/16 v8, 0x20

    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 8818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8819
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8818
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8821
    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 8822
    iget-object v1, v7, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-boolean v2, v7, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v1, v2}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 8825
    iput-boolean v0, v7, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 8827
    iget-boolean v1, v7, Landroid/app/Activity;->mStopped:Z

    if-nez v1, :cond_d7

    .line 8828
    invoke-direct/range {p0 .. p0}, Landroid/app/Activity;->dispatchActivityPreStopped()V

    .line 8829
    iget-object v1, v7, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_41

    .line 8830
    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 8836
    :cond_41
    const/4 v10, 0x1

    if-nez p1, :cond_55

    iget-object v1, v7, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_55

    iget-object v1, v7, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_55

    .line 8837
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, v7, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v10}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 8840
    :cond_55
    iget-object v1, v7, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->dispatchStop()V

    .line 8842
    iput-boolean v0, v7, Landroid/app/Activity;->mCalled:Z

    .line 8844
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 8845
    .local v11, "startTime":J
    iget-object v1, v7, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v7}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 8848
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v13, v1, v11

    .line 8849
    .local v13, "took":J
    const/16 v1, 0x7561

    move-object/from16 v15, p2

    invoke-direct {v7, v1, v15, v13, v14}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    .line 8850
    const-wide/16 v4, 0x64

    const-string/jumbo v6, "onStop"

    move-object/from16 v1, p0

    move-wide v2, v13

    invoke-direct/range {v1 .. v6}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    .line 8852
    iget-boolean v1, v7, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_b2

    .line 8858
    iget-object v1, v7, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    .line 8859
    :try_start_84
    iget-object v2, v7, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 8860
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8b
    if-ge v3, v2, :cond_a8

    .line 8861
    iget-object v4, v7, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedCursor;

    .line 8862
    .local v4, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z

    move-result v5

    if-nez v5, :cond_a5

    .line 8863
    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->deactivate()V

    .line 8864
    invoke-static {v4, v10}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V

    .line 8860
    .end local v4    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 8867
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_84 .. :try_end_a9} :catchall_af

    .line 8869
    iput-boolean v10, v7, Landroid/app/Activity;->mStopped:Z

    .line 8870
    invoke-direct/range {p0 .. p0}, Landroid/app/Activity;->dispatchActivityPostStopped()V

    goto :goto_d9

    .line 8867
    :catchall_af
    move-exception v0

    :try_start_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw v0

    .line 8853
    :cond_b2
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8854
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8827
    .end local v11    # "startTime":J
    .end local v13    # "took":J
    :cond_d7
    move-object/from16 v15, p2

    .line 8872
    :goto_d9
    iput-boolean v0, v7, Landroid/app/Activity;->mResumed:Z

    .line 8873
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 8874
    return-void
.end method

.method final blacklist performTopResumedActivityChanged(ZLjava/lang/String;)V
    .registers 5
    .param p1, "isTopResumedActivity"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 2183
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    .line 2185
    if-eqz p1, :cond_13

    .line 2186
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/app/EventLogTags;->writeWmOnTopResumedGainedCalled(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 2189
    :cond_13
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/app/EventLogTags;->writeWmOnTopResumedLostCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 2192
    :goto_20
    return-void
.end method

.method final greylist-max-o performUserLeaving()V
    .registers 1

    .line 8812
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 8813
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 8814
    return-void
.end method

.method public whitelist postponeEnterTransition()V
    .registers 2

    .line 8419
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    .line 8420
    return-void
.end method

.method public whitelist recreate()V
    .registers 3

    .line 6871
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_20

    .line 6874
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 6877
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->scheduleRelaunchActivity(Landroid/os/IBinder;)V

    .line 6878
    return-void

    .line 6875
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6872
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called on top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1415
    iget-object v0, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1416
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    monitor-exit v0

    .line 1418
    return-void

    .line 1417
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 1437
    const-wide/32 v0, 0xb84ba9c

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-nez v0, :cond_14

    .line 1439
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 1441
    :cond_14
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_1c

    .line 1442
    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_1f

    .line 1444
    :cond_1c
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1446
    :goto_1f
    return-void
.end method

.method public whitelist registerForContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 4922
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 4923
    return-void
.end method

.method public blacklist registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 4
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 9243
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    .line 9244
    return-void
.end method

.method public whitelist releaseInstance()Z
    .registers 3

    .line 7034
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public final whitelist removeDialog(I)V
    .registers 4
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5206
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_16

    .line 5207
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5208
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_16

    .line 5209
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 5210
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5213
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_16
    return-void
.end method

.method public whitelist reportFullyDrawn()V
    .registers 6

    .line 2886
    iget-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    if-eqz v0, :cond_47

    .line 2887
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFullyDrawn() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 2889
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2888
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2891
    :cond_29
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 2893
    :try_start_2c
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-boolean v4, p0, Landroid/app/Activity;->mRestoredFromBundle:Z

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityClient;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 2895
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->notifyStartupCompleted()V
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_42

    .line 2897
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2898
    goto :goto_47

    .line 2897
    :catchall_42
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2898
    throw v2

    .line 2900
    :cond_47
    :goto_47
    return-void
.end method

.method public whitelist requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .registers 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 8439
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    .line 8440
    .local v0, "dragAndDropPermissions":Landroid/view/DragAndDropPermissions;
    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/DragAndDropPermissions;->take(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8441
    return-object v0

    .line 8443
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist requestPermissions([Ljava/lang/String;I)V
    .registers 8
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 5547
    if-ltz p2, :cond_68

    .line 5551
    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v0, :cond_16

    .line 5552
    const-string v0, "Activity"

    const-string v1, "Can request only one set of permissions at a time"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5554
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    new-array v0, v0, [I

    invoke-virtual {p0, p2, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 5555
    return-void

    .line 5558
    :cond_16
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 5559
    array-length v0, p1

    .line 5560
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    if-ge v1, v0, :cond_56

    .line 5561
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 5560
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 5562
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot request renounced permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5568
    .end local v0    # "permissionCount":I
    .end local v1    # "i":I
    :cond_56
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5569
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const-string v2, "@android:requestPermissions:"

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5570
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 5571
    return-void

    .line 5548
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requestCode should be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist requestShowKeyboardShortcuts()V
    .registers 4

    .line 2683
    nop

    .line 2684
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2683
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2686
    .local v0, "sysuiComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2687
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2688
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2689
    return-void
.end method

.method public whitelist requestVisibleBehind(Z)Z
    .registers 3
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7986
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist requestWindowFeature(I)Z
    .registers 3
    .param p1, "featureId"    # I

    .line 5350
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .registers 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3632
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3633
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_7

    .line 3636
    return-object v0

    .line 3634
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;
    .registers 7

    .line 3370
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 3371
    .local v0, "activity":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v1

    .line 3372
    .local v1, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->retainNestedNonConfig()Landroid/app/FragmentManagerNonConfig;

    move-result-object v2

    .line 3378
    .local v2, "fragments":Landroid/app/FragmentManagerNonConfig;
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 3379
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 3380
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v3

    .line 3382
    .local v3, "loaders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-nez v0, :cond_2d

    if-nez v1, :cond_2d

    if-nez v2, :cond_2d

    if-nez v3, :cond_2d

    iget-object v4, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-nez v4, :cond_2d

    .line 3384
    const/4 v4, 0x0

    return-object v4

    .line 3387
    :cond_2d
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 3388
    .local v4, "nci":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 3389
    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 3390
    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    .line 3391
    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    .line 3392
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v5, :cond_45

    .line 3393
    invoke-virtual {v5}, Landroid/app/VoiceInteractor;->retainInstance()V

    .line 3394
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    .line 3396
    :cond_45
    return-object v4
.end method

.method public final whitelist runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 7555
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_e

    .line 7556
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 7558
    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 7560
    :goto_11
    return-void
.end method

.method public whitelist setActionBar(Landroid/widget/Toolbar;)V
    .registers 6
    .param p1, "toolbar"    # Landroid/widget/Toolbar;

    .line 3666
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3667
    .local v0, "ab":Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/android/internal/app/WindowDecorActionBar;

    if-nez v1, :cond_32

    .line 3675
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 3678
    if-eqz v0, :cond_10

    .line 3679
    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    .line 3682
    :cond_10
    if-eqz p1, :cond_27

    .line 3683
    new-instance v1, Lcom/android/internal/app/ToolbarActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 3684
    .local v1, "tbab":Lcom/android/internal/app/ToolbarActionBar;
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3685
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 3686
    .end local v1    # "tbab":Lcom/android/internal/app/ToolbarActionBar;
    goto :goto_2e

    .line 3687
    :cond_27
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3689
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 3692
    :goto_2e
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3693
    return-void

    .line 3668
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 3
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .line 3799
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    .line 3800
    return-void
.end method

.method public whitelist setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .line 3727
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 3728
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3729
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 3747
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 3748
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3749
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3763
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3764
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3765
    return-void
.end method

.method public final whitelist setDefaultKeyMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 3898
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 3902
    packed-switch p1, :pswitch_data_1c

    .line 3914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3910
    :pswitch_b
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 3911
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3912
    goto :goto_1b

    .line 3905
    :pswitch_17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 3906
    nop

    .line 3916
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_b
        :pswitch_17
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public setDisablePreviewScreenshots(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .line 9150
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRecentsScreenshotEnabled(Z)V

    .line 9151
    return-void
.end method

.method public whitelist setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 8381
    if-nez p1, :cond_4

    .line 8382
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 8384
    :cond_4
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 8385
    return-void
.end method

.method public whitelist setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 8397
    if-nez p1, :cond_4

    .line 8398
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 8400
    :cond_4
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 8401
    return-void
.end method

.method public final whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 5374
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 5375
    return-void
.end method

.method public final whitelist setFeatureDrawableAlpha(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 5382
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 5383
    return-void
.end method

.method public final whitelist setFeatureDrawableResource(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 5358
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 5359
    return-void
.end method

.method public final whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 5366
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 5367
    return-void
.end method

.method public whitelist setFinishOnTouchOutside(Z)V
    .registers 3
    .param p1, "finish"    # Z

    .line 3819
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 3820
    return-void
.end method

.method public whitelist setImmersive(Z)V
    .registers 4
    .param p1, "i"    # Z

    .line 8089
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setImmersive(Landroid/os/IBinder;Z)V

    .line 8090
    return-void
.end method

.method public whitelist setInheritShowWhenLocked(Z)V
    .registers 4
    .param p1, "inheritShowWhenLocked"    # Z

    .line 9208
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 9209
    return-void
.end method

.method public whitelist setIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "newIntent"    # Landroid/content/Intent;

    .line 1143
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 1144
    return-void
.end method

.method public whitelist setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "locusId"    # Landroid/content/LocusId;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 1173
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IActivityManager;->setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1176
    goto :goto_10

    .line 1174
    :catch_c
    move-exception v0

    .line 1175
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1178
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_10
    if-eqz p1, :cond_15

    .line 1179
    invoke-direct {p0, p1, p2}, Landroid/app/Activity;->setLocusContextToContentCapture(Landroid/content/LocusId;Landroid/os/Bundle;)V

    .line 1181
    :cond_15
    return-void
.end method

.method public final whitelist setMediaController(Landroid/media/session/MediaController;)V
    .registers 3
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 7533
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    .line 7534
    return-void
.end method

.method public blacklist setOrientationOptions(I)V
    .registers 4
    .param p1, "options"    # I

    .line 7912
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityTaskManager;->setOrientationOptions(Landroid/os/IBinder;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 7915
    goto :goto_e

    .line 7913
    :catch_a
    move-exception v0

    .line 7914
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7916
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public greylist-max-o setOverlayWithDecorCaptionEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 9088
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setOverlayWithDecorCaptionEnabled(Z)V

    .line 9089
    return-void
.end method

.method final greylist-max-p setParent(Landroid/app/Activity;)V
    .registers 2
    .param p1, "parent"    # Landroid/app/Activity;

    .line 8450
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 8451
    return-void
.end method

.method public greylist setPersistent(Z)V
    .registers 2
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3594
    return-void
.end method

.method public whitelist setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .registers 4
    .param p1, "params"    # Landroid/app/PictureInPictureParams;

    .line 3079
    invoke-direct {p0}, Landroid/app/Activity;->deviceSupportsPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3080
    return-void

    .line 3082
    :cond_7
    if-eqz p1, :cond_13

    .line 3085
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 3086
    return-void

    .line 3083
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-null picture-in-picture params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist setProgress(I)V
    .registers 5
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7459
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit8 v1, p1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7460
    return-void
.end method

.method public final whitelist setProgressBarIndeterminate(Z)V
    .registers 5
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7441
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7442
    if-eqz p1, :cond_8

    const/4 v1, -0x3

    goto :goto_9

    .line 7443
    :cond_8
    const/4 v1, -0x4

    .line 7441
    :goto_9
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7444
    return-void
.end method

.method public final whitelist setProgressBarIndeterminateVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7425
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7426
    if-eqz p1, :cond_8

    const/4 v1, -0x1

    goto :goto_9

    :cond_8
    const/4 v1, -0x2

    .line 7425
    :goto_9
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7427
    return-void
.end method

.method public final whitelist setProgressBarVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7410
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_8

    const/4 v1, -0x1

    goto :goto_9

    .line 7411
    :cond_8
    const/4 v1, -0x2

    .line 7410
    :goto_9
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7412
    return-void
.end method

.method public whitelist setRecentsScreenshotEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 9172
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V

    .line 9173
    return-void
.end method

.method public whitelist setRequestedOrientation(I)V
    .registers 4
    .param p1, "requestedOrientation"    # I

    .line 7145
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_e

    .line 7146
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setRequestedOrientation(Landroid/os/IBinder;I)V

    goto :goto_11

    .line 7148
    :cond_e
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7151
    :goto_11
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_18

    .line 7152
    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->setRequestedOrientation(Landroid/app/Activity;I)V

    .line 7155
    :cond_18
    return-void
.end method

.method public final whitelist setResult(I)V
    .registers 3
    .param p1, "resultCode"    # I

    .line 6653
    monitor-enter p0

    .line 6654
    :try_start_1
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 6655
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 6656
    monitor-exit p0

    .line 6657
    return-void

    .line 6656
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public final whitelist setResult(ILandroid/content/Intent;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 6682
    monitor-enter p0

    .line 6683
    :try_start_1
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 6684
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 6685
    monitor-exit p0

    .line 6686
    return-void

    .line 6685
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final whitelist setSecondaryProgress(I)V
    .registers 5
    .param p1, "secondaryProgress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7478
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit16 v1, p1, 0x4e20

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7480
    return-void
.end method

.method public whitelist setShouldDockBigOverlays(Z)V
    .registers 4
    .param p1, "shouldDockBigOverlays"    # Z

    .line 3142
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V

    .line 3143
    iput-boolean p1, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    .line 3144
    return-void
.end method

.method public whitelist setShowWhenLocked(Z)V
    .registers 4
    .param p1, "showWhenLocked"    # Z

    .line 9189
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 9190
    return-void
.end method

.method public blacklist setSupportSmartOrient(Z)V
    .registers 3
    .param p1, "isSupportSmartOrient"    # Z

    .line 7920
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->setSupportSmartOrient(Z)V

    .line 7921
    return-void
.end method

.method public whitelist setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 6
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 7386
    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eq v0, p1, :cond_29

    .line 7387
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V

    .line 7389
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 7390
    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v0

    .line 7391
    .local v0, "size":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7393
    .local v1, "icon":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 7396
    .end local v0    # "size":I
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_29
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 7397
    return-void
.end method

.method public whitelist setTheme(I)V
    .registers 3
    .param p1, "resid"    # I

    .line 5413
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 5414
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTheme(I)V

    .line 5415
    return-void
.end method

.method public whitelist setTitle(I)V
    .registers 3
    .param p1, "titleId"    # I

    .line 7328
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 7329
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 7313
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 7314
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 7316
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_e

    .line 7317
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 7319
    :cond_e
    return-void
.end method

.method public whitelist setTitleColor(I)V
    .registers 3
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7343
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 7344
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 7345
    return-void
.end method

.method public whitelist setTranslucent(Z)Z
    .registers 3
    .param p1, "translucent"    # Z

    .line 7805
    if-eqz p1, :cond_8

    .line 7806
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 7808
    :cond_8
    invoke-direct {p0}, Landroid/app/Activity;->convertFromTranslucentInternal()Z

    move-result v0

    return v0
.end method

.method public whitelist setTurnScreenOn(Z)V
    .registers 4
    .param p1, "turnScreenOn"    # Z

    .line 9231
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 9232
    return-void
.end method

.method public whitelist setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 6810
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eq v0, p1, :cond_16

    .line 6811
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 6812
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_16

    .line 6813
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    goto :goto_16

    .line 6814
    :cond_10
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6817
    :cond_16
    :goto_16
    return-void
.end method

.method greylist-max-o setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 7
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2195
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_1f

    .line 2196
    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    move-result-object v0

    .line 2197
    .local v0, "requests":[Landroid/app/VoiceInteractor$Request;
    if-eqz v0, :cond_1f

    .line 2198
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    .line 2199
    .local v4, "activeRequest":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->cancel()V

    .line 2200
    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 2198
    .end local v4    # "activeRequest":Landroid/app/VoiceInteractor$Request;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2204
    .end local v0    # "requests":[Landroid/app/VoiceInteractor$Request;
    :cond_1f
    if-nez p1, :cond_25

    .line 2205
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_30

    .line 2207
    :cond_25
    new-instance v0, Landroid/app/VoiceInteractor;

    .line 2208
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p0, p0, v1}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 2210
    :goto_30
    return-void
.end method

.method public final whitelist setVolumeControlStream(I)V
    .registers 3
    .param p1, "streamType"    # I

    .line 7499
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 7500
    return-void
.end method

.method public whitelist setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "requestedComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 8148
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/ActivityClient;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_d

    .line 8151
    return-void

    .line 8149
    :cond_d
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setWebView(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLoad"    # Z

    .line 9462
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    .line 9463
    invoke-interface {v0, p1, p2}, Landroid/app/ActivityStub;->setWebView(Landroid/view/View;Z)V

    .line 9465
    :cond_7
    return-void
.end method

.method public whitelist shouldDockBigOverlays()Z
    .registers 2

    .line 3156
    iget-boolean v0, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    return v0
.end method

.method public whitelist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 5606
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist shouldUpRecreateTask(Landroid/content/Intent;)Z
    .registers 9
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 8255
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8256
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 8257
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_10

    .line 8258
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 8260
    :cond_10
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 8261
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v4, :cond_19

    .line 8262
    return v0

    .line 8264
    :cond_19
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityClient;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_25} :catch_26

    return v0

    .line 8265
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    :catch_26
    move-exception v1

    .line 8266
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public whitelist showAssist(Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .line 2741
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final whitelist showDialog(I)V
    .registers 3
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5089
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 5090
    return-void
.end method

.method public final whitelist showDialog(ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5124
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 5125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 5127
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5128
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_31

    .line 5129
    new-instance v1, Landroid/app/Activity$ManagedDialog;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog-IA;)V

    move-object v0, v1

    .line 5130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 5131
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_2c

    .line 5132
    const/4 v1, 0x0

    return v1

    .line 5134
    :cond_2c
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5137
    :cond_31
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 5138
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 5139
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 5140
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist showLockTaskEscapeMessage()V
    .registers 3

    .line 9064
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 9065
    return-void
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 8163
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 8177
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActivities([Landroid/content/Intent;)V
    .registers 3
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 6157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6158
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 6184
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6186
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6108
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 6134
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/view/autofill/AutofillClientController;->onStartActivity(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 6135
    const/4 v0, -0x1

    if-eqz p2, :cond_10

    .line 6136
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_13

    .line 6140
    :cond_10
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6142
    :goto_13
    return-void
.end method

.method public greylist-max-o startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .line 5942
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V

    .line 5943
    return-void
.end method

.method public blacklist startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I
    .param p5, "requestCode"    # I

    .line 5953
    move-object v10, p0

    iget-object v0, v10, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_48

    .line 5956
    move-object v0, p2

    invoke-direct {p0, p2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 5958
    .end local p2    # "options":Landroid/os/Bundle;
    .local v11, "options":Landroid/os/Bundle;
    iget-object v0, v10, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_16

    move-object v12, p1

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5959
    return-void

    .line 5958
    :cond_16
    move-object v12, p1

    .line 5962
    :cond_17
    iget-object v0, v10, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, v10, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5964
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, v10, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5963
    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move/from16 v6, p5

    move-object v7, v11

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 5966
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_44

    .line 5967
    iget-object v1, v10, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, v10, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, v10, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5968
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    .line 5967
    move/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5970
    :cond_44
    invoke-direct {p0, v11}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5971
    return-void

    .line 5954
    .end local v0    # "ar":Landroid/app/Instrumentation$ActivityResult;
    .end local v11    # "options":Landroid/os/Bundle;
    .restart local p2    # "options":Landroid/os/Bundle;
    :cond_48
    move-object v12, p1

    move-object v0, p2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t be called from a child"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 5904
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_40

    .line 5908
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_f

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5909
    return-void

    .line 5912
    :cond_f
    invoke-direct {p0, p2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 5913
    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5915
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v7, -0x1

    .line 5914
    move-object v2, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 5917
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_3c

    .line 5918
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v4, -0x1

    .line 5919
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    .line 5920
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    .line 5918
    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5922
    :cond_3c
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5923
    return-void

    .line 5905
    .end local v0    # "ar":Landroid/app/Instrumentation$ActivityResult;
    :cond_40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 5884
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5885
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 5622
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5623
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 5662
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5663
    return-void

    .line 5666
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_43

    .line 5667
    invoke-direct {p0, p3}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 5668
    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5670
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5669
    move-object v2, p0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 5672
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_3a

    .line 5673
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5674
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    .line 5675
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    .line 5673
    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5677
    :cond_3a
    if-ltz p2, :cond_3f

    .line 5685
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 5688
    :cond_3f
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5690
    .end local v0    # "ar":Landroid/app/Instrumentation$ActivityResult;
    goto :goto_4c

    .line 5691
    :cond_43
    if-eqz p3, :cond_49

    .line 5692
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_4c

    .line 5696
    :cond_49
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 5699
    :goto_4c
    return-void
.end method

.method public greylist-max-r startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 15
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 6516
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0, p2}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6517
    return-void

    .line 6520
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 6521
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_16

    .line 6522
    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6524
    :cond_16
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    .line 6525
    iget-object v2, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6527
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6526
    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    .line 6529
    .local v1, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v1, :cond_40

    .line 6530
    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6532
    invoke-virtual {v1}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v6

    invoke-virtual {v1}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v7

    .line 6530
    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6534
    :cond_40
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6535
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5810
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5811
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5772
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5773
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5849
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_44

    .line 5853
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_f

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5854
    return-void

    .line 5857
    :cond_f
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    .line 5858
    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5859
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5858
    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 5861
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_3b

    .line 5862
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5863
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    .line 5862
    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5865
    :cond_3b
    if-ltz p3, :cond_40

    .line 5873
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 5876
    :cond_40
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5877
    return-void

    .line 5850
    .end local v0    # "ar":Landroid/app/Instrumentation$ActivityResult;
    :cond_44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6406
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6407
    return-void
.end method

.method public whitelist startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 14
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6434
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0, p2}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6435
    return-void

    .line 6438
    :cond_b
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    .line 6439
    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6441
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6440
    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 6443
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_36

    .line 6444
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6446
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    .line 6444
    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6448
    :cond_36
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6449
    return-void
.end method

.method public whitelist startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6470
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6471
    return-void
.end method

.method public whitelist startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6499
    iget-object v0, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6500
    return-void
.end method

.method public whitelist startActivityIfNeeded(Landroid/content/Intent;I)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 6261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 6296
    move-object/from16 v1, p0

    move-object/from16 v14, p1

    iget-object v0, v1, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_54

    .line 6297
    const/4 v15, 0x1

    .line 6299
    .local v15, "result":I
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 6300
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_14

    .line 6301
    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6303
    :cond_14
    invoke-virtual {v14, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 6304
    invoke-virtual {v14, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6305
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6306
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 6307
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 6308
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 6306
    move-object/from16 v6, p1

    move/from16 v10, p2

    move-object/from16 v13, p3

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityTaskManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v2
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_44} :catch_46

    move v15, v2

    .line 6312
    .end local v0    # "referrer":Landroid/net/Uri;
    goto :goto_47

    .line 6310
    :catch_46
    move-exception v0

    .line 6314
    :goto_47
    invoke-static {v15, v14}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 6316
    const/4 v0, 0x1

    if-ltz p2, :cond_4f

    .line 6324
    iput-boolean v0, v1, Landroid/app/Activity;->mStartedActivity:Z

    .line 6326
    :cond_4f
    if-eq v15, v0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    return v0

    .line 6329
    .end local v15    # "result":I
    :cond_54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "startActivityIfNeeded can only be called from a top-level activity"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 13
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6205
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 6207
    return-void
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6233
    if-eqz p6, :cond_f

    .line 6234
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_19

    .line 6239
    :cond_f
    const/4 v5, -0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 6242
    :goto_19
    return-void
.end method

.method public whitelist startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 15
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 5991
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 5993
    return-void
.end method

.method public whitelist startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6035
    move-object v9, p0

    iget-object v0, v9, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_13

    .line 6036
    iget-object v2, v9, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    goto :goto_2e

    .line 6038
    :cond_13
    if-eqz p7, :cond_23

    .line 6039
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_2e

    .line 6044
    :cond_23
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 6047
    :goto_2e
    return-void
.end method

.method public blacklist startIntentSenderForResult(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6003
    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 6005
    return-void
.end method

.method public greylist-max-o startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 24
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v14, p4

    .line 6057
    move-object/from16 v2, p7

    :try_start_6
    invoke-direct {v1, v2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_62

    move-object v15, v0

    .line 6058
    .end local p7    # "options":Landroid/os/Bundle;
    .local v15, "options":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 6059
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz v14, :cond_1d

    .line 6060
    :try_start_e
    invoke-virtual {v14, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 6061
    invoke-virtual {v14, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6062
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 6064
    :cond_1d
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6065
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    .line 6066
    const/4 v13, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    goto :goto_30

    :cond_2f
    move-object v4, v13

    .line 6067
    :goto_30
    if-eqz p1, :cond_37

    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentSender;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v5

    goto :goto_38

    :cond_37
    move-object v5, v13

    :goto_38
    iget-object v8, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6065
    move-object/from16 v6, p4

    move-object v7, v0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 p7, v0

    move-object v0, v13

    .end local v0    # "resolvedType":Ljava/lang/String;
    .local p7, "resolvedType":Ljava/lang/String;
    move-object v13, v15

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityTaskManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v2

    .line 6070
    .local v2, "result":I
    const/16 v3, -0x60

    if-eq v2, v3, :cond_5a

    .line 6073
    invoke-static {v2, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 6075
    if-eqz v15, :cond_59

    .line 6078
    invoke-direct {v1, v15}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6081
    .end local v2    # "result":I
    .end local p7    # "resolvedType":Ljava/lang/String;
    :cond_59
    goto :goto_64

    .line 6071
    .restart local v2    # "result":I
    .restart local p7    # "resolvedType":Ljava/lang/String;
    :cond_5a
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    .end local v15    # "options":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/Activity;
    .end local p1    # "intent":Landroid/content/IntentSender;
    .end local p2    # "who":Ljava/lang/String;
    .end local p3    # "requestCode":I
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .end local p5    # "flagsMask":I
    .end local p6    # "flagsValues":I
    throw v0
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_60} :catch_60

    .line 6080
    .end local v2    # "result":I
    .end local p7    # "resolvedType":Ljava/lang/String;
    .restart local v15    # "options":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/Activity;
    .restart local p1    # "intent":Landroid/content/IntentSender;
    .restart local p2    # "who":Ljava/lang/String;
    .restart local p3    # "requestCode":I
    .restart local p4    # "fillInIntent":Landroid/content/Intent;
    .restart local p5    # "flagsMask":I
    .restart local p6    # "flagsValues":I
    :catch_60
    move-exception v0

    goto :goto_64

    .end local v15    # "options":Landroid/os/Bundle;
    .local p7, "options":Landroid/os/Bundle;
    :catch_62
    move-exception v0

    move-object v15, v2

    .line 6082
    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v15    # "options":Landroid/os/Bundle;
    :goto_64
    if-ltz p3, :cond_69

    .line 6090
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/Activity;->mStartedActivity:Z

    .line 6092
    :cond_69
    return-void
.end method

.method public whitelist startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 17
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6556
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 6558
    return-void
.end method

.method public whitelist startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6574
    move-object v0, p1

    iget-object v3, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 6576
    return-void
.end method

.method public whitelist startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "privateOptions"    # Landroid/os/Bundle;

    .line 2280
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 2281
    return-void
.end method

.method public whitelist startLockTask()V
    .registers 3

    .line 9035
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 9036
    return-void
.end method

.method public whitelist startManagingCursor(Landroid/database/Cursor;)V
    .registers 5
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3550
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3551
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Activity$ManagedCursor;

    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3552
    monitor-exit v0

    .line 3553
    return-void

    .line 3552
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist startNextMatchingActivity(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6348
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 6372
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_18

    .line 6374
    :try_start_4
    invoke-virtual {p1, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 6375
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6376
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6377
    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityTaskManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 6376
    return v0

    .line 6378
    :catch_15
    move-exception v0

    .line 6381
    const/4 v0, 0x0

    return v0

    .line 6384
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "startNextMatchingActivity can only be called from a top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startPostponedEnterTransition()V
    .registers 2

    .line 8428
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    .line 8429
    return-void
.end method

.method public whitelist startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 11
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .line 5307
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5308
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 5310
    return-void
.end method

.method public whitelist stopLocalVoiceInteraction()V
    .registers 3

    .line 2306
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 2307
    return-void
.end method

.method public whitelist stopLockTask()V
    .registers 3

    .line 9055
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 9056
    return-void
.end method

.method public whitelist stopManagingCursor(Landroid/database/Cursor;)V
    .registers 7
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3574
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3575
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3576
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_23

    .line 3577
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity$ManagedCursor;

    .line 3578
    .local v3, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v4

    if-ne v4, p1, :cond_20

    .line 3579
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3580
    goto :goto_23

    .line 3576
    .end local v3    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3583
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_23
    :goto_23
    monitor-exit v0

    .line 3584
    return-void

    .line 3583
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist takeKeyEvents(Z)V
    .registers 3
    .param p1, "get"    # Z

    .line 5335
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 5336
    return-void
.end method

.method public whitelist triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    .line 5323
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5324
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 5325
    return-void
.end method

.method public whitelist unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1430
    iget-object v0, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1431
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1432
    monitor-exit v0

    .line 1433
    return-void

    .line 1432
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 1450
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_8

    .line 1451
    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_b

    .line 1453
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1455
    :goto_b
    return-void
.end method

.method public whitelist unregisterForContextMenu(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 4933
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 4934
    return-void
.end method

.method public blacklist unregisterRemoteAnimations()V
    .registers 3

    .line 9253
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->unregisterRemoteAnimations(Landroid/os/IBinder;)V

    .line 9254
    return-void
.end method

.method public blacklist updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 14
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p5, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 9263
    .local p4, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-nez v0, :cond_f

    .line 9264
    new-instance v0, Landroid/view/translation/UiTranslationController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/translation/UiTranslationController;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    .line 9266
    :cond_f
    iget-object v2, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/view/translation/UiTranslationController;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 9268
    return-void
.end method
