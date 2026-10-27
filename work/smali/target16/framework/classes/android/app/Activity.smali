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
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$ManagedDialog;,
        Landroid/app/Activity$TranslucentConversionListener;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$RequestFinishCallback;,
        Landroid/app/Activity$ScreenCaptureCallback;,
        Landroid/app/Activity$DefaultKeyMode;,
        Landroid/app/Activity$ContentCaptureNotificationType;,
        Landroid/app/Activity$OverrideTransition;,
        Landroid/app/Activity$FullscreenModeRequest;
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

.field public static final whitelist FULLSCREEN_MODE_REQUEST_ENTER:I = 0x1

.field public static final whitelist FULLSCREEN_MODE_REQUEST_EXIT:I = 0x0

.field private static final blacklist HAS_CURRENT_PERMISSIONS_REQUEST_KEY:Ljava/lang/String; = "android:hasCurrentPermissionsRequest"

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

.field public static final whitelist OVERRIDE_TRANSITION_CLOSE:I = 0x1

.field public static final whitelist OVERRIDE_TRANSITION_OPEN:I = 0x0

.field private static final greylist-max-o REQUEST_PERMISSIONS_WHO_PREFIX:Ljava/lang/String; = "@android:requestPermissions:"

.field public static final whitelist RESULT_CANCELED:I = 0x0

.field public static final whitelist RESULT_FIRST_USER:I = 0x1

.field public static final whitelist RESULT_OK:I = -0x1

.field private static final greylist-max-o SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final greylist-max-o SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final greylist-max-o SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final greylist-max-o SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final blacklist SLOW_OP_DURATION_MS:J = 0x1f4L

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

.field final greylist mActivityTransitionState:Landroid/app/ActivityTransitionState;

.field private greylist mApplication:Landroid/app/Application;

.field private blacklist mAssistToken:Landroid/os/IBinder;

.field private blacklist mAutofillClientController:Landroid/view/autofill/AutofillClientController;

.field private blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field greylist mCalled:Z

.field private blacklist mCaller:Landroid/app/ComponentCaller;

.field private greylist-max-o mCanEnterPictureInPicture:Z

.field private greylist-max-o mChangeCanvasToTranslucent:Z

.field greylist-max-o mChangingConfigurations:Z

.field private greylist mComponent:Landroid/content/ComponentName;

.field greylist mConfigChangeFlags:I

.field private blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private blacklist mCurrentCaller:Landroid/app/ComponentCaller;

.field greylist mCurrentConfig:Landroid/content/res/Configuration;

.field greylist-max-o mDecor:Landroid/view/View;

.field private blacklist mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

.field private greylist-max-o mDefaultKeyMode:I

.field private greylist-max-o mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private greylist mDestroyed:Z

.field private greylist-max-o mDoReportFullyDrawn:Z

.field private blacklist mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

.field greylist mEmbeddedID:Ljava/lang/String;

.field private greylist-max-o mEnableDefaultActionBarUp:Z

.field greylist-max-o mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field greylist-max-o mExitTransitionListener:Landroid/app/SharedElementCallback;

.field greylist mFinished:Z

.field final greylist mFragments:Landroid/app/FragmentController;

.field final greylist mHandler:Landroid/os/Handler;

.field private greylist-max-o mHasCurrentPermissionsRequest:Z

.field private greylist mIdent:I

.field private blacklist mInitialCaller:Landroid/app/ComponentCaller;

.field private final greylist-max-o mInstanceTracker:Ljava/lang/Object;

.field private greylist mInstrumentation:Landroid/app/Instrumentation;

.field greylist mIntent:Landroid/content/Intent;

.field private blacklist mIsInMultiWindowMode:Z

.field blacklist mIsInPictureInPictureMode:Z

.field private blacklist mJankTracker:Landroid/app/jank/JankTracker;

.field greylist mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field private blacklist mLastRequestedOrientation:I

.field private blacklist mLastTaskDescriptionHashCode:I

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

.field private blacklist mObserverBackCallback:Landroid/window/ObserverOnBackAnimationCallback;

.field greylist-max-q mParent:Landroid/app/Activity;

.field greylist mReferrer:Ljava/lang/String;

.field private greylist-max-o mRestoredFromBundle:Z

.field greylist mResultCode:I

.field greylist mResultData:Landroid/content/Intent;

.field greylist mResumed:Z

.field blacklist mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private blacklist mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

.field private greylist-max-o mSearchEvent:Landroid/view/SearchEvent;

.field private greylist-max-o mSearchManager:Landroid/app/SearchManager;

.field private blacklist mShareableActivityToken:Landroid/os/IBinder;

.field private blacklist mShouldDockBigOverlays:Z

.field private blacklist mSplashScreen:Landroid/window/SplashScreen;

.field greylist-max-o mStartedActivity:Z

.field greylist mStopped:Z

.field private final greylist-max-o mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private greylist mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleColor:I

.field private greylist-max-o mTitleReady:Z

.field private greylist mToken:Landroid/os/IBinder;

.field private greylist-max-o mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

.field private greylist-max-o mUiThread:Ljava/lang/Thread;

.field private blacklist mUiTranslationController:Landroid/view/translation/UiTranslationController;

.field greylist-max-p mVisibleFromClient:Z

.field greylist-max-o mVisibleFromServer:Z

.field private blacklist mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field greylist-max-p mVoiceInteractor:Landroid/app/VoiceInteractor;

.field private greylist mWindow:Landroid/view/Window;

.field greylist mWindowAdded:Z

.field private final blacklist mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private greylist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$R5FHDgJhXFcjqP_CV7tgAEyaJuA(Landroid/app/Activity;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/Activity;->lambda$autofillViewIfAvailable$1(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RUeDzxpsmi1CUgbJ_0lcvqnOYKk(Landroid/app/Activity;I[Ljava/lang/String;[II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Activity;->lambda$requestPermissions$0(I[Ljava/lang/String;[II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fMMzRqFB89XgwJjEXdqIB9hd6X4(Landroid/app/Activity;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;->onBackInvoked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJankTracker(Landroid/app/Activity;)Landroid/app/jank/JankTracker;
    .registers 1

    iget-object p0, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    return-object p0
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
    .registers 1

    .line 1022
    const v0, 0x101009c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 774
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 923
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 925
    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 928
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 936
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 954
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 955
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 957
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 958
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 960
    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 968
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 971
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 973
    new-instance v0, Landroid/app/Activity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/app/Activity$HostCallbacks;-><init>(Landroid/app/Activity;)V

    .line 974
    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    .line 997
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 1000
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 1009
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 1010
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 1012
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 1013
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 1015
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1019
    const/4 v0, -0x2

    iput v0, p0, Landroid/app/Activity;->mLastRequestedOrientation:I

    .line 1024
    nop

    .line 1025
    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    .line 1029
    new-instance v0, Landroid/app/ActivityTransitionState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1031
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 1032
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 1094
    new-instance v0, Landroid/app/Activity$1;

    invoke-direct {v0, p0}, Landroid/app/Activity$1;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-void
.end method

.method private greylist-max-o cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .registers 3

    .line 6096
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 6097
    :goto_c
    if-eqz v0, :cond_11

    .line 6098
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 6100
    :cond_11
    if-eqz p1, :cond_18

    .line 6101
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6103
    :cond_18
    return-void
.end method

.method private blacklist collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .registers 3

    .line 1840
    nop

    .line 1841
    iget-object v0, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1842
    :try_start_4
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 1843
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_14

    .line 1842
    :cond_13
    const/4 v1, 0x0

    .line 1845
    :goto_14
    monitor-exit v0

    .line 1846
    return-object v1

    .line 1845
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private blacklist convertFromTranslucentInternal()Z
    .registers 4

    .line 8581
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 8582
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 8583
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 8584
    return v2

    .line 8586
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    .line 2122
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 2123
    if-nez p1, :cond_c

    .line 2124
    const/4 p1, 0x0

    return-object p1

    .line 2126
    :cond_c
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 2127
    return-object p1
.end method

.method private greylist-max-o deviceSupportsPictureInPictureMode()Z
    .registers 3

    .line 3299
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist dispatchActivityConfigurationChanged()V
    .registers 4

    .line 1814
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1815
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 1817
    :cond_d
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1818
    if-eqz v0, :cond_21

    .line 1819
    const/4 v1, 0x0

    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 1820
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1821
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 1819
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1824
    :cond_21
    return-void
.end method

.method private blacklist dispatchActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    .line 1592
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1593
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1594
    if-eqz v0, :cond_1b

    .line 1595
    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1596
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1595
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1600
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityDestroyed()V
    .registers 4

    .line 1792
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1793
    if-eqz v0, :cond_15

    .line 1794
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    .line 1795
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 1794
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1798
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    .line 1799
    return-void
.end method

.method private blacklist dispatchActivityPaused()V
    .registers 4

    .line 1697
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1698
    if-eqz v0, :cond_15

    .line 1699
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    .line 1700
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 1699
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1703
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    .line 1704
    return-void
.end method

.method private blacklist dispatchActivityPostCreated(Landroid/os/Bundle;)V
    .registers 5

    .line 1603
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1604
    if-eqz v0, :cond_14

    .line 1605
    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 1606
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1605
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1610
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1611
    return-void
.end method

.method private blacklist dispatchActivityPostDestroyed()V
    .registers 4

    .line 1802
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1803
    if-eqz v0, :cond_15

    .line 1804
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    .line 1805
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1806
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostDestroyed(Landroid/app/Activity;)V

    .line 1804
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1809
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPostDestroyed(Landroid/app/Activity;)V

    .line 1810
    return-void
.end method

.method private blacklist dispatchActivityPostPaused()V
    .registers 4

    .line 1707
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1708
    if-eqz v0, :cond_15

    .line 1709
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    .line 1710
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostPaused(Landroid/app/Activity;)V

    .line 1709
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1713
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPostPaused(Landroid/app/Activity;)V

    .line 1714
    return-void
.end method

.method private blacklist dispatchActivityPostResumed()V
    .registers 10

    .line 1665
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1666
    const-string v1, "Activity"

    const-wide/16 v2, 0x1f4

    if-eqz v0, :cond_47

    .line 1667
    const/4 v4, 0x0

    :goto_b
    array-length v5, v0

    if-ge v4, v5, :cond_47

    .line 1668
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1669
    aget-object v7, v0, v4

    check-cast v7, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v7, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostResumed(Landroid/app/Activity;)V

    .line 1670
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 1671
    cmp-long v5, v7, v2

    if-lez v5, :cond_44

    .line 1672
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Slow operation dispatchActivityPostResumed, duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1677
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1678
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPostResumed(Landroid/app/Activity;)V

    .line 1679
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 1680
    cmp-long v0, v6, v2

    if-lez v0, :cond_71

    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slow operation Application#dispatchActivityPostResumed, duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_71
    return-void
.end method

.method private blacklist dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1770
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1771
    if-eqz v0, :cond_15

    .line 1772
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    .line 1773
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1774
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1772
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1777
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1778
    return-void
.end method

.method private blacklist dispatchActivityPostStarted()V
    .registers 4

    .line 1634
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1635
    if-eqz v0, :cond_14

    .line 1636
    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 1637
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1638
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 1636
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1641
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPostStarted(Landroid/app/Activity;)V

    .line 1642
    return-void
.end method

.method private blacklist dispatchActivityPostStopped()V
    .registers 4

    .line 1737
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1738
    if-eqz v0, :cond_15

    .line 1739
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    .line 1740
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1741
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStopped(Landroid/app/Activity;)V

    .line 1739
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1744
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPostStopped(Landroid/app/Activity;)V

    .line 1745
    return-void
.end method

.method private blacklist dispatchActivityPreCreated(Landroid/os/Bundle;)V
    .registers 5

    .line 1581
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1582
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1583
    if-eqz v0, :cond_1b

    .line 1584
    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1585
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1584
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1589
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityPreDestroyed()V
    .registers 4

    .line 1781
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreDestroyed(Landroid/app/Activity;)V

    .line 1782
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1783
    if-eqz v0, :cond_1c

    .line 1784
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_1c

    .line 1785
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1786
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreDestroyed(Landroid/app/Activity;)V

    .line 1784
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1789
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityPrePaused()V
    .registers 4

    .line 1687
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPrePaused(Landroid/app/Activity;)V

    .line 1688
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1689
    if-eqz v0, :cond_1c

    .line 1690
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_1c

    .line 1691
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPrePaused(Landroid/app/Activity;)V

    .line 1690
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1694
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityPreResumed()V
    .registers 4

    .line 1645
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreResumed(Landroid/app/Activity;)V

    .line 1646
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1647
    if-eqz v0, :cond_1b

    .line 1648
    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1649
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreResumed(Landroid/app/Activity;)V

    .line 1648
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1652
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1748
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1749
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1750
    if-eqz v0, :cond_1c

    .line 1751
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_1c

    .line 1752
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1753
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1751
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1756
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityPreStarted()V
    .registers 4

    .line 1614
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreStarted(Landroid/app/Activity;)V

    .line 1615
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1616
    if-eqz v0, :cond_1b

    .line 1617
    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1618
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 1617
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1621
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityPreStopped()V
    .registers 4

    .line 1717
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreStopped(Landroid/app/Activity;)V

    .line 1718
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1719
    if-eqz v0, :cond_1c

    .line 1720
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_1c

    .line 1721
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStopped(Landroid/app/Activity;)V

    .line 1720
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1724
    :cond_1c
    return-void
.end method

.method private blacklist dispatchActivityRestarted()V
    .registers 4

    .line 1827
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->onRestartActivityLifecycleCallback()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1828
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityRestarted(Landroid/app/Activity;)V

    .line 1829
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1830
    if-eqz v0, :cond_22

    .line 1831
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-ltz v1, :cond_22

    .line 1832
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1833
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityRestarted(Landroid/app/Activity;)V

    .line 1831
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1837
    :cond_22
    return-void
.end method

.method private blacklist dispatchActivityResumed()V
    .registers 4

    .line 1655
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    .line 1656
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1657
    if-eqz v0, :cond_1b

    .line 1658
    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1659
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 1658
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1662
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivitySaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1759
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1760
    if-eqz v0, :cond_15

    .line 1761
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    .line 1762
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1763
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1761
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1766
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1767
    return-void
.end method

.method private blacklist dispatchActivityStarted()V
    .registers 4

    .line 1624
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    .line 1625
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1626
    if-eqz v0, :cond_1b

    .line 1627
    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1628
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 1627
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1631
    :cond_1b
    return-void
.end method

.method private blacklist dispatchActivityStopped()V
    .registers 4

    .line 1727
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1728
    if-eqz v0, :cond_15

    .line 1729
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    .line 1730
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 1729
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1733
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    .line 1734
    return-void
.end method

.method private greylist-max-o dispatchRequestPermissionsResult(ILandroid/content/Intent;)V
    .registers 7

    .line 9858
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 9860
    if-eqz p2, :cond_c

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 9861
    :cond_c
    new-array v1, v0, [Ljava/lang/String;

    .line 9862
    :goto_e
    if-eqz p2, :cond_17

    const-string v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    goto :goto_19

    .line 9863
    :cond_17
    new-array v2, v0, [I

    .line 9864
    :goto_19
    if-eqz p2, :cond_22

    const-string v3, "android.content.pm.extra.REQUEST_PERMISSIONS_DEVICE_ID"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_23

    .line 9866
    :cond_22
    nop

    .line 9867
    :goto_23
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[II)V

    .line 9868
    return-void
.end method

.method private greylist-max-o dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V
    .registers 6

    .line 9873
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 9874
    :cond_a
    new-array v1, v0, [Ljava/lang/String;

    .line 9875
    :goto_c
    if-eqz p2, :cond_15

    const-string v0, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    goto :goto_17

    .line 9876
    :cond_15
    new-array p2, v0, [I

    .line 9877
    :goto_17
    invoke-virtual {p3, p1, v1, p2}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 9878
    return-void
.end method

.method private blacklist dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 8512
    const-string v0, "--dump-dumpable"

    filled-new-array {p1, p3, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "%s%s option deprecated. Use %s %s instead\n"

    invoke-virtual {p2, p3, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 8514
    return-void
.end method

.method private greylist-max-o ensureSearchManager()V
    .registers 3

    .line 8023
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_5

    .line 8024
    return-void

    .line 8028
    :cond_5
    :try_start_5
    new-instance v0, Landroid/app/SearchManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;
    :try_end_d
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_5 .. :try_end_d} :catch_f

    .line 8031
    nop

    .line 8032
    return-void

    .line 8029
    :catch_f
    move-exception v0

    .line 8030
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-r finish(I)V
    .registers 6

    .line 7524
    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_FINISH_ACTIVITY:Z

    if-eqz v0, :cond_21

    .line 7525
    const-string v0, "Instrumentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishActivity: finishTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7527
    :cond_21
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_43

    .line 7530
    monitor-enter p0

    .line 7531
    :try_start_26
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    .line 7532
    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 7533
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_40

    .line 7535
    if-eqz v1, :cond_30

    .line 7536
    invoke-virtual {v1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 7538
    :cond_30
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 7540
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/Activity;->mFinished:Z

    .line 7542
    :cond_3f
    goto :goto_48

    .line 7533
    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p1

    .line 7543
    :cond_43
    iget-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    .line 7546
    :goto_48
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/view/autofill/AutofillClientController;->onActivityFinish(Landroid/content/Intent;)V

    .line 7547
    return-void
.end method

.method private blacklist getAutofillClientController()Landroid/view/autofill/AutofillClientController;
    .registers 2

    .line 1494
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    if-nez v0, :cond_b

    .line 1495
    new-instance v0, Landroid/view/autofill/AutofillClientController;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillClientController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    .line 1497
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    return-object v0
.end method

.method private blacklist getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;
    .registers 2

    .line 1391
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 1392
    :cond_c
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-nez v0, :cond_1a

    .line 1393
    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureManager;

    iput-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 1395
    :cond_1a
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0
.end method

.method private blacklist getContentCaptureTypeAsString(I)Ljava/lang/String;
    .registers 4

    .line 1414
    packed-switch p1, :pswitch_data_24

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOW-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1422
    :pswitch_17
    const-string p1, "STOP"

    return-object p1

    .line 1420
    :pswitch_1a
    const-string p1, "PAUSE"

    return-object p1

    .line 1418
    :pswitch_1d
    const-string p1, "RESUME"

    return-object p1

    .line 1416
    :pswitch_20
    const-string p1, "START"

    return-object p1

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

    .line 1963
    monitor-enter p0

    .line 1964
    :try_start_1
    iget-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    if-nez v0, :cond_c

    .line 1965
    new-instance v0, Landroid/window/SplashScreen$SplashScreenImpl;

    invoke-direct {v0, p0}, Landroid/window/SplashScreen$SplashScreenImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    .line 1967
    :cond_c
    iget-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    monitor-exit p0

    return-object v0

    .line 1968
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private blacklist getPermissionRequestStates(Landroid/content/Context;[Ljava/lang/String;)[I
    .registers 7

    .line 5905
    array-length v0, p2

    .line 5906
    new-array v1, v0, [I

    .line 5907
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_19

    .line 5908
    aget-object v3, p2, v2

    if-nez v3, :cond_e

    .line 5909
    const/4 v3, 0x2

    aput v3, v1, v2

    goto :goto_16

    .line 5911
    :cond_e
    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Landroid/content/Context;->getPermissionRequestState(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 5907
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5914
    :cond_19
    return-object v1
.end method

.method private greylist-max-o initWindowDecorActionBar()V
    .registers 3

    .line 3926
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3930
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 3932
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-nez v1, :cond_3f

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1a

    goto :goto_3f

    .line 3936
    :cond_1a
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3937
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v1, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 3939
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 3940
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 3941
    return-void

    .line 3933
    :cond_3f
    :goto_3f
    return-void
.end method

.method private blacklist internalDispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V
    .registers 9

    .line 9710
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 9711
    if-nez p1, :cond_1c

    .line 9712
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 9713
    iput-object p5, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    .line 9714
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 9715
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    goto/16 :goto_94

    .line 9717
    :cond_17
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_94

    .line 9719
    :cond_1c
    const-string p5, "@android:requestPermissions:"

    invoke-virtual {p1, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 9720
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 9721
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_36

    .line 9722
    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    goto :goto_94

    .line 9724
    :cond_36
    iget-object p3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p3, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    .line 9725
    if-eqz p1, :cond_41

    .line 9726
    invoke-direct {p0, p2, p4, p1}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    .line 9728
    :cond_41
    goto :goto_94

    .line 9729
    :cond_42
    const-string p5, "@android:view:"

    invoke-virtual {p1, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_79

    .line 9730
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p5

    .line 9731
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 9730
    invoke-virtual {p5, v0}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object p5

    .line 9732
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_5a
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 9733
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 9734
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 9736
    return-void

    .line 9738
    :cond_77
    goto :goto_5a

    .line 9739
    :cond_78
    goto :goto_94

    :cond_79
    const-string p5, "@android:autoFillAuth:"

    invoke-virtual {p1, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_89

    .line 9740
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/autofill/AutofillClientController;->onDispatchActivityResult(IILandroid/content/Intent;)V

    goto :goto_94

    .line 9742
    :cond_89
    iget-object p5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p5, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    .line 9743
    if-eqz p1, :cond_94

    .line 9744
    invoke-virtual {p1, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 9748
    :cond_94
    :goto_94
    iget p1, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p6}, Landroid/app/EventLogTags;->writeWmOnActivityResultCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 9750
    return-void
.end method

.method private blacklist internalSetIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 3

    .line 1237
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 1238
    iput-object p2, p0, Landroid/app/Activity;->mCaller:Landroid/app/ComponentCaller;

    .line 1239
    return-void
.end method

.method private blacklist isTvImplicitEnterPipProhibited()Z
    .registers 5

    .line 3286
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3287
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->enableTvImplicitEnterPipRestriction()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 3288
    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3290
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3289
    const-string v3, "android.permission.TV_IMPLICIT_ENTER_PIP"

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    nop

    .line 3288
    :goto_23
    return v2

    .line 3292
    :cond_24
    return v2
.end method

.method private synthetic blacklist lambda$autofillViewIfAvailable$1(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
    .registers 4

    .line 10302
    nop

    .line 10303
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    .line 10304
    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillClientController;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object p1

    .line 10305
    if-eqz p1, :cond_1f

    .line 10307
    invoke-virtual {p1, p2}, Landroid/view/View;->autofill(Landroid/view/autofill/AutofillValue;)V

    .line 10308
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 10309
    nop

    .line 10310
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    .line 10311
    if-eqz p1, :cond_1f

    .line 10312
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/WindowInsetsController;->show(I)V

    .line 10315
    :cond_1f
    return-void
.end method

.method private synthetic blacklist lambda$requestPermissions$0(I[Ljava/lang/String;[II)V
    .registers 6

    .line 5889
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 5890
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[II)V

    .line 5891
    return-void
.end method

.method private greylist-max-o missingDialog(I)Ljava/lang/IllegalArgumentException;
    .registers 5

    .line 5391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " was ever shown via Activity#showDialog"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist notifyContentCaptureManagerIfNeeded(I)V
    .registers 7

    .line 1429
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyContentCapture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1431
    invoke-direct {p0, p1}, Landroid/app/Activity;->getContentCaptureTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 1432
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1430
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1435
    :cond_33
    :try_start_33
    invoke-direct {p0}, Landroid/app/Activity;->getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_83

    .line 1436
    if-nez v2, :cond_3d

    .line 1461
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1436
    return-void

    .line 1438
    :cond_3d
    packed-switch p1, :pswitch_data_88

    .line 1458
    :try_start_40
    const-string v2, "Activity"

    goto :goto_68

    .line 1455
    :pswitch_43
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityDestroyed()V

    .line 1456
    goto :goto_7e

    .line 1452
    :pswitch_47
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityPaused()V

    .line 1453
    goto :goto_7e

    .line 1449
    :pswitch_4b
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityResumed()V

    .line 1450
    goto :goto_7e

    .line 1442
    :pswitch_4f
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1443
    if-eqz p1, :cond_5c

    .line 1444
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/contentcapture/ContentCaptureManager;->updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1446
    :cond_5c
    iget-object p1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityCreated(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 1447
    goto :goto_7e

    .line 1458
    :goto_68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid @ContentCaptureNotificationType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_40 .. :try_end_7e} :catchall_83

    .line 1461
    :goto_7e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1462
    nop

    .line 1463
    return-void

    .line 1461
    :catchall_83
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1462
    throw p1

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
    .end packed-switch
.end method

.method private blacklist notifyVoiceInteractionManagerServiceActivityEvent(I)V
    .registers 4

    .line 1851
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-nez v0, :cond_1f

    .line 1852
    nop

    .line 1853
    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1852
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 1854
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-nez v0, :cond_1f

    .line 1855
    const-string p1, "Activity"

    const-string/jumbo v0, "notifyVoiceInteractionManagerServiceActivityEvent: Can not get VoiceInteractionManagerService"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return-void

    .line 1861
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->notifyActivityEventChanged(Landroid/os/IBinder;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    .line 1864
    goto :goto_28

    .line 1862
    :catch_27
    move-exception p1

    .line 1865
    :goto_28
    return-void
.end method

.method private blacklist onBackInvoked()V
    .registers 5

    .line 4378
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    new-instance v2, Landroid/app/Activity$RequestFinishCallback;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Landroid/app/Activity$RequestFinishCallback;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V

    .line 4381
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4382
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillClientController;->onActivityBackPressed(Landroid/content/Intent;)V

    .line 4384
    :cond_22
    return-void
.end method

.method private greylist-max-o restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .registers 4

    .line 9683
    if-eqz p1, :cond_b

    .line 9684
    const-string v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 9687
    :cond_b
    return-void
.end method

.method private greylist-max-o restoreManagedDialogs(Landroid/os/Bundle;)V
    .registers 10

    .line 2095
    const-string v0, "android:savedDialogs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 2096
    if-nez p1, :cond_9

    .line 2097
    return-void

    .line 2100
    :cond_9
    const-string v0, "android:savedDialogIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 2101
    array-length v1, v0

    .line 2102
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 2103
    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_5a

    .line 2104
    aget v3, v0, v2

    .line 2105
    invoke-static {v3}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 2106
    if-eqz v4, :cond_57

    .line 2109
    new-instance v5, Landroid/app/Activity$ManagedDialog;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity-IA;)V

    .line 2110
    invoke-static {v3}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 2111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-direct {p0, v6, v4, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 2112
    iget-object v6, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_57

    .line 2113
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2114
    iget-object v6, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v6, v7}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 2115
    iget-object v3, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2103
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2119
    :cond_5a
    return-void
.end method

.method private greylist saveManagedDialogs(Landroid/os/Bundle;)V
    .registers 10

    .line 2652
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 2653
    return-void

    .line 2656
    :cond_5
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2657
    if-nez v0, :cond_e

    .line 2658
    return-void

    .line 2661
    :cond_e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2663
    iget-object v2, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2666
    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_4b

    .line 2667
    iget-object v4, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2668
    aput v4, v2, v3

    .line 2669
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity$ManagedDialog;

    .line 2670
    invoke-static {v4}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2671
    iget-object v6, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    if-eqz v6, :cond_48

    .line 2672
    invoke-static {v4}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2666
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2676
    :cond_4b
    const-string v0, "android:savedDialogIds"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2677
    const-string v0, "android:savedDialogs"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2678
    return-void
.end method

.method private static greylist-max-o savedDialogArgsKeyFor(I)Ljava/lang/String;
    .registers 3

    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o savedDialogKeyFor(I)Ljava/lang/String;
    .registers 3

    .line 2131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist setLocusContextToContentCapture(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .registers 5

    .line 1466
    invoke-direct {p0}, Landroid/app/Activity;->getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v0

    .line 1467
    if-nez v0, :cond_7

    return-void

    .line 1469
    :cond_7
    new-instance v1, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    invoke-direct {v1, p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    .line 1471
    if-eqz p2, :cond_11

    .line 1472
    invoke-virtual {v1, p2}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/contentcapture/ContentCaptureContext$Builder;

    .line 1474
    :cond_11
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object p1

    .line 1475
    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->build()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object p2

    .line 1474
    invoke-virtual {p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->setContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 1476
    return-void
.end method

.method private greylist-max-o startActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 12

    .line 6883
    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6884
    return-void
.end method

.method private blacklist startAppJankTracking()V
    .registers 4

    .line 10255
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->detailedAppJankMetricsLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10256
    return-void

    .line 10258
    :cond_7
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 10259
    return-void

    .line 10261
    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 10262
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    .line 10263
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_73

    .line 10264
    new-instance v1, Landroid/app/Activity$3;

    invoke-direct {v1, p0}, Landroid/app/Activity$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setAppJankStatsCallback(Lcom/android/internal/policy/DecorView$AppJankStatsCallback;)V

    .line 10270
    iget-object v1, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    if-nez v1, :cond_58

    .line 10271
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->viewrootChoreographer()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 10272
    new-instance v1, Landroid/app/jank/JankTracker;

    invoke-direct {v1, v0}, Landroid/app/jank/JankTracker;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    goto :goto_58

    .line 10274
    :cond_4d
    new-instance v1, Landroid/app/jank/JankTracker;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/jank/JankTracker;-><init>(Landroid/view/Choreographer;Landroid/view/View;)V

    iput-object v1, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    .line 10278
    :cond_58
    :goto_58
    iget-object v0, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/jank/JankTracker;->setActivityName(Ljava/lang/String;)V

    .line 10279
    iget-object v0, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/jank/JankTracker;->setAppUid(I)V

    .line 10280
    iget-object v0, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    invoke-virtual {v0}, Landroid/app/jank/JankTracker;->enableAppJankTracking()V

    .line 10283
    :cond_73
    return-void
.end method

.method private blacklist startIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6960
    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 6962
    return-void
.end method

.method private blacklist stopAppJankTracking()V
    .registers 2

    .line 10289
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->detailedAppJankMetricsLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10290
    return-void

    .line 10292
    :cond_7
    iget-object v0, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    if-eqz v0, :cond_10

    .line 10293
    iget-object v0, p0, Landroid/app/Activity;->mJankTracker:Landroid/app/jank/JankTracker;

    invoke-virtual {v0}, Landroid/app/jank/JankTracker;->disableAppJankTracking()V

    .line 10295
    :cond_10
    return-void
.end method

.method private greylist-max-o storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .registers 4

    .line 9677
    if-eqz p1, :cond_c

    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v0, :cond_c

    .line 9678
    const-string v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9680
    :cond_c
    return-void
.end method

.method private greylist-max-o transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 6118
    if-nez p1, :cond_21

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v0

    if-nez v0, :cond_21

    .line 6119
    invoke-virtual {p0}, Landroid/app/Activity;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v0

    .line 6120
    if-eqz v0, :cond_21

    .line 6121
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 6124
    :cond_21
    return-object p1
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 4001
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4002
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4003
    return-void
.end method

.method public final blacklist addDumpable(Landroid/util/Dumpable;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 8384
    iget-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v0, :cond_b

    .line 8385
    new-instance v0, Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-direct {v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    .line 8387
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/dump/DumpableContainerImpl;->addDumpable(Landroid/util/Dumpable;)Z

    move-result p1

    return p1
.end method

.method final greylist-max-r attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 41

    .line 9175
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    invoke-virtual/range {v0 .. v20}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 9178
    return-void
.end method

.method final blacklist attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 26

    .line 9192
    move-object/from16 v0, p12

    move-object/from16 v1, p15

    iput-object p7, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 9193
    invoke-virtual/range {p0 .. p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 9195
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    .line 9196
    iput-object p8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 9198
    new-instance v2, Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v3, p16

    move-object/from16 v4, p17

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    iput-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 9199
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V

    .line 9200
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 9201
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 9202
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 9203
    iget v2, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v2, :cond_41

    .line 9204
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v3, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 9206
    :cond_41
    iget v2, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v2, :cond_4c

    .line 9207
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v3, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setUiOptions(I)V

    .line 9209
    :cond_4c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    .line 9211
    iput-object p2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 9212
    iput-object p3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 9213
    iput-object p4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 9214
    move-object/from16 p2, p18

    iput-object p2, p0, Landroid/app/Activity;->mAssistToken:Landroid/os/IBinder;

    .line 9215
    move-object/from16 p2, p19

    iput-object p2, p0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    .line 9216
    iput p5, p0, Landroid/app/Activity;->mIdent:I

    .line 9217
    iput-object p6, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 9218
    move-object/from16 p2, p14

    iput-object p2, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 9219
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9220
    move-object p2, p9

    iput-object p2, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 9221
    move-object p2, p10

    iput-object p2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 9222
    move-object/from16 p2, p11

    iput-object p2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 9223
    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 9224
    if-eqz v1, :cond_8e

    .line 9225
    if-eqz v0, :cond_83

    .line 9226
    iget-object p2, v0, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    iput-object p2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_8e

    .line 9228
    :cond_83
    new-instance p2, Landroid/app/VoiceInteractor;

    .line 9229
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, v1, p0, p0, p3}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 9233
    :cond_8e
    :goto_8e
    iget-object p2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 9234
    const-string/jumbo p3, "window"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object p4, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9235
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p4

    iget p5, p8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p5, p5, 0x200

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_ab

    move p5, v0

    goto :goto_ac

    :cond_ab
    move p5, v1

    .line 9233
    :goto_ac
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 9237
    iget-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz p1, :cond_be

    .line 9238
    iget-object p1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object p2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 9240
    :cond_be
    iget-object p1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 9241
    move-object/from16 p1, p13

    iput-object p1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 9243
    iget-object p1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget p2, p8, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setColorMode(I)V

    .line 9244
    iget-object p1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget p2, p8, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 p3, 0x2000000

    and-int/2addr p2, p3

    if-eqz p2, :cond_db

    goto :goto_dc

    :cond_db
    move v0, v1

    :goto_dc
    invoke-virtual {p1, v0}, Landroid/view/Window;->setPreferMinimalPostProcessing(Z)V

    .line 9247
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/view/autofill/AutofillClientController;->onActivityAttached(Landroid/app/Application;)V

    .line 9248
    invoke-virtual {p6}, Landroid/app/Application;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 9250
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result p1

    if-eqz p1, :cond_104

    .line 9251
    new-instance p1, Landroid/app/ComponentCaller;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p2

    move-object/from16 p3, p20

    invoke-direct {p1, p2, p3}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    iput-object p1, p0, Landroid/app/Activity;->mInitialCaller:Landroid/app/ComponentCaller;

    .line 9252
    iget-object p1, p0, Landroid/app/Activity;->mInitialCaller:Landroid/app/ComponentCaller;

    iput-object p1, p0, Landroid/app/Activity;->mCaller:Landroid/app/ComponentCaller;

    .line 9254
    :cond_104
    return-void
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 3

    .line 1480
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 1481
    if-eqz p1, :cond_13

    .line 1482
    invoke-virtual {p0}, Landroid/app/Activity;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V

    .line 1483
    invoke-virtual {p0}, Landroid/app/Activity;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 1485
    :cond_13
    return-void
.end method

.method final blacklist autofillViewIfAvailable(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
    .registers 4

    .line 10300
    new-instance v0, Landroid/app/Activity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/Activity$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10316
    return-void
.end method

.method public greylist-max-o canStartActivityForResult()Z
    .registers 2

    .line 6915
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist clearOverrideActivityTransition(I)V
    .registers 5

    .line 7095
    const/4 v0, 0x1

    if-eqz p1, :cond_e

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 7096
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Override type must be either open or close"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7098
    :cond_e
    :goto_e
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityClient;->clearOverrideActivityTransition(Landroid/os/IBinder;Z)V

    .line 7100
    return-void
.end method

.method public whitelist closeContextMenu()V
    .registers 3

    .line 5164
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5165
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 5167
    :cond_e
    return-void
.end method

.method public whitelist closeOptionsMenu()V
    .registers 3

    .line 5102
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 5103
    invoke-virtual {v0}, Landroid/app/ActionBar;->closeOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5104
    :cond_15
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 5106
    :cond_1a
    return-void
.end method

.method public final blacklist contentCaptureClientGetComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 7984
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist convertFromTranslucent()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8577
    invoke-direct {p0}, Landroid/app/Activity;->convertFromTranslucentInternal()Z

    .line 8578
    return-void
.end method

.method public whitelist convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8615
    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 8616
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 8617
    if-nez p2, :cond_c

    const/4 p2, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 8616
    :goto_10
    invoke-virtual {p1, v0, p2}, Landroid/app/ActivityClient;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 8618
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p1

    iget-object p2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 8620
    iget-boolean p1, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-nez p1, :cond_2e

    iget-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz p1, :cond_2e

    .line 8622
    iget-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 8624
    :cond_2e
    iget-boolean p1, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    return p1
.end method

.method public whitelist createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 17

    .line 7830
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7832
    const/4 v12, 0x0

    :try_start_5
    invoke-virtual {p2, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 7833
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 7834
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 7835
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_17

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    goto :goto_1b

    :cond_17
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_1b
    move-object v4, v1

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v7, v1, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p2, v7, v1

    .line 7836
    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v11

    .line 7833
    const/4 v1, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v6, p1

    move/from16 v9, p3

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object p1

    .line 7837
    if-eqz p1, :cond_3a

    new-instance p2, Landroid/app/PendingIntent;

    invoke-direct {p2, p1}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_39} :catch_3b

    move-object v12, p2

    :cond_3a
    return-object v12

    .line 7838
    :catch_3b
    move-exception v0

    .line 7841
    return-object v12
.end method

.method public final whitelist dismissDialog(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5375
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_19

    .line 5379
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5380
    if-eqz v0, :cond_14

    .line 5383
    iget-object p1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 5384
    return-void

    .line 5381
    :cond_14
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 5376
    :cond_19
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public final whitelist dismissKeyboardShortcutsHelper()V
    .registers 4

    .line 2881
    nop

    .line 2882
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104030a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2881
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2884
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2885
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2886
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2887
    return-void
.end method

.method blacklist dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V
    .registers 7

    .line 9691
    invoke-direct/range {p0 .. p6}, Landroid/app/Activity;->internalDispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V

    .line 9692
    return-void
.end method

.method greylist-max-r dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    .registers 20

    .line 9697
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 9698
    new-instance v6, Landroid/app/ComponentCaller;

    .line 9699
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 9698
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/Activity;->internalDispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V

    goto :goto_2c

    .line 9701
    :cond_1e
    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    invoke-direct/range {v7 .. v13}, Landroid/app/Activity;->internalDispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V

    .line 9703
    :goto_2c
    return-void
.end method

.method public greylist-max-o dispatchEnterAnimationComplete()V
    .registers 2

    .line 8779
    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 8780
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 8781
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 8782
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnEnterAnimationComplete()V

    .line 8784
    :cond_22
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 4704
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4705
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4706
    const/4 p1, 0x1

    return p1

    .line 4708
    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 4612
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4616
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4617
    const/16 v1, 0x52

    const/4 v2, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 4618
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4619
    return v2

    .line 4622
    :cond_19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4623
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4624
    return v2

    .line 4626
    :cond_24
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4627
    if-nez v1, :cond_2c

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4628
    :cond_2c
    if-eqz v1, :cond_33

    .line 4629
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    .line 4628
    :goto_34
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 4642
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4643
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4644
    const/4 p1, 0x1

    return p1

    .line 4646
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method greylist-max-o dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 3

    .line 3385
    invoke-virtual {p0, p1}, Landroid/app/Activity;->updateDisplay(I)V

    .line 3386
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 3387
    return-void
.end method

.method final greylist-max-o dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 4

    .line 9645
    iput-boolean p1, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    .line 9646
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentController;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 9647
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_10

    .line 9648
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->onMultiWindowModeChanged()V

    .line 9650
    :cond_10
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 9651
    return-void
.end method

.method final greylist-max-o dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 4

    .line 9658
    iput-boolean p1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 9659
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentController;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 9660
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_10

    .line 9661
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->onPictureInPictureModeChanged(Z)V

    .line 9663
    :cond_10
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 9664
    return-void
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    .line 4712
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4713
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4715
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4716
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v3, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 4718
    :goto_27
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 4720
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4721
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 4722
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4725
    :cond_3b
    return v2
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 4662
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 4663
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4665
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4666
    const/4 p1, 0x1

    return p1

    .line 4668
    :cond_15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 4684
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4685
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4686
    const/4 p1, 0x1

    return p1

    .line 4688
    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 8373
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8374
    return-void
.end method

.method greylist-max-o dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 8471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8473
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local Activity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8474
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8475
    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8476
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8477
    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8478
    iget-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mFinished="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8479
    iget-boolean v1, p0, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 8480
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsInMultiWindowMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8481
    iget-boolean v1, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 8482
    const-string v1, " mIsInPictureInPictureMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8483
    iget-boolean v1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 8484
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8485
    iget-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 8486
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentConfig="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8487
    iget-object v1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8489
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8490
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8491
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_98

    .line 8492
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8495
    :cond_98
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_c5

    .line 8496
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_c5

    .line 8497
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    if-eqz p2, :cond_c5

    .line 8498
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8501
    :cond_c5
    iget-object p2, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p2, v0, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 8503
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroid/app/ResourcesManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8505
    iget-object p2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-eqz p2, :cond_e3

    .line 8506
    iget-object p2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpAllDumpables(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8508
    :cond_e3
    return-void
.end method

.method public blacklist dumpInternal(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 8404
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    if-eqz v0, :cond_9

    .line 8405
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 8407
    :cond_9
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-eqz v0, :cond_12

    .line 8408
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 8410
    :cond_12
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v0, :cond_1b

    .line 8411
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager;->addDumpable(Landroid/app/Activity;)V

    .line 8414
    :cond_1b
    nop

    .line 8415
    nop

    .line 8416
    const/4 v0, 0x1

    if-eqz p4, :cond_bf

    array-length v1, p4

    if-lez v1, :cond_bf

    .line 8417
    const/4 v1, 0x0

    aget-object v2, p4, v1

    .line 8418
    nop

    .line 8420
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string v4, "--dump-dumpable"

    const/4 v5, 0x2

    sparse-switch v3, :sswitch_data_ea

    :cond_31
    goto :goto_62

    :sswitch_32
    const-string v3, "--autofill"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    move v3, v1

    goto :goto_63

    :sswitch_3c
    const-string v3, "--contentcapture"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    move v3, v0

    goto :goto_63

    :sswitch_46
    const-string v3, "--list-dumpables"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x3

    goto :goto_63

    :sswitch_50
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x4

    goto :goto_63

    :sswitch_58
    const-string v3, "--translation"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    move v3, v5

    goto :goto_63

    :goto_62
    const/4 v3, -0x1

    :goto_63
    packed-switch v3, :pswitch_data_100

    .line 8454
    goto :goto_b4

    .line 8441
    :pswitch_67
    array-length v3, p4

    if-ne v3, v0, :cond_73

    .line 8442
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8443
    const-string v1, " requires the dumpable name"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8d

    .line 8444
    :cond_73
    iget-object v3, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v3, :cond_7e

    .line 8445
    const-string/jumbo v1, "no dumpables"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8d

    .line 8448
    :cond_7e
    array-length v3, p4

    sub-int/2addr v3, v5

    new-array v4, v3, [Ljava/lang/String;

    .line 8449
    invoke-static {p4, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8450
    iget-object v1, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    aget-object v3, p4, v0

    invoke-virtual {v1, p1, p3, v3, v4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpOneDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 8452
    nop

    .line 8457
    :goto_8d
    move v1, v0

    goto :goto_b4

    .line 8434
    :pswitch_8f
    iget-object p2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez p2, :cond_9c

    .line 8435
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "No dumpables"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a1

    .line 8437
    :cond_9c
    iget-object p2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/util/dump/DumpableContainerImpl;->listDumpables(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8439
    :goto_a1
    return-void

    .line 8430
    :pswitch_a2
    const-string p2, "UiTranslationController"

    invoke-direct {p0, p1, p3, v2, p2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 8432
    return-void

    .line 8426
    :pswitch_a8
    const-string p2, "ContentCaptureManager"

    invoke-direct {p0, p1, p3, v2, p2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 8428
    return-void

    .line 8422
    :pswitch_ae
    const-string p2, "AutofillManager"

    invoke-direct {p0, p1, p3, v2, p2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 8424
    return-void

    .line 8457
    :goto_b4
    if-eqz v1, :cond_c0

    .line 8458
    const-wide/32 v3, 0x8e56fa2

    invoke-static {v3, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_c0

    .line 8462
    :cond_bf
    const/4 v2, 0x0

    :cond_c0
    :goto_c0
    if-eqz v0, :cond_c6

    .line 8463
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_e8

    .line 8465
    :cond_c6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not calling dump() on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " because of special argument "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Activity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8467
    :goto_e8
    return-void

    nop

    :sswitch_data_ea
    .sparse-switch
        -0x2673d6ef -> :sswitch_58
        0x5fd0f67 -> :sswitch_50
        0x1c2b8816 -> :sswitch_46
        0x4519f64d -> :sswitch_3c
        0x56b9c952 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_a8
        :pswitch_a2
        :pswitch_8f
        :pswitch_67
    .end packed-switch
.end method

.method public blacklist enableTaskLocaleOverride()V
    .registers 3

    .line 10048
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->enableTaskLocaleOverride(Landroid/os/IBinder;)V

    .line 10049
    return-void
.end method

.method public whitelist enterPictureInPictureMode()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3204
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    .line 3205
    return-void
.end method

.method public whitelist enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .registers 4

    .line 3231
    invoke-direct {p0}, Landroid/app/Activity;->deviceSupportsPictureInPictureMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3232
    return v1

    .line 3234
    :cond_8
    if-eqz p1, :cond_33

    .line 3237
    iget-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    if-nez v0, :cond_24

    .line 3238
    invoke-direct {p0}, Landroid/app/Activity;->isTvImplicitEnterPipProhibited()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 3241
    const-string p1, "Activity"

    const-string v0, "Activity must be resumed to enter picture-in-picture and not about to be paused. Implicit app entry is only permitted on TV if android.permission.TV_IMPLICIT_ENTER_PIP is held by the app."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    return v1

    .line 3247
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Activity must be resumed to enter picture-in-picture"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3254
    :cond_24
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 3256
    iget-boolean p1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    return p1

    .line 3235
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected non-null picture-in-picture params"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3838
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist finish()V
    .registers 2

    .line 7555
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    .line 7556
    return-void
.end method

.method public whitelist finishActivity(I)V
    .registers 5

    .line 7622
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_10

    .line 7623
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/ActivityClient;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_15

    .line 7625
    :cond_10
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 7627
    :goto_15
    return-void
.end method

.method public whitelist finishActivityFromChild(Landroid/app/Activity;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7640
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/ActivityClient;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 7641
    return-void
.end method

.method public whitelist finishAffinity()V
    .registers 3

    .line 7573
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_24

    .line 7576
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-nez v0, :cond_1c

    .line 7579
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7580
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    .line 7582
    :cond_1b
    return-void

    .line 7577
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called to deliver a result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7574
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called from an embedded activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist finishAfterTransition()V
    .registers 2

    .line 7607
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 7608
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7610
    :cond_b
    return-void
.end method

.method public whitelist finishAndRemoveTask()V
    .registers 2

    .line 7648
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    .line 7649
    return-void
.end method

.method public whitelist finishFromChild(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7596
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7597
    return-void
.end method

.method public whitelist getActionBar()Landroid/app/ActionBar;
    .registers 2

    .line 3872
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3873
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final blacklist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 9280
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public final greylist-max-o getActivityThread()Landroid/app/ActivityThread;
    .registers 2

    .line 9275
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public final greylist getActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 9259
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_d
    return-object v0
.end method

.method public final whitelist getApplication()Landroid/app/Application;
    .registers 2

    .line 1319
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public final blacklist getAssistToken()Landroid/os/IBinder;
    .registers 2

    .line 9264
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssistToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mAssistToken:Landroid/os/IBinder;

    :goto_d
    return-object v0
.end method

.method public final greylist-max-o getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    .line 1490
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCaller()Landroid/app/ComponentCaller;
    .registers 2

    .line 1212
    iget-object v0, p0, Landroid/app/Activity;->mCaller:Landroid/app/ComponentCaller;

    return-object v0
.end method

.method public whitelist getCallingActivity()Landroid/content/ComponentName;
    .registers 3

    .line 7308
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallingPackage()Ljava/lang/String;
    .registers 3

    .line 7289
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 2

    .line 3473
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    return v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 7978
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final blacklist getContentCaptureClient()Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;
    .registers 1

    .line 1503
    return-object p0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .registers 2

    .line 4037
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContentTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    .line 4015
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentCaller()Landroid/app/ComponentCaller;
    .registers 3

    .line 7416
    iget-object v0, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    if-eqz v0, :cond_7

    .line 7420
    iget-object v0, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    return-object v0

    .line 7417
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The caller is null because #getCurrentCaller should be called within #onNewIntent or #onActivityResult methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .registers 2

    .line 1381
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getFragmentManager()Landroid/app/FragmentManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3649
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInitialCaller()Landroid/app/ComponentCaller;
    .registers 2

    .line 7388
    iget-object v0, p0, Landroid/app/Activity;->mInitialCaller:Landroid/app/ComponentCaller;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 1174
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-object v0
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

    .line 3577
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_9

    .line 3578
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 3577
    :goto_a
    return-object v0
.end method

.method public whitelist getLastNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .line 3498
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_9

    .line 3499
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 3498
    :goto_a
    return-object v0
.end method

.method public whitelist getLaunchedFromPackage()Ljava/lang/String;
    .registers 3

    .line 7373
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLaunchedFromUid()I
    .registers 3

    .line 7340
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

    .line 5604
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

    .line 1367
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalClassName()Ljava/lang/String;
    .registers 5

    .line 7962
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7963
    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 7964
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 7965
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2a

    .line 7966
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_23

    goto :goto_2a

    .line 7969
    :cond_23
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7967
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public whitelist getMaxNumPictureInPictureActions()I
    .registers 2

    .line 3282
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->getMaxNumPictureInPictureActions(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final whitelist getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .line 8295
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 5613
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_20

    .line 5614
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 5615
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_19

    .line 5616
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_20

    .line 5618
    :cond_19
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 5621
    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public greylist-max-o getNextAutofillId()I
    .registers 2

    .line 2390
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->getNextAutofillId()I

    move-result v0

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .registers 3

    .line 10172
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_b

    .line 10176
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    return-object v0

    .line 10173
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OnBackInvokedDispatcher are not available on non-visual activities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getParent()Landroid/app/Activity;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1340
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method public whitelist getParentActivityIntent()Landroid/content/Intent;
    .registers 6

    .line 9064
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 9065
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 9066
    return-object v2

    .line 9070
    :cond_c
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9072
    :try_start_11
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 9073
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 9074
    if-nez v3, :cond_23

    .line 9075
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2c

    .line 9076
    :cond_23
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_2c} :catch_2d

    .line 9077
    :goto_2c
    return-object v0

    .line 9078
    :catch_2d
    move-exception v1

    .line 9079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' in manifest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9081
    return-object v2
.end method

.method public whitelist getPreferences(I)Landroid/content/SharedPreferences;
    .registers 3

    .line 8000
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getReferrer()Landroid/net/Uri;
    .registers 4

    .line 7235
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7236
    if-eqz v0, :cond_29

    .line 7238
    :try_start_6
    const-string v1, "android.intent.extra.REFERRER"

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 7239
    if-eqz v1, :cond_13

    .line 7240
    return-object v1

    .line 7242
    :cond_13
    const-string v1, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7243
    if-eqz v0, :cond_20

    .line 7244
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1f
    .catch Landroid/os/BadParcelableException; {:try_start_6 .. :try_end_1f} :catch_21

    return-object v0

    .line 7249
    :cond_20
    goto :goto_29

    .line 7246
    :catch_21
    move-exception v0

    .line 7247
    const-string v0, "Activity"

    const-string v1, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7251
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 7252
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android-app"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 7254
    :cond_43
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRequestedOrientation()I
    .registers 3

    .line 7909
    iget v0, p0, Landroid/app/Activity;->mLastRequestedOrientation:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8

    .line 7910
    iget v0, p0, Landroid/app/Activity;->mLastRequestedOrientation:I

    return v0

    .line 7912
    :cond_8
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_17

    .line 7913
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    return v0

    .line 7915
    :cond_17
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method blacklist getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;
    .registers 3

    .line 8656
    iget-object v0, p0, Landroid/app/Activity;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 8658
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 8659
    return-object v0
.end method

.method public final whitelist getSearchEvent()Landroid/view/SearchEvent;
    .registers 2

    .line 5482
    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final blacklist getShareableActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 9269
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getShareableActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    :goto_d
    return-object v0
.end method

.method public final whitelist getSplashScreen()Landroid/window/SplashScreen;
    .registers 2

    .line 1959
    invoke-direct {p0}, Landroid/app/Activity;->getOrCreateSplashScreen()Landroid/window/SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 8036
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 8041
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8042
    iget-object p1, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object p1

    .line 8043
    :cond_12
    const-string/jumbo v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8044
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 8045
    iget-object p1, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    return-object p1

    .line 8047
    :cond_21
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8037
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "System services not available to Activities before onCreate()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getTaskId()I
    .registers 4

    .line 7926
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

    .line 8092
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final whitelist getTitleColor()I
    .registers 2

    .line 8096
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    return v0
.end method

.method public whitelist getVoiceInteractor()Landroid/app/VoiceInteractor;
    .registers 2

    .line 2423
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    return-object v0
.end method

.method public final whitelist getVolumeControlStream()I
    .registers 2

    .line 8262
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .registers 2

    .line 1357
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .line 1345
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public whitelist hasWindowFocus()Z
    .registers 2

    .line 4579
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4580
    if-eqz v0, :cond_11

    .line 4581
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 4582
    if-eqz v0, :cond_11

    .line 4583
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    return v0

    .line 4586
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist invalidateOptionsMenu()V
    .registers 3

    .line 4876
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 4877
    invoke-virtual {v0}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4878
    :cond_15
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 4880
    :cond_1a
    return-void
.end method

.method public whitelist isActivityTransitionRunning()Z
    .registers 2

    .line 6114
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

    .line 8743
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isChangingConfigurations()Z
    .registers 2

    .line 7499
    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    return v0
.end method

.method public final whitelist isChild()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1329
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

    .line 7477
    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    return v0
.end method

.method public whitelist isFinishing()Z
    .registers 2

    .line 7469
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    return v0
.end method

.method public final blacklist isHandoffEnabled()Z
    .registers 3

    .line 7739
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isHandoffEnabled(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public final blacklist isHandoffFullTaskRecreationAllowed()Z
    .registers 3

    .line 7756
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 7757
    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isHandoffFullTaskRecreationAllowed(Landroid/os/IBinder;)Z

    move-result v0

    .line 7755
    return v0
.end method

.method public whitelist isImmersive()Z
    .registers 3

    .line 8528
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public whitelist isInMultiWindowMode()Z
    .registers 2

    .line 3125
    iget-boolean v0, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    return v0
.end method

.method public whitelist isInPictureInPictureMode()Z
    .registers 2

    .line 3191
    iget-boolean v0, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    return v0
.end method

.method public whitelist isLaunchedFromBubble()Z
    .registers 2

    .line 8019
    iget-boolean v0, p0, Landroid/app/Activity;->mLaunchedFromBubble:Z

    return v0
.end method

.method public whitelist isLocalVoiceInteractionSupported()Z
    .registers 2

    .line 2435
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->supportsLocalVoiceInteraction()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2436
    :catch_9
    move-exception v0

    .line 2438
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isOverlayWithDecorCaptionEnabled()Z
    .registers 2

    .line 9816
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    return v0
.end method

.method public final greylist isResumed()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 9673
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public whitelist isTaskRoot()Z
    .registers 2

    .line 7936
    iget-object v0, p0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method final greylist-max-o isTopOfTask()Z
    .registers 3

    .line 8539
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_9

    goto :goto_16

    .line 8542
    :cond_9
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    .line 8540
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist isVisibleForAutofill()Z
    .registers 2

    .line 9884
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isVoiceInteraction()Z
    .registers 2

    .line 2399
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

    .line 2414
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_12

    .line 2415
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

    .line 2414
    :goto_13
    return v0
.end method

.method greylist-max-o makeVisible()V
    .registers 4

    .line 7444
    iget-boolean v0, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v0, :cond_18

    .line 7445
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 7446
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7447
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 7449
    :cond_18
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7450
    return-void
.end method

.method public final greylist-max-r managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3698
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3699
    if-eqz p1, :cond_12

    .line 3700
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 3702
    :cond_12
    return-object p1
.end method

.method public final whitelist managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3738
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3739
    if-eqz p1, :cond_12

    .line 3740
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 3742
    :cond_12
    return-object p1
.end method

.method public whitelist moveTaskToBack(Z)Z
    .registers 4

    .line 7951
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist navigateUpTo(Landroid/content/Intent;)Z
    .registers 10

    .line 9005
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_46

    .line 9006
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 9007
    if-nez v0, :cond_20

    .line 9008
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 9009
    if-nez v0, :cond_16

    .line 9010
    const/4 p1, 0x0

    return p1

    .line 9012
    :cond_16
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 9013
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v4, v1

    goto :goto_21

    .line 9007
    :cond_20
    move-object v4, p1

    .line 9017
    :goto_21
    monitor-enter p0

    .line 9018
    :try_start_22
    iget v6, p0, Landroid/app/Activity;->mResultCode:I

    .line 9019
    iget-object v7, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 9020
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_42

    .line 9021
    if-eqz v7, :cond_2c

    .line 9022
    invoke-virtual {v7, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 9024
    :cond_2c
    invoke-virtual {v4, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 9025
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 9026
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual/range {v2 .. v7}, Landroid/app/ActivityClient;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 9020
    :catchall_42
    move-exception v0

    move-object p1, v0

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_42

    throw p1

    .line 9029
    :cond_46
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public whitelist navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9048
    invoke-virtual {p0, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2

    .line 8950
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2

    .line 8939
    return-void
.end method

.method public whitelist onActivityReenter(ILandroid/content/Intent;)V
    .registers 3

    .line 7799
    return-void
.end method

.method protected whitelist onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 7697
    return-void
.end method

.method public whitelist onActivityResult(IILandroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 5

    .line 7721
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 7722
    return-void
.end method

.method protected whitelist onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 8

    .line 5633
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 5634
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_17

    .line 5637
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_13

    .line 5640
    goto :goto_14

    .line 5638
    :catch_13
    move-exception v0

    .line 5641
    :goto_14
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 5645
    :goto_17
    sget-object p2, Lcom/android/internal/R$styleable;->ActivityTaskDescription:[I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5647
    iget-object p2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result p2

    const/16 v0, 0xff

    const/4 v2, 0x1

    if-nez p2, :cond_39

    .line 5648
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 5650
    if-eqz p2, :cond_39

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-ne v3, v0, :cond_39

    .line 5651
    iget-object v3, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3, p2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 5655
    :cond_39
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 5657
    if-eqz p2, :cond_4a

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-ne v3, v0, :cond_4a

    .line 5658
    iget-object v3, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3, p2}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 5661
    :cond_4a
    const/4 p2, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 5664
    if-eqz p2, :cond_5c

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-ne v3, v0, :cond_5c

    .line 5665
    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 5668
    :cond_5c
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 5670
    if-eqz p2, :cond_68

    .line 5671
    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 5674
    :cond_68
    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 5676
    if-eqz p2, :cond_74

    .line 5677
    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 5680
    :cond_74
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 5681
    const/16 v0, 0x1d

    if-ge p2, v0, :cond_80

    move p2, v2

    goto :goto_81

    :cond_80
    move p2, v1

    .line 5682
    :goto_81
    if-nez p2, :cond_97

    .line 5683
    iget-object p2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 5686
    iget-object p2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 5692
    :cond_97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5693
    if-eqz p3, :cond_bb

    iget-object p1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result p1

    if-nez p1, :cond_bb

    iget-object p1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_bb

    iget-object p1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 5694
    invoke-virtual {p1}, Landroid/view/Window;->getSystemBarAppearance()I

    move-result p1

    if-eqz p1, :cond_bb

    .line 5700
    iget-object p1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object p2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getSystemBarAppearance()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ActivityManager$TaskDescription;->setSystemBarsAppearance(I)V

    .line 5702
    :cond_bb
    iget-object p1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 5703
    return-void
.end method

.method public whitelist onAttachFragment(Landroid/app/Fragment;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3662
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 1

    .line 4558
    return-void
.end method

.method public whitelist onBackPressed()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4362
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4363
    return-void

    .line 4366
    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 4368
    invoke-virtual {v0}, Landroid/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4369
    return-void

    .line 4371
    :cond_20
    invoke-direct {p0}, Landroid/app/Activity;->onBackInvoked()V

    .line 4372
    return-void
.end method

.method public whitelist onBackgroundVisibleBehindChanged(Z)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8765
    return-void
.end method

.method protected whitelist onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 3

    .line 8115
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 3437
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3439
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3441
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_11

    .line 3443
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3446
    :cond_11
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1a

    .line 3449
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3452
    :cond_1a
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityConfigurationChanged()V

    .line 3453
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_26

    .line 3454
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3456
    :cond_26
    return-void
.end method

.method public whitelist onContentChanged()V
    .registers 1

    .line 4505
    return-void
.end method

.method public whitelist onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 5187
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 5188
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 5190
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onContextMenuClosed(Landroid/view/Menu;)V
    .registers 3

    .line 5201
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 5202
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 5204
    :cond_9
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1898
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_d

    .line 1899
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v1, v1, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    .line 1901
    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 1902
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1b

    .line 1903
    iput-boolean v1, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    goto :goto_20

    .line 1905
    :cond_1b
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 1909
    :cond_20
    :goto_20
    if-eqz p1, :cond_3e

    .line 1910
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillClientController;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1912
    const-string v0, "android:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1913
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v3, :cond_3a

    .line 1914
    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v3, v3, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    .line 1913
    :goto_3b
    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    .line 1916
    :cond_3e
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchCreate()V

    .line 1917
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityCreated(Landroid/os/Bundle;)V

    .line 1918
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_4f

    .line 1919
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    .line 1921
    :cond_4f
    if-eqz p1, :cond_53

    move p1, v1

    goto :goto_54

    :cond_53
    const/4 p1, 0x0

    :goto_54
    iput-boolean p1, p0, Landroid/app/Activity;->mRestoredFromBundle:Z

    .line 1922
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 1924
    nop

    .line 1925
    invoke-static {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 1926
    if-eqz p1, :cond_6f

    .line 1928
    new-instance p1, Landroid/app/Activity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/app/Activity$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 1929
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {p1, v0}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 1931
    :cond_6f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackStopKeycodeBackForwarding()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 1932
    new-instance p1, Landroid/app/Activity$2;

    invoke-direct {p1, p0}, Landroid/app/Activity$2;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Landroid/app/Activity;->mObserverBackCallback:Landroid/window/ObserverOnBackAnimationCallback;

    .line 1948
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    const/4 v0, -0x2

    iget-object v1, p0, Landroid/app/Activity;->mObserverBackCallback:Landroid/window/ObserverOnBackAnimationCallback;

    invoke-interface {p1, v0, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 1952
    :cond_86
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    .line 1993
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1994
    return-void
.end method

.method public whitelist onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    .line 5122
    return-void
.end method

.method public whitelist onCreateDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 2775
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onCreateDialog(I)Landroid/app/Dialog;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5211
    const/4 p1, 0x0

    return-object p1
.end method

.method protected whitelist onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5250
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .registers 2

    .line 5055
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    .line 5056
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .line 4911
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 4912
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    .line 4914
    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 5

    .line 4749
    if-nez p1, :cond_12

    .line 4750
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    .line 4751
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 4752
    return p1

    .line 4754
    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .registers 2

    .line 4737
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2754
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .line 8343
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 8344
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 8347
    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    .line 8327
    const/4 p1, 0x0

    return-object p1
.end method

.method protected whitelist onDestroy()V
    .registers 7

    .line 2991
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2993
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityDestroyed()V

    .line 2996
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 2997
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2998
    move v3, v1

    :goto_17
    if-ge v3, v0, :cond_31

    .line 2999
    iget-object v4, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedDialog;

    .line 3000
    iget-object v5, v4, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 3001
    iget-object v4, v4, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 2998
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 3004
    :cond_31
    iput-object v2, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 3008
    :cond_33
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3009
    :try_start_36
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3010
    nop

    :goto_3d
    if-ge v1, v3, :cond_53

    .line 3011
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedCursor;

    .line 3012
    if-eqz v4, :cond_50

    .line 3013
    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3010
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 3016
    :cond_53
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3017
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_36 .. :try_end_59} :catchall_a3

    .line 3020
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_62

    .line 3021
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 3024
    :cond_62
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_6b

    .line 3025
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    .line 3028
    :cond_6b
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityDestroyed()V

    .line 3030
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 3032
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-eqz v0, :cond_7b

    .line 3033
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    invoke-virtual {v0}, Landroid/view/translation/UiTranslationController;->onActivityDestroyed()V

    .line 3035
    :cond_7b
    iget-object v0, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_8a

    .line 3036
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 3037
    iput-object v2, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 3039
    :cond_8a
    iget-object v0, p0, Landroid/app/Activity;->mObserverBackCallback:Landroid/window/ObserverOnBackAnimationCallback;

    if-eqz v0, :cond_99

    .line 3040
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mObserverBackCallback:Landroid/window/ObserverOnBackAnimationCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 3041
    iput-object v2, p0, Landroid/app/Activity;->mObserverBackCallback:Landroid/window/ObserverOnBackAnimationCallback;

    .line 3044
    :cond_99
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_a2

    .line 3045
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    .line 3047
    :cond_a2
    return-void

    .line 3017
    :catchall_a3
    move-exception v1

    :try_start_a4
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v1
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 4568
    return-void
.end method

.method public whitelist onEnterAnimationComplete()V
    .registers 1

    .line 8773
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 4464
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 3
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

    .line 2843
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2844
    return-void
.end method

.method public blacklist onHandoffActivityDataRequested(Landroid/app/HandoffActivityDataRequestInfo;)Landroid/app/HandoffActivityData;
    .registers 2

    .line 10208
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    .line 4173
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_15

    .line 4174
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v0, 0x5

    if-lt p1, v0, :cond_11

    .line 4176
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_14

    .line 4178
    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 4180
    :goto_14
    return v1

    .line 4183
    :cond_15
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_28

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->shouldCloseOnTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4184
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 4185
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4186
    return v1

    .line 4189
    :cond_28
    iget v0, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    .line 4190
    return v2

    .line 4191
    :cond_2e
    iget v0, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_45

    .line 4192
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4193
    invoke-virtual {v0, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 4194
    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 4196
    return v1

    .line 4198
    :cond_44
    return v2

    .line 4199
    :cond_45
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_4a

    .line 4202
    return v2

    .line 4205
    :cond_4a
    nop

    .line 4207
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_ac

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_ac

    .line 4211
    :cond_58
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v3, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    .line 4213
    if-eqz p1, :cond_aa

    iget-object p2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_aa

    .line 4216
    iget-object p2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4217
    nop

    .line 4219
    iget v0, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch v0, :pswitch_data_c0

    :pswitch_79
    goto :goto_ae

    .line 4229
    :pswitch_7a
    invoke-virtual {p0, p2, v2, v4, v1}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_ae

    .line 4226
    :pswitch_7e
    invoke-virtual {p0, p2, v2, v4, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 4227
    goto :goto_ae

    .line 4221
    :pswitch_82
    new-instance v0, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v0, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4222
    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4223
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4224
    goto :goto_ae

    .line 4234
    :cond_aa
    move v1, v2

    goto :goto_ae

    .line 4208
    :cond_ac
    :goto_ac
    nop

    .line 4209
    move p1, v2

    .line 4234
    :goto_ae
    if-eqz v1, :cond_bf

    .line 4235
    iget-object p2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4236
    iget-object p2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 4237
    iget-object p2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {p2, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4239
    :cond_bf
    return p1

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_82
        :pswitch_79
        :pswitch_7e
        :pswitch_7a
    .end packed-switch
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 4254
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 4

    .line 4299
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 4398
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 4399
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 4273
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4274
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-lt v0, v1, :cond_21

    .line 4275
    const/4 v0, 0x4

    if-ne p1, v0, :cond_21

    .line 4276
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4277
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-nez v0, :cond_21

    .line 4280
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 4281
    return v2

    .line 4285
    :cond_21
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_2c

    .line 4286
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 4287
    return v2

    .line 4290
    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onLocalVoiceInteractionStarted()V
    .registers 1

    .line 2457
    return-void
.end method

.method public whitelist onLocalVoiceInteractionStopped()V
    .registers 1

    .line 2466
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 2

    .line 3625
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3626
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    .line 3627
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_11

    .line 3628
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->dispatchLowMemory()V

    .line 3630
    :cond_11
    return-void
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7

    .line 4803
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4805
    const v1, 0xc350

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_76

    .line 4839
    return v2

    .line 4830
    :sswitch_d
    if-eqz v0, :cond_1e

    .line 4831
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4833
    :cond_1e
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 4834
    return v3

    .line 4836
    :cond_25
    iget-object p1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 4810
    :sswitch_2c
    if-eqz v0, :cond_3d

    .line 4811
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4813
    :cond_3d
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 4814
    return v3

    .line 4816
    :cond_44
    iget-object p1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 4817
    return v3

    .line 4819
    :cond_4d
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x102002c

    if-ne p1, p2, :cond_74

    iget-object p1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz p1, :cond_74

    iget-object p1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 4820
    invoke-virtual {p1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_74

    .line 4821
    iget-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez p1, :cond_6d

    .line 4822
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result p1

    return p1

    .line 4824
    :cond_6d
    iget-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    return p1

    .line 4827
    :cond_74
    return v2

    nop

    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_2c
        0x6 -> :sswitch_d
    .end sparse-switch
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    .line 4782
    const/16 p2, 0x8

    const/4 v0, 0x1

    if-ne p1, p2, :cond_19

    .line 4783
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4784
    iget-object p1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz p1, :cond_12

    .line 4785
    iget-object p1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_19

    .line 4787
    :cond_12
    const-string p1, "Activity"

    const-string p2, "Tried to open action bar menu with no action bar"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    :cond_19
    :goto_19
    return v0
.end method

.method public greylist-max-r onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 3

    .line 3413
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3116
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 3

    .line 3099
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 3100
    return-void
.end method

.method public whitelist onNavigateUp()Z
    .registers 3

    .line 4993
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4994
    if-eqz v0, :cond_41

    .line 4995
    iget-object v1, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 4999
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3f

    .line 5000
    :cond_10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 5001
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 5002
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 5003
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 5004
    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 5008
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v0, :cond_2c

    goto :goto_30

    .line 5013
    :cond_2c
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_3b

    .line 5010
    :cond_30
    :goto_30
    const-string v0, "Activity"

    const-string/jumbo v1, "onNavigateUp only finishing topmost activity to return a result"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5011
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5015
    :goto_3b
    goto :goto_3f

    .line 5016
    :cond_3c
    invoke-virtual {p0, v0}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 5018
    :goto_3f
    const/4 v0, 0x1

    return v0

    .line 5020
    :cond_41
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onNavigateUpFromChild(Landroid/app/Activity;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5032
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result p1

    return p1
.end method

.method protected whitelist onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 2503
    return-void
.end method

.method public whitelist onNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 3

    .line 2526
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2527
    return-void
.end method

.method public blacklist onNewSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 3

    .line 8640
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterSceneTransitionInfo(Landroid/app/Activity;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 8641
    iget-boolean p1, p0, Landroid/app/Activity;->mStopped:Z

    if-nez p1, :cond_e

    .line 8642
    iget-object p1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p1, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 8644
    :cond_e
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 4961
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 4962
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 4964
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    .line 5081
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 5082
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 5084
    :cond_9
    return-void
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    .line 4853
    sparse-switch p1, :sswitch_data_1c

    goto :goto_1b

    .line 4864
    :sswitch_4
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4865
    iget-object p1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_1b

    .line 4860
    :sswitch_e
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 4861
    goto :goto_1b

    .line 4855
    :sswitch_12
    iget-object p1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4856
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4857
    nop

    .line 4868
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

    .line 2719
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPaused()V

    .line 2720
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityPaused()V

    .line 2722
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2724
    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyVoiceInteractionManagerServiceActivityEvent(I)V

    .line 2727
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2728
    return-void
.end method

.method public whitelist onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 5
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

    .line 2862
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3182
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 3

    .line 3143
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPictureInPictureModeChanged(Z)V

    .line 3144
    return-void
.end method

.method public whitelist onPictureInPictureRequested()Z
    .registers 2

    .line 3317
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V
    .registers 2

    .line 3167
    return-void
.end method

.method protected whitelist onPostCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 2155
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_14

    .line 2156
    iput-boolean v0, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 2157
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2160
    :cond_14
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2162
    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2164
    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyVoiceInteractionManagerServiceActivityEvent(I)V

    .line 2166
    return-void
.end method

.method public whitelist onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    .line 2181
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2182
    return-void
.end method

.method protected whitelist onPostResume()V
    .registers 3

    .line 2308
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2309
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    .line 2310
    :cond_9
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 2314
    :cond_13
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyVoiceInteractionManagerServiceActivityEvent(I)V

    .line 2318
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityPostResumed()V

    .line 2320
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->detailedAppJankMetricsApi()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2321
    invoke-direct {p0}, Landroid/app/Activity;->startAppJankTracking()V

    .line 2324
    :cond_27
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 2325
    return-void
.end method

.method protected whitelist onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5259
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 5260
    return-void
.end method

.method protected whitelist onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5288
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 5289
    return-void
.end method

.method public whitelist onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .registers 2

    .line 5071
    return-void
.end method

.method public whitelist onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .line 4936
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 4937
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    .line 4939
    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    .line 4767
    if-nez p1, :cond_e

    .line 4768
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    .line 4769
    iget-object p2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p2, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 4770
    return p1

    .line 4772
    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .registers 2

    .line 2812
    return-void
.end method

.method public whitelist onProvideAssistData(Landroid/os/Bundle;)V
    .registers 2

    .line 2790
    return-void
.end method

.method public whitelist onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 11
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

    .line 2892
    if-nez p2, :cond_3

    .line 2893
    return-void

    .line 2895
    :cond_3
    nop

    .line 2896
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result p3

    .line 2897
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_b
    if-ge v1, p3, :cond_44

    .line 2898
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2899
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2900
    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v5

    .line 2901
    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticModifiers()I

    move-result v3

    .line 2902
    if-eqz v4, :cond_41

    if-eqz v5, :cond_41

    .line 2903
    if-nez v2, :cond_39

    .line 2904
    iget-object v2, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 2905
    new-instance v6, Landroid/view/KeyboardShortcutGroup;

    if-eqz v2, :cond_34

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_35

    :cond_34
    move-object v2, v0

    :goto_35
    invoke-direct {v6, v2}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;)V

    move-object v2, v6

    .line 2907
    :cond_39
    new-instance v6, Landroid/view/KeyboardShortcutInfo;

    invoke-direct {v6, v4, v5, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;CI)V

    invoke-virtual {v2, v6}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 2897
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2911
    :cond_44
    if-eqz v2, :cond_49

    .line 2912
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2914
    :cond_49
    return-void
.end method

.method public whitelist onProvideReferrer()Landroid/net/Uri;
    .registers 2

    .line 7264
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 5937
    return-void
.end method

.method public whitelist onRequestPermissionsResult(I[Ljava/lang/String;[II)V
    .registers 5

    .line 5962
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 5963
    return-void
.end method

.method protected whitelist onRestart()V
    .registers 2

    .line 2236
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2238
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityRestarted()V

    .line 2239
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 2049
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_11

    .line 2050
    const-string v0, "android:viewHierarchyState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 2051
    if-eqz p1, :cond_11

    .line 2052
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 2055
    :cond_11
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    .line 2084
    if-eqz p1, :cond_5

    .line 2085
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2087
    :cond_5
    return-void
.end method

.method protected whitelist onResume()V
    .registers 2

    .line 2285
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityResumed()V

    .line 2286
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;)V

    .line 2287
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityResumed()V

    .line 2289
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2291
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2292
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

    .line 3590
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .line 3555
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 2615
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2617
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2618
    if-eqz v0, :cond_18

    .line 2619
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2621
    :cond_18
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillClientController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2622
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivitySaveInstanceState(Landroid/os/Bundle;)V

    .line 2623
    return-void
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    .line 2642
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2643
    return-void
.end method

.method public whitelist onSearchRequested()Z
    .registers 4

    .line 5463
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 5465
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    const/4 v1, 0x6

    if-eq v0, v1, :cond_19

    .line 5467
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 5468
    const/4 v0, 0x1

    return v0

    .line 5470
    :cond_19
    return v2
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3

    .line 5453
    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 5454
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result p1

    .line 5455
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 5456
    return p1
.end method

.method protected whitelist onStart()V
    .registers 2

    .line 2205
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2207
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 2209
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityStarted()V

    .line 2211
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityStarted()V

    .line 2212
    return-void
.end method

.method public whitelist onStateNotSaved()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2254
    return-void
.end method

.method protected whitelist onStop()V
    .registers 4

    .line 2948
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 2949
    :cond_a
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->onStop(Landroid/app/Activity;)V

    .line 2950
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityStopped()V

    .line 2951
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 2952
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2954
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    iget-boolean v2, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/AutofillClientController;->onActivityStopped(Landroid/content/Intent;Z)V

    .line 2956
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyVoiceInteractionManagerServiceActivityEvent(I)V

    .line 2958
    return-void
.end method

.method protected whitelist onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4

    .line 8100
    iget-boolean v0, p0, Landroid/app/Activity;->mTitleReady:Z

    if-eqz v0, :cond_1b

    .line 8101
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 8102
    if-eqz v0, :cond_12

    .line 8103
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 8104
    if-eqz p2, :cond_12

    .line 8105
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    .line 8108
    :cond_12
    iget-object p2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz p2, :cond_1b

    .line 8109
    iget-object p2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p2, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 8112
    :cond_1b
    return-void
.end method

.method public whitelist onTopResumedActivityChanged(Z)V
    .registers 2

    .line 2348
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 4412
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 4413
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4414
    const/4 p1, 0x1

    return p1

    .line 4417
    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 4435
    const/4 p1, 0x0

    return p1
.end method

.method greylist-max-o onTranslucentConversionComplete(Z)V
    .registers 4

    .line 8629
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_c

    .line 8630
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 8631
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 8633
    :cond_c
    iget-boolean p1, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-eqz p1, :cond_1a

    .line 8634
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 8636
    :cond_1a
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 3

    .line 3634
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3635
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    .line 3636
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_11

    .line 3637
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchTrimMemory(I)V

    .line 3639
    :cond_11
    return-void
.end method

.method public whitelist onUserInteraction()V
    .registers 1

    .line 4487
    return-void
.end method

.method protected whitelist onUserLeaveHint()V
    .registers 1

    .line 2747
    return-void
.end method

.method public whitelist onVisibleBehindCanceled()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8722
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 8723
    return-void
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 4493
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1e

    .line 4494
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4495
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 4496
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4497
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v0, :cond_1e

    .line 4498
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureManager;->updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4502
    :cond_1e
    return-void
.end method

.method public greylist-max-o onWindowDismissed(ZZ)V
    .registers 4

    .line 4595
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_6

    :cond_5
    move p1, v0

    :goto_6
    invoke-direct {p0, p1}, Landroid/app/Activity;->finish(I)V

    .line 4596
    if-eqz p2, :cond_e

    .line 4597
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 4599
    :cond_e
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 2

    .line 4548
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 8907
    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    if-nez v0, :cond_12

    .line 8908
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 8909
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_12

    .line 8910
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 8913
    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 8923
    const/4 v0, 0x0

    :try_start_1
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8924
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    .line 8926
    iput v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8924
    return-object p1

    .line 8926
    :catchall_a
    move-exception p1

    iput v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8927
    throw p1
.end method

.method public whitelist openContextMenu(Landroid/view/View;)V
    .registers 2

    .line 5157
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 5158
    return-void
.end method

.method public whitelist openOptionsMenu()V
    .registers 4

    .line 5091
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 5092
    invoke-virtual {v0}, Landroid/app/ActionBar;->openOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 5093
    :cond_15
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 5095
    :cond_1b
    return-void
.end method

.method public whitelist overrideActivityTransition(III)V
    .registers 5

    .line 7018
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->overrideActivityTransition(IIII)V

    .line 7019
    return-void
.end method

.method public whitelist overrideActivityTransition(IIII)V
    .registers 11

    .line 7077
    const/4 v0, 0x1

    if-eqz p1, :cond_e

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 7078
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Override type must be either open or close"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7081
    :cond_e
    :goto_e
    move v1, v0

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-nez p1, :cond_19

    move p1, v1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    move v3, p2

    move v4, p3

    move v5, p4

    move-object v1, v2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityClient;->overrideActivityTransition(Landroid/os/IBinder;ZIII)V

    .line 7083
    return-void
.end method

.method public whitelist overridePendingTransition(II)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(III)V

    .line 7127
    return-void
.end method

.method public whitelist overridePendingTransition(III)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7151
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityClient;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 7153
    return-void
.end method

.method final greylist-max-o performCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 9284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 9285
    return-void
.end method

.method final greylist-max-r performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 11

    .line 9289
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performCreate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9291
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9290
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9293
    :cond_25
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreCreated(Landroid/os/Bundle;)V

    .line 9294
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9296
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 9297
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 9298
    invoke-static {v3}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    .line 9299
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_45

    move v3, v2

    goto :goto_46

    :cond_45
    move v3, v5

    :goto_46
    iput-boolean v3, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 9300
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111015a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    .line 9301
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 9302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 9303
    if-eqz p2, :cond_62

    .line 9304
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_65

    .line 9306
    :cond_62
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 9308
    :goto_65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 9309
    iget p2, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "performCreate"

    invoke-static {p2, v3, v4, v6, v7}, Landroid/app/EventLogTags;->writeWmOnCreateCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9311
    iget-object p2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p2, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 9313
    iget-object p2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v3, 0xa

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    xor-int/2addr p2, v2

    iput-boolean p2, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 9315
    iget-object p2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p2}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    .line 9316
    iget-object p2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Landroid/app/ActivityTransitionState;->setEnterSceneTransitionInfo(Landroid/app/Activity;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 9317
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostCreated(Landroid/os/Bundle;)V

    .line 9318
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9319
    return-void
.end method

.method final greylist-max-o performDestroy()V
    .registers 8

    .line 9619
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performDestroy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9621
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9620
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9623
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreDestroyed()V

    .line 9624
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mDestroyed:Z

    .line 9625
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->destroy()V

    .line 9626
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchDestroy()V

    .line 9627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 9628
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    .line 9629
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 9630
    iget v2, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "performDestroy"

    invoke-static {v2, v3, v6, v4, v5}, Landroid/app/EventLogTags;->writeWmOnDestroyCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9632
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->doLoaderDestroy()V

    .line 9633
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v2, :cond_5f

    .line 9634
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v2}, Landroid/app/VoiceInteractor;->detachActivity()V

    .line 9636
    :cond_5f
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostDestroyed()V

    .line 9637
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9638
    return-void
.end method

.method final greylist-max-o performNewIntent(Landroid/content/Intent;)V
    .registers 5

    .line 9322
    const-string/jumbo v0, "performNewIntent"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9323
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9324
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 9325
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 9326
    return-void
.end method

.method final blacklist performNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 6

    .line 9330
    const-string/jumbo v0, "performNewIntent"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9331
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9332
    iput-object p2, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    .line 9333
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 9334
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/Activity;->mCurrentCaller:Landroid/app/ComponentCaller;

    .line 9335
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 9336
    return-void
.end method

.method final greylist-max-o performPause()V
    .registers 9

    .line 9521
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performPause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9523
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9522
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9526
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->isTvImplicitEnterPipProhibited()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    .line 9527
    iput-boolean v3, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9530
    :cond_2e
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPrePaused()V

    .line 9531
    iput-boolean v3, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 9532
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchPause()V

    .line 9533
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/jank/Flags;->detailedAppJankMetricsApi()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 9534
    invoke-direct {p0}, Landroid/app/Activity;->stopAppJankTracking()V

    .line 9536
    :cond_41
    iput-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    .line 9537
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 9538
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    .line 9539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 9540
    iget v2, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "performPause"

    invoke-static {v2, v4, v5, v6, v7}, Landroid/app/EventLogTags;->writeWmOnPausedCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9542
    iput-boolean v3, p0, Landroid/app/Activity;->mResumed:Z

    .line 9543
    iget-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_95

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_70

    goto :goto_95

    .line 9545
    :cond_70
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9546
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

    .line 9549
    :cond_95
    :goto_95
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostPaused()V

    .line 9550
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9551
    return-void
.end method

.method final blacklist performRestart(Z)V
    .registers 11

    .line 9399
    const-string/jumbo v0, "performRestart"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9400
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9401
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 9403
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_22

    .line 9405
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v4, v3}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 9408
    :cond_22
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-eqz v0, :cond_da

    .line 9409
    iput-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    .line 9411
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 9412
    :try_start_2b
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 9413
    move v5, v3

    :goto_32
    if-ge v5, v4, :cond_84

    .line 9414
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity$ManagedCursor;

    .line 9415
    invoke-static {v6}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z

    move-result v7

    if-nez v7, :cond_48

    invoke-static {v6}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmUpdated(Landroid/app/Activity$ManagedCursor;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 9416
    :cond_48
    invoke-static {v6}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->requery()Z

    move-result v7

    if-nez v7, :cond_7b

    .line 9417
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xe

    if-ge v7, v8, :cond_5d

    goto :goto_7b

    .line 9419
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trying to requery an already closed cursor  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9424
    :cond_7b
    :goto_7b
    invoke-static {v6, v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V

    .line 9425
    invoke-static {v6, v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmUpdated(Landroid/app/Activity$ManagedCursor;Z)V

    .line 9413
    :cond_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 9428
    :cond_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_2b .. :try_end_85} :catchall_d7

    .line 9430
    iput-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    .line 9431
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 9432
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 9433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 9434
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "performRestart"

    invoke-static {v0, v3, v4, v5, v6}, Landroid/app/EventLogTags;->writeWmOnRestartCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9436
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_b2

    .line 9441
    if-eqz p1, :cond_da

    .line 9442
    const-string/jumbo p1, "performRestart"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    goto :goto_da

    .line 9437
    :cond_b2
    new-instance p1, Landroid/util/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9438
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " did not call through to super.onRestart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9428
    :catchall_d7
    move-exception p1

    :try_start_d8
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw p1

    .line 9445
    :cond_da
    :goto_da
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 9446
    return-void
.end method

.method final greylist-max-o performRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 2005
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2006
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 2007
    return-void
.end method

.method final greylist-max-o performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    .line 2020
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2021
    if-eqz p1, :cond_8

    .line 2022
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 2024
    :cond_8
    return-void
.end method

.method final greylist-max-o performResume(ZLjava/lang/String;)V
    .registers 13

    .line 9449
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performResume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9451
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9450
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9453
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreResumed()V

    .line 9455
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9457
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 9459
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 9461
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/autofill/AutofillClientController;->onActivityPerformResume(Z)V

    .line 9463
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/app/Activity;->mCalled:Z

    .line 9464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 9466
    iget-object v4, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 9467
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 9468
    iget v6, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2, v4, v5}, Landroid/app/EventLogTags;->writeWmOnResumeCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9470
    iget-boolean p2, p0, Landroid/app/Activity;->mCalled:Z

    const-string v4, "Activity "

    if-eqz p2, :cond_137

    .line 9477
    iget-boolean p2, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    const-string v5, "Activity"

    if-nez p2, :cond_9b

    iget-boolean p2, p0, Landroid/app/Activity;->mFinished:Z

    if-nez p2, :cond_9b

    .line 9478
    const-string p2, "An activity without a UI must call finish() before onResume() completes"

    invoke-static {v5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9479
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x16

    if-gt p2, v6, :cond_78

    goto :goto_9b

    .line 9481
    :cond_78
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9482
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " did not call finish() prior to onResume() completing"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9488
    :cond_9b
    :goto_9b
    iput-boolean p1, p0, Landroid/app/Activity;->mCalled:Z

    .line 9490
    iget-object p1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1}, Landroid/app/FragmentController;->dispatchResume()V

    .line 9491
    iget-object p1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 9493
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    .line 9494
    const-wide/16 v6, 0x1f4

    cmp-long v8, p1, v6

    if-lez v8, :cond_c8

    .line 9495
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Slow operation Fragment dispatchResume since onResume, duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9499
    :cond_c8
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    .line 9500
    iget-boolean p1, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz p1, :cond_114

    .line 9505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    .line 9506
    cmp-long v4, p1, v6

    if-lez v4, :cond_ee

    .line 9507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Slow operation onPostResume since onResume, duration="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9510
    :cond_ee
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostResumed()V

    .line 9512
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    .line 9513
    cmp-long v2, p1, v6

    if-lez v2, :cond_110

    .line 9514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation dispatchActivityPostResumed since onResume, duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9517
    :cond_110
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9518
    return-void

    .line 9501
    :cond_114
    new-instance p1, Landroid/util/SuperNotCalledException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9502
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " did not call through to super.onPostResume()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9471
    :cond_137
    new-instance p1, Landroid/util/SuperNotCalledException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9472
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " did not call through to super.onResume()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final greylist-max-o performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 2538
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V

    .line 2539
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2540
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 2541
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    .line 2542
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 2544
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V

    .line 2545
    return-void
.end method

.method final greylist-max-o performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    .line 2558
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V

    .line 2559
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2560
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 2561
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 2564
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V

    .line 2565
    return-void
.end method

.method final greylist-max-o performStart(Ljava/lang/String;)V
    .registers 10

    .line 9339
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9341
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9340
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9343
    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreStarted()V

    .line 9344
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/app/ActivityTransitionState;->setEnterSceneTransitionInfo(Landroid/app/Activity;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 9345
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 9346
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 9347
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 9348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 9349
    iget-object v5, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 9350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 9351
    iget v3, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1, v5, v6}, Landroid/app/EventLogTags;->writeWmOnStartCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9354
    iget-boolean p1, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz p1, :cond_f2

    .line 9359
    iget-object p1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1}, Landroid/app/FragmentController;->dispatchStart()V

    .line 9360
    iget-object p1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1}, Landroid/app/FragmentController;->reportLoaderStart()V

    .line 9363
    iget-object p1, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 9364
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_76

    move p1, v3

    goto :goto_77

    :cond_76
    move p1, v2

    .line 9365
    :goto_77
    if-eqz p1, :cond_df

    .line 9366
    invoke-static {}, Landroid/app/Activity;->getDlWarning()Ljava/lang/String;

    move-result-object v4

    .line 9367
    if-eqz v4, :cond_df

    .line 9368
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 9369
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9370
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detected problems with app native libraries\n(please consult log for detail):\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9372
    if-eqz p1, :cond_c1

    .line 9373
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9374
    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 9375
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 9376
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 9377
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 9378
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_df

    .line 9380
    :cond_c1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9385
    :cond_df
    :goto_df
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/GraphicsEnvironment;->showAngleInUseDialogBox(Landroid/content/Context;)V

    .line 9387
    iget-object p1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p1, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 9388
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostStarted()V

    .line 9389
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9390
    return-void

    .line 9355
    :cond_f2
    new-instance p1, Landroid/util/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9356
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " did not call through to super.onStart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final greylist-max-o performStop(ZLjava/lang/String;)V
    .registers 11

    .line 9563
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 9564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9565
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9564
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9567
    :cond_25
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 9568
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-boolean v4, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 9571
    iput-boolean v2, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9573
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v3, :cond_d1

    .line 9574
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreStopped()V

    .line 9575
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_41

    .line 9576
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    .line 9582
    :cond_41
    const/4 v3, 0x1

    if-nez p1, :cond_55

    iget-object p1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz p1, :cond_55

    iget-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez p1, :cond_55

    .line 9583
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p1

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v4, v3}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 9586
    :cond_55
    iget-object p1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1}, Landroid/app/FragmentController;->dispatchStop()V

    .line 9588
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 9589
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 9590
    iget-object p1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p1, p0}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 9591
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 9592
    iget p1, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, p2, v6, v7}, Landroid/app/EventLogTags;->writeWmOnStopCalled(ILjava/lang/String;Ljava/lang/String;J)V

    .line 9594
    iget-boolean p1, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz p1, :cond_ac

    .line 9600
    iget-object p1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter p1

    .line 9601
    :try_start_7e
    iget-object p2, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 9602
    move v4, v2

    :goto_85
    if-ge v4, p2, :cond_a2

    .line 9603
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity$ManagedCursor;

    .line 9604
    invoke-static {v5}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 9605
    invoke-static {v5}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    .line 9606
    invoke-static {v5, v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V

    .line 9602
    :cond_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 9609
    :cond_a2
    monitor-exit p1
    :try_end_a3
    .catchall {:try_start_7e .. :try_end_a3} :catchall_a9

    .line 9611
    iput-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    .line 9612
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostStopped()V

    goto :goto_d1

    .line 9609
    :catchall_a9
    move-exception p2

    :try_start_aa
    monitor-exit p1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw p2

    .line 9595
    :cond_ac
    new-instance p1, Landroid/util/SuperNotCalledException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 9596
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " did not call through to super.onStop()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9614
    :cond_d1
    :goto_d1
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 9615
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 9616
    return-void
.end method

.method final blacklist performTopResumedActivityChanged(ZLjava/lang/String;)V
    .registers 4

    .line 2351
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    .line 2353
    if-eqz p1, :cond_13

    .line 2354
    iget p1, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/app/EventLogTags;->writeWmOnTopResumedGainedCalled(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 2357
    :cond_13
    iget p1, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/app/EventLogTags;->writeWmOnTopResumedLostCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 2360
    :goto_20
    return-void
.end method

.method final greylist-max-o performUserLeaving()V
    .registers 2

    .line 9554
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 9556
    invoke-direct {p0}, Landroid/app/Activity;->isTvImplicitEnterPipProhibited()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 9557
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 9559
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 9560
    return-void
.end method

.method public whitelist postponeEnterTransition()V
    .registers 2

    .line 9132
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    .line 9133
    return-void
.end method

.method public whitelist recreate()V
    .registers 3

    .line 7509
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_20

    .line 7512
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 7515
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->scheduleRelaunchActivity(Landroid/os/IBinder;)V

    .line 7516
    return-void

    .line 7513
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7510
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called on top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    .line 1538
    iget-object v0, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1539
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    monitor-exit v0

    .line 1541
    return-void

    .line 1540
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4

    .line 1560
    const-wide/32 v0, 0xb84ba9c

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-nez v0, :cond_14

    .line 1562
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 1564
    :cond_14
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_1e

    .line 1565
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_21

    .line 1567
    :cond_1e
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1569
    :goto_21
    return-void
.end method

.method public whitelist registerForContextMenu(Landroid/view/View;)V
    .registers 2

    .line 5135
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 5136
    return-void
.end method

.method public blacklist registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 4

    .line 10005
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    .line 10006
    return-void
.end method

.method public whitelist registerScreenCaptureCallback(Ljava/util/concurrent/Executor;Landroid/app/Activity$ScreenCaptureCallback;)V
    .registers 5

    .line 10233
    iget-object v0, p0, Landroid/app/Activity;->mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

    if-nez v0, :cond_d

    .line 10234
    new-instance v0, Landroid/app/ScreenCaptureCallbackHandler;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/app/ScreenCaptureCallbackHandler;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/app/Activity;->mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

    .line 10236
    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ScreenCaptureCallbackHandler;->registerScreenCaptureCallback(Ljava/util/concurrent/Executor;Landroid/app/Activity$ScreenCaptureCallback;)V

    .line 10237
    return-void
.end method

.method public whitelist releaseInstance()Z
    .registers 3

    .line 7663
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public final whitelist removeDialog(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5419
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_18

    .line 5420
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5421
    if-eqz v0, :cond_18

    .line 5422
    iget-object v0, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5423
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5426
    :cond_18
    return-void
.end method

.method public whitelist reportFullyDrawn()V
    .registers 6

    .line 3069
    iget-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    if-eqz v0, :cond_47

    .line 3070
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 3071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFullyDrawn() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 3072
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3071
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3074
    :cond_29
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 3076
    :try_start_2c
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-boolean v4, p0, Landroid/app/Activity;->mRestoredFromBundle:Z

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityClient;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 3078
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->notifyStartupCompleted()V
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_42

    .line 3080
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3081
    goto :goto_47

    .line 3080
    :catchall_42
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3081
    throw v2

    .line 3083
    :cond_47
    :goto_47
    return-void
.end method

.method public whitelist requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .registers 3

    .line 9152
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p1

    .line 9153
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/DragAndDropPermissions;->take(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9154
    return-object p1

    .line 9156
    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist requestFullscreenMode(ILandroid/os/OutcomeReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 3344
    iget-object v0, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 3345
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 3344
    invoke-static {p1, p2, v0, v1}, Landroid/app/FullscreenRequestHandler;->requestFullscreenMode(ILandroid/os/OutcomeReceiver;Landroid/content/res/Configuration;Landroid/os/IBinder;)V

    .line 3346
    return-void
.end method

.method public final whitelist requestOpenInBrowserEducation()V
    .registers 3

    .line 1311
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->requestOpenInBrowserEducation(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1314
    goto :goto_b

    .line 1312
    :catch_a
    move-exception v0

    .line 1315
    :goto_b
    return-void
.end method

.method public final whitelist requestPermissions([Ljava/lang/String;I)V
    .registers 4

    .line 5768
    invoke-virtual {p0}, Landroid/app/Activity;->getDeviceId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;II)V

    .line 5769
    return-void
.end method

.method public final whitelist requestPermissions([Ljava/lang/String;II)V
    .registers 14

    .line 5840
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_12

    .line 5841
    new-array v0, v2, [Ljava/lang/String;

    new-array v1, v2, [I

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[II)V

    .line 5844
    :cond_12
    if-ltz p2, :cond_d2

    .line 5848
    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    const-string v1, "Activity"

    if-eqz v0, :cond_27

    .line 5849
    const-string p1, "Can request only one set of permissions at a time"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5851
    new-array p1, v2, [Ljava/lang/String;

    new-array v0, v2, [I

    invoke-virtual {p0, p2, p1, v0, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[II)V

    .line 5852
    return-void

    .line 5855
    :cond_27
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    .line 5856
    move v0, v2

    :goto_36
    array-length v3, p1

    if-ge v0, v3, :cond_67

    .line 5857
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 5856
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 5858
    :cond_4c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot request renounced permission: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget-object p1, p1, v0

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5864
    :cond_67
    invoke-virtual {p0}, Landroid/app/Activity;->getDeviceId()I

    move-result v0

    if-ne v0, p3, :cond_6f

    move-object v0, p0

    goto :goto_73

    :cond_6f
    invoke-virtual {p0, p3}, Landroid/app/Activity;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0

    .line 5865
    :goto_73
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->permissionRequestShortCircuitEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_be

    .line 5866
    invoke-direct {p0, v0, p1}, Landroid/app/Activity;->getPermissionRequestStates(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v3

    .line 5867
    nop

    .line 5868
    move v5, v2

    :goto_80
    array-length v6, v3

    if-ge v5, v6, :cond_8d

    .line 5869
    aget v6, v3, v5

    if-ne v6, v4, :cond_8a

    .line 5870
    nop

    .line 5871
    move v5, v4

    goto :goto_8e

    .line 5868
    :cond_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    :cond_8d
    move v5, v2

    .line 5875
    :goto_8e
    if-nez v5, :cond_ba

    .line 5876
    iput-boolean v4, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 5877
    const-string v0, "No requestable permission in the request."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5878
    array-length v0, v3

    new-array v8, v0, [I

    .line 5879
    move v0, v2

    :goto_9b
    array-length v1, v3

    if-ge v0, v1, :cond_ab

    .line 5880
    aget v1, v3, v0

    if-nez v1, :cond_a5

    .line 5881
    aput v2, v8, v0

    goto :goto_a8

    .line 5883
    :cond_a5
    const/4 v1, -0x1

    aput v1, v8, v0

    .line 5879
    :goto_a8
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 5888
    :cond_ab
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/app/Activity$$ExternalSyntheticLambda1;

    move-object v5, p0

    move-object v7, p1

    move v6, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/app/Activity$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;I[Ljava/lang/String;[II)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5892
    return-void

    .line 5875
    :cond_ba
    move-object v5, p0

    move-object v7, p1

    move v6, p2

    goto :goto_c1

    .line 5865
    :cond_be
    move-object v5, p0

    move-object v7, p1

    move v6, p2

    .line 5896
    :goto_c1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 5897
    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 5898
    const-string p2, "@android:requestPermissions:"

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, v6, p3}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5899
    iput-boolean v4, v5, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 5900
    return-void

    .line 5845
    :cond_d2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "requestCode should be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist requestShowKeyboardShortcuts()V
    .registers 4

    .line 2869
    nop

    .line 2870
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104030a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2869
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2872
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2873
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2874
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2875
    return-void
.end method

.method public whitelist requestVisibleBehind(Z)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8700
    const/4 p1, 0x0

    return p1
.end method

.method public final whitelist requestWindowFeature(I)Z
    .registers 3

    .line 5563
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3858
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 3859
    if-eqz p1, :cond_7

    .line 3862
    return-object p1

    .line 3860
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ID does not reference a View inside this Activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;
    .registers 6

    .line 3594
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 3595
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v1

    .line 3596
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->retainNestedNonConfig()Landroid/app/FragmentManagerNonConfig;

    move-result-object v2

    .line 3602
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 3603
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 3604
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v3

    .line 3606
    if-nez v0, :cond_2d

    if-nez v1, :cond_2d

    if-nez v2, :cond_2d

    if-nez v3, :cond_2d

    iget-object v4, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-nez v4, :cond_2d

    .line 3608
    const/4 v0, 0x0

    return-object v0

    .line 3611
    :cond_2d
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 3612
    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 3613
    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 3614
    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    .line 3615
    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    .line 3616
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_47

    .line 3617
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->retainInstance()V

    .line 3618
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    .line 3620
    :cond_47
    return-object v4
.end method

.method public final whitelist runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 8306
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_e

    .line 8307
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 8309
    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8311
    :goto_11
    return-void
.end method

.method public whitelist setActionBar(Landroid/widget/Toolbar;)V
    .registers 4

    .line 3892
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3893
    instance-of v1, v0, Lcom/android/internal/app/WindowDecorActionBar;

    if-nez v1, :cond_32

    .line 3901
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 3904
    if-eqz v0, :cond_10

    .line 3905
    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    .line 3908
    :cond_10
    if-eqz p1, :cond_27

    .line 3909
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 3910
    iput-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3911
    iget-object p1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 3912
    goto :goto_2e

    .line 3913
    :cond_27
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3915
    iget-object p1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 3918
    :goto_2e
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3919
    return-void

    .line 3894
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setActivityRecordInputSinkEnabled(Z)V
    .registers 4

    .line 10057
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V

    .line 10058
    return-void
.end method

.method public whitelist setAllowCrossUidActivitySwitchFromBelow(Z)V
    .registers 4

    .line 9993
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V

    .line 9994
    return-void
.end method

.method public whitelist setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 3

    .line 4025
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    .line 4026
    return-void
.end method

.method public whitelist setContentView(I)V
    .registers 3

    .line 3953
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 3954
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3955
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 3

    .line 3973
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 3974
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3975
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 3989
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3990
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3991
    return-void
.end method

.method public final whitelist setDefaultKeyMode(I)V
    .registers 3

    .line 4124
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 4128
    packed-switch p1, :pswitch_data_1e

    .line 4140
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4136
    :pswitch_b
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 4137
    iget-object p1, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4138
    goto :goto_1d

    .line 4131
    :pswitch_19
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 4132
    nop

    .line 4142
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_b
        :pswitch_19
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public setDisablePreviewScreenshots(Z)V
    .registers 2

    .line 9893
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRecentsScreenshotEnabled(Z)V

    .line 9894
    return-void
.end method

.method public whitelist setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 2

    .line 9094
    if-nez p1, :cond_4

    .line 9095
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 9097
    :cond_4
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 9098
    return-void
.end method

.method public whitelist setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 2

    .line 9110
    if-nez p1, :cond_4

    .line 9111
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 9113
    :cond_4
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 9114
    return-void
.end method

.method public final whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 5587
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 5588
    return-void
.end method

.method public final whitelist setFeatureDrawableAlpha(II)V
    .registers 4

    .line 5595
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 5596
    return-void
.end method

.method public final whitelist setFeatureDrawableResource(II)V
    .registers 4

    .line 5571
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 5572
    return-void
.end method

.method public final whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 4

    .line 5579
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 5580
    return-void
.end method

.method public whitelist setFinishOnTouchOutside(Z)V
    .registers 3

    .line 4045
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 4046
    return-void
.end method

.method public final blacklist setForceSendResultForMediaProjection()V
    .registers 3

    .line 7185
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->setForceSendResultForMediaProjection(Landroid/os/IBinder;)V

    .line 7186
    return-void
.end method

.method public final blacklist setHandoffEnabled(ZZ)V
    .registers 5

    .line 7776
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/ActivityClient;->setHandoffEnabled(Landroid/os/IBinder;ZZ)V

    .line 7778
    return-void
.end method

.method public whitelist setImmersive(Z)V
    .registers 4

    .line 8801
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setImmersive(Landroid/os/IBinder;Z)V

    .line 8802
    return-void
.end method

.method public whitelist setInheritShowWhenLocked(Z)V
    .registers 4

    .line 9951
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 9952
    return-void
.end method

.method public whitelist setIntent(Landroid/content/Intent;)V
    .registers 3

    .line 1188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Activity;->internalSetIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 1189
    return-void
.end method

.method public whitelist setIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 3

    .line 1233
    invoke-direct {p0, p1, p2}, Landroid/app/Activity;->internalSetIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 1234
    return-void
.end method

.method public whitelist setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .registers 6

    .line 1268
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IActivityManager;->setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1271
    goto :goto_10

    .line 1269
    :catch_c
    move-exception v0

    .line 1270
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1273
    :goto_10
    if-eqz p1, :cond_15

    .line 1274
    invoke-direct {p0, p1, p2}, Landroid/app/Activity;->setLocusContextToContentCapture(Landroid/content/LocusId;Landroid/os/Bundle;)V

    .line 1276
    :cond_15
    return-void
.end method

.method public final whitelist setMediaController(Landroid/media/session/MediaController;)V
    .registers 3

    .line 8284
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    .line 8285
    return-void
.end method

.method public greylist-max-o setOverlayWithDecorCaptionEnabled(Z)V
    .registers 3

    .line 9828
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setOverlayWithDecorCaptionEnabled(Z)V

    .line 9829
    return-void
.end method

.method final greylist-max-p setParent(Landroid/app/Activity;)V
    .registers 2

    .line 9163
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 9164
    return-void
.end method

.method public greylist setPersistent(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3818
    return-void
.end method

.method public whitelist setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .registers 4

    .line 3266
    invoke-direct {p0}, Landroid/app/Activity;->deviceSupportsPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3267
    return-void

    .line 3269
    :cond_7
    if-eqz p1, :cond_13

    .line 3272
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 3273
    return-void

    .line 3270
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected non-null picture-in-picture params"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist setProgress(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8210
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit8 p1, p1, 0x0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 8211
    return-void
.end method

.method public final whitelist setProgressBarIndeterminate(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8192
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 8193
    if-eqz p1, :cond_8

    const/4 p1, -0x3

    goto :goto_9

    .line 8194
    :cond_8
    const/4 p1, -0x4

    .line 8192
    :goto_9
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 8195
    return-void
.end method

.method public final whitelist setProgressBarIndeterminateVisibility(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8176
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 8177
    if-eqz p1, :cond_8

    const/4 p1, -0x1

    goto :goto_9

    :cond_8
    const/4 p1, -0x2

    .line 8176
    :goto_9
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 8178
    return-void
.end method

.method public final whitelist setProgressBarVisibility(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8161
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    goto :goto_9

    .line 8162
    :cond_8
    const/4 p1, -0x2

    .line 8161
    :goto_9
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 8163
    return-void
.end method

.method public whitelist setRecentsScreenshotEnabled(Z)V
    .registers 4

    .line 9915
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V

    .line 9916
    return-void
.end method

.method public whitelist setRequestedOrientation(I)V
    .registers 4

    .line 7871
    iget v0, p0, Landroid/app/Activity;->mLastRequestedOrientation:I

    if-ne p1, v0, :cond_5

    .line 7872
    return-void

    .line 7874
    :cond_5
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_13

    .line 7875
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setRequestedOrientation(Landroid/os/IBinder;I)V

    goto :goto_18

    .line 7877
    :cond_13
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7879
    :goto_18
    iput p1, p0, Landroid/app/Activity;->mLastRequestedOrientation:I

    .line 7880
    return-void
.end method

.method public final whitelist setResult(I)V
    .registers 2

    .line 7168
    monitor-enter p0

    .line 7169
    :try_start_1
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 7170
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 7171
    monitor-exit p0

    .line 7172
    return-void

    .line 7171
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final whitelist setResult(ILandroid/content/Intent;)V
    .registers 3

    .line 7211
    monitor-enter p0

    .line 7212
    :try_start_1
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 7213
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 7214
    monitor-exit p0

    .line 7215
    return-void

    .line 7214
    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final whitelist setSecondaryProgress(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8229
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit16 p1, p1, 0x4e20

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 8231
    return-void
.end method

.method public whitelist setShouldDockBigOverlays(Z)V
    .registers 4

    .line 3367
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V

    .line 3368
    iput-boolean p1, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    .line 3369
    return-void
.end method

.method public whitelist setShowWhenLocked(Z)V
    .registers 4

    .line 9932
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 9933
    return-void
.end method

.method public whitelist setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 4

    .line 8130
    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eq v0, p1, :cond_2b

    .line 8131
    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V

    .line 8133
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 8134
    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v0

    .line 8135
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8137
    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 8140
    :cond_2b
    iget p1, p0, Landroid/app/Activity;->mLastTaskDescriptionHashCode:I

    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->hashCode()I

    move-result v0

    if-ne p1, v0, :cond_36

    .line 8144
    return-void

    .line 8146
    :cond_36
    iget-object p1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->hashCode()I

    move-result p1

    iput p1, p0, Landroid/app/Activity;->mLastTaskDescriptionHashCode:I

    .line 8147
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p1, v0, v1}, Landroid/app/ActivityClient;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 8148
    return-void
.end method

.method public whitelist setTheme(I)V
    .registers 3

    .line 5626
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 5627
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTheme(I)V

    .line 5628
    return-void
.end method

.method public whitelist setTitle(I)V
    .registers 2

    .line 8072
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 8073
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 8057
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 8058
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 8060
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 8061
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 8063
    :cond_10
    return-void
.end method

.method public whitelist setTitleColor(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8087
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 8088
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 8089
    return-void
.end method

.method public whitelist setTranslucent(Z)Z
    .registers 2

    .line 8556
    if-eqz p1, :cond_8

    .line 8557
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result p1

    return p1

    .line 8559
    :cond_8
    invoke-direct {p0}, Landroid/app/Activity;->convertFromTranslucentInternal()Z

    move-result p1

    return p1
.end method

.method public whitelist setTurnScreenOn(Z)V
    .registers 4

    .line 9974
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 9975
    return-void
.end method

.method public whitelist setVisible(Z)V
    .registers 3

    .line 7434
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eq v0, p1, :cond_16

    .line 7435
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 7436
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_16

    .line 7437
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    goto :goto_16

    .line 7438
    :cond_10
    iget-object p1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7441
    :cond_16
    :goto_16
    return-void
.end method

.method greylist-max-o setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 6

    .line 2363
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_21

    .line 2364
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    move-result-object v0

    .line 2365
    if-eqz v0, :cond_21

    .line 2366
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 2367
    invoke-virtual {v3}, Landroid/app/VoiceInteractor$Request;->cancel()V

    .line 2368
    invoke-virtual {v3}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 2366
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2372
    :cond_21
    if-nez p1, :cond_27

    .line 2373
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_32

    .line 2375
    :cond_27
    new-instance v0, Landroid/app/VoiceInteractor;

    .line 2376
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p0, p0, v1}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 2378
    :goto_32
    return-void
.end method

.method public final whitelist setVolumeControlStream(I)V
    .registers 3

    .line 8250
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 8251
    return-void
.end method

.method public whitelist setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 8860
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/ActivityClient;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result p1

    if-nez p1, :cond_d

    .line 8863
    return-void

    .line 8861
    :cond_d
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist shouldDockBigOverlays()Z
    .registers 2

    .line 3381
    iget-boolean v0, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    return v0
.end method

.method public whitelist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3

    .line 5976
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist shouldShowRequestPermissionRationale(Ljava/lang/String;I)Z
    .registers 4

    .line 5996
    invoke-virtual {p0}, Landroid/app/Activity;->getDeviceId()I

    move-result v0

    if-ne v0, p2, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    goto :goto_13

    .line 5997
    :cond_b
    invoke-virtual {p0, p2}, Landroid/app/Activity;->createDeviceContext(I)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 5998
    :goto_13
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist shouldUpRecreateTask(Landroid/content/Intent;)Z
    .registers 5

    .line 8967
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8968
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 8969
    if-nez v2, :cond_f

    .line 8970
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    .line 8972
    :cond_f
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 8973
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 8974
    return v0

    .line 8976
    :cond_18
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/app/ActivityClient;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result p1
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_24} :catch_25

    return p1

    .line 8977
    :catch_25
    move-exception p1

    .line 8978
    return v0
.end method

.method public whitelist showAssist(Landroid/os/Bundle;)Z
    .registers 4

    .line 2927
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final whitelist showDialog(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 5303
    return-void
.end method

.method public final whitelist showDialog(ILandroid/os/Bundle;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5337
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 5338
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 5340
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5341
    if-nez v0, :cond_30

    .line 5342
    new-instance v0, Landroid/app/Activity$ManagedDialog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity-IA;)V

    .line 5343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 5344
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_2b

    .line 5345
    const/4 p1, 0x0

    return p1

    .line 5347
    :cond_2b
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5350
    :cond_30
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 5351
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 5352
    iget-object p1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 5353
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist showLockTaskEscapeMessage()V
    .registers 3

    .line 9804
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 9805
    return-void
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 8875
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 8889
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public whitelist startActivities([Landroid/content/Intent;)V
    .registers 3

    .line 6535
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6536
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 10

    .line 6562
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v4, p0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6564
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;)V
    .registers 3

    .line 6485
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6486
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    .line 6512
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/view/autofill/AutofillClientController;->onStartActivity(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 6513
    const/4 v0, -0x1

    if-eqz p2, :cond_10

    .line 6514
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_13

    .line 6518
    :cond_10
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6520
    :goto_13
    return-void
.end method

.method public greylist-max-o startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .registers 11

    .line 6323
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V

    .line 6324
    return-void
.end method

.method public blacklist startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V
    .registers 16

    .line 6334
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_35

    .line 6337
    invoke-direct {p0, p2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 6338
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6340
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6339
    move-object v4, p0

    move-object v1, p0

    move-object v5, p1

    move v8, p3

    move v9, p4

    move v6, p5

    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 6342
    move-object v8, v7

    if-eqz v0, :cond_31

    .line 6343
    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6344
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v6

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v7

    .line 6343
    move v5, p5

    invoke-virtual/range {v2 .. v7}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6346
    :cond_31
    invoke-direct {p0, v8}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6347
    return-void

    .line 6335
    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 18

    .line 6290
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_37

    .line 6293
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 6294
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6296
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6295
    const/4 v6, -0x1

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    .line 6298
    if-eqz p1, :cond_33

    .line 6299
    iget-object v8, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v9, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6300
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v12

    .line 6301
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v13

    .line 6299
    const/4 v11, -0x1

    invoke-virtual/range {v8 .. v13}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6303
    :cond_33
    invoke-direct {p0, v7}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6304
    return-void

    .line 6291
    :cond_37
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t be called from a child"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    .line 6270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6271
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    .line 6015
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6016
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 13

    .line 6055
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_38

    .line 6056
    invoke-direct {p0, p3}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 6057
    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6059
    invoke-virtual {p3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6058
    move-object v5, p0

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    .line 6061
    move v6, v7

    move-object p2, v8

    if-eqz p1, :cond_2f

    .line 6062
    iget-object v3, v2, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, v2, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, v2, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6063
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    .line 6064
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    .line 6062
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6066
    :cond_2f
    if-ltz v6, :cond_34

    .line 6074
    const/4 p1, 0x1

    iput-boolean p1, v2, Landroid/app/Activity;->mStartedActivity:Z

    .line 6077
    :cond_34
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6079
    goto :goto_47

    .line 6080
    :cond_38
    move-object v2, p0

    move v6, p2

    if-eqz p3, :cond_42

    .line 6081
    iget-object p2, v2, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {p2, p0, p1, v6, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_47

    .line 6085
    :cond_42
    iget-object p2, v2, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {p2, p0, p1, v6}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 6088
    :goto_47
    return-void
.end method

.method public greylist-max-r startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 15

    .line 6893
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 6894
    if-eqz v0, :cond_b

    .line 6895
    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6897
    :cond_b
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 6898
    iget-object v2, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p4, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6900
    invoke-virtual {p4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6899
    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    .line 6902
    move v7, v8

    move-object p2, v9

    if-eqz p1, :cond_34

    .line 6903
    iget-object v4, v3, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v5, v3, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6905
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v8

    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v9

    .line 6903
    invoke-virtual/range {v4 .. v9}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6907
    :cond_34
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6908
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6200
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6201
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6162
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6240
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_39

    .line 6243
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 6244
    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p4, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6245
    invoke-virtual {p4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6244
    move-object v2, p0

    move-object v6, p1

    move-object v5, p2

    move v7, p3

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    .line 6247
    move v6, v7

    move-object p2, v8

    if-eqz p1, :cond_30

    .line 6248
    iget-object v3, v2, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, v2, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, v2, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6249
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    .line 6248
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6251
    :cond_30
    if-ltz v6, :cond_35

    .line 6259
    const/4 p1, 0x1

    iput-boolean p1, v2, Landroid/app/Activity;->mStartedActivity:Z

    .line 6262
    :cond_35
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6263
    return-void

    .line 6241
    :cond_39
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t be called from a child"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6789
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6790
    return-void
.end method

.method public whitelist startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6816
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 6817
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p4, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6819
    invoke-virtual {p4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6818
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    .line 6821
    move v5, v6

    move-object p2, v7

    if-eqz p1, :cond_2b

    .line 6822
    iget-object v2, v1, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v4, v4, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6824
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v6

    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v7

    .line 6822
    invoke-virtual/range {v2 .. v7}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6826
    :cond_2b
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6827
    return-void
.end method

.method public whitelist startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6848
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6849
    return-void
.end method

.method public whitelist startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6877
    iget-object p1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6878
    return-void
.end method

.method public whitelist startActivityIfNeeded(Landroid/content/Intent;I)Z
    .registers 4

    .line 6639
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 17

    .line 6675
    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_39

    .line 6676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startActivity: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v11, p3

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Instrumentation"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 6675
    :cond_39
    move-object/from16 v11, p3

    .line 6679
    :goto_3b
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_87

    .line 6680
    nop

    .line 6682
    const/4 v12, 0x1

    :try_start_41
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 6683
    if-eqz v0, :cond_4c

    .line 6684
    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6686
    :cond_4c
    invoke-virtual {p1, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 6687
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6688
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6689
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6690
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6691
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6689
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, p1

    move v8, p2

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityTaskManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_78} :catch_79

    .line 6695
    goto :goto_7b

    .line 6693
    :catch_79
    move-exception v0

    move v0, v12

    .line 6697
    :goto_7b
    invoke-static {v0, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 6699
    if-ltz p2, :cond_82

    .line 6707
    iput-boolean v12, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 6709
    :cond_82
    if-eq v0, v12, :cond_85

    goto :goto_86

    :cond_85
    const/4 v12, 0x0

    :goto_86
    return v12

    .line 6712
    :cond_87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "startActivityIfNeeded can only be called from a top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6583
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 6585
    return-void
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6611
    if-eqz p6, :cond_f

    .line 6612
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

    .line 6617
    :cond_f
    const/4 v5, -0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 6620
    :goto_19
    return-void
.end method

.method public whitelist startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6368
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 6370
    return-void
.end method

.method public whitelist startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6413
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_12

    .line 6414
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    goto :goto_2f

    .line 6416
    :cond_12
    if-eqz p7, :cond_23

    .line 6417
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_2f

    .line 6422
    :cond_23
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 6425
    :goto_2f
    return-void
.end method

.method public blacklist startIntentSenderForResult(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6380
    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 6382
    return-void
.end method

.method public greylist-max-o startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6435
    move-object/from16 v4, p4

    move-object/from16 v0, p7

    :try_start_4
    invoke-direct {p0, v0}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 6436
    nop

    .line 6437
    const/4 v12, 0x0

    if-eqz v4, :cond_1c

    .line 6438
    invoke-virtual {v4, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 6439
    invoke-virtual {v4, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6440
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1d

    .line 6437
    :cond_1c
    move-object v5, v12

    .line 6442
    :goto_1d
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6443
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 6444
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    goto :goto_2f

    :cond_2e
    move-object v2, v12

    .line 6445
    :goto_2f
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/content/IntentSender;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object p1

    move-object v3, p1

    goto :goto_38

    :cond_37
    move-object v3, v12

    :goto_38
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6443
    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityTaskManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result p1

    .line 6448
    const/16 p2, -0x60

    if-eq p1, p2, :cond_52

    .line 6451
    invoke-static {p1, v12}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 6453
    if-eqz v11, :cond_51

    .line 6456
    invoke-direct {p0, v11}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6459
    :cond_51
    goto :goto_59

    .line 6449
    :cond_52
    new-instance p1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {p1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw p1
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_58} :catch_58

    .line 6458
    :catch_58
    move-exception v0

    .line 6460
    :goto_59
    if-ltz p3, :cond_5e

    .line 6468
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 6470
    :cond_5e
    return-void
.end method

.method public whitelist startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6929
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

    .line 6931
    return-void
.end method

.method public whitelist startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6947
    iget-object p1, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move p7, p6

    move p6, p5

    move-object p5, p4

    move p4, p3

    move-object p3, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p8}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 6949
    return-void
.end method

.method public whitelist startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .registers 4

    .line 2448
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 2449
    return-void
.end method

.method public whitelist startLockTask()V
    .registers 3

    .line 9775
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 9776
    return-void
.end method

.method public whitelist startManagingCursor(Landroid/database/Cursor;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3774
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3775
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Activity$ManagedCursor;

    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3776
    monitor-exit v0

    .line 3777
    return-void

    .line 3776
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public whitelist startNextMatchingActivity(Landroid/content/Intent;)Z
    .registers 3

    .line 6731
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 5

    .line 6755
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_18

    .line 6757
    :try_start_4
    invoke-virtual {p1, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 6758
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6759
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6760
    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityTaskManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 6759
    return p1

    .line 6761
    :catch_15
    move-exception p1

    .line 6764
    const/4 p1, 0x0

    return p1

    .line 6767
    :cond_18
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "startNextMatchingActivity can only be called from a top-level activity"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist startPostponedEnterTransition()V
    .registers 2

    .line 9141
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    .line 9142
    return-void
.end method

.method public whitelist startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 11

    .line 5520
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5521
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 5523
    return-void
.end method

.method public whitelist stopLocalVoiceInteraction()V
    .registers 3

    .line 2474
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 2475
    return-void
.end method

.method public whitelist stopLockTask()V
    .registers 3

    .line 9795
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 9796
    return-void
.end method

.method public whitelist stopManagingCursor(Landroid/database/Cursor;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3798
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3799
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3800
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_23

    .line 3801
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity$ManagedCursor;

    .line 3802
    invoke-static {v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    if-ne v3, p1, :cond_20

    .line 3803
    iget-object p1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3804
    goto :goto_23

    .line 3800
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3807
    :cond_23
    :goto_23
    monitor-exit v0

    .line 3808
    return-void

    .line 3807
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public whitelist takeKeyEvents(Z)V
    .registers 3

    .line 5548
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 5549
    return-void
.end method

.method public whitelist triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 5536
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5537
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 5538
    return-void
.end method

.method public whitelist unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    .line 1553
    iget-object v0, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1554
    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1555
    monitor-exit v0

    .line 1556
    return-void

    .line 1555
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    .line 1573
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_a

    .line 1574
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_d

    .line 1576
    :cond_a
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1578
    :goto_d
    return-void
.end method

.method public whitelist unregisterForContextMenu(Landroid/view/View;)V
    .registers 3

    .line 5146
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 5147
    return-void
.end method

.method public blacklist unregisterRemoteAnimations()V
    .registers 3

    .line 10015
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->unregisterRemoteAnimations(Landroid/os/IBinder;)V

    .line 10016
    return-void
.end method

.method public whitelist unregisterScreenCaptureCallback(Landroid/app/Activity$ScreenCaptureCallback;)V
    .registers 3

    .line 10245
    iget-object v0, p0, Landroid/app/Activity;->mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

    if-eqz v0, :cond_9

    .line 10246
    iget-object v0, p0, Landroid/app/Activity;->mScreenCaptureCallbackHandler:Landroid/app/ScreenCaptureCallbackHandler;

    invoke-virtual {v0, p1}, Landroid/app/ScreenCaptureCallbackHandler;->unregisterScreenCaptureCallback(Landroid/app/Activity$ScreenCaptureCallback;)V

    .line 10248
    :cond_9
    return-void
.end method

.method public blacklist updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 8
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

    .line 10025
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-nez v0, :cond_f

    .line 10026
    new-instance v0, Landroid/view/translation/UiTranslationController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/translation/UiTranslationController;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    .line 10028
    :cond_f
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/view/translation/UiTranslationController;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 10030
    return-void
.end method
