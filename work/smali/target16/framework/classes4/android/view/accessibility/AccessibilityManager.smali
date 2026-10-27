.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$MyCallback;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$FlashNotificationReason;,
        Landroid/view/accessibility/AccessibilityManager$ContentFlag;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_CHOOSE_ACCESSIBILITY_BUTTON:Ljava/lang/String; = "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

.field public static final blacklist AUTOCLICK_CURSOR_AREA_INCREMENT_SIZE:I = 0x14

.field public static final blacklist AUTOCLICK_CURSOR_AREA_SIZE_DEFAULT:I = 0x3c

.field public static final blacklist AUTOCLICK_CURSOR_AREA_SIZE_MAX:I = 0x64

.field public static final blacklist AUTOCLICK_CURSOR_AREA_SIZE_MIN:I = 0x14

.field public static final greylist-max-o AUTOCLICK_DELAY_DEFAULT:I = 0x258

.field public static final blacklist AUTOCLICK_DELAY_WITH_INDICATOR_DEFAULT:I = 0x3e8

.field public static final blacklist AUTOCLICK_IGNORE_MINOR_CURSOR_MOVEMENT_DEFAULT:Z = false

.field public static final blacklist AUTOCLICK_REVERT_TO_LEFT_CLICK_DEFAULT:Z = true

.field public static final greylist-max-o DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field public static final greylist-max-o DALTONIZER_DISABLED:I = -0x1

.field public static final greylist-max-r DALTONIZER_SIMULATE_MONOCHROMACY:I = 0x0

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist FLAG_CONTENT_CONTROLS:I = 0x4

.field public static final whitelist FLAG_CONTENT_ICONS:I = 0x1

.field public static final whitelist FLAG_CONTENT_TEXT:I = 0x2

.field public static final blacklist FLASH_REASON_ALARM:I = 0x2

.field public static final blacklist FLASH_REASON_CALL:I = 0x1

.field public static final blacklist FLASH_REASON_NOTIFICATION:I = 0x3

.field public static final blacklist FLASH_REASON_PREVIEW:I = 0x4

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final greylist-max-o STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final blacklist STATE_FLAG_AUDIO_DESCRIPTION_BY_DEFAULT_ENABLED:I = 0x1000

.field public static final blacklist STATE_FLAG_DISPATCH_DOUBLE_TAP:I = 0x8

.field public static final greylist-max-o STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED:I = 0x4

.field public static final blacklist STATE_FLAG_REQUEST_MULTI_FINGER_GESTURES:I = 0x10

.field public static final greylist-max-o STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field public static final blacklist STATE_FLAG_TRACE_A11Y_INTERACTION_CLIENT_ENABLED:I = 0x400

.field public static final blacklist STATE_FLAG_TRACE_A11Y_INTERACTION_CONNECTION_CB_ENABLED:I = 0x200

.field public static final blacklist STATE_FLAG_TRACE_A11Y_INTERACTION_CONNECTION_ENABLED:I = 0x100

.field public static final blacklist STATE_FLAG_TRACE_A11Y_SERVICE_ENABLED:I = 0x800

.field private static greylist sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final greylist sInstanceSync:Ljava/lang/Object;


# instance fields
.field greylist-max-o mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

.field private final greylist mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAccessibilityTracingState:I

.field private final blacklist mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBinder:Landroid/os/Binder;

.field final greylist-max-o mCallback:Landroid/os/Handler$Callback;

.field private final greylist-max-o mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field private blacklist mFocusColor:I

.field private blacklist mFocusStrokeWidth:I

.field final greylist mHandler:Landroid/os/Handler;

.field private final blacklist mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mInteractiveUiTimeout:I

.field blacklist mIsAudioDescriptionByDefaultRequested:Z

.field greylist-max-p mIsEnabled:Z

.field greylist mIsHighContrastTextEnabled:Z

.field greylist-max-o mIsTouchExplorationEnabled:Z

.field private final greylist mLock:Ljava/lang/Object;

.field blacklist mNonInteractiveUiTimeout:I

.field private blacklist mPerformingAction:I

.field greylist-max-o mRelevantEventTypes:I

.field private blacklist mRequestFromAccessibilityTool:Z

.field private greylist-max-o mRequestPreparerLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final greylist-max-o mServicesStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServicesStateChangeListeners(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetStateLocked(Landroid/view/accessibility/AccessibilityManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFocusAppearanceLocked(Landroid/view/accessibility/AccessibilityManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->updateFocusAppearanceLocked(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateUiTimeout(Landroid/view/accessibility/AccessibilityManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->updateUiTimeout(J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/accessibility/IAccessibilityManager;IZ)V
    .registers 8

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 272
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    .line 289
    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    .line 296
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 300
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 303
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    .line 306
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    .line 309
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    .line 324
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mBinder:Landroid/os/Binder;

    .line 468
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 580
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager-IA;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    .line 581
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 582
    iput p4, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 583
    iget-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 584
    :try_start_52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->initialFocusAppearanceLocked(Landroid/content/res/Resources;)V

    .line 585
    if-eqz p5, :cond_5e

    .line 586
    invoke-direct {p0, p3}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 588
    :cond_5e
    monitor-exit p2

    .line 589
    return-void

    .line 588
    :catchall_60
    move-exception p1

    monitor-exit p2
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .registers 7

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 272
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    .line 289
    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    .line 296
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 300
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 303
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    .line 306
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    .line 309
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    .line 324
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mBinder:Landroid/os/Binder;

    .line 468
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 556
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager-IA;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    .line 557
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 558
    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 559
    iget-object p3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 560
    :try_start_5d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->initialFocusAppearanceLocked(Landroid/content/res/Resources;)V

    .line 561
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 562
    monitor-exit p3

    .line 563
    return-void

    .line 562
    :catchall_69
    move-exception p1

    monitor-exit p3
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_69

    throw p1
.end method

.method public static greylist getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .registers 5

    .line 524
    sget-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_2e

    .line 527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_25

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 528
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 531
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_20

    goto :goto_25

    .line 536
    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    goto :goto_26

    .line 534
    :cond_25
    :goto_25
    const/4 v1, -0x2

    .line 538
    :goto_26
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    sput-object v2, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    .line 540
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_32

    .line 541
    sget-object p0, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object p0

    .line 540
    :catchall_32
    move-exception p0

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method private greylist-max-o getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    .registers 2

    .line 2445
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_8

    .line 2446
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 2448
    :cond_8
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    return-object v0
.end method

.method private blacklist getShortcutInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .registers 6

    .line 2080
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2081
    const/4 v0, 0x0

    if-eqz p2, :cond_23

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_23

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2082
    const-string v2, "android.accessibilityshortcut.target"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_23

    .line 2086
    :cond_14
    :try_start_14
    new-instance v1, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-direct {v1, p1, p2}, Landroid/accessibilityservice/AccessibilityShortcutInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_19} :catch_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1a

    return-object v1

    .line 2087
    :catch_1a
    move-exception p1

    .line 2088
    const-string p2, "AccessibilityManager"

    const-string v1, "Error while initializing AccessibilityShortcutInfo"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2090
    return-object v0

    .line 2083
    :cond_23
    :goto_23
    return-object v0
.end method

.method private blacklist initialFocusAppearanceLocked(Landroid/content/res/Resources;)V
    .registers 4

    .line 2607
    const v0, 0x1050024

    :try_start_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    .line 2609
    const v0, 0x10600f3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_12} :catch_13

    .line 2617
    goto :goto_2c

    .line 2610
    :catch_13
    move-exception v0

    .line 2613
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    .line 2614
    const p1, -0x40c64b00

    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    .line 2615
    const-string p1, "AccessibilityManager"

    const-string v1, "Error while initialing the focus appearance data then setting to default value by hardcoded"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2618
    :goto_2c
    return-void
.end method

.method public static whitelist isAccessibilityButtonSupported()Z
    .registers 2

    .line 2627
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2628
    const v1, 0x1110262

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$notifyAccessibilityStateChanged$0(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V
    .registers 2

    .line 2495
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyAudioDescriptionbyDefaultStateChanged$3(Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Z)V
    .registers 2

    .line 2561
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;->onAudioDescriptionRequestedChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyHighContrastTextStateChanged$2(Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;Z)V
    .registers 2

    .line 2539
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;->onHighContrastTextStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTouchExplorationStateChanged$1(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V
    .registers 2

    .line 2517
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    return-void
.end method

.method private blacklist notifyAudioDescriptionbyDefaultStateChanged()V
    .registers 8

    .line 2549
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2550
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2551
    monitor-exit v0

    return-void

    .line 2553
    :cond_d
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    .line 2554
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2555
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_36

    .line 2557
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2558
    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_35

    .line 2559
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;

    .line 2560
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda3;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Z)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2558
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2564
    :cond_35
    return-void

    .line 2555
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private blacklist notifyHighContrastTextStateChanged()V
    .registers 8

    .line 2527
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2528
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2529
    monitor-exit v0

    return-void

    .line 2531
    :cond_d
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighContrastTextEnabled:Z

    .line 2532
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2533
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_36

    .line 2535
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2536
    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_35

    .line 2537
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;

    .line 2538
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;Z)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2536
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2541
    :cond_35
    return-void

    .line 2533
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private greylist-max-o notifyTouchExplorationStateChanged()V
    .registers 8

    .line 2505
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2506
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2507
    monitor-exit v0

    return-void

    .line 2509
    :cond_d
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 2510
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2511
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_36

    .line 2513
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2514
    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_35

    .line 2515
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 2516
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2514
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2519
    :cond_35
    return-void

    .line 2511
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private greylist setStateLocked(I)V
    .registers 10

    .line 1592
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1593
    :goto_9
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    .line 1595
    :goto_10
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v1

    .line 1597
    :goto_17
    and-int/lit16 v5, p1, 0x1000

    if-eqz v5, :cond_1c

    move v1, v2

    .line 1600
    :cond_1c
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    .line 1601
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 1602
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighContrastTextEnabled:Z

    .line 1603
    iget-boolean v7, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    .line 1606
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 1607
    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 1608
    iput-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighContrastTextEnabled:Z

    .line 1609
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    .line 1611
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eq v2, v0, :cond_37

    .line 1612
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChanged()V

    .line 1615
    :cond_37
    if-eq v5, v3, :cond_3c

    .line 1616
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyTouchExplorationStateChanged()V

    .line 1619
    :cond_3c
    if-eq v6, v4, :cond_41

    .line 1620
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyHighContrastTextStateChanged()V

    .line 1623
    :cond_41
    if-eq v7, v1, :cond_46

    .line 1625
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyAudioDescriptionbyDefaultStateChanged()V

    .line 1628
    :cond_46
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->updateAccessibilityTracingState(I)V

    .line 1629
    return-void
.end method

.method private greylist-max-o tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V
    .registers 5

    .line 2452
    if-nez p1, :cond_f

    .line 2453
    const-string p1, "accessibility"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 2454
    if-nez p1, :cond_b

    .line 2455
    return-void

    .line 2457
    :cond_b
    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object p1

    .line 2461
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {p1, v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J

    move-result-wide v0

    .line 2462
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    .line 2463
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 2464
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManager;->getRecommendedTimeoutMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->updateUiTimeout(J)V

    .line 2465
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManager;->getFocusStrokeWidth()I

    move-result v0

    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManager;->getFocusColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->updateFocusAppearanceLocked(II)V

    .line 2466
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_38} :catch_39

    .line 2469
    goto :goto_41

    .line 2467
    :catch_39
    move-exception p1

    .line 2468
    const-string v0, "AccessibilityManager"

    const-string v1, "AccessibilityManagerService is dead"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2470
    :goto_41
    return-void
.end method

.method private blacklist updateAccessibilityTracingState(I)V
    .registers 3

    .line 2570
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2571
    :try_start_3
    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    .line 2572
    monitor-exit v0

    .line 2573
    return-void

    .line 2572
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method private blacklist updateFocusAppearanceLocked(II)V
    .registers 4

    .line 2593
    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    if-ne v0, p2, :cond_9

    .line 2594
    return-void

    .line 2596
    :cond_9
    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    .line 2597
    iput p2, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    .line 2598
    return-void
.end method

.method private blacklist updateUiTimeout(J)V
    .registers 4

    .line 2582
    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mInteractiveUiTimeout:I

    .line 2583
    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result p1

    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mNonInteractiveUiTimeout:I

    .line 2584
    return-void
.end method


# virtual methods
.method public blacklist addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .registers 14

    .line 1667
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1668
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 1669
    const/4 v8, -0x1

    if-nez v2, :cond_c

    .line 1670
    monitor-exit v1

    return v8

    .line 1672
    :cond_c
    iget v7, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 1673
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_22

    .line 1675
    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v5, p4

    :try_start_13
    invoke-interface/range {v2 .. v7}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result p1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_18

    return p1

    .line 1677
    :catch_18
    move-exception v0

    move-object p1, v0

    .line 1678
    const-string p2, "AccessibilityManager"

    const-string p3, "Error while adding an accessibility interaction connection. "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1680
    return v8

    .line 1673
    :catchall_22
    move-exception v0

    move-object p1, v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_22

    throw p1
.end method

.method public whitelist addAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .registers 5

    .line 1230
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 1231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    .line 1233
    :cond_c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getAccessibilityViewId()I

    move-result v0

    .line 1234
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1235
    if-nez v2, :cond_24

    .line 1236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1237
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1239
    :cond_24
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    return-void
.end method

.method public whitelist addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .registers 4

    .line 1131
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, p1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 1132
    return-void
.end method

.method public whitelist addAccessibilityServicesStateChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .registers 5

    .line 1117
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1118
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    monitor-exit v0

    .line 1120
    return-void

    .line 1119
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V
    .registers 5

    .line 1040
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 1042
    if-nez p2, :cond_9

    iget-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    :cond_9
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    monitor-exit v0

    .line 1044
    return-void

    .line 1043
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public whitelist addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .registers 3

    .line 1025
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    .line 1026
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist addAudioDescriptionRequestedChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;)V
    .registers 5

    .line 1440
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    monitor-exit v0

    .line 1443
    return-void

    .line 1442
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist addHighContrastTextStateChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;)V
    .registers 5

    .line 1411
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1412
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    monitor-exit v0

    .line 1414
    return-void

    .line 1413
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V
    .registers 5

    .line 1087
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 1089
    if-nez p2, :cond_9

    iget-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    :cond_9
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    monitor-exit v0

    .line 1091
    return-void

    .line 1090
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public whitelist addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .registers 3

    .line 1072
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    .line 1073
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    .line 1548
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1549
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1550
    if-nez v1, :cond_b

    .line 1551
    monitor-exit v0

    return-void

    .line 1553
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 1555
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 1558
    nop

    .line 1559
    return-void

    .line 1556
    :catch_11
    move-exception p1

    .line 1557
    return-void

    .line 1553
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public blacklist attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;)V
    .registers 5

    .line 2686
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2687
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2688
    if-nez v1, :cond_b

    .line 2689
    monitor-exit v0

    return-void

    .line 2691
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 2693
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 2697
    nop

    .line 2698
    return-void

    .line 2695
    :catch_11
    move-exception p1

    .line 2696
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2691
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public blacklist disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V
    .registers 4

    .line 1568
    if-nez p1, :cond_3

    .line 1569
    return-void

    .line 1572
    :cond_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1573
    :try_start_6
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1574
    if-nez v1, :cond_e

    .line 1575
    monitor-exit v0

    return-void

    .line 1577
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_16

    .line 1579
    :try_start_f
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 1582
    nop

    .line 1583
    return-void

    .line 1580
    :catch_14
    move-exception p1

    .line 1581
    return-void

    .line 1577
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public blacklist enableMagnificationAndZoomIn(I)V
    .registers 4

    .line 2734
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2735
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2736
    if-nez v1, :cond_b

    .line 2737
    monitor-exit v0

    return-void

    .line 2739
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 2741
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->enableMagnificationAndZoomIn(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 2744
    nop

    .line 2745
    return-void

    .line 2742
    :catch_11
    move-exception p1

    .line 2743
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2739
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public blacklist enableShortcutsForTargets(ZILjava/util/Set;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1753
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1754
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1755
    if-nez v1, :cond_b

    .line 1756
    monitor-exit v0

    return-void

    .line 1758
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    .line 1760
    nop

    .line 1761
    :try_start_d
    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p3

    .line 1760
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/accessibility/IAccessibilityManager;->enableShortcutsForTargets(ZILjava/util/List;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_1a

    .line 1764
    nop

    .line 1765
    return-void

    .line 1762
    :catch_1a
    move-exception p1

    .line 1763
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1758
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public blacklist enableTrustedAccessibilityService(Landroid/content/ComponentName;)Z
    .registers 5

    .line 665
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_6
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 670
    if-nez v1, :cond_f

    .line 671
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 673
    :cond_f
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 674
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_1d

    .line 676
    :try_start_12
    invoke-interface {v1, p1, v2}, Landroid/view/accessibility/IAccessibilityManager;->enableTrustedAccessibilityService(Landroid/content/ComponentName;I)Z

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return p1

    .line 677
    :catch_17
    move-exception p1

    .line 678
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 674
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public blacklist getA11yFeatureToTileMap(I)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1782
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1783
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1784
    :try_start_8
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 1785
    if-nez v2, :cond_10

    .line 1786
    monitor-exit v1

    return-object v0

    .line 1788
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_46

    .line 1790
    :try_start_11
    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->getA11yFeatureToTileMap(I)Landroid/os/Bundle;

    move-result-object p1

    .line 1791
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1792
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1793
    if-nez v3, :cond_30

    .line 1794
    goto :goto_1d

    .line 1796
    :cond_30
    const-class v4, Landroid/content/ComponentName;

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1798
    if-eqz v2, :cond_3d

    .line 1799
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3d} :catch_40

    .line 1801
    :cond_3d
    goto :goto_1d

    .line 1804
    :cond_3e
    nop

    .line 1805
    return-object v0

    .line 1802
    :catch_40
    move-exception p1

    .line 1803
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1788
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public whitelist getAccessibilityFocusColor()I
    .registers 3

    .line 1312
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1313
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    monitor-exit v0

    return v1

    .line 1314
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getAccessibilityFocusStrokeWidth()I
    .registers 3

    .line 1299
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    monitor-exit v0

    return v1

    .line 1301
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getAccessibilityServiceList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 891
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 892
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 893
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 894
    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_22

    .line 895
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 896
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 898
    :cond_22
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAccessibilityShortcutTargets(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2021
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2022
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2023
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_19

    .line 2024
    if-eqz v1, :cond_14

    .line 2026
    const/4 v0, -0x2

    :try_start_b
    invoke-interface {v1, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->getAccessibilityShortcutTargets(II)Ljava/util/List;

    move-result-object p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return-object p1

    .line 2028
    :catch_10
    move-exception p1

    .line 2029
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2032
    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2023
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public blacklist getAccessibilityShortcutTargets(II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1993
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1994
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1995
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    .line 1996
    if-eqz v1, :cond_13

    .line 1998
    :try_start_a
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->getAccessibilityShortcutTargets(II)Ljava/util/List;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return-object p1

    .line 1999
    :catch_f
    move-exception p1

    .line 2000
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2003
    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1995
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public whitelist getAccessibilityWindowId(Landroid/os/IBinder;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1523
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 1524
    return v0

    .line 1528
    :cond_4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1529
    :try_start_7
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 1530
    if-nez v2, :cond_f

    .line 1531
    monitor-exit v1

    return v0

    .line 1533
    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_17

    .line 1535
    :try_start_10
    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->getAccessibilityWindowId(Landroid/os/IBinder;)I

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return p1

    .line 1536
    :catch_15
    move-exception p1

    .line 1537
    return v0

    .line 1533
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public greylist-max-o getCallback()Landroid/os/Handler$Callback;
    .registers 2

    .line 622
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method public greylist-max-o getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .registers 2

    .line 595
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    return-object v0
.end method

.method public whitelist getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 986
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 988
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    .line 989
    invoke-virtual {p0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 988
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public blacklist getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 943
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 945
    if-nez v1, :cond_f

    .line 946
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 948
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_35

    .line 949
    nop

    .line 951
    :try_start_11
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object p2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    .line 957
    goto :goto_1f

    .line 955
    :catch_16
    move-exception p2

    .line 956
    const-string v0, "AccessibilityManager"

    const-string v1, "Error while obtaining the enabled AccessibilityServices. "

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    .line 958
    :goto_1f
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v0, :cond_29

    .line 959
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->getEnabledAccessibilityServiceList(ILjava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 962
    :cond_29
    if-eqz p2, :cond_30

    .line 963
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 965
    :cond_30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 948
    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public whitelist getInstalledAccessibilityServiceList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 909
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 911
    if-nez v1, :cond_f

    .line 912
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 914
    :cond_f
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 915
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_3b

    .line 917
    nop

    .line 919
    :try_start_13
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1b} :catch_1c

    .line 925
    goto :goto_25

    .line 923
    :catch_1c
    move-exception v0

    .line 924
    const-string v1, "AccessibilityManager"

    const-string v2, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 926
    :goto_25
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v1, :cond_2f

    .line 927
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    invoke-interface {v1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->getInstalledAccessibilityServiceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 929
    :cond_2f
    if-eqz v0, :cond_36

    .line 930
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 932
    :cond_36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 915
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public blacklist getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2047
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2053
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2054
    const-string v2, "android.intent.category.ACCESSIBILITY_SHORTCUT_TARGET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2056
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2057
    nop

    .line 2058
    const v3, 0xc8081

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    .line 2059
    const/4 v1, 0x0

    :goto_1e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 2060
    nop

    .line 2061
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p1, v2}, Landroid/view/accessibility/AccessibilityManager;->getShortcutInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/accessibilityservice/AccessibilityShortcutInfo;

    move-result-object v2

    .line 2062
    if-eqz v2, :cond_34

    .line 2063
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2059
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 2066
    :cond_37
    return-object v0
.end method

.method public greylist-max-o getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 6

    .line 1642
    nop

    .line 1643
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 1644
    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    if-nez p1, :cond_b

    goto :goto_2d

    .line 1647
    :cond_b
    const/4 v2, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 1648
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1649
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object p1

    .line 1647
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1652
    :cond_2c
    return-object v1

    .line 1645
    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public blacklist getPerformingAction()I
    .registers 2

    .line 1396
    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    return v0
.end method

.method public whitelist getRecommendedTimeoutMillis(II)I
    .registers 7

    .line 1278
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1279
    :goto_9
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_11

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_12

    :cond_11
    move v1, v2

    .line 1281
    :cond_12
    nop

    .line 1282
    if-eqz v0, :cond_1b

    .line 1283
    iget p2, p0, Landroid/view/accessibility/AccessibilityManager;->mInteractiveUiTimeout:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1285
    :cond_1b
    if-eqz v1, :cond_23

    .line 1286
    iget p2, p0, Landroid/view/accessibility/AccessibilityManager;->mNonInteractiveUiTimeout:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1288
    :cond_23
    return p1
.end method

.method public greylist-max-o getRequestPreparersForAccessibilityId(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;"
        }
    .end annotation

    .line 1374
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 1375
    const/4 p1, 0x0

    return-object p1

    .line 1377
    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public blacklist getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    .registers 4

    .line 2663
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2664
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2665
    if-nez v1, :cond_c

    .line 2666
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 2668
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    .line 2670
    :try_start_d
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return-object p1

    .line 2671
    :catch_12
    move-exception p1

    .line 2672
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2668
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public blacklist hasAnyDirectConnection()Z
    .registers 2

    .line 717
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->hasAnyDirectConnection()Z

    move-result v0

    return v0
.end method

.method public whitelist interrupt()V
    .registers 4

    .line 851
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 853
    if-nez v1, :cond_b

    .line 854
    monitor-exit v0

    return-void

    .line 856
    :cond_b
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 857
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 858
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_24

    .line 866
    const-string v1, "AccessibilityManager"

    const-string v2, "Interrupt called with accessibility disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    monitor-exit v0

    return-void

    .line 859
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Accessibility off. Did you forget to check that?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 870
    :cond_2c
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 871
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3c

    .line 873
    :try_start_2f
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    .line 879
    goto :goto_3b

    .line 877
    :catch_33
    move-exception v0

    .line 878
    const-string v1, "AccessibilityManager"

    const-string v2, "Error while requesting interrupt from all services. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    :goto_3b
    return-void

    .line 871
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public blacklist isA11yInteractionClientTraceEnabled()Z
    .registers 3

    .line 1347
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1348
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 1350
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist isA11yInteractionConnectionCBTraceEnabled()Z
    .registers 3

    .line 1335
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1336
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 1338
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist isA11yInteractionConnectionTraceEnabled()Z
    .registers 3

    .line 1323
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1324
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 1326
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist isA11yServiceTraceEnabled()Z
    .registers 3

    .line 1359
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 1362
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 5

    .line 1000
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1001
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1002
    const/4 v2, 0x1

    if-nez v1, :cond_c

    .line 1003
    monitor-exit v0

    return v2

    .line 1005
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 1007
    :try_start_d
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return p1

    .line 1008
    :catch_12
    move-exception p1

    .line 1009
    const-string v0, "AccessibilityManager"

    const-string v1, "Error while checking isAccessibilityServiceWarningRequired: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1010
    return v2

    .line 1005
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public blacklist isAccessibilityTargetAllowed(Ljava/lang/String;II)Z
    .registers 7

    .line 2403
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2404
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2405
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2406
    monitor-exit v0

    return v2

    .line 2408
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 2411
    :try_start_d
    invoke-interface {v1, p1, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->isAccessibilityTargetAllowed(Ljava/lang/String;II)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return p1

    .line 2412
    :catch_12
    move-exception p1

    .line 2413
    const-string p2, "AccessibilityManager"

    const-string p3, "Error while check accessibility target status"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2414
    return v2

    .line 2408
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public greylist-max-o isAccessibilityVolumeStreamActive()Z
    .registers 5

    .line 1479
    nop

    .line 1480
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 1481
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 1482
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v3, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1c

    .line 1483
    const/4 v0, 0x1

    return v0

    .line 1481
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1486
    :cond_1f
    return v1
.end method

.method public whitelist isAudioDescriptionRequested()Z
    .registers 3

    .line 2135
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2136
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2137
    if-nez v1, :cond_c

    .line 2138
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2140
    :cond_c
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    monitor-exit v0

    return v1

    .line 2141
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist isEnabled()Z
    .registers 4

    .line 643
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->hasAnyDirectConnection()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 645
    invoke-interface {v1, v2}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->isEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    :goto_1f
    monitor-exit v0

    .line 644
    return v1

    .line 646
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist isHighContrastTextEnabled()Z
    .registers 3

    .line 754
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 756
    if-nez v1, :cond_c

    .line 757
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 759
    :cond_c
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighContrastTextEnabled:Z

    monitor-exit v0

    return v1

    .line 760
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist isRequestFromAccessibilityTool()Z
    .registers 2

    .line 1212
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestFromAccessibilityTool:Z

    return v0
.end method

.method public blacklist isSystemAudioCaptioningUiEnabled(I)Z
    .registers 4

    .line 2175
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2176
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2177
    if-nez v1, :cond_c

    .line 2178
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 2180
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    .line 2182
    :try_start_d
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->isSystemAudioCaptioningUiEnabled(I)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return p1

    .line 2183
    :catch_12
    move-exception p1

    .line 2184
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2180
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public whitelist isTouchExplorationEnabled()Z
    .registers 3

    .line 733
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 735
    if-nez v1, :cond_c

    .line 736
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 738
    :cond_c
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    monitor-exit v0

    return v1

    .line 739
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist notifyAccessibilityButtonClicked(I)V
    .registers 3

    .line 1879
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V

    .line 1880
    return-void
.end method

.method public blacklist notifyAccessibilityButtonClicked(ILjava/lang/String;)V
    .registers 5

    .line 1895
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1896
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1897
    if-nez v1, :cond_b

    .line 1898
    monitor-exit v0

    return-void

    .line 1900
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1902
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1905
    goto :goto_18

    .line 1903
    :catch_10
    move-exception p1

    .line 1904
    const-string p2, "AccessibilityManager"

    const-string v0, "Error while dispatching accessibility button click"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1906
    :goto_18
    return-void

    .line 1900
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public blacklist notifyAccessibilityButtonLongClicked(I)V
    .registers 4

    .line 1920
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1921
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1922
    if-nez v1, :cond_b

    .line 1923
    monitor-exit v0

    return-void

    .line 1925
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1927
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonLongClicked(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1930
    goto :goto_18

    .line 1928
    :catch_10
    move-exception p1

    .line 1929
    const-string v0, "AccessibilityManager"

    const-string v1, "Error while dispatching accessibility button long click. "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1931
    :goto_18
    return-void

    .line 1925
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public greylist-max-o notifyAccessibilityButtonVisibilityChanged(Z)V
    .registers 4

    .line 1943
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1944
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1945
    if-nez v1, :cond_b

    .line 1946
    monitor-exit v0

    return-void

    .line 1948
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1950
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonVisibilityChanged(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1953
    goto :goto_18

    .line 1951
    :catch_10
    move-exception p1

    .line 1952
    const-string v0, "AccessibilityManager"

    const-string v1, "Error while dispatching accessibility button visibility change"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1954
    :goto_18
    return-void

    .line 1948
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public greylist-max-o notifyAccessibilityStateChanged()V
    .registers 8

    .line 2483
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2484
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2485
    monitor-exit v0

    return-void

    .line 2487
    :cond_d
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 2488
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2489
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_38

    .line 2491
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2492
    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v0, :cond_37

    .line 2493
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 2494
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2492
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 2497
    :cond_37
    return-void

    .line 2489
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public blacklist notifyPerformingAction(I)V
    .registers 2

    .line 1387
    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    .line 1388
    return-void
.end method

.method public blacklist notifyQuickSettingsTilesChanged(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 2712
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2713
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2714
    if-nez v1, :cond_b

    .line 2715
    monitor-exit v0

    return-void

    .line 2717
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 2719
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->notifyQuickSettingsTilesChanged(ILjava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 2722
    nop

    .line 2723
    return-void

    .line 2720
    :catch_11
    move-exception p1

    .line 2721
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2717
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public whitelist performAccessibilityShortcut()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1712
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut(IILjava/lang/String;)V

    .line 1713
    return-void
.end method

.method public blacklist performAccessibilityShortcut(IILjava/lang/String;)V
    .registers 6

    .line 1727
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1728
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1729
    if-nez v1, :cond_b

    .line 1730
    monitor-exit v0

    return-void

    .line 1732
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1734
    :try_start_c
    invoke-interface {v1, p1, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->performAccessibilityShortcut(IILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1737
    goto :goto_18

    .line 1735
    :catch_10
    move-exception p1

    .line 1736
    const-string p2, "AccessibilityManager"

    const-string p3, "Error performing accessibility shortcut. "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1738
    :goto_18
    return-void

    .line 1732
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public whitelist registerDisplayProxy(Landroid/view/accessibility/AccessibilityDisplayProxy;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2256
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2257
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2258
    if-nez v1, :cond_c

    .line 2259
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 2261
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    .line 2264
    :try_start_d
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityDisplayProxy;->mServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityDisplayProxy;->getDisplayId()I

    move-result p1

    invoke-interface {v1, v0, p1}, Landroid/view/accessibility/IAccessibilityManager;->registerProxyForDisplay(Landroid/accessibilityservice/IAccessibilityServiceClient;I)Z

    move-result p1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    return p1

    .line 2265
    :catch_18
    move-exception p1

    .line 2266
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2261
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public whitelist registerSystemAction(Landroid/app/RemoteAction;I)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1826
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1827
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1828
    if-nez v1, :cond_b

    .line 1829
    monitor-exit v0

    return-void

    .line 1831
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_34

    .line 1833
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1840
    goto :goto_33

    .line 1838
    :catch_10
    move-exception p2

    .line 1839
    const-string v0, "AccessibilityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error registering system action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1841
    :goto_33
    return-void

    .line 1831
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist registerUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V
    .registers 4

    .line 1157
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1158
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1159
    if-nez v1, :cond_b

    .line 1160
    monitor-exit v0

    return-void

    .line 1162
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1164
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->registerUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1167
    goto :goto_18

    .line 1165
    :catch_10
    move-exception p1

    .line 1166
    const-string v0, "AccessibilityManager"

    const-string v1, "Error while registering userInitializationCompleteCallback. "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    :goto_18
    return-void

    .line 1162
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public greylist-max-o removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 4

    .line 1691
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1692
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1693
    if-nez v1, :cond_b

    .line 1694
    monitor-exit v0

    return-void

    .line 1696
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1698
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1701
    goto :goto_18

    .line 1699
    :catch_10
    move-exception p1

    .line 1700
    const-string v0, "AccessibilityManager"

    const-string v1, "Error while removing an accessibility interaction connection. "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1702
    :goto_18
    return-void

    .line 1696
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public whitelist removeAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .registers 4

    .line 1246
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 1247
    return-void

    .line 1249
    :cond_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getAccessibilityViewId()I

    move-result v0

    .line 1250
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1251
    if-eqz v1, :cond_21

    .line 1252
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1253
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1254
    iget-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1257
    :cond_21
    return-void
.end method

.method public whitelist removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)Z
    .registers 4

    .line 1142
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit v0

    return p1

    .line 1144
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public whitelist removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .registers 5

    .line 1054
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1055
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 1056
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    if-ltz v1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    monitor-exit v0

    return p1

    .line 1058
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public whitelist removeAudioDescriptionRequestedChangeListener(Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;)Z
    .registers 4

    .line 1453
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1454
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit v0

    return p1

    .line 1455
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public blacklist removeClient()Z
    .registers 6

    .line 603
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 605
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 606
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    return v2

    .line 609
    :cond_c
    :try_start_c
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v1, v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_16
    .catchall {:try_start_c .. :try_end_14} :catchall_20

    :try_start_14
    monitor-exit v0

    return v1

    .line 610
    :catch_16
    move-exception v1

    .line 611
    const-string v3, "AccessibilityManager"

    const-string v4, "AccessibilityManagerService is dead"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    monitor-exit v0

    .line 614
    return v2

    .line 613
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist removeHighContrastTextStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;)V
    .registers 4

    .line 1424
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1425
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighContrastTextStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    monitor-exit v0

    .line 1427
    return-void

    .line 1426
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .registers 5

    .line 1101
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 1103
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    if-ltz v1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    monitor-exit v0

    return p1

    .line 1105
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public whitelist sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8

    .line 780
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 782
    if-nez v1, :cond_b

    .line 783
    monitor-exit v0

    return-void

    .line 785
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 786
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1d

    .line 787
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 789
    :cond_1d
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v2, :cond_2f

    .line 790
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    invoke-interface {v2, p1, v3, v4}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;ZI)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 792
    if-nez v2, :cond_30

    .line 793
    monitor-exit v0

    return-void

    .line 796
    :cond_2f
    move-object v2, p1

    .line 798
    :cond_30
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_51

    .line 799
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .line 800
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq p1, v1, :cond_49

    .line 808
    const-string p1, "AccessibilityManager"

    const-string v1, "AccessibilityEvent sent with accessibility disabled"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    monitor-exit v0

    return-void

    .line 801
    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Accessibility off. Did you forget to check that?"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 812
    :cond_51
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    and-int/2addr v3, v4

    if-nez v3, :cond_5c

    .line 818
    monitor-exit v0

    return-void

    .line 820
    :cond_5c
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 821
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_a6

    .line 826
    :try_start_5f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_63} :catch_7a
    .catchall {:try_start_5f .. :try_end_63} :catchall_78

    .line 828
    :try_start_63
    invoke-interface {v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_73

    .line 830
    :try_start_66
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_69} :catch_7a
    .catchall {:try_start_66 .. :try_end_69} :catchall_78

    .line 831
    nop

    .line 838
    if-eq p1, v2, :cond_6f

    .line 839
    :goto_6c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 841
    :cond_6f
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 842
    goto :goto_9c

    .line 830
    :catchall_73
    move-exception v0

    :try_start_74
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    throw v0
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_78} :catch_7a
    .catchall {:try_start_74 .. :try_end_78} :catchall_78

    .line 838
    :catchall_78
    move-exception v0

    goto :goto_9d

    .line 835
    :catch_7a
    move-exception v0

    .line 836
    :try_start_7b
    const-string v1, "AccessibilityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_7b .. :try_end_99} :catchall_78

    .line 838
    if-eq p1, v2, :cond_6f

    .line 839
    goto :goto_6c

    .line 843
    :goto_9c
    return-void

    .line 838
    :goto_9d
    if-eq p1, v2, :cond_a2

    .line 839
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 841
    :cond_a2
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 842
    throw v0

    .line 821
    :catchall_a6
    move-exception p1

    :try_start_a7
    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw p1
.end method

.method public greylist-max-o sendFingerprintGesture(I)Z
    .registers 5

    .line 1498
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1499
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1500
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1501
    monitor-exit v0

    return v2

    .line 1503
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    .line 1505
    :try_start_d
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->sendFingerprintGesture(I)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return p1

    .line 1506
    :catch_12
    move-exception p1

    .line 1507
    return v2

    .line 1503
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public blacklist sendRestrictedDialogIntent(Ljava/lang/String;II)Z
    .registers 7

    .line 2429
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2430
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2431
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2432
    monitor-exit v0

    return v2

    .line 2434
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 2437
    :try_start_d
    invoke-interface {v1, p1, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->sendRestrictedDialogIntent(Ljava/lang/String;II)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return p1

    .line 2438
    :catch_12
    move-exception p1

    .line 2439
    const-string p2, "AccessibilityManager"

    const-string p3, "Error while show restricted dialog"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2440
    return v2

    .line 2434
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public greylist-max-o setAccessibilityPolicy(Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;)V
    .registers 3

    .line 1466
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1467
    :try_start_3
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    .line 1468
    monitor-exit v0

    .line 1469
    return-void

    .line 1468
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public blacklist setAccessibilityWindowAttributes(IILandroid/view/accessibility/AccessibilityWindowAttributes;)V
    .registers 6

    .line 2223
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2224
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2225
    if-nez v1, :cond_b

    .line 2226
    monitor-exit v0

    return-void

    .line 2228
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 2230
    :try_start_c
    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v1, p1, p2, v0, p3}, Landroid/view/accessibility/IAccessibilityManager;->setAccessibilityWindowAttributes(IIILandroid/view/accessibility/AccessibilityWindowAttributes;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 2233
    goto :goto_16

    .line 2231
    :catch_12
    move-exception p1

    .line 2232
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2234
    :goto_16
    return-void

    .line 2228
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public blacklist setMagnificationConnection(Landroid/view/accessibility/IMagnificationConnection;)V
    .registers 4

    .line 2103
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2104
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2105
    if-nez v1, :cond_b

    .line 2106
    monitor-exit v0

    return-void

    .line 2108
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 2110
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setMagnificationConnection(Landroid/view/accessibility/IMagnificationConnection;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 2113
    goto :goto_18

    .line 2111
    :catch_10
    move-exception p1

    .line 2112
    const-string v0, "AccessibilityManager"

    const-string v1, "Error setting magnification connection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2114
    :goto_18
    return-void

    .line 2108
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public greylist-max-o setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .registers 4

    .line 1968
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1969
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1970
    if-nez v1, :cond_b

    .line 1971
    monitor-exit v0

    return-void

    .line 1973
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1975
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1978
    goto :goto_18

    .line 1976
    :catch_10
    move-exception p1

    .line 1977
    const-string v0, "AccessibilityManager"

    const-string v1, "Error setting picture in picture action replacement"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1979
    :goto_18
    return-void

    .line 1973
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public blacklist setRequestFromAccessibilityTool(Z)V
    .registers 2

    .line 1223
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestFromAccessibilityTool:Z

    .line 1224
    return-void
.end method

.method public blacklist setSystemAudioCaptioningEnabled(ZI)V
    .registers 5

    .line 2153
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2154
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2155
    if-nez v1, :cond_b

    .line 2156
    monitor-exit v0

    return-void

    .line 2158
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 2160
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setSystemAudioCaptioningEnabled(ZI)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 2163
    nop

    .line 2164
    return-void

    .line 2161
    :catch_11
    move-exception p1

    .line 2162
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2158
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public blacklist setSystemAudioCaptioningUiEnabled(ZI)V
    .registers 5

    .line 2197
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2198
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2199
    if-nez v1, :cond_b

    .line 2200
    monitor-exit v0

    return-void

    .line 2202
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 2204
    :try_start_c
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setSystemAudioCaptioningUiEnabled(ZI)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 2207
    nop

    .line 2208
    return-void

    .line 2205
    :catch_11
    move-exception p1

    .line 2206
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2202
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public blacklist setTrustedAccessibilityServiceForTesting(Landroid/content/ComponentName;)V
    .registers 4

    .line 698
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 700
    if-nez v1, :cond_b

    .line 701
    monitor-exit v0

    return-void

    .line 703
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 705
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setTrustedAccessibilityServiceForTesting(Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 708
    nop

    .line 709
    return-void

    .line 706
    :catch_11
    move-exception p1

    .line 707
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 703
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public blacklist startFlashNotificationEvent(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 7

    .line 2376
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2377
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2378
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2379
    monitor-exit v0

    return v2

    .line 2381
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1f

    .line 2384
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->startFlashNotificationEvent(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_15} :catch_16

    return p1

    .line 2386
    :catch_16
    move-exception p1

    .line 2387
    const-string p2, "AccessibilityManager"

    const-string p3, "Error while start flash notification event"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2388
    return v2

    .line 2381
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public blacklist startFlashNotificationSequence(Landroid/content/Context;I)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2318
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2319
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2320
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2321
    monitor-exit v0

    return v2

    .line 2323
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    .line 2326
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mBinder:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v0}, Landroid/view/accessibility/IAccessibilityManager;->startFlashNotificationSequence(Ljava/lang/String;ILandroid/os/IBinder;)Z

    move-result p1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_17} :catch_18

    return p1

    .line 2328
    :catch_18
    move-exception p1

    .line 2329
    const-string p2, "AccessibilityManager"

    const-string v0, "Error while start flash notification sequence"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2330
    return v2

    .line 2323
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public blacklist stopFlashNotificationSequence(Landroid/content/Context;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2349
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2350
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2351
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2352
    monitor-exit v0

    return v2

    .line 2354
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1f

    .line 2357
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->stopFlashNotificationSequence(Ljava/lang/String;)Z

    move-result p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_15} :catch_16

    return p1

    .line 2358
    :catch_16
    move-exception p1

    .line 2359
    const-string v0, "AccessibilityManager"

    const-string v1, "Error while stop flash notification sequence"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2360
    return v2

    .line 2354
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public whitelist unregisterDisplayProxy(Landroid/view/accessibility/AccessibilityDisplayProxy;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2284
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2285
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2286
    if-nez v1, :cond_c

    .line 2287
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 2289
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1c

    .line 2291
    :try_start_d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityDisplayProxy;->getDisplayId()I

    move-result p1

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->unregisterProxyForDisplay(I)Z

    move-result p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return p1

    .line 2292
    :catch_16
    move-exception p1

    .line 2293
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2289
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public whitelist unregisterSystemAction(I)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1853
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1854
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1855
    if-nez v1, :cond_b

    .line 1856
    monitor-exit v0

    return-void

    .line 1858
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_30

    .line 1860
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->unregisterSystemAction(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1867
    goto :goto_2f

    .line 1865
    :catch_10
    move-exception v0

    .line 1866
    const-string v1, "AccessibilityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering system action with actionId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1868
    :goto_2f
    return-void

    .line 1858
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public blacklist unregisterUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V
    .registers 4

    .line 1179
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1180
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1181
    if-nez v1, :cond_b

    .line 1182
    monitor-exit v0

    return-void

    .line 1184
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 1186
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->unregisterUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1190
    goto :goto_18

    .line 1187
    :catch_10
    move-exception p1

    .line 1188
    const-string v0, "AccessibilityManager"

    const-string v1, "Error while unregistering userInitializationCompleteCallback. "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1191
    :goto_18
    return-void

    .line 1184
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method
