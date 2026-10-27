.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final APP_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field static final MAX_APP_TRANSITION_DURATION:I = 0xbb8

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS:I = 0x9

.field private static final NEXT_TRANSIT_TYPE_REMOTE:I = 0xa

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sFlagToString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowCustomAnimation:Z

.field private mAnimationExitFinishCallback:Landroid/os/IRemoteCallback;

.field private mAnimationExitStartCallback:Landroid/os/IRemoteCallback;

.field private mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAnimationReenterFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAnimationReenterStartedCallback:Landroid/os/IRemoteCallback;

.field private mAppTransitionState:I

.field private mClipDuration:F

.field private mClipFromCornerRadius:F

.field private mClipFromRect:Landroid/graphics/Rect;

.field private mClipInterpolatorId:I

.field private mClipToCornerRadius:F

.field private mClipToRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mDefaultActivityAnimation:Z

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field private final mDefaultWindowAnimationStyleResId:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mForeGroundColor:I

.field private final mGridLayoutRecentsEnabled:Z

.field final mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field private mIsClipEnter:Z

.field private mIsClipWithScale:Z

.field private mIsRoundEnter:Z

.field private mKeyguardExitAnimationStartListener:Lcom/android/server/wm/WindowManagerInternal$KeyguardExitAnimationStartListener;

.field private mLastChangingApp:Ljava/lang/String;

.field mLastClosingAnimationTargets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastClosingApp:Ljava/lang/String;

.field mLastOpeningAnimationTargets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOpeningApp:Ljava/lang/String;

.field private mLastUsedAppTransition:I

.field private final mLauncherAnimationRect:Landroid/graphics/Rect;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadBackHomeAnimation:Z

.field private mLoadMiuiClipAnimation:Z

.field private mLoadMiuiRoundAnimation:Z

.field private mLoadRoundedViewAnimation:Z

.field private mLoadRoundedViewScaledAnimation:Z

.field private final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mNextAppTransitionAnimationsSpecsPending:Z

.field private mNextAppTransitionBackgroundColor:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionFlags:I

.field private mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionIsSync:Z

.field private mNextAppTransitionOverrideRequested:Z

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private final mNextAppTransitionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionType:I

.field private mOverrideTaskTransition:Z

.field private mRadius:I

.field mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

.field private mRoundDuration:F

.field private mRoundFromCornerRadius:F

.field private mRoundInterpolatorId:I

.field private mRoundToCornerRadius:F

.field private mScaleBackToScreenCenter:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method public static synthetic $r8$lambda$ovWj1GU-Dyl-6GvlYAUAdjIFGUA(Landroid/os/IRemoteCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smdoAnimationCallback(Landroid/os/IRemoteCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->doAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 1565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    .line 1566
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_SHADE"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_NO_ANIMATION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_WITH_WALLPAPER"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_SUBTLE_ANIMATION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    new-instance v1, Landroid/util/Pair;

    .line 1575
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_LAUNCHER_WITH_IN_WINDOW_ANIMATIONS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1574
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_APP_CRASHED"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TRANSIT_FLAG_OPEN_BEHIND"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 176
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 199
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 215
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 221
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 227
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 231
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 243
    new-instance v1, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    .line 248
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    .line 261
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningAnimationTargets:Landroid/util/ArraySet;

    .line 262
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mLastClosingAnimationTargets:Landroid/util/ArraySet;

    .line 285
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 286
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 287
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 288
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 289
    new-instance v1, Lcom/android/internal/policy/TransitionAnimation;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 290
    invoke-static {v2}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v2

    const-string v3, "WindowManager"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 292
    const-string/jumbo v1, "ro.recents.grid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 296
    .local v1, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    .line 298
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 299
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .registers 3

    .line 1523
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_28

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1531
    :pswitch_1c
    const-string v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 1529
    :pswitch_1f
    const-string v0, "APP_STATE_RUNNING"

    return-object v0

    .line 1527
    :pswitch_22
    const-string v0, "APP_STATE_READY"

    return-object v0

    .line 1525
    :pswitch_25
    const-string v0, "APP_STATE_IDLE"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static appTransitionFlagsToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "flags"    # I

    .line 1590
    const-string v0, ""

    .line 1591
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1592
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1593
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p0

    if-eqz v4, :cond_30

    .line 1594
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    const-string v0, " | "

    .line 1598
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_30
    goto :goto_d

    .line 1599
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static appTransitionOldToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "transition"    # I

    .line 1399
    packed-switch p0, :pswitch_data_66

    .line 1473
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1470
    :pswitch_1d
    const-string v0, "TRANSIT_OLD_TASK_FRAGMENT_CHANGE"

    return-object v0

    .line 1467
    :pswitch_20
    const-string v0, "TRANSIT_OLD_TASK_FRAGMENT_CLOSE"

    return-object v0

    .line 1464
    :pswitch_23
    const-string v0, "TRANSIT_OLD_TASK_FRAGMENT_OPEN"

    return-object v0

    .line 1461
    :pswitch_26
    const-string v0, "TRANSIT_OLD_CRASHING_ACTIVITY_CLOSE"

    return-object v0

    .line 1458
    :pswitch_29
    const-string v0, "TRANSIT_OLD_TRANSLUCENT_ACTIVITY_CLOSE"

    return-object v0

    .line 1455
    :pswitch_2c
    const-string v0, "TRANSIT_OLD_TRANSLUCENT_ACTIVITY_OPEN"

    return-object v0

    .line 1452
    :pswitch_2f
    const-string v0, "TRANSIT_OLD_KEYGUARD_UNOCCLUDE"

    return-object v0

    .line 1449
    :pswitch_32
    const-string v0, "TRANSIT_OLD_KEYGUARD_OCCLUDE"

    return-object v0

    .line 1446
    :pswitch_35
    const-string v0, "TRANSIT_OLD_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    return-object v0

    .line 1443
    :pswitch_38
    const-string v0, "TRANSIT_OLD_KEYGUARD_GOING_AWAY"

    return-object v0

    .line 1440
    :pswitch_3b
    const-string v0, "TRANSIT_OLD_ACTIVITY_RELAUNCH"

    return-object v0

    .line 1437
    :pswitch_3e
    const-string v0, "TRANSIT_OLD_TASK_OPEN_BEHIND"

    return-object v0

    .line 1434
    :pswitch_41
    const-string v0, "TRANSIT_OLD_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 1431
    :pswitch_44
    const-string v0, "TRANSIT_OLD_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 1428
    :pswitch_47
    const-string v0, "TRANSIT_OLD_WALLPAPER_OPEN"

    return-object v0

    .line 1425
    :pswitch_4a
    const-string v0, "TRANSIT_OLD_WALLPAPER_CLOSE"

    return-object v0

    .line 1422
    :pswitch_4d
    const-string v0, "TRANSIT_OLD_TASK_TO_BACK"

    return-object v0

    .line 1419
    :pswitch_50
    const-string v0, "TRANSIT_OLD_TASK_TO_FRONT"

    return-object v0

    .line 1416
    :pswitch_53
    const-string v0, "TRANSIT_OLD_TASK_CLOSE"

    return-object v0

    .line 1413
    :pswitch_56
    const-string v0, "TRANSIT_OLD_TASK_OPEN"

    return-object v0

    .line 1410
    :pswitch_59
    const-string v0, "TRANSIT_OLD_ACTIVITY_CLOSE"

    return-object v0

    .line 1407
    :pswitch_5c
    const-string v0, "TRANSIT_OLD_ACTIVITY_OPEN"

    return-object v0

    .line 1404
    :pswitch_5f
    const-string v0, "TRANSIT_OLD_NONE"

    return-object v0

    .line 1401
    :pswitch_62
    const-string v0, "TRANSIT_OLD_UNSET"

    return-object v0

    nop

    :pswitch_data_66
    .packed-switch -0x1
        :pswitch_62
        :pswitch_5f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3
        :pswitch_3b
        :pswitch_3
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_3
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "transition"    # I

    .line 1485
    packed-switch p0, :pswitch_data_3c

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1514
    :pswitch_1d
    const-string v0, "TRANSIT_KEYGUARD_UNOCCLUDE"

    return-object v0

    .line 1511
    :pswitch_20
    const-string v0, "TRANSIT_KEYGUARD_OCCLUDE"

    return-object v0

    .line 1508
    :pswitch_23
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY"

    return-object v0

    .line 1505
    :pswitch_26
    const-string v0, "TRANSIT_CHANGE"

    return-object v0

    .line 1502
    :pswitch_29
    const-string v0, "TRANSIT_RELAUNCH"

    return-object v0

    .line 1499
    :pswitch_2c
    const-string v0, "TRANSIT_TO_BACK"

    return-object v0

    .line 1496
    :pswitch_2f
    const-string v0, "TRANSIT_TO_FRONT"

    return-object v0

    .line 1493
    :pswitch_32
    const-string v0, "TRANSIT_CLOSE"

    return-object v0

    .line 1490
    :pswitch_35
    const-string v0, "TRANSIT_OPEN"

    return-object v0

    .line 1487
    :pswitch_38
    const-string v0, "TRANSIT_NONE"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private canOverridePendingAppTransition()Z
    .registers 3

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .registers 31
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    .line 667
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 668
    .local v3, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 669
    .local v4, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 670
    .local v5, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 671
    .local v6, "destHeight":F
    if-eqz p4, :cond_1f

    div-float v7, v3, v5

    goto :goto_21

    :cond_1f
    div-float v7, v5, v3

    :goto_21
    move v9, v7

    .line 672
    .local v9, "scaleH":F
    if-eqz p4, :cond_27

    div-float v7, v4, v6

    goto :goto_29

    :cond_27
    div-float v7, v6, v4

    :goto_29
    move v11, v7

    .line 673
    .local v11, "scaleV":F
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 674
    .local v7, "set":Landroid/view/animation/AnimationSet;
    const/4 v8, 0x0

    if-nez v2, :cond_35

    .line 675
    move v10, v8

    goto :goto_3a

    :cond_35
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v12

    :goto_3a
    move v15, v10

    .line 676
    .local v15, "surfaceInsetsH":I
    if-nez v2, :cond_3e

    .line 677
    goto :goto_43

    :cond_3e
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    :goto_43
    move v14, v8

    .line 680
    .local v14, "surfaceInsetsV":I
    if-eqz p4, :cond_48

    move v8, v5

    goto :goto_49

    :cond_48
    move v8, v3

    :goto_49
    int-to-float v10, v15

    add-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v23, v8, v10

    .line 681
    .local v23, "scaleHCenter":F
    if-eqz p4, :cond_53

    move v8, v6

    goto :goto_54

    :cond_53
    move v8, v4

    :goto_54
    int-to-float v12, v14

    add-float/2addr v8, v12

    div-float v24, v8, v10

    .line 682
    .local v24, "scaleVCenter":F
    if-eqz p4, :cond_6c

    .line 683
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v8, v16

    move/from16 v13, v23

    move/from16 v25, v14

    .end local v14    # "surfaceInsetsV":I
    .local v25, "surfaceInsetsV":I
    move/from16 v14, v24

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_81

    .line 684
    .end local v25    # "surfaceInsetsV":I
    .restart local v14    # "surfaceInsetsV":I
    :cond_6c
    move/from16 v25, v14

    .end local v14    # "surfaceInsetsV":I
    .restart local v25    # "surfaceInsetsV":I
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v16, v8

    move/from16 v18, v9

    move/from16 v20, v11

    move/from16 v21, v23

    move/from16 v22, v24

    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_81
    move-object/from16 v8, v16

    .line 685
    .local v8, "scale":Landroid/view/animation/ScaleAnimation;
    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v10, v12

    .line 686
    .local v10, "sourceHCenter":I
    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    .line 687
    .local v12, "sourceVCenter":I
    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 688
    .local v13, "destHCenter":I
    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v14, v14, v16

    .line 689
    .local v14, "destVCenter":I
    if-eqz p4, :cond_ad

    sub-int v16, v10, v13

    goto :goto_af

    :cond_ad
    sub-int v16, v13, v10

    :goto_af
    move/from16 v17, v16

    .line 690
    .local v17, "fromX":I
    if-eqz p4, :cond_b6

    sub-int v16, v12, v14

    goto :goto_b8

    :cond_b6
    sub-int v16, v14, v12

    :goto_b8
    move/from16 v18, v16

    .line 691
    .local v18, "fromY":I
    if-eqz p4, :cond_cf

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move/from16 v1, v17

    .end local v17    # "fromX":I
    .local v1, "fromX":I
    int-to-float v2, v1

    move/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v4

    .end local v4    # "sourceHeight":F
    .local v3, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    int-to-float v4, v3

    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "destWidth":F
    .local v19, "destWidth":F
    invoke-direct {v0, v2, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_e1

    .line 692
    .end local v1    # "fromX":I
    .end local v19    # "destWidth":F
    .local v3, "sourceWidth":F
    .restart local v4    # "sourceHeight":F
    .restart local v5    # "destWidth":F
    .local v17, "fromX":I
    .local v18, "fromY":I
    :cond_cf
    move/from16 v19, v5

    move/from16 v1, v17

    const/4 v5, 0x0

    move/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v4

    .end local v4    # "sourceHeight":F
    .end local v5    # "destWidth":F
    .restart local v1    # "fromX":I
    .local v3, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    .restart local v19    # "destWidth":F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v1

    int-to-float v4, v3

    invoke-direct {v0, v5, v2, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_e1
    nop

    .line 693
    .local v0, "translation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 694
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 695
    move-object/from16 v2, p0

    invoke-direct {v2, v7}, Lcom/android/server/wm/AppTransition;->setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V

    .line 696
    return-object v7
.end method

.method private static doAnimationCallback(Landroid/os/IRemoteCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/IRemoteCallback;

    .line 1821
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 1823
    goto :goto_6

    .line 1822
    :catch_5
    move-exception v0

    .line 1824
    :goto_6
    return-void
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .registers 4

    .line 1348
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v0, :cond_16

    .line 1349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 1350
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1352
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1353
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1371
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_16
    return-void
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_11

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_9

    goto :goto_11

    .line 627
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_20

    .line 624
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "WindowManager"

    const-string v2, "Starting rect for app requested, but none available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 629
    :goto_20
    return-void
.end method

.method private handleAppTransitionTimeout()V
    .registers 19

    .line 1797
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1798
    iget-object v0, v1, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1799
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_13

    .line 1800
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1802
    :cond_13
    :try_start_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionTimeoutLocked()V

    .line 1803
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1804
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9d

    .line 1805
    :cond_34
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_91

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    int-to-long v3, v3

    .local v3, "protoLogParam0":J
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    .local v5, "protoLogParam1":Z
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    int-to-long v6, v6

    .local v6, "protoLogParam2":J
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    int-to-long v8, v8

    .local v8, "protoLogParam3":J
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    int-to-long v10, v10

    .local v10, "protoLogParam4":J
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v14, 0x15d

    const/4 v15, 0x0

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    move-object/from16 v16, v0

    const v0, 0x148d2a13

    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v16, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-static {v12, v0, v14, v15, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_93

    .end local v3    # "protoLogParam0":J
    .end local v5    # "protoLogParam1":Z
    .end local v6    # "protoLogParam2":J
    .end local v8    # "protoLogParam3":J
    .end local v10    # "protoLogParam4":J
    .end local v16    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_91
    move-object/from16 v16, v0

    .line 1813
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v16    # "dc":Lcom/android/server/wm/DisplayContent;
    :goto_93
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 1814
    iget-object v0, v1, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1816
    .end local v16    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_9d
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_13 .. :try_end_9e} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1817
    return-void

    .line 1816
    :catchall_a2
    move-exception v0

    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method static isActivityTransitOld(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 1724
    const/4 v0, 0x6

    if-eq p0, v0, :cond_d

    const/4 v0, 0x7

    if-eq p0, v0, :cond_d

    const/16 v0, 0x12

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method static isChangeTransitOld(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 1730
    const/16 v0, 0x1b

    if-eq p0, v0, :cond_b

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static isClosingTransitOld(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 1735
    const/4 v0, 0x7

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1a

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1a

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    return v0
.end method

.method private isFullSplitSwitch(I)Z
    .registers 9
    .param p1, "transit"    # I

    .line 1201
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_c

    const/16 v2, 0x18

    if-ne p1, v2, :cond_a

    goto :goto_c

    :cond_a
    move v2, v1

    goto :goto_d

    :cond_c
    :goto_c
    move v2, v0

    .line 1203
    .local v2, "isActOpen":Z
    :goto_d
    if-eqz v2, :cond_5e

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_5e

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 1204
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5e

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 1205
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_5e

    .line 1208
    :cond_26
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1209
    .local v3, "close":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isSplitMode()Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_5d

    .line 1212
    :cond_3d
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 1213
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_46
    if-ge v5, v4, :cond_5c

    .line 1214
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isSplitMode()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 1215
    return v0

    .line 1213
    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 1218
    .end local v5    # "i":I
    :cond_5c
    return v1

    .line 1210
    .end local v4    # "count":I
    :cond_5d
    :goto_5d
    return v1

    .line 1206
    .end local v3    # "close":Lcom/android/server/wm/ActivityRecord;
    :cond_5e
    :goto_5e
    return v1
.end method

.method public static isKeyguardGoingAwayTransitOld(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 1694
    const/16 v0, 0x14

    if-eq p0, v0, :cond_b

    const/16 v0, 0x15

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static isKeyguardOccludeTransitOld(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 1699
    const/16 v0, 0x16

    if-eq p0, v0, :cond_b

    const/16 v0, 0x17

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static isKeyguardTransit(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 1751
    const/4 v0, 0x7

    if-eq p0, v0, :cond_e

    const/16 v0, 0x8

    if-eq p0, v0, :cond_e

    const/16 v0, 0x9

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method static isKeyguardTransitOld(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 1704
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isKeyguardOccludeTransitOld(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method static isNormalTransit(I)Z
    .registers 3
    .param p0, "transit"    # I

    .line 1744
    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v1, 0x4

    if-ne p0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0
.end method

.method private isSplitFullSwitch(Z)Z
    .registers 6
    .param p1, "enter"    # Z

    .line 1177
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 1178
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_61

    .line 1181
    :cond_18
    const/4 v0, 0x1

    if-eqz p1, :cond_3e

    .line 1182
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1183
    return v1

    .line 1185
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1186
    .local v2, "ar":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isSplitMode()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v3

    if-eqz v3, :cond_3d

    move v1, v0

    :cond_3d
    return v1

    .line 1188
    .end local v2    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_3e
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1189
    return v1

    .line 1191
    :cond_49
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1192
    .restart local v2    # "ar":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isSplitMode()Z

    move-result v3

    if-nez v3, :cond_60

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v3

    if-eqz v3, :cond_60

    move v1, v0

    :cond_60
    return v1

    .line 1179
    .end local v2    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_61
    :goto_61
    return v1
.end method

.method private isSplitSecondStateSwitch(ZILcom/android/server/wm/ActivityRecord;)Z
    .registers 10
    .param p1, "enter"    # Z
    .param p2, "transit"    # I
    .param p3, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 1150
    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    .line 1151
    :cond_4
    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq p2, v1, :cond_14

    const/16 v1, 0x18

    if-eq p2, v1, :cond_14

    .line 1152
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isDummyTransferAct()Z

    move-result v1

    if-eqz v1, :cond_13

    return v2

    .line 1153
    :cond_13
    return v0

    .line 1155
    :cond_14
    if-eqz p1, :cond_1d

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isSecondStateActivity()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1156
    return v2

    .line 1158
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_4c

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_4c

    .line 1161
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1162
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    if-ge v3, v1, :cond_4b

    .line 1163
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1164
    .local v4, "record":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_48

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isSecondStateActivity()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1165
    return v2

    .line 1162
    .end local v4    # "record":Lcom/android/server/wm/ActivityRecord;
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1168
    .end local v3    # "i":I
    :cond_4b
    return v0

    .line 1159
    .end local v1    # "count":I
    :cond_4c
    :goto_4c
    return v0
.end method

.method static isTaskCloseTransitOld(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 1713
    const/16 v0, 0x9

    if-eq p0, v0, :cond_b

    const/16 v0, 0xb

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static isTaskOpenTransitOld(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 1718
    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0x10

    if-eq p0, v0, :cond_f

    const/16 v0, 0xa

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method static isTaskTransitOld(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 1708
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isTaskOpenTransitOld(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1709
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isTaskCloseTransitOld(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 1708
    :goto_10
    return v0
.end method

.method private needsBoosting()Z
    .registers 6

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 539
    .local v0, "recentsAnimRunning":Z
    :goto_d
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v3, v2, :cond_1e

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    if-eqz v0, :cond_1f

    :cond_1e
    move v1, v2

    :cond_1f
    return v1
.end method

.method private notifyAppTransitionCancelledLocked(Z)V
    .registers 4
    .param p1, "keyguardGoingAway"    # Z

    .line 571
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 572
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(Z)V

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .registers 3

    .line 565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 566
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 568
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private notifyAppTransitionStartingLocked(ZZJJJ)I
    .registers 22
    .param p1, "keyguardGoingAway"    # Z
    .param p2, "keyguardOcclude"    # Z
    .param p3, "duration"    # J
    .param p5, "statusBarAnimationStartTime"    # J
    .param p7, "statusBarAnimationDuration"    # J

    .line 585
    move-object v0, p0

    const/4 v1, 0x0

    .line 586
    .local v1, "redoLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 587
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move v5, p1

    move v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(ZZJJJ)I

    move-result v3

    or-int/2addr v1, v3

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 591
    .end local v2    # "i":I
    :cond_24
    return v1
.end method

.method private notifyAppTransitionTimeoutLocked()V
    .registers 3

    .line 577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 578
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionTimeoutLocked()V

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 580
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private prepare()Z
    .registers 3

    .line 410
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 411
    invoke-direct {p0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 412
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 413
    const/4 v0, 0x1

    return v0

    .line 415
    :cond_f
    return v1
.end method

.method private prepareMiuiAppTransitionIfNeeded(I)V
    .registers 3
    .param p1, "transit"    # I

    .line 1910
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewAnimation:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewScaledAnimation:Z

    if-eqz v0, :cond_10

    :cond_8
    const/4 v0, 0x7

    if-eq p1, v0, :cond_10

    .line 1912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewAnimation:Z

    .line 1913
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewScaledAnimation:Z

    .line 1916
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewAnimation:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mAllowCustomAnimation:Z

    if-nez v0, :cond_1d

    .line 1917
    const/16 v0, 0x68

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    goto :goto_29

    .line 1918
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewScaledAnimation:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mAllowCustomAnimation:Z

    if-nez v0, :cond_29

    .line 1919
    const/16 v0, 0x6a

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1922
    :cond_29
    :goto_29
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadMiuiClipAnimation:Z

    if-eqz v0, :cond_31

    .line 1923
    const/16 v0, 0x6b

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1925
    :cond_31
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadMiuiRoundAnimation:Z

    if-eqz v0, :cond_39

    .line 1926
    const/16 v0, 0x6c

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1928
    :cond_39
    return-void
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 633
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 635
    return-void
.end method

.method private setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .line 1827
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1828
    .local v0, "callback":Landroid/os/IRemoteCallback;
    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 1829
    new-instance v1, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1843
    :cond_e
    return-void
.end method

.method private setAppTransitionState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 524
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 525
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 526
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .registers 5
    .param p1, "uiMode"    # I
    .param p2, "orientation"    # I

    .line 1792
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    if-ne p2, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1
.end method

.method private transitTypeToString()Ljava/lang/String;
    .registers 3

    .line 1538
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_38

    .line 1558
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1556
    :pswitch_1c
    const-string v0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    .line 1544
    :pswitch_1f
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 1554
    :pswitch_22
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 1552
    :pswitch_25
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 1550
    :pswitch_28
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 1548
    :pswitch_2b
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 1546
    :pswitch_2e
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 1542
    :pswitch_31
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 1540
    :pswitch_34
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_5
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method abort()V
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v0, :cond_9

    .line 342
    const-string v1, "aborted"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 344
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 345
    return-void
.end method

.method canSkipFirstFrame()Z
    .registers 5

    .line 705
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    if-nez v2, :cond_1d

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1d

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 709
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 705
    :goto_1e
    return v1
.end method

.method clear()V
    .registers 4

    .line 471
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 472
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    .line 473
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 474
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 475
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 476
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 477
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 478
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 479
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mOverrideTaskTransition:Z

    .line 480
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionIsSync:Z

    .line 482
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimationReenterFinishedCallback:Landroid/os/IRemoteCallback;

    .line 483
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mRadius:I

    .line 484
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mForeGroundColor:I

    .line 485
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewAnimation:Z

    .line 486
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewScaledAnimation:Z

    .line 487
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mScaleBackToScreenCenter:Z

    .line 490
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mClipFromRect:Landroid/graphics/Rect;

    .line 491
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mClipToRect:Landroid/graphics/Rect;

    .line 492
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mClipFromCornerRadius:F

    .line 493
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mClipToCornerRadius:F

    .line 494
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipInterpolatorId:I

    .line 495
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mClipDuration:F

    .line 496
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadMiuiClipAnimation:Z

    .line 498
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mRoundFromCornerRadius:F

    .line 499
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mRoundToCornerRadius:F

    .line 500
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mRoundInterpolatorId:I

    .line 501
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mRoundDuration:F

    .line 502
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadMiuiRoundAnimation:Z

    .line 504
    return-void
.end method

.method containsTransitRequest(I)Z
    .registers 4
    .param p1, "transit"    # I

    .line 1785
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;
    .registers 4
    .param p1, "thumbnailDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 3
    .param p1, "appRect"    # Landroid/graphics/Rect;

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;Lcom/android/server/wm/WindowContainer;I)Landroid/view/animation/Animation;
    .registers 15
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p4, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p5, "orientation"    # I

    .line 656
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 657
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 656
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 658
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 659
    const/4 v2, 0x0

    if-eqz v0, :cond_15

    iget-object v3, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object v6, v3

    goto :goto_16

    :cond_15
    move-object v6, v2

    .line 660
    :goto_16
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v3, :cond_1d

    .line 661
    iget-object v2, v3, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    goto :goto_1e

    :cond_1d
    nop

    :goto_1e
    move-object v7, v2

    iget-boolean v8, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 658
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1611
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1612
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_28

    .line 1614
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1615
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1617
    :cond_28
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    const-string v1, "mNextAppTransitionPackage="

    if-nez v0, :cond_33

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6b

    .line 1619
    :cond_33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1622
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1623
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1624
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1625
    const-string v0, " mNextAppTransitionBackgroundColor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1626
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    :cond_6b
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_146

    goto/16 :goto_f7

    .line 1630
    :pswitch_72
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1633
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1634
    goto :goto_f7

    .line 1651
    :pswitch_8f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1653
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1654
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1655
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1656
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_f7

    .line 1636
    :pswitch_b7
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1637
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1639
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1640
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1641
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1643
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1644
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1645
    nop

    .line 1660
    :goto_f7
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_108

    .line 1661
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1662
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1664
    :cond_108
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_144

    .line 1665
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1666
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1670
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastChangingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    :cond_144
    return-void

    nop

    :pswitch_data_146
    .packed-switch 0x2
        :pswitch_b7
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
        :pswitch_72
    .end packed-switch
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1603
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1604
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1605
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1606
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1607
    return-void
.end method

.method freeze()V
    .registers 4

    .line 507
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 508
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 507
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 514
    .local v0, "keyguardGoingAway":Z
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_14

    .line 515
    const-string v2, "freeze"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 517
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 518
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 519
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 520
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked(Z)V

    .line 521
    return-void
.end method

.method getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .registers 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    return v0
.end method

.method getAppRootTaskClipMode()I
    .registers 3

    .line 1059
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 1056
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_14

    goto :goto_16

    .line 1061
    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    .line 1060
    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 1056
    :goto_17
    return v0
.end method

.method getAppTransitionThumbnailHeader(Lcom/android/server/wm/WindowContainer;)Landroid/hardware/HardwareBuffer;
    .registers 4
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 369
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 368
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 370
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_10

    .line 371
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 373
    :cond_10
    if-eqz v0, :cond_15

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/hardware/HardwareBuffer;

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method

.method getDefaultWindowAnimationStyleResId()I
    .registers 2

    .line 596
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultWindowAnimationStyleResId:I

    return v0
.end method

.method getFirstAppTransition()I
    .registers 4

    .line 1775
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 1776
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1777
    .local v1, "transit":I
    if-eqz v1, :cond_1e

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1778
    return v1

    .line 1775
    .end local v1    # "transit":I
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1781
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method getForeGroundColor()I
    .registers 2

    .line 1138
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mForeGroundColor:I

    return v0
.end method

.method getKeyguardTransition()I
    .registers 7

    .line 1757
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    .line 1758
    return v1

    .line 1760
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1761
    .local v0, "unoccludeIndex":I
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1763
    .local v3, "occludeIndex":I
    const/4 v5, 0x0

    if-ne v0, v2, :cond_2d

    if-ne v3, v2, :cond_2d

    .line 1764
    return v5

    .line 1768
    :cond_2d
    if-eq v0, v2, :cond_32

    if-ge v0, v3, :cond_32

    .line 1769
    return v5

    .line 1771
    :cond_32
    if-eq v0, v2, :cond_35

    goto :goto_36

    :cond_35
    move v1, v4

    :goto_36
    return v1
.end method

.method getRadius()I
    .registers 2

    .line 1134
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mRadius:I

    return v0
.end method

.method getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .registers 2

    .line 713
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getResIdAttr(Landroid/view/WindowManager$LayoutParams;II)I
    .registers 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I
    .param p3, "transit"    # I

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/TransitionAnimation;->getResIdAttr(Landroid/view/WindowManager$LayoutParams;II)I

    move-result v0

    return v0
.end method

.method public getTransitFlags()I
    .registers 2

    .line 1066
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    return v0
.end method

.method goodToGo(ILcom/android/server/wm/ActivityRecord;)I
    .registers 20
    .param p1, "transit"    # I
    .param p2, "topOpeningApp"    # Lcom/android/server/wm/ActivityRecord;

    .line 423
    move-object/from16 v9, p0

    move/from16 v10, p1

    const/4 v0, 0x0

    iput v0, v9, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 424
    iget-object v1, v9, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 425
    const/4 v1, 0x2

    invoke-direct {v9, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 429
    if-eqz p2, :cond_19

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    move v11, v0

    .line 430
    .local v11, "isFreeForm":Z
    iget-object v0, v9, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    .line 431
    .local v12, "focusedTask":Lcom/android/server/wm/Task;
    iget-object v0, v9, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 432
    .local v13, "focusedApp":Lcom/android/server/wm/ActivityRecord;
    const/4 v0, 0x0

    .line 433
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v11, :cond_45

    if-eqz v13, :cond_45

    if-eqz v12, :cond_45

    iget-object v1, v9, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_45

    iget-object v1, v9, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 434
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v12, v1, :cond_45

    .line 435
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    move-object v14, v0

    goto :goto_4e

    .line 436
    :cond_45
    if-eqz p2, :cond_4d

    .line 437
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    move-object v14, v0

    goto :goto_4e

    .line 436
    :cond_4d
    move-object v14, v0

    .line 440
    .end local v0    # "wc":Lcom/android/server/wm/WindowContainer;
    .local v14, "wc":Lcom/android/server/wm/WindowContainer;
    :goto_4e
    const/4 v15, 0x0

    if-eqz v14, :cond_56

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    goto :goto_57

    :cond_56
    move-object v0, v15

    :goto_57
    move-object/from16 v16, v0

    .line 442
    .local v16, "topOpeningAnim":Lcom/android/server/wm/AnimationAdapter;
    nop

    .line 443
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v1

    .line 444
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->isKeyguardOccludeTransitOld(I)Z

    move-result v2

    .line 445
    if-eqz v16, :cond_69

    invoke-interface/range {v16 .. v16}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v3

    goto :goto_6b

    :cond_69
    const-wide/16 v3, 0x0

    .line 446
    :goto_6b
    if-eqz v16, :cond_72

    .line 447
    invoke-interface/range {v16 .. v16}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    move-result-wide v5

    goto :goto_76

    .line 448
    :cond_72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    :goto_76
    const-wide/16 v7, 0x78

    .line 442
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(ZZJJJ)I

    move-result v0

    .line 451
    .local v0, "redoLayout":I
    iget-object v1, v9, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_86

    .line 452
    invoke-virtual {v1, v10}, Lcom/android/server/wm/RemoteAnimationController;->goodToGo(I)V

    goto :goto_b8

    .line 453
    :cond_86
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->isTaskOpenTransitOld(I)Z

    move-result v1

    if-nez v1, :cond_90

    const/16 v1, 0xc

    if-ne v10, v1, :cond_b8

    :cond_90
    if-eqz v16, :cond_b8

    .line 455
    iget-object v1, v9, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    move-result v1

    if-eqz v1, :cond_b8

    iget-object v1, v9, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 456
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-nez v1, :cond_b8

    .line 457
    new-instance v1, Lcom/android/server/wm/NavBarFadeAnimationController;

    iget-object v2, v9, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v1, v2}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 463
    .local v1, "controller":Lcom/android/server/wm/NavBarFadeAnimationController;
    invoke-interface/range {v16 .. v16}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v2

    .line 464
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 463
    invoke-virtual {v1, v2, v3, v15, v4}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeOutAndInSequentially(JLandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    .line 467
    .end local v1    # "controller":Lcom/android/server/wm/NavBarFadeAnimationController;
    :cond_b8
    :goto_b8
    return v0
.end method

.method isChangeTransitionSet()Z
    .registers 3

    .line 1933
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .registers 2

    .line 406
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isIdle()Z
    .registers 2

    .line 356
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isNextAppTransitionOpenCrossProfileApps()Z
    .registers 3

    .line 398
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isNextAppTransitionThumbnailDown()Z
    .registers 3

    .line 393
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method isNextAppTransitionThumbnailUp()Z
    .registers 3

    .line 388
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .registers 3

    .line 378
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .registers 2

    .line 384
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .registers 4

    .line 331
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method isRunning()Z
    .registers 3

    .line 348
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isTimeout()Z
    .registers 3

    .line 360
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isTransitionSet()Z
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isUnoccluding()Z
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$fetchAppTransitionSpecsFromFuture$1$com-android-server-wm-AppTransition(Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .registers 7
    .param p1, "future"    # Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1354
    const/4 v0, 0x0

    .line 1356
    .local v0, "specs":[Landroid/view/AppTransitionAnimationSpec;
    :try_start_1
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1357
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 1360
    goto :goto_27

    .line 1358
    :catch_e
    move-exception v1

    .line 1359
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to fetch app transition specs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_27
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1362
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 1363
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 1366
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1367
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1368
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1369
    return-void

    .line 1368
    :catchall_46
    move-exception v2

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method synthetic lambda$new$0$com-android-server-wm-AppTransition()V
    .registers 1

    .line 243
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->handleAppTransitionTimeout()V

    return-void
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
    .registers 46
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "uiMode"    # I
    .param p5, "orientation"    # I
    .param p6, "frame"    # Landroid/graphics/Rect;
    .param p7, "displayFrame"    # Landroid/graphics/Rect;
    .param p8, "insets"    # Landroid/graphics/Rect;
    .param p9, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p10, "stableInsets"    # Landroid/graphics/Rect;
    .param p11, "isVoiceInteraction"    # Z
    .param p12, "freeform"    # Z
    .param p13, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 744
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v12, p6

    move-object/from16 v11, p13

    invoke-direct {v0, v14}, Lcom/android/server/wm/AppTransition;->prepareMiuiAppTransitionIfNeeded(I)V

    .line 746
    iget-boolean v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    const/4 v10, 0x1

    if-eqz v1, :cond_2e

    .line 749
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/wm/WindowContainer;->canCustomizeAppTransition()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-boolean v1, v0, Lcom/android/server/wm/AppTransition;->mOverrideTaskTransition:Z

    if-nez v1, :cond_2c

    if-eqz v13, :cond_2e

    .line 750
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/wm/AppTransitionStub;->allowCustomTaskAnimation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 751
    :cond_2c
    iput v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 754
    :cond_2e
    const/4 v1, 0x0

    .line 756
    .local v1, "a":Landroid/view/animation/Animation;
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 757
    .local v9, "ar":Lcom/android/server/wm/ActivityRecord;
    const/4 v8, 0x0

    if-eqz v15, :cond_3b

    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    if-nez v2, :cond_41

    goto :goto_3f

    :cond_3b
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    if-nez v2, :cond_41

    :goto_3f
    move v2, v10

    goto :goto_42

    :cond_41
    move v2, v8

    :goto_42
    move/from16 v16, v2

    .line 758
    .local v16, "isNoCustomAni":Z
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v2, v10, :cond_4a

    move v2, v10

    goto :goto_4b

    :cond_4a
    move v2, v8

    :goto_4b
    move v7, v2

    .line 759
    .local v7, "isCustomSet":Z
    const/4 v2, 0x0

    .line 760
    .local v2, "isFloatingAniamtion":Z
    const/4 v3, 0x0

    .line 761
    .local v3, "isMiuiClipAniamtion":Z
    if-eqz p12, :cond_78

    if-eqz v7, :cond_78

    .line 762
    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 763
    if-eqz v15, :cond_5b

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_5d

    :cond_5b
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 762
    :goto_5d
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 764
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/wm/AppTransitionStub;->isUseFloatingAnimation(Landroid/view/animation/Animation;)Z

    move-result v2

    .line 765
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/wm/AppTransitionStub;->isUseMiuiClipAnimation(Landroid/view/animation/Animation;)Z

    move-result v3

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_7e

    .line 767
    :cond_78
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    .end local v1    # "a":Landroid/view/animation/Animation;
    .end local v2    # "isFloatingAniamtion":Z
    .end local v3    # "isMiuiClipAniamtion":Z
    .local v17, "a":Landroid/view/animation/Animation;
    .local v18, "isFloatingAniamtion":Z
    .local v19, "isMiuiClipAniamtion":Z
    :goto_7e
    if-eqz p12, :cond_c6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isUseFreeFormAnimation(I)Z

    move-result v1

    if-nez v1, :cond_8a

    if-eqz v7, :cond_c6

    if-nez v18, :cond_c6

    .line 768
    :cond_8a
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isUseFreeFormAnimation(I)Z

    move-result v1

    if-nez v1, :cond_94

    if-eqz v7, :cond_c6

    if-nez v19, :cond_c6

    :cond_94
    if-eqz v7, :cond_98

    if-nez v16, :cond_c6

    .line 770
    :cond_98
    const/4 v1, -0x1

    .line 771
    .local v1, "rootTaskId":I
    instance-of v2, v11, Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_a4

    .line 772
    move-object v2, v11

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v1

    .line 774
    :cond_a4
    instance-of v2, v11, Lcom/android/server/wm/Task;

    if-eqz v2, :cond_af

    .line 775
    move-object v2, v11

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    .line 777
    :cond_af
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->getFreeFormWindowMode(I)I

    move-result v2

    if-eq v2, v10, :cond_bd

    .line 778
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2, v14, v15, v12, v11}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->loadFreeFormAnimation(Lcom/android/server/wm/WindowManagerService;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v17

    .line 780
    .end local v1    # "rootTaskId":I
    :cond_bd
    move/from16 v20, v7

    move-object/from16 v24, v9

    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    :cond_c6
    const/16 v1, 0x32

    if-eq v14, v1, :cond_7d2

    const/16 v1, 0x33

    if-ne v14, v1, :cond_d5

    move/from16 v20, v7

    move-object/from16 v24, v9

    move-object v8, v11

    goto/16 :goto_7d7

    .line 783
    :cond_d5
    if-eqz v9, :cond_167

    invoke-virtual {v9, v7}, Lcom/android/server/wm/ActivityRecord;->needSplitAnimation(Z)Z

    move-result v1

    if-eqz v1, :cond_167

    .line 784
    invoke-direct {v0, v14}, Lcom/android/server/wm/AppTransition;->isFullSplitSwitch(I)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 785
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->isSplitMode()Z

    move-result v8

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p5

    move-object v6, v9

    move/from16 v20, v7

    .end local v7    # "isCustomSet":Z
    .local v20, "isCustomSet":Z
    move v7, v8

    invoke-interface/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionStub;->loadFullSplitAnimation(IZLandroid/graphics/Rect;ILcom/android/server/wm/ActivityRecord;Z)Landroid/view/animation/Animation;

    move-result-object v17

    move-object/from16 v24, v9

    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 786
    .end local v20    # "isCustomSet":Z
    .restart local v7    # "isCustomSet":Z
    :cond_102
    move/from16 v20, v7

    .end local v7    # "isCustomSet":Z
    .restart local v20    # "isCustomSet":Z
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 787
    invoke-direct {v0, v15}, Lcom/android/server/wm/AppTransition;->isSplitFullSwitch(Z)Z

    move-result v1

    if-eqz v1, :cond_129

    .line 788
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    const/4 v7, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p5

    move-object v6, v9

    invoke-interface/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionStub;->loadSplitFullAnimation(IZLandroid/graphics/Rect;ILcom/android/server/wm/ActivityRecord;Z)Landroid/view/animation/Animation;

    move-result-object v17

    move-object/from16 v24, v9

    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 789
    :cond_129
    invoke-direct {v0, v15, v14, v9}, Lcom/android/server/wm/AppTransition;->isSplitSecondStateSwitch(ZILcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_147

    .line 790
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p5

    move-object v6, v9

    invoke-interface/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionStub;->loadSplitAnimation(IZLandroid/graphics/Rect;ILcom/android/server/wm/ActivityRecord;)Landroid/view/animation/Animation;

    move-result-object v17

    move-object/from16 v24, v9

    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 789
    :cond_147
    move-object/from16 v24, v9

    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 793
    :cond_14e
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    const/4 v7, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p5

    move-object v6, v9

    invoke-interface/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionStub;->loadSplitFullAnimation(IZLandroid/graphics/Rect;ILcom/android/server/wm/ActivityRecord;Z)Landroid/view/animation/Animation;

    move-result-object v17

    move-object/from16 v24, v9

    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 783
    .end local v20    # "isCustomSet":Z
    .restart local v7    # "isCustomSet":Z
    :cond_167
    move/from16 v20, v7

    .line 797
    .end local v7    # "isCustomSet":Z
    .restart local v20    # "isCustomSet":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v1

    const/16 v2, 0x15

    if-eqz v1, :cond_186

    if-eqz v15, :cond_186

    .line 798
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    if-ne v14, v2, :cond_17a

    goto :goto_17b

    :cond_17a
    move v10, v8

    :goto_17b
    invoke-virtual {v1, v3, v10}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v17

    move-object/from16 v24, v9

    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 800
    :cond_186
    const/16 v1, 0x16

    if-ne v14, v1, :cond_193

    .line 801
    const/16 v17, 0x0

    move-object/from16 v24, v9

    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 802
    :cond_193
    const/16 v3, 0x17

    if-ne v14, v3, :cond_1b0

    if-nez v15, :cond_1b0

    .line 805
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 806
    invoke-virtual {v3}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardUnoccludeAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    .line 805
    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/AppTransitionStub;->loadKeyguardUnOccludeAnimation(Landroid/content/Context;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v17

    move-object/from16 v24, v9

    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 808
    :cond_1b0
    const/16 v4, 0x1a

    if-ne v14, v4, :cond_1bd

    .line 809
    const/16 v17, 0x0

    move-object/from16 v24, v9

    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 810
    :cond_1bd
    const/16 v4, 0xa

    const/16 v6, 0x8

    const/4 v1, 0x6

    const/4 v5, 0x4

    const/4 v7, 0x3

    if-eqz p11, :cond_20e

    if-eq v14, v1, :cond_1cc

    if-eq v14, v6, :cond_1cc

    if-ne v14, v4, :cond_20e

    .line 813
    :cond_1cc
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1, v15}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityOpenAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v17

    .line 814
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_207

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "protoLogParam2":Z
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam3":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v8

    aput-object v2, v5, v10

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v5, v10

    aput-object v4, v5, v7

    const v7, 0x1e5501eb

    const/16 v8, 0x30

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v10, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 816
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Z
    .end local v4    # "protoLogParam3":Ljava/lang/String;
    nop

    .line 1050
    :cond_207
    :goto_207
    move-object/from16 v24, v9

    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 817
    :cond_20e
    const/16 v2, 0xb

    const/16 v3, 0x9

    const/4 v4, 0x7

    if-eqz p11, :cond_25a

    if-eq v14, v4, :cond_21f

    if-eq v14, v3, :cond_21f

    if-ne v14, v2, :cond_21c

    goto :goto_21f

    :cond_21c
    const/16 v22, 0x30

    goto :goto_25c

    .line 820
    :cond_21f
    :goto_21f
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1, v15}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v17

    .line 821
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_207

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "protoLogParam1":Ljava/lang/String;
    move/from16 v3, p3

    .restart local v3    # "protoLogParam2":Z
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam3":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v8

    aput-object v2, v5, v10

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v5, v10

    aput-object v4, v5, v7

    const v7, 0x1e5501eb

    const/16 v8, 0x30

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v10, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 823
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Z
    .end local v4    # "protoLogParam3":Ljava/lang/String;
    goto :goto_207

    .line 817
    :cond_25a
    const/16 v22, 0x30

    .line 824
    :goto_25c
    const/16 v2, 0x12

    if-ne v14, v2, :cond_29d

    .line 825
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 826
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v2, :cond_269

    .line 827
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    goto :goto_26a

    :cond_269
    const/4 v2, 0x0

    .line 825
    :goto_26a
    move-object/from16 v3, p8

    invoke-virtual {v1, v12, v3, v2}, Lcom/android/internal/policy/TransitionAnimation;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v17

    .line 828
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_207

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "protoLogParam1":Ljava/lang/String;
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam2":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x6b578ac9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    aput-object v2, v7, v10

    const/16 v24, 0x2

    aput-object v4, v7, v24

    const/4 v10, 0x0

    invoke-static {v5, v6, v8, v10, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 830
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    goto/16 :goto_207

    .line 831
    :cond_29d
    const/16 v24, 0x2

    const/16 v25, 0x0

    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v2, v10, :cond_326

    .line 832
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 833
    if-eqz v15, :cond_2ae

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_2b0

    :cond_2ae
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 832
    :goto_2b0
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 834
    .end local v17    # "a":Landroid/view/animation/Animation;
    .local v6, "a":Landroid/view/animation/Animation;
    iget v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    if-eqz v1, :cond_2bb

    .line 835
    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    .line 837
    :cond_2bb
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v2, v6

    move-object/from16 v3, p1

    move-object/from16 v17, v4

    move/from16 v4, p2

    move v10, v5

    move/from16 v5, p3

    move-object/from16 v21, v6

    .end local v6    # "a":Landroid/view/animation/Animation;
    .local v21, "a":Landroid/view/animation/Animation;
    move-object/from16 v6, p6

    move/from16 v22, v7

    move/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v24, v9

    .end local v9    # "ar":Lcom/android/server/wm/ActivityRecord;
    .local v24, "ar":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v9, v17

    invoke-interface/range {v1 .. v9}, Lcom/android/server/wm/AppTransitionStub;->updateAnimationIfNeed(Landroid/view/animation/Animation;Landroid/view/WindowManager$LayoutParams;IZLandroid/graphics/Rect;ZLcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowManagerService;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 839
    .end local v21    # "a":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    if-eqz v1, :cond_2ea

    .line 840
    invoke-static {}, Lcom/android/server/am/SpeedTestModeServiceStub;->get()Lcom/android/server/am/SpeedTestModeServiceStub;

    move-result-object v2

    .line 841
    invoke-interface {v2}, Lcom/android/server/am/SpeedTestModeServiceStub;->getWindowStateAnimationScaleOverride()F

    move-result v2

    .line 840
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 844
    :cond_2ea
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_323

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    move/from16 v4, p3

    .local v4, "protoLogParam2":Z
    invoke-static/range {v22 .. v22}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam3":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x1ef703be

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    move/from16 v9, v22

    aput-object v5, v8, v9

    const/16 v9, 0x30

    const/4 v10, 0x0

    invoke-static {v6, v7, v9, v10, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 847
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Z
    .end local v5    # "protoLogParam3":Ljava/lang/String;
    nop

    .line 1050
    :cond_323
    move-object v8, v11

    goto/16 :goto_7f1

    .line 848
    .end local v1    # "a":Landroid/view/animation/Animation;
    .end local v24    # "ar":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "ar":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "a":Landroid/view/animation/Animation;
    :cond_326
    move v10, v5

    move/from16 v5, v22

    move/from16 v22, v7

    move-object/from16 v7, v25

    move-object/from16 v31, v9

    move v9, v8

    move/from16 v8, v24

    move-object/from16 v24, v31

    .end local v9    # "ar":Lcom/android/server/wm/ActivityRecord;
    .restart local v24    # "ar":Lcom/android/server/wm/ActivityRecord;
    if-ne v2, v4, :cond_371

    .line 849
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v17

    .line 851
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_36c

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam2":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x56e72bcc

    move/from16 v6, v22

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v9

    const/4 v10, 0x1

    aput-object v2, v6, v10

    aput-object v3, v6, v8

    invoke-static {v4, v5, v9, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 854
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    nop

    .line 1050
    :cond_36c
    :goto_36c
    move-object v8, v11

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 855
    :cond_371
    if-ne v2, v6, :cond_3b6

    .line 856
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 858
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v2, :cond_37d

    .line 859
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object v6, v2

    goto :goto_37e

    :cond_37d
    move-object v6, v7

    .line 856
    :goto_37e
    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/TransitionAnimation;->createClipRevealAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v17

    .line 860
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_36c

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "protoLogParam1":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam2":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x1060b74d

    move/from16 v6, v22

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v9

    const/4 v10, 0x1

    aput-object v2, v6, v10

    aput-object v3, v6, v8

    invoke-static {v4, v5, v9, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 863
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    goto :goto_36c

    .line 864
    :cond_3b6
    if-ne v2, v8, :cond_3fa

    .line 865
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 866
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v2, :cond_3c1

    .line 867
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    goto :goto_3c2

    :cond_3c1
    move-object v2, v7

    .line 865
    :goto_3c2
    invoke-virtual {v1, v14, v15, v12, v2}, Lcom/android/internal/policy/TransitionAnimation;->createScaleUpAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v17

    .line 868
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_36c

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "protoLogParam1":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam2":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam3":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x78e35030

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v9

    const/16 v21, 0x1

    aput-object v2, v10, v21

    aput-object v3, v10, v8

    move/from16 v8, v22

    aput-object v4, v10, v8

    invoke-static {v5, v6, v9, v7, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 871
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    .end local v4    # "protoLogParam3":Ljava/lang/String;
    goto/16 :goto_36c

    .line 872
    :cond_3fa
    move/from16 v5, v22

    const/16 v7, 0xc0

    const v8, -0x6f98dbad

    const/4 v9, 0x5

    if-eq v2, v5, :cond_75a

    if-ne v2, v10, :cond_414

    move v14, v8

    move v13, v9

    move/from16 v28, v10

    const/4 v10, 0x0

    const/16 v22, 0x1

    const/16 v25, 0x2

    const/16 v27, 0x0

    move v9, v5

    goto/16 :goto_766

    .line 887
    :cond_414
    if-eq v2, v9, :cond_6b0

    if-ne v2, v1, :cond_424

    move/from16 v22, v10

    const/4 v12, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x2

    move v10, v5

    goto/16 :goto_6ba

    .line 905
    :cond_424
    if-ne v2, v3, :cond_45c

    if-eqz v15, :cond_45c

    .line 906
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v17

    .line 907
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_36c

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "protoLogParam1":Ljava/lang/String;
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam2":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x5ebf881d

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    const/4 v8, 0x1

    aput-object v2, v5, v8

    const/4 v8, 0x2

    aput-object v3, v5, v8

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 910
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    goto/16 :goto_36c

    .line 913
    :cond_45c
    if-nez p12, :cond_48e

    const/16 v7, 0x6b

    if-ne v2, v7, :cond_48e

    .line 914
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mIsClipEnter:Z

    iget-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsClipWithScale:Z

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mClipFromRect:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mClipToRect:Landroid/graphics/Rect;

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mClipFromCornerRadius:F

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mClipToCornerRadius:F

    iget v4, v0, Lcom/android/server/wm/AppTransition;->mClipInterpolatorId:I

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mClipDuration:F

    move/from16 v21, v3

    move-object/from16 v3, p1

    move/from16 v22, v4

    move/from16 v4, p3

    move/from16 v11, v22

    move/from16 v12, v21

    invoke-interface/range {v1 .. v12}, Lcom/android/server/wm/AppTransitionStub;->createMiuiClipAnimation(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;ZZZLandroid/graphics/Rect;Landroid/graphics/Rect;FFIF)Landroid/view/animation/Animation;

    move-result-object v17

    move-object/from16 v8, p13

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 917
    :cond_48e
    if-nez p12, :cond_4b2

    const/16 v7, 0x6c

    if-ne v2, v7, :cond_4b2

    .line 918
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mIsRoundEnter:Z

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mRoundFromCornerRadius:F

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mRoundToCornerRadius:F

    iget v8, v0, Lcom/android/server/wm/AppTransition;->mRoundInterpolatorId:I

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mRoundDuration:F

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-interface/range {v1 .. v9}, Lcom/android/server/wm/AppTransitionStub;->createMiuiRoundAnimation(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;ZZFFIF)Landroid/view/animation/Animation;

    move-result-object v17

    move-object/from16 v8, p13

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 922
    :cond_4b2
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isChangeTransitOld(I)Z

    move-result v2

    if-eqz v2, :cond_4ff

    .line 924
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 925
    .end local v17    # "a":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x150

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 926
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v2, :cond_4fb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    move/from16 v4, p3

    .local v4, "protoLogParam2":Z
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam3":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x6efffb83

    new-array v9, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    aput-object v6, v9, v5

    const/16 v5, 0x30

    const/4 v11, 0x0

    invoke-static {v7, v8, v5, v11, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 928
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Z
    .end local v6    # "protoLogParam3":Ljava/lang/String;
    nop

    .line 1050
    :cond_4fb
    move-object/from16 v8, p13

    goto/16 :goto_7f1

    .line 931
    .end local v1    # "a":Landroid/view/animation/Animation;
    .restart local v17    # "a":Landroid/view/animation/Animation;
    :cond_4ff
    const/4 v11, 0x0

    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v2

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-interface {v2, v7}, Lcom/android/server/wm/AppTransitionStub;->isMiuiAppTransitionType(I)Z

    move-result v2

    if-eqz v2, :cond_53e

    .line 932
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-interface {v1, v2}, Lcom/android/server/wm/AppTransitionStub;->isNeedgetDefaultNextAppTransitionStartRect(I)Z

    move-result v1

    if-eqz v1, :cond_51d

    .line 933
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 935
    :cond_51d
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mRadius:I

    int-to-float v6, v3

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mScaleBackToScreenCenter:Z

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mAnimationExitStartCallback:Landroid/os/IRemoteCallback;

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mAnimationExitFinishCallback:Landroid/os/IRemoteCallback;

    move/from16 v3, p3

    move-object/from16 v4, p6

    invoke-interface/range {v1 .. v10}, Lcom/android/server/wm/AppTransitionStub;->loadMiuiAnimation(IZLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/os/Handler;ZLandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)Landroid/view/animation/Animation;

    move-result-object v17

    move-object/from16 v8, p13

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 941
    :cond_53e
    const/high16 v2, 0x3f800000    # 1.0f

    .line 943
    .local v2, "scaleRadio":F
    const/4 v7, 0x0

    .line 944
    .local v7, "animAttr":I
    packed-switch v14, :pswitch_data_7f6

    :pswitch_544
    move v8, v2

    move v12, v7

    goto/16 :goto_5e6

    .line 1018
    :pswitch_548
    if-eqz v15, :cond_54b

    .line 1019
    goto :goto_54c

    .line 1020
    :cond_54b
    move v1, v4

    :goto_54c
    move v7, v1

    move v8, v2

    move v12, v7

    goto/16 :goto_5e6

    .line 1011
    :pswitch_551
    if-eqz v15, :cond_555

    .line 1012
    move v1, v10

    goto :goto_556

    .line 1013
    :cond_555
    move v1, v9

    :goto_556
    move v7, v1

    .line 1014
    move v8, v2

    move v12, v7

    goto/16 :goto_5e6

    .line 1004
    :pswitch_55b
    if-eqz v15, :cond_560

    .line 1005
    const/16 v1, 0x19

    goto :goto_562

    .line 1006
    :cond_560
    const/16 v1, 0x18

    :goto_562
    move v7, v1

    .line 1007
    move v8, v2

    move v12, v7

    goto/16 :goto_5e6

    .line 999
    :pswitch_567
    if-eqz v15, :cond_56c

    .line 1000
    const/16 v1, 0x16

    goto :goto_56e

    .line 1001
    :cond_56c
    const/16 v1, 0x17

    :goto_56e
    move v7, v1

    .line 1002
    move v8, v2

    move v12, v7

    goto/16 :goto_5e6

    .line 994
    :pswitch_573
    if-eqz v15, :cond_57a

    .line 995
    const/16 v1, 0x14

    move/from16 v26, v1

    goto :goto_57c

    .line 996
    :cond_57a
    const/16 v26, 0x15

    :goto_57c
    move/from16 v7, v26

    .line 997
    move v8, v2

    move v12, v7

    goto/16 :goto_5e6

    .line 984
    :pswitch_582
    if-eqz v15, :cond_587

    .line 985
    const/16 v1, 0x10

    goto :goto_589

    .line 986
    :cond_587
    const/16 v1, 0x11

    :goto_589
    move v7, v1

    .line 987
    move v8, v2

    move v12, v7

    goto/16 :goto_5e6

    .line 989
    :pswitch_58e
    if-eqz v15, :cond_593

    .line 990
    const/16 v29, 0x12

    goto :goto_597

    .line 991
    :cond_593
    const/16 v1, 0x13

    move/from16 v29, v1

    :goto_597
    move/from16 v7, v29

    .line 992
    move v8, v2

    move v12, v7

    goto/16 :goto_5e6

    .line 979
    :pswitch_59d
    if-eqz v15, :cond_5a2

    .line 980
    const/16 v1, 0xe

    goto :goto_5a4

    .line 981
    :cond_5a2
    const/16 v1, 0xf

    :goto_5a4
    move v7, v1

    .line 982
    move v8, v2

    move v12, v7

    goto :goto_5e6

    .line 974
    :pswitch_5a8
    if-eqz v15, :cond_5ad

    .line 975
    const/16 v1, 0xc

    goto :goto_5af

    .line 976
    :cond_5ad
    const/16 v1, 0xd

    :goto_5af
    move v7, v1

    .line 977
    move v8, v2

    move v12, v7

    goto :goto_5e6

    .line 969
    :pswitch_5b3
    if-eqz v15, :cond_5b8

    .line 970
    const/16 v4, 0xa

    goto :goto_5ba

    .line 971
    :cond_5b8
    const/16 v4, 0xb

    :goto_5ba
    move v7, v4

    .line 972
    move v8, v2

    move v12, v7

    goto :goto_5e6

    .line 964
    :pswitch_5be
    if-eqz v15, :cond_5c1

    .line 965
    goto :goto_5c2

    .line 966
    :cond_5c1
    move v6, v3

    :goto_5c2
    move v7, v6

    .line 967
    move v8, v2

    move v12, v7

    goto :goto_5e6

    .line 956
    :pswitch_5c6
    if-eqz v15, :cond_5c9

    .line 957
    goto :goto_5ca

    .line 958
    :cond_5c9
    move v1, v4

    :goto_5ca
    move v7, v1

    .line 960
    invoke-static {}, Lcom/android/server/am/SpeedTestModeServiceStub;->get()Lcom/android/server/am/SpeedTestModeServiceStub;

    move-result-object v1

    .line 961
    invoke-interface {v1}, Lcom/android/server/am/SpeedTestModeServiceStub;->getWindowStateAnimationScaleOverride()F

    move-result v2

    .line 962
    move v8, v2

    move v12, v7

    goto :goto_5e6

    .line 947
    :pswitch_5d6
    if-eqz v15, :cond_5da

    .line 948
    move v1, v10

    goto :goto_5db

    .line 949
    :cond_5da
    move v1, v9

    :goto_5db
    move v7, v1

    .line 951
    invoke-static {}, Lcom/android/server/am/SpeedTestModeServiceStub;->get()Lcom/android/server/am/SpeedTestModeServiceStub;

    move-result-object v1

    .line 952
    invoke-interface {v1}, Lcom/android/server/am/SpeedTestModeServiceStub;->getWindowStateAnimationScaleOverride()F

    move-result v2

    .line 953
    move v8, v2

    move v12, v7

    .line 1025
    .end local v2    # "scaleRadio":F
    .end local v7    # "animAttr":I
    .local v8, "scaleRadio":F
    .local v12, "animAttr":I
    :goto_5e6
    if-eqz v24, :cond_601

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ActivityRecord;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_601

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_601

    .line 1026
    const/16 v1, 0x18

    if-ne v14, v1, :cond_5fb

    const/4 v1, 0x6

    move v14, v1

    .end local p2    # "transit":I
    .local v1, "transit":I
    goto :goto_601

    .line 1027
    .end local v1    # "transit":I
    .restart local p2    # "transit":I
    :cond_5fb
    const/16 v1, 0x19

    if-ne v14, v1, :cond_601

    const/4 v1, 0x7

    move v14, v1

    .line 1029
    .end local p2    # "transit":I
    .local v14, "transit":I
    :cond_601
    :goto_601
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v2, p1

    move v3, v14

    move/from16 v4, p3

    move v6, v5

    move-object/from16 v5, p6

    move/from16 v22, v6

    move-object/from16 v6, p13

    invoke-interface/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionStub;->loadMiuiDefaultAnimationNotCheck(Landroid/view/WindowManager$LayoutParams;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowManagerService;)Landroid/view/animation/Animation;

    move-result-object v7

    .line 1030
    .local v7, "defaultAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v13, v12, v14}, Lcom/android/server/wm/AppTransition;->getResIdAttr(Landroid/view/WindowManager$LayoutParams;II)I

    move-result v21

    .line 1031
    .local v21, "resId":I
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    invoke-interface {v1, v6, v15, v14}, Lcom/android/server/wm/AppTransitionStub;->updateLpIfNeeded(Lcom/android/server/wm/WindowContainer;ZI)Landroid/view/WindowManager$LayoutParams;

    move-result-object v23

    .line 1032
    .local v23, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    if-nez v23, :cond_627

    move-object v1, v13

    goto :goto_629

    :cond_627
    move-object/from16 v1, v23

    :goto_629
    move-object v13, v1

    .line 1033
    .end local p1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .local v13, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    move-object v2, v13

    move/from16 v3, v21

    move v4, v14

    move/from16 v5, p3

    move/from16 v6, p12

    invoke-interface/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionStub;->useDefaultAnimationAttr(Landroid/view/WindowManager$LayoutParams;IIZZ)Z

    move-result v1

    if-eqz v1, :cond_640

    if-nez v23, :cond_640

    const/4 v1, 0x1

    goto :goto_641

    :cond_640
    const/4 v1, 0x0

    .line 1034
    .local v1, "useDefault":Z
    :goto_641
    if-eqz v7, :cond_651

    if-eqz v1, :cond_651

    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wm/ActivityRecordStub;->isCompatibilityMode()Z

    move-result v2

    if-nez v2, :cond_651

    .line 1035
    move-object v2, v7

    .end local v17    # "a":Landroid/view/animation/Animation;
    .local v2, "a":Landroid/view/animation/Animation;
    goto :goto_659

    .line 1037
    .end local v2    # "a":Landroid/view/animation/Animation;
    .restart local v17    # "a":Landroid/view/animation/Animation;
    :cond_651
    if-eqz v12, :cond_658

    invoke-virtual {v0, v13, v12, v14}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_659

    :cond_658
    move-object v2, v11

    .line 1040
    .end local v17    # "a":Landroid/view/animation/Animation;
    .restart local v2    # "a":Landroid/view/animation/Animation;
    :goto_659
    if-eqz v2, :cond_65e

    .line 1041
    invoke-virtual {v2, v8}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1044
    :cond_65e
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v3, :cond_6a7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    int-to-long v4, v12

    .local v4, "protoLogParam1":J
    invoke-static {v14}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam2":Ljava/lang/String;
    move/from16 v17, p3

    .local v17, "protoLogParam3":Z
    invoke-static/range {v22 .. v22}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .local v25, "protoLogParam4":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v27, 0x0

    aput-object v3, v9, v27

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    const/16 v28, 0x1

    aput-object v27, v9, v28

    const/16 v29, 0x2

    aput-object v6, v9, v29

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move/from16 v10, v22

    aput-object v27, v9, v10

    const/16 v22, 0x4

    aput-object v25, v9, v22

    move/from16 p1, v1

    move/from16 v26, v12

    const/16 v1, 0xc4

    const v10, 0x7f664f33

    const/4 v12, 0x0

    .end local v1    # "useDefault":Z
    .end local v12    # "animAttr":I
    .local v26, "animAttr":I
    .local p1, "useDefault":Z
    invoke-static {v11, v10, v1, v12, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6ab

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":J
    .end local v6    # "protoLogParam2":Ljava/lang/String;
    .end local v17    # "protoLogParam3":Z
    .end local v25    # "protoLogParam4":Ljava/lang/String;
    .end local v26    # "animAttr":I
    .end local p1    # "useDefault":Z
    .restart local v1    # "useDefault":Z
    .restart local v12    # "animAttr":I
    :cond_6a7
    move/from16 p1, v1

    move/from16 v26, v12

    .line 1050
    .end local v1    # "useDefault":Z
    .end local v7    # "defaultAnimation":Landroid/view/animation/Animation;
    .end local v8    # "scaleRadio":F
    .end local v12    # "animAttr":I
    .end local v21    # "resId":I
    .end local v23    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :goto_6ab
    move-object/from16 v8, p13

    move-object v1, v2

    goto/16 :goto_7f1

    .line 887
    .end local v2    # "a":Landroid/view/animation/Animation;
    .end local v13    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "transit":I
    .local v17, "a":Landroid/view/animation/Animation;
    .local p1, "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local p2    # "transit":I
    :cond_6b0
    move/from16 v22, v10

    const/4 v12, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x2

    move v10, v5

    .line 889
    :goto_6ba
    if-ne v2, v9, :cond_6bf

    move/from16 v1, v28

    goto :goto_6c1

    :cond_6bf
    move/from16 v1, v27

    :goto_6c1
    iput-boolean v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 891
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 892
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 891
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/AppTransitionAnimationSpec;

    .line 893
    .local v11, "spec":Landroid/view/AppTransitionAnimationSpec;
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 895
    if-eqz v11, :cond_6db

    iget-object v2, v11, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object/from16 v21, v2

    goto :goto_6dd

    :cond_6db
    move-object/from16 v21, v12

    .line 896
    :goto_6dd
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v2, :cond_6e6

    .line 897
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object/from16 v23, v2

    goto :goto_6e8

    :cond_6e6
    move-object/from16 v23, v12

    .line 893
    :goto_6e8
    move/from16 v2, p3

    move/from16 v4, p5

    move/from16 v5, p2

    move-object/from16 v6, p6

    move v13, v7

    move-object/from16 v7, p8

    move v14, v8

    move/from16 v25, v29

    move-object/from16 v8, p9

    move v13, v9

    move-object/from16 v9, p10

    move/from16 v29, v10

    move/from16 v31, v28

    move/from16 v28, v22

    move/from16 v22, v31

    move/from16 v10, p12

    move-object/from16 v30, v11

    .end local v11    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .local v30, "spec":Landroid/view/AppTransitionAnimationSpec;
    move-object/from16 v11, v21

    move-object/from16 v12, v23

    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailEnterExitAnimationLocked(ZZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v17

    .line 898
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_750

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v2, :cond_71e

    const-string v2, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    goto :goto_720

    :cond_71e
    const-string v2, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    :goto_720
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam2":Ljava/lang/String;
    move/from16 v4, p3

    .local v4, "protoLogParam3":Z
    invoke-static/range {v29 .. v29}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam4":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v1, v7, v27

    aput-object v2, v7, v22

    aput-object v3, v7, v25

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move/from16 v9, v29

    aput-object v8, v7, v9

    aput-object v5, v7, v28

    const/16 v8, 0xc0

    const/4 v10, 0x0

    invoke-static {v6, v14, v8, v10, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 905
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    .end local v4    # "protoLogParam3":Z
    .end local v5    # "protoLogParam4":Ljava/lang/String;
    .end local v30    # "spec":Landroid/view/AppTransitionAnimationSpec;
    :cond_750
    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v8, p13

    move-object/from16 v1, v17

    goto/16 :goto_7f1

    .line 872
    :cond_75a
    move v14, v8

    move v13, v9

    move/from16 v28, v10

    const/4 v10, 0x0

    const/16 v22, 0x1

    const/16 v25, 0x2

    const/16 v27, 0x0

    move v9, v5

    .line 874
    :goto_766
    if-ne v2, v9, :cond_76b

    move/from16 v1, v22

    goto :goto_76d

    :cond_76b
    move/from16 v1, v27

    :goto_76d
    iput-boolean v1, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 876
    move-object/from16 v8, p13

    invoke-virtual {v0, v8}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(Lcom/android/server/wm/WindowContainer;)Landroid/hardware/HardwareBuffer;

    move-result-object v11

    .line 877
    .local v11, "thumbnailHeader":Landroid/hardware/HardwareBuffer;
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 879
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v2, :cond_781

    .line 880
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    move-object v7, v2

    goto :goto_782

    :cond_781
    move-object v7, v10

    .line 877
    :goto_782
    move/from16 v2, p3

    move-object/from16 v4, p6

    move/from16 v5, p2

    move-object v6, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailEnterExitAnimationLockedCompat(ZZLandroid/graphics/Rect;ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v17

    .line 881
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_7cb

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v2, :cond_79c

    const-string v2, "ANIM_THUMBNAIL_SCALE_UP"

    goto :goto_79e

    :cond_79c
    const-string v2, "ANIM_THUMBNAIL_SCALE_DOWN"

    :goto_79e
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "protoLogParam1":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam2":Ljava/lang/String;
    move/from16 v4, p3

    .restart local v4    # "protoLogParam3":Z
    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam4":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v1, v7, v27

    aput-object v2, v7, v22

    aput-object v3, v7, v25

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v7, v9

    aput-object v5, v7, v28

    const/16 v9, 0xc0

    invoke-static {v6, v14, v9, v10, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 887
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    .end local v4    # "protoLogParam3":Z
    .end local v5    # "protoLogParam4":Ljava/lang/String;
    .end local v11    # "thumbnailHeader":Landroid/hardware/HardwareBuffer;
    :cond_7cb
    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v1, v17

    goto :goto_7f1

    .line 780
    .end local v20    # "isCustomSet":Z
    .end local v24    # "ar":Lcom/android/server/wm/ActivityRecord;
    .local v7, "isCustomSet":Z
    .restart local v9    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_7d2
    move/from16 v20, v7

    move-object/from16 v24, v9

    move-object v8, v11

    .line 782
    .end local v7    # "isCustomSet":Z
    .end local v9    # "ar":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "isCustomSet":Z
    .restart local v24    # "ar":Lcom/android/server/wm/ActivityRecord;
    :goto_7d7
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p13

    invoke-interface/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionStub;->loadMiuiDefaultAnimationNotCheck(Landroid/view/WindowManager$LayoutParams;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowManagerService;)Landroid/view/animation/Animation;

    move-result-object v17

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v1, v17

    .line 1050
    .end local v17    # "a":Landroid/view/animation/Animation;
    .end local p1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local p2    # "transit":I
    .local v1, "a":Landroid/view/animation/Animation;
    .restart local v13    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v14    # "transit":I
    :goto_7f1
    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionFinishedCallbackIfNeeded(Landroid/view/animation/Animation;)V

    .line 1052
    return-object v1

    nop

    :pswitch_data_7f6
    .packed-switch 0x6
        :pswitch_5d6
        :pswitch_5c6
        :pswitch_5be
        :pswitch_5b3
        :pswitch_5a8
        :pswitch_59d
        :pswitch_58e
        :pswitch_582
        :pswitch_573
        :pswitch_567
        :pswitch_55b
        :pswitch_544
        :pswitch_544
        :pswitch_544
        :pswitch_544
        :pswitch_544
        :pswitch_544
        :pswitch_544
        :pswitch_5d6
        :pswitch_5c6
        :pswitch_544
        :pswitch_544
        :pswitch_551
        :pswitch_548
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .registers 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I
    .param p3, "transit"    # I

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method loadAnimationSafely(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 608
    const-string v0, "WindowManager"

    invoke-static {p1, p2, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method needCreateMiuiActivityThumbnail(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 1885
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mScaleBackToScreenCenter:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1886
    return v1

    .line 1888
    :cond_6
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v0, p1, :cond_b

    .line 1889
    return v1

    .line 1891
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1892
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1893
    return v1

    .line 1895
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 559
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 560
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 562
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public overrideActivityTransitionClipWindow(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;FFIFI)V
    .registers 11
    .param p1, "clipEnter"    # Z
    .param p2, "isClipWithScale"    # Z
    .param p3, "clipFromRect"    # Landroid/graphics/Rect;
    .param p4, "clipToRect"    # Landroid/graphics/Rect;
    .param p5, "clipFromCornerRadius"    # F
    .param p6, "clipToCornerRadius"    # F
    .param p7, "clipInterpolatorId"    # I
    .param p8, "clipDuration"    # F
    .param p9, "nextAppTransitionType"    # I

    .line 1941
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadMiuiClipAnimation:Z

    if-eqz v0, :cond_1f

    .line 1942
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1943
    iput p9, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1944
    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mIsClipEnter:Z

    .line 1945
    iput-boolean p2, p0, Lcom/android/server/wm/AppTransition;->mIsClipWithScale:Z

    .line 1946
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mClipFromRect:Landroid/graphics/Rect;

    .line 1947
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mClipToRect:Landroid/graphics/Rect;

    .line 1948
    iput p5, p0, Lcom/android/server/wm/AppTransition;->mClipFromCornerRadius:F

    .line 1949
    iput p6, p0, Lcom/android/server/wm/AppTransition;->mClipToCornerRadius:F

    .line 1950
    iput p7, p0, Lcom/android/server/wm/AppTransition;->mClipInterpolatorId:I

    .line 1951
    iput p8, p0, Lcom/android/server/wm/AppTransition;->mClipDuration:F

    .line 1953
    :cond_1f
    return-void
.end method

.method public overrideActivityTransitionRoundWindow(ZFFIFI)V
    .registers 8
    .param p1, "roundEnter"    # Z
    .param p2, "fromRoundCornerRadius"    # F
    .param p3, "toRoundCornerRadius"    # F
    .param p4, "roundInterpolatorId"    # I
    .param p5, "roundDuration"    # F
    .param p6, "nextAppTransitionType"    # I

    .line 1962
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadMiuiRoundAnimation:Z

    if-eqz v0, :cond_19

    .line 1963
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1964
    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mIsRoundEnter:Z

    .line 1965
    iput p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1966
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mRoundFromCornerRadius:F

    .line 1967
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mRoundToCornerRadius:F

    .line 1968
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mRoundInterpolatorId:I

    .line 1969
    iput p5, p0, Lcom/android/server/wm/AppTransition;->mRoundDuration:F

    .line 1971
    :cond_19
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .line 1320
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1321
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1322
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1323
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1324
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1326
    :cond_10
    return-void
.end method

.method overrideMiuiRoundedViewAnimationInfo(Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .registers 14
    .param p1, "icon"    # Landroid/hardware/HardwareBuffer;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "radius"    # I
    .param p4, "foreGroundColor"    # I
    .param p5, "animationReenterStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p6, "animationReenterFinishedCallback"    # Landroid/os/IRemoteCallback;

    .line 1863
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewAnimation:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewScaledAnimation:Z

    if-nez v0, :cond_9

    .line 1864
    return-void

    .line 1867
    :cond_9
    if-eqz p1, :cond_14

    .line 1868
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 1870
    :cond_14
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mRadius:I

    .line 1871
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mForeGroundColor:I

    .line 1872
    if-eqz p2, :cond_20

    .line 1873
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_25

    .line 1875
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1877
    :goto_25
    iput-object p5, p0, Lcom/android/server/wm/AppTransition;->mAnimationReenterStartedCallback:Landroid/os/IRemoteCallback;

    .line 1878
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mAnimationReenterFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1879
    return-void
.end method

.method overridePendingActivityTransitionFromRoundedView(IIIIIILandroid/hardware/HardwareBuffer;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;I)V
    .registers 19
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I
    .param p5, "radius"    # I
    .param p6, "foreGroundColor"    # I
    .param p7, "buffer"    # Landroid/hardware/HardwareBuffer;
    .param p8, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p9, "finishedCallback"    # Landroid/os/IRemoteCallback;
    .param p10, "nextAppTransitionType"    # I

    .line 1121
    move-object v6, p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1123
    move/from16 v7, p10

    iput v7, v6, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1124
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1126
    move v0, p5

    iput v0, v6, Lcom/android/server/wm/AppTransition;->mRadius:I

    .line 1127
    move v1, p6

    iput v1, v6, Lcom/android/server/wm/AppTransition;->mForeGroundColor:I

    .line 1128
    move-object/from16 v2, p8

    iput-object v2, v6, Lcom/android/server/wm/AppTransition;->mAnimationExitStartCallback:Landroid/os/IRemoteCallback;

    .line 1129
    move-object/from16 v3, p9

    iput-object v3, v6, Lcom/android/server/wm/AppTransition;->mAnimationExitFinishCallback:Landroid/os/IRemoteCallback;

    goto :goto_31

    .line 1121
    :cond_29
    move v0, p5

    move v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v7, p10

    .line 1131
    :goto_31
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "backgroundColor"    # I
    .param p5, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p6, "endedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "overrideTaskTransaction"    # Z

    .line 1080
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1082
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    .line 1083
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1084
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1085
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1086
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    .line 1087
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1088
    iput-object p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1089
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1090
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mOverrideTaskTransition:Z

    .line 1092
    :cond_1d
    return-void
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/hardware/HardwareBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .registers 14
    .param p1, "srcThumb"    # Landroid/hardware/HardwareBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    .line 1238
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1240
    if-eqz p7, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1241
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1242
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1243
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 1245
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1246
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1248
    :cond_20
    return-void
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .registers 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1106
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1108
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1109
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1112
    :cond_19
    return-void
.end method

.method overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 16
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    .line 1253
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1254
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1255
    if-eqz p4, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1256
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1257
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1258
    if-eqz p1, :cond_5f

    .line 1259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v1, p1

    if-ge v0, v1, :cond_5f

    .line 1260
    aget-object v1, p1, v0

    .line 1261
    .local v1, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v1, :cond_5c

    .line 1262
    new-instance v2, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;-><init>()V

    const-class v3, Lcom/android/server/wm/Task;

    .line 1263
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    iget v4, v1, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1262
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v2

    .line 1264
    .local v2, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1265
    .local v3, "container":Lcom/android/server/wm/WindowContainer;
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1266
    if-nez v3, :cond_3d

    .line 1267
    goto :goto_5c

    .line 1269
    :cond_3d
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1270
    if-nez v0, :cond_5c

    .line 1273
    iget-object v4, v1, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1274
    .local v4, "rect":Landroid/graphics/Rect;
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 1275
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v10, v1, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/hardware/HardwareBuffer;

    .line 1274
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 1259
    .end local v1    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .end local v2    # "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    .end local v3    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_5c
    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1280
    .end local v0    # "i":I
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1281
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1282
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1284
    :cond_66
    return-void
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .registers 5
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .line 1289
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1291
    if-eqz p3, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1292
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1293
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1294
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1295
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1297
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 1300
    :cond_1f
    return-void
.end method

.method overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .registers 3
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;Z)V

    .line 1304
    return-void
.end method

.method overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;Z)V
    .registers 12
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p2, "sync"    # Z

    .line 1308
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    .local v0, "protoLogParam0":Z
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x565929b6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1310
    .end local v0    # "protoLogParam0":Z
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionIsSync:Z

    if-nez v0, :cond_43

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1312
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1313
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 1315
    iput-boolean p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionIsSync:Z

    .line 1317
    :cond_43
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .registers 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1096
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1098
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1099
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 1100
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1102
    :cond_18
    return-void
.end method

.method overridePendingAppTransitionStartCrossProfileApps()V
    .registers 2

    .line 1332
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1333
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1334
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1337
    :cond_10
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/hardware/HardwareBuffer;IILandroid/os/IRemoteCallback;Z)V
    .registers 13
    .param p1, "srcThumb"    # Landroid/hardware/HardwareBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .line 1224
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1225
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1226
    if-eqz p5, :cond_d

    const/4 v0, 0x3

    goto :goto_e

    .line 1227
    :cond_d
    const/4 v0, 0x4

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1228
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1229
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/hardware/HardwareBuffer;)V

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1231
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1233
    :cond_20
    return-void
.end method

.method postAnimationCallback()V
    .registers 4

    .line 1070
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_17

    .line 1071
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1075
    :cond_17
    return-void
.end method

.method prepareAppTransition(II)Z
    .registers 7
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 1677
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1678
    const/4 v0, 0x0

    return v0

    .line 1680
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1681
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 1682
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 1683
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 1684
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1686
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v0

    return v0
.end method

.method registerKeygaurdExitAnimationStartListener(Lcom/android/server/wm/WindowManagerInternal$KeyguardExitAnimationStartListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerInternal$KeyguardExitAnimationStartListener;

    .line 555
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mKeyguardExitAnimationStartListener:Lcom/android/server/wm/WindowManagerInternal$KeyguardExitAnimationStartListener;

    .line 556
    return-void
.end method

.method registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 546
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    return-void
.end method

.method removeAppTransitionTimeoutCallbacks()V
    .registers 3

    .line 1846
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1847
    return-void
.end method

.method setIdle()V
    .registers 2

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 353
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 7
    .param p1, "transit"    # I
    .param p2, "openingApp"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "closingApp"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "changingApp"    # Lcom/android/server/wm/ActivityRecord;

    .line 316
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastChangingApp:Ljava/lang/String;

    .line 320
    return-void
.end method

.method setLastAppTransitionTarget(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 325
    .local p1, "openingTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "closingTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningAnimationTargets:Landroid/util/ArraySet;

    .line 326
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mLastClosingAnimationTargets:Landroid/util/ArraySet;

    .line 327
    return-void
.end method

.method setLoadMiuiClipAnimation(Z)V
    .registers 2
    .param p1, "isLoadMiuiClipAnimation"    # Z

    .line 1956
    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mLoadMiuiClipAnimation:Z

    .line 1957
    return-void
.end method

.method setLoadMiuiRoundAnimation(Z)V
    .registers 2
    .param p1, "isLoadMiuiRoundAnimation"    # Z

    .line 1974
    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mLoadMiuiRoundAnimation:Z

    .line 1975
    return-void
.end method

.method setLoadRoundedViewAnimation(ZZZ)V
    .registers 4
    .param p1, "loadRoundedViewAnimation"    # Z
    .param p2, "loadRoundedViewScaledAnimation"    # Z
    .param p3, "scaleBackToScreenCenter"    # Z

    .line 1904
    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewAnimation:Z

    .line 1905
    iput-boolean p2, p0, Lcom/android/server/wm/AppTransition;->mLoadRoundedViewScaledAnimation:Z

    .line 1906
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mScaleBackToScreenCenter:Z

    .line 1907
    return-void
.end method

.method setReady()V
    .registers 2

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 337
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 338
    return-void
.end method

.method setTimeout()V
    .registers 2

    .line 364
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 365
    return-void
.end method

.method shouldActivityTransitionRoundCorner()Z
    .registers 4

    .line 1854
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/AppTransitionStub;->shouldActivityTransitionRoundCorner(IZ)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1376
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mNextAppTransitionRequests=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    const/4 v1, 0x0

    .line 1379
    .local v1, "separator":Z
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1380
    .local v3, "transit":Ljava/lang/Integer;
    if-eqz v1, :cond_24

    .line 1381
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    :cond_24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    const/4 v1, 0x1

    .line 1385
    .end local v3    # "transit":Ljava/lang/Integer;
    goto :goto_11

    .line 1386
    :cond_31
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mNextAppTransitionFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 1388
    invoke-static {v3}, Lcom/android/server/wm/AppTransition;->appTransitionFlagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1387
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method transferFrom(Lcom/android/server/wm/AppTransition;)Z
    .registers 4
    .param p1, "other"    # Lcom/android/server/wm/AppTransition;

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 311
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v0

    return v0
.end method

.method unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 551
    return-void
.end method

.method updateBooster()V
    .registers 3

    .line 534
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->needsBoosting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setAppTransitionRunning(Z)V

    .line 535
    return-void
.end method
