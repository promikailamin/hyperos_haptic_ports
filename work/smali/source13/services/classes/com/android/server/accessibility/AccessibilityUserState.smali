.class Lcom/android/server/accessibility/AccessibilityUserState;
.super Ljava/lang/Object;
.source "AccessibilityUserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field final mAccessibilityButtonTargets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityFocusOnlyInActiveWindow:Z

.field final mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBindInstantServiceAllowed:Z

.field final mBindingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mBoundServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mComponentNameToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final mCrashedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusColor:I

.field private final mFocusColorDefaultValue:I

.field private mFocusStrokeWidth:I

.field private final mFocusStrokeWidthDefaultValue:I

.field final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mInstalledShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInteractiveUiTimeout:I

.field private mIsAudioDescriptionByDefaultRequested:Z

.field private mIsAutoclickEnabled:Z

.field private mIsDisplayMagnificationEnabled:Z

.field private mIsFilterKeyEventsEnabled:Z

.field private mIsPerformGesturesEnabled:Z

.field private mIsTextHighContrastEnabled:Z

.field private mIsTouchExplorationEnabled:Z

.field private mLastSentClientState:I

.field private mMagnificationCapabilities:I

.field private mMagnificationFollowTypingEnabled:Z

.field private final mMagnificationModes:Landroid/util/SparseIntArray;

.field private mNonInteractiveUiTimeout:I

.field private mRequestMultiFingerGestures:Z

.field private mRequestTwoFingerPassthrough:Z

.field private mSendMotionEventsEnabled:Z

.field private mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

.field private mServiceHandlesDoubleTap:Z

.field private final mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

.field private mSoftKeyboardShowMode:I

.field private final mSupportWindowMagnification:Z

.field private mTargetAssignedToAccessibilityButton:Ljava/lang/String;

.field final mTouchExplorationGrantedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mUserClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I

.field private mUserInteractiveUiTimeout:I

.field private mUserNonInteractiveUiTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    const-class v0, Lcom/android/server/accessibility/AccessibilityUserState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILandroid/content/Context;Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceInfoChangeListener"    # Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 98
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    .line 100
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 124
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 130
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    .line 132
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 134
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 147
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 165
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 166
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    .line 167
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    .line 168
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidthDefaultValue:I

    .line 170
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColorDefaultValue:I

    .line 172
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 173
    iput v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 174
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110178

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.window_magnification"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab

    move v0, v1

    goto :goto_ac

    :cond_ab
    nop

    :goto_ac
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSupportWindowMagnification:Z

    .line 177
    return-void
.end method

.method public static doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z
    .registers 8
    .param p1, "targetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 943
    .local p0, "shortcutTargets":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_38

    if-nez p1, :cond_6

    goto :goto_38

    .line 948
    :cond_6
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 949
    return v2

    .line 951
    :cond_e
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 952
    .local v1, "targetComponentName":Landroid/content/ComponentName;
    if-nez v1, :cond_15

    .line 953
    return v0

    .line 955
    :cond_15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 956
    .local v4, "stringName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 957
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 958
    return v2

    .line 960
    .end local v4    # "stringName":Ljava/lang/String;
    :cond_36
    goto :goto_19

    .line 961
    :cond_37
    return v0

    .line 944
    .end local v1    # "targetComponentName":Landroid/content/ComponentName;
    :cond_38
    :goto_38
    return v0
.end method

.method private getOriginalHardKeyboardValue()Z
    .registers 4

    .line 471
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method private getSecureIntForUser(Ljava/lang/String;II)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userId"    # I

    .line 486
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getSoftKeyboardValueFromSettings()I
    .registers 4

    .line 465
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private hasUserOverriddenHardKeyboardSetting()Z
    .registers 4

    .line 439
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    .line 441
    .local v0, "softKeyboardSetting":I
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method static synthetic lambda$removeShortcutTargetLocked$0(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .param p0, "target"    # Landroid/content/ComponentName;
    .param p1, "name"    # Ljava/lang/String;

    .line 781
    if-eqz p1, :cond_f

    .line 782
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v1, v0

    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_a

    goto :goto_f

    .line 785
    :cond_a
    invoke-virtual {v1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 783
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method private putSecureIntForUser(Ljava/lang/String;II)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userId"    # I

    .line 490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 492
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 494
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    nop

    .line 496
    return-void

    .line 494
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    throw v2
.end method

.method private saveSoftKeyboardValueToSettings(I)V
    .registers 6
    .param p1, "softKeyboardShowMode"    # I

    .line 456
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    .line 458
    .local v0, "oldSoftKeyboardSetting":I
    and-int/lit8 v2, v0, -0x4

    or-int/2addr v2, p1

    .line 460
    .local v2, "newSoftKeyboardSetting":I
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 462
    return-void
.end method

.method private setOriginalHardKeyboardValue(Z)V
    .registers 6
    .param p1, "originalHardKeyboardValue"    # Z

    .line 446
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    .line 448
    .local v0, "oldSoftKeyboardSetting":I
    const v3, -0x20000001

    and-int/2addr v3, v0

    .line 450
    if-eqz p1, :cond_11

    const/high16 v2, 0x20000000

    :cond_11
    or-int/2addr v2, v3

    .line 451
    .local v2, "newSoftKeyboardSetting":I
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 453
    return-void
.end method

.method private setUserOverridesHardKeyboardSetting()V
    .registers 5

    .line 431
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    .line 433
    .local v0, "softKeyboardSetting":I
    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v2, v0

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 436
    return-void
.end method

.method private unbindAllServicesLocked()V
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 478
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_6
    if-lez v1, :cond_15

    .line 481
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    .line 478
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 483
    .end local v1    # "count":I
    :cond_15
    return-void
.end method


# virtual methods
.method addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4
    .param p1, "serviceConnection"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 221
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 222
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onAdded()V

    .line 223
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    invoke-interface {v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;->onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 227
    :cond_1e
    return-void
.end method

.method public disableShortcutMagnificationLocked()V
    .registers 3

    .line 717
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 718
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 719
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 499
    const-string v0, "User state["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 500
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 501
    const-string v0, "     attributes:{id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 502
    const-string v0, ", touchExplorationEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 503
    const-string v0, ", serviceHandlesDoubleTap="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 504
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 505
    const-string v0, ", requestMultiFingerGestures="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 506
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 507
    const-string v0, ", requestTwoFingerPassthrough="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    .line 508
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 509
    const-string v0, ", sendMotionEventsEnabled"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 510
    const-string v0, ", displayMagnificationEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 512
    const-string v0, ", autoclickEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 513
    const-string v0, ", nonInteractiveUiTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 514
    const-string v0, ", interactiveUiTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 515
    const-string v0, ", installedServiceCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 516
    const-string v0, ", magnificationModes="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 517
    const-string v0, ", magnificationCapabilities="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 518
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 519
    const-string v0, ", audioDescriptionByDefaultEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 520
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 521
    const-string v0, ", magnificationFollowTypingEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 522
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 523
    const-string/jumbo v0, "}"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 524
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 525
    const-string v1, "     shortcut key:{"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 526
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 527
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_102
    const-string v3, ", "

    if-ge v2, v1, :cond_11b

    .line 528
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 529
    .local v4, "componentId":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 530
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_118

    .line 531
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 527
    .end local v4    # "componentId":Ljava/lang/String;
    :cond_118
    add-int/lit8 v2, v2, 0x1

    goto :goto_102

    .line 534
    .end local v2    # "i":I
    :cond_11b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    const-string v2, "     button:{"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 536
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 537
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_12a
    if-ge v2, v1, :cond_141

    .line 538
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 539
    .restart local v4    # "componentId":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 540
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_13e

    .line 541
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 537
    .end local v4    # "componentId":Ljava/lang/String;
    :cond_13e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12a

    .line 544
    .end local v2    # "i":I
    :cond_141
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    const-string v2, "     button target:{"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 546
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    const-string v2, "     Bound services:{"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 548
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 549
    .local v2, "serviceCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_15e
    if-ge v4, v2, :cond_17b

    .line 550
    if-lez v4, :cond_16d

    .line 551
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 552
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 553
    const-string v5, "                     "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 555
    :cond_16d
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 556
    .local v5, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 549
    .end local v5    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v4, v4, 0x1

    goto :goto_15e

    .line 558
    .end local v4    # "j":I
    :cond_17b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    const-string v4, "     Enabled services:{"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 560
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 561
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b4

    .line 562
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 563
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 564
    :goto_19c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b4

    .line 565
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Landroid/content/ComponentName;

    .line 566
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 567
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_19c

    .line 570
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :cond_1b4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    const-string v5, "     Binding services:{"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 572
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 573
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ed

    .line 574
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 575
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 576
    :goto_1d5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1ed

    .line 577
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Landroid/content/ComponentName;

    .line 578
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 579
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1d5

    .line 582
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :cond_1ed
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const-string v5, "     Crashed services:{"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 584
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 585
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_226

    .line 586
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 587
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 588
    :goto_20e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_226

    .line 589
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Landroid/content/ComponentName;

    .line 590
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 591
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_20e

    .line 594
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :cond_226
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    const-string v0, "     Client list info:{"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    const-string v3, "          Client list "

    invoke-virtual {v0, p2, v3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 597
    const-string v0, "          Registered clients:{"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23b
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    if-ge v0, v3, :cond_257

    .line 599
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 600
    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 601
    .local v3, "client":Lcom/android/server/accessibility/AccessibilityManagerService$Client;
    iget-object v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 598
    .end local v3    # "client":Lcom/android/server/accessibility/AccessibilityManagerService$Client;
    add-int/lit8 v0, v0, 0x1

    goto :goto_23b

    .line 603
    .end local v0    # "i":I
    :cond_257
    const-string/jumbo v0, "}]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method getBindInstantServiceAllowedLocked()Z
    .registers 2

    .line 354
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    return v0
.end method

.method getBindingServicesLocked()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    return-object v0
.end method

.method getBoundServicesLocked()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    return-object v0
.end method

.method getClientStateLocked(ZI)I
    .registers 6
    .param p1, "isUiAutomationRunning"    # Z
    .param p2, "traceClientState"    # I

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "clientState":I
    if-nez p1, :cond_c

    .line 407
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    .line 408
    .local v1, "a11yEnabled":Z
    :goto_d
    if-eqz v1, :cond_11

    .line 409
    or-int/lit8 v0, v0, 0x1

    .line 412
    :cond_11
    if-eqz v1, :cond_1d

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    if-eqz v2, :cond_1d

    .line 413
    or-int/lit8 v0, v0, 0x2

    .line 414
    or-int/lit8 v0, v0, 0x8

    .line 415
    or-int/lit8 v0, v0, 0x10

    .line 417
    :cond_1d
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    if-eqz v2, :cond_23

    .line 418
    or-int/lit8 v0, v0, 0x4

    .line 420
    :cond_23
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    if-eqz v2, :cond_29

    .line 421
    or-int/lit16 v0, v0, 0x1000

    .line 425
    :cond_29
    or-int/2addr v0, p2

    .line 427
    return v0
.end method

.method getCrashedServicesLocked()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    return-object v0
.end method

.method getEnabledServicesLocked()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    return-object v0
.end method

.method public getFocusColorLocked()I
    .registers 2

    .line 977
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    return v0
.end method

.method public getFocusStrokeWidthLocked()I
    .registers 2

    .line 969
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    return v0
.end method

.method public getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 793
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 794
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 795
    .local v1, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 796
    return-object v1

    .line 793
    .end local v1    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 799
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInteractiveUiTimeoutLocked()I
    .registers 2

    .line 631
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    return v0
.end method

.method public getLastSentClientStateLocked()I
    .registers 2

    .line 639
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    return v0
.end method

.method getMagnificationCapabilitiesLocked()I
    .registers 2

    .line 681
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    return v0
.end method

.method public getMagnificationModeLocked(I)I
    .registers 4
    .param p1, "displayId"    # I

    .line 662
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 663
    .local v0, "mode":I
    if-nez v0, :cond_d

    .line 664
    const/4 v0, 0x1

    .line 665
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationModeLocked(II)V

    .line 667
    :cond_d
    return v0
.end method

.method public getNonInteractiveUiTimeoutLocked()I
    .registers 2

    .line 810
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    return v0
.end method

.method public getServiceChangingSoftKeyboardModeLocked()Landroid/content/ComponentName;
    .registers 2

    .line 833
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getServiceConnectionLocked(Landroid/content/ComponentName;)Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 806
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    return-object v0
.end method

.method public getShortcutTargetsLocked(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 729
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 730
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    return-object v0

    .line 731
    :cond_6
    if-nez p1, :cond_b

    .line 732
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    return-object v0

    .line 734
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method getSoftKeyboardShowModeLocked()I
    .registers 2

    .line 325
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    return v0
.end method

.method public getTargetAssignedToAccessibilityButton()Ljava/lang/String;
    .registers 2

    .line 919
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInteractiveUiTimeoutLocked()I
    .registers 2

    .line 897
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    return v0
.end method

.method public getUserNonInteractiveUiTimeoutLocked()I
    .registers 2

    .line 905
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    return v0
.end method

.method public isAccessibilityFocusOnlyInActiveWindow()Z
    .registers 2

    .line 826
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    return v0
.end method

.method public isAudioDescriptionByDefaultEnabledLocked()Z
    .registers 2

    .line 850
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    return v0
.end method

.method public isAutoclickEnabledLocked()Z
    .registers 2

    .line 607
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    return v0
.end method

.method public isDisplayMagnificationEnabledLocked()Z
    .registers 2

    .line 615
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    return v0
.end method

.method public isFilterKeyEventsEnabledLocked()Z
    .registers 2

    .line 623
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsFilterKeyEventsEnabled:Z

    return v0
.end method

.method isHandlingAccessibilityEventsLocked()Z
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isMagnificationFollowTypingEnabled()Z
    .registers 2

    .line 700
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    return v0
.end method

.method public isMultiFingerGesturesEnabledLocked()Z
    .registers 2

    .line 874
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    return v0
.end method

.method public isPerformGesturesEnabledLocked()Z
    .registers 2

    .line 818
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsPerformGesturesEnabled:Z

    return v0
.end method

.method public isSendMotionEventsEnabled()Z
    .registers 2

    .line 889
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    return v0
.end method

.method public isServiceHandlesDoubleTapEnabledLocked()Z
    .registers 2

    .line 866
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    return v0
.end method

.method public isShortcutMagnificationEnabledLocked()Z
    .registers 3

    .line 650
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    .line 651
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 650
    :goto_16
    return v0
.end method

.method public isShortcutTargetInstalledLocked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 744
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 745
    return v1

    .line 747
    :cond_8
    const-string v0, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 748
    return v2

    .line 751
    :cond_12
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 752
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_19

    .line 753
    return v1

    .line 755
    :cond_19
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v3

    .line 756
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 757
    return v2

    .line 759
    :cond_24
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 760
    return v2

    .line 762
    :cond_2b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4a

    .line 763
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 764
    return v2

    .line 762
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 767
    .end local v3    # "i":I
    :cond_4a
    return v1
.end method

.method public isTextHighContrastEnabledLocked()Z
    .registers 2

    .line 842
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    return v0
.end method

.method public isTouchExplorationEnabledLocked()Z
    .registers 2

    .line 858
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method public isTwoFingerPassthroughEnabledLocked()Z
    .registers 2

    .line 881
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    return v0
.end method

.method isValidMagnificationModeLocked(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result v0

    .line 152
    .local v0, "mode":I
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSupportWindowMagnification:Z

    const/4 v2, 0x0

    if-nez v1, :cond_d

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 154
    return v2

    .line 156
    :cond_d
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2
.end method

.method onSwitchToAnotherUserLocked()V
    .registers 3

    .line 185
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->unbindAllServicesLocked()V

    .line 188
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 190
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 197
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 200
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 201
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 202
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 203
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 205
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 207
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 208
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    .line 211
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 212
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    .line 213
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    .line 214
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 215
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidthDefaultValue:I

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 216
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColorDefaultValue:I

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 218
    return-void
.end method

.method reconcileSoftKeyboardModeWithSettingsLocked()V
    .registers 6

    .line 333
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 334
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 335
    .local v0, "showWithHardKeyboardSettings":Z
    :goto_f
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1d

    .line 336
    if-nez v0, :cond_1d

    .line 339
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 340
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setUserOverridesHardKeyboardSetting()V

    .line 345
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSoftKeyboardValueFromSettings()I

    move-result v1

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    if-eq v1, v3, :cond_36

    .line 346
    sget-object v1, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Show IME setting inconsistent with internal state. Overwriting"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 348
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v3, "accessibility_soft_keyboard_mode"

    invoke-direct {p0, v3, v2, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 351
    :cond_36
    return-void
.end method

.method removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 6
    .param p1, "serviceConnection"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 237
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onRemoved()V

    .line 239
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    if-eqz v0, :cond_1f

    .line 241
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 242
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 246
    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 248
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 249
    .local v1, "boundClient":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v1    # "boundClient":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 251
    .end local v0    # "i":I
    :cond_41
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    invoke-interface {v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;->onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 252
    return-void
.end method

.method public removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z
    .registers 5
    .param p1, "shortcutType"    # I
    .param p2, "target"    # Landroid/content/ComponentName;

    .line 779
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method serviceDisconnectedLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4
    .param p1, "serviceConnection"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 265
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public setAccessibilityFocusOnlyInActiveWindow(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 830
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    .line 831
    return-void
.end method

.method public setAudioDescriptionByDefaultEnabledLocked(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 854
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 855
    return-void
.end method

.method public setAutoclickEnabledLocked(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 611
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 612
    return-void
.end method

.method setBindInstantServiceAllowedLocked(Z)V
    .registers 2
    .param p1, "allowed"    # Z

    .line 359
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    .line 360
    return-void
.end method

.method public setDisplayMagnificationEnabledLocked(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 619
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    .line 620
    return-void
.end method

.method public setFilterKeyEventsEnabledLocked(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 627
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsFilterKeyEventsEnabled:Z

    .line 628
    return-void
.end method

.method public setFocusAppearanceLocked(II)V
    .registers 3
    .param p1, "strokeWidth"    # I
    .param p2, "color"    # I

    .line 987
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 988
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 989
    return-void
.end method

.method public setInteractiveUiTimeoutLocked(I)V
    .registers 2
    .param p1, "timeout"    # I

    .line 635
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 636
    return-void
.end method

.method public setLastSentClientStateLocked(I)V
    .registers 2
    .param p1, "state"    # I

    .line 643
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 644
    return-void
.end method

.method public setMagnificationCapabilitiesLocked(I)V
    .registers 2
    .param p1, "capabilities"    # I

    .line 692
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 693
    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 696
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 697
    return-void
.end method

.method public setMagnificationModeLocked(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 710
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 711
    return-void
.end method

.method public setMultiFingerGesturesLocked(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 878
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 879
    return-void
.end method

.method public setNonInteractiveUiTimeoutLocked(I)V
    .registers 2
    .param p1, "timeout"    # I

    .line 814
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 815
    return-void
.end method

.method public setPerformGesturesEnabledLocked(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 822
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsPerformGesturesEnabled:Z

    .line 823
    return-void
.end method

.method public setSendMotionEventsEnabled(Z)V
    .registers 2
    .param p1, "mode"    # Z

    .line 893
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    .line 894
    return-void
.end method

.method public setServiceChangingSoftKeyboardModeLocked(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "serviceChangingSoftKeyboardMode"    # Landroid/content/ComponentName;

    .line 838
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 839
    return-void
.end method

.method public setServiceHandlesDoubleTapLocked(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 870
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 871
    return-void
.end method

.method setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z
    .registers 8
    .param p1, "newMode"    # I
    .param p2, "requester"    # Landroid/content/ComponentName;

    .line 285
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    if-eq p1, v2, :cond_11

    if-eq p1, v1, :cond_11

    .line 288
    sget-object v1, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Invalid soft keyboard mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v0

    .line 291
    :cond_11
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    if-ne v3, p1, :cond_16

    .line 292
    return v2

    .line 295
    :cond_16
    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    if-ne p1, v1, :cond_3a

    .line 296
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->hasUserOverriddenHardKeyboardSetting()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 298
    return v0

    .line 303
    :cond_22
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSoftKeyboardValueFromSettings()I

    move-result v3

    if-eq v3, v1, :cond_34

    .line 304
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {p0, v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_31

    move v0, v2

    :cond_31
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setOriginalHardKeyboardValue(Z)V

    .line 307
    :cond_34
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {p0, v4, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    goto :goto_46

    .line 308
    :cond_3a
    if-ne v3, v1, :cond_46

    .line 309
    nop

    .line 310
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getOriginalHardKeyboardValue()Z

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 309
    invoke-direct {p0, v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 313
    :cond_46
    :goto_46
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->saveSoftKeyboardValueToSettings(I)V

    .line 314
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 315
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 316
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_54
    if-ltz v0, :cond_66

    .line 317
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 318
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedLocked(I)V

    .line 316
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v0, v0, -0x1

    goto :goto_54

    .line 320
    .end local v0    # "i":I
    :cond_66
    return v2
.end method

.method public setTargetAssignedToAccessibilityButton(Ljava/lang/String;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/String;

    .line 929
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 930
    return-void
.end method

.method public setTextHighContrastEnabledLocked(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 846
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    .line 847
    return-void
.end method

.method public setTouchExplorationEnabledLocked(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 862
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 863
    return-void
.end method

.method public setTwoFingerPassthroughLocked(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 885
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    .line 886
    return-void
.end method

.method public setUserInteractiveUiTimeoutLocked(I)V
    .registers 2
    .param p1, "timeout"    # I

    .line 901
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    .line 902
    return-void
.end method

.method public setUserNonInteractiveUiTimeoutLocked(I)V
    .registers 2
    .param p1, "timeout"    # I

    .line 909
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    .line 910
    return-void
.end method

.method updateCrashedServicesIfNeededLocked()V
    .registers 6

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_7
    if-ge v0, v1, :cond_32

    .line 388
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 389
    .local v2, "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    nop

    .line 390
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 392
    .local v3, "componentName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 393
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 395
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 387
    .end local v2    # "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 398
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_32
    return-void
.end method
