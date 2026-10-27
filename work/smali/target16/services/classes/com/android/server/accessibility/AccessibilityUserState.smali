.class public Lcom/android/server/accessibility/AccessibilityUserState;
.super Ljava/lang/Object;
.source "AccessibilityUserState.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AccessibilityUserState"


# instance fields
.field public final mA11yActivityToTileService:Ljava/util/Map;

.field public final mA11yServiceToTileService:Ljava/util/Map;

.field public final mA11yTilesInQsPanel:Landroid/util/ArraySet;

.field public mAccessibilityFocusOnlyInActiveWindow:Z

.field public mAlwaysOnMagnificationEnabled:Z

.field public mBindInstantServiceAllowed:Z

.field public final mBindingServices:Ljava/util/Set;

.field public final mBoundServices:Ljava/util/ArrayList;

.field public final mComponentNameToServiceMap:Ljava/util/Map;

.field public mContext:Landroid/content/Context;

.field public final mCrashedServices:Ljava/util/Set;

.field public final mEnabledServices:Ljava/util/Set;

.field public mFocusColor:I

.field public final mFocusColorDefaultValue:I

.field public mFocusStrokeWidth:I

.field public final mFocusStrokeWidthDefaultValue:I

.field public final mInstalledServices:Ljava/util/List;

.field public final mInstalledShortcuts:Ljava/util/List;

.field public mInteractiveUiTimeout:I

.field public mIsAudioDescriptionByDefaultRequested:Z

.field public mIsAutoclickEnabled:Z

.field public mIsFilterKeyEventsEnabled:Z

.field public mIsMagnificationSingleFingerTripleTapEnabled:Z

.field public mIsPerformGesturesEnabled:Z

.field public mIsTextHighContrastEnabled:Z

.field public mIsTouchExplorationEnabled:Z

.field public mLastSentClientState:I

.field public mMagnificationCapabilities:I

.field public mMagnificationCursorFollowingMode:I

.field public mMagnificationFollowKeyboardEnabled:Z

.field public mMagnificationFollowTypingEnabled:Z

.field public final mMagnificationModes:Landroid/util/SparseIntArray;

.field public mMagnificationTwoFingerTripleTapEnabled:Z

.field public mMouseKeysEnabled:Z

.field public mNonInteractiveUiTimeout:I

.field public mRequestMultiFingerGestures:Z

.field public mRequestTwoFingerPassthrough:Z

.field public mSendMotionEventsEnabled:Z

.field public mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

.field public mServiceDetectsGestures:Landroid/util/SparseArray;

.field public mServiceHandlesDoubleTap:Z

.field public final mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

.field public final mShortcutTargets:Ljava/util/HashMap;

.field public mSoftKeyboardShowMode:I

.field public final mSupportWindowMagnification:Z

.field public mTargetAssignedToAccessibilityButton:Ljava/lang/String;

.field public final mTouchExplorationGrantedServices:Ljava/util/Set;

.field public final mUserClients:Landroid/os/RemoteCallbackList;

.field public final mUserId:I

.field public mUserInteractiveUiTimeout:I

.field public mUserNonInteractiveUiTimeout:I


# direct methods
.method public static synthetic $r8$lambda$A9u88Wcnw6nxJFvcxVxU6ch1jmQ(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->lambda$updateTileServiceMapForAccessibilityServiceLocked$2(Ljava/util/Set;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vr1J1yQFDhNN4Rwg21CufNgA7Gc(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Landroid/accessibilityservice/AccessibilityShortcutInfo;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->lambda$updateTileServiceMapForAccessibilityActivityLocked$3(Ljava/util/Set;Landroid/accessibilityservice/AccessibilityShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d3KxOS0O-qTw7v340hoftFR1OSY(Ljava/lang/Integer;Landroid/util/ArraySet;)V
    .registers 2

    .line 249
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public static synthetic $r8$lambda$q4zgwJm8KhzSrw2Rp60awkSnRZk(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 954
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_e

    .line 957
    :cond_9
    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;)V
    .registers 8

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    .line 127
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    .line 149
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 152
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 153
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    const/4 v1, -0x1

    .line 154
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 159
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    .line 161
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 163
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCursorFollowingMode:I

    .line 167
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowKeyboardEnabled:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMouseKeysEnabled:Z

    .line 183
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    .line 184
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yActivityToTileService:Ljava/util/Map;

    .line 188
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 206
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 207
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    .line 208
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    .line 209
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050024

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidthDefaultValue:I

    .line 211
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10600f3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColorDefaultValue:I

    .line 213
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 214
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 215
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111020b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_c7

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.software.window_magnification"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c7

    move v2, v1

    :cond_c7
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSupportWindowMagnification:Z

    const/4 p0, 0x2

    .line 219
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x20

    .line 221
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x10

    .line 222
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x40

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    if-nez p1, :cond_6

    goto :goto_36

    .line 1120
    :cond_6
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    .line 1123
    :cond_e
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_15

    return v0

    .line 1127
    :cond_15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 1129
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return v2

    :cond_36
    :goto_36
    return v0
.end method


# virtual methods
.method public addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 274
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    invoke-interface {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;->onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_1b
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 569
    const-string v0, "User state["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 570
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 571
    const-string v0, "     attributes:{id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 572
    const-string v0, ", touchExplorationEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 573
    const-string v0, ", serviceHandlesDoubleTap="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 574
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 575
    const-string v0, ", requestMultiFingerGestures="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 576
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 577
    const-string v0, ", requestTwoFingerPassthrough="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    .line 578
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 579
    const-string v0, ", sendMotionEventsEnabled"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 580
    const-string v0, ", displayMagnificationEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 582
    const-string v0, ", autoclickEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 583
    const-string v0, ", nonInteractiveUiTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 584
    const-string v0, ", interactiveUiTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 585
    const-string v0, ", installedServiceCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 586
    const-string v0, ", magnificationModes="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 587
    const-string v0, ", magnificationCapabilities="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 588
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 589
    const-string v0, ", audioDescriptionByDefaultEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 590
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 591
    const-string v0, ", magnificationCursorFollowingMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCursorFollowingMode:I

    .line 592
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 593
    const-string v0, ", magnificationFollowTypingEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 594
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 595
    const-string v0, ", magnificationFollowKeyboardEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowKeyboardEnabled:Z

    .line 596
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 597
    const-string v0, ", alwaysOnMagnificationEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    .line 598
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 599
    const-string/jumbo v0, "}"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 600
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 601
    const-string v1, "     button mode: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 602
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getButtonMode(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 603
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const/4 v1, 0x2

    .line 604
    const-string/jumbo v2, "shortcut key"

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->dumpShortcutTargets(Ljava/io/PrintWriter;ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 605
    const-string v2, "button"

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->dumpShortcutTargets(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 606
    const-string v1, "     button target:{"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 607
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 608
    const-string v2, "gesture"

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->dumpShortcutTargets(Ljava/io/PrintWriter;ILjava/lang/String;)V

    const/16 v1, 0x10

    .line 609
    const-string/jumbo v2, "qs shortcut targets"

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->dumpShortcutTargets(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 610
    const-string v1, "     a11y tiles in QS panel:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 611
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 612
    const-string v1, "     Bound services:{"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 613
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 614
    :goto_183
    const-string v4, ", "

    if-ge v3, v1, :cond_1a2

    if-lez v3, :cond_194

    .line 616
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 617
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 618
    const-string v4, "                     "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 620
    :cond_194
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 621
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_183

    .line 623
    :cond_1a2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    const-string p1, "     Enabled services:{"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 625
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 626
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1da

    .line 627
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 628
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 629
    :goto_1c3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1da

    .line 630
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 631
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 632
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1c3

    .line 635
    :cond_1da
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    const-string p1, "     Binding services:{"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 637
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 638
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_212

    .line 639
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 640
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 641
    :goto_1fb
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_212

    .line 642
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 643
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 644
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1fb

    .line 647
    :cond_212
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const-string p1, "     Crashed services:{"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 649
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 650
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_24a

    .line 651
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 652
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 653
    :goto_233
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_24a

    .line 654
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 655
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 656
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_233

    .line 659
    :cond_24a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    const-string p1, "     Client list info:{"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    const-string p3, "          Client list "

    invoke-virtual {p1, p2, p3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 662
    const-string p1, "          Registered clients:{"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    :goto_25e
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-ge v2, p1, :cond_27a

    .line 664
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 665
    invoke-virtual {p1, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 666
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_25e

    .line 668
    :cond_27a
    const-string/jumbo p0, "}]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpShortcutTargets(Ljava/io/PrintWriter;ILjava/lang/String;)V
    .registers 5

    .line 556
    const-string v0, "     "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p3

    const-string v0, ":{"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 557
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object p0

    .line 558
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_18
    if-ge p3, p2, :cond_2d

    if-lez p3, :cond_21

    .line 561
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 563
    :cond_21
    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 p3, p3, 0x1

    goto :goto_18

    .line 565
    :cond_2d
    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getA11yFeatureToTileService()Ljava/util/Map;
    .registers 3

    .line 1255
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1256
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1257
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yActivityToTileService:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public getA11yQsTilesInQsPanel()Landroid/util/ArraySet;
    .registers 2

    .line 1248
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public getBindInstantServiceAllowedLocked()Z
    .registers 1

    .line 405
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    return p0
.end method

.method public getBindingServicesLocked()Ljava/util/Set;
    .registers 1

    .line 417
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    return-object p0
.end method

.method public getClientStateLocked(ZI)I
    .registers 4

    if-nez p1, :cond_b

    .line 463
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    if-eqz p1, :cond_14

    .line 468
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    if-eqz v0, :cond_14

    or-int/lit8 p1, p1, 0x1a

    .line 473
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    if-eqz v0, :cond_1a

    or-int/lit8 p1, p1, 0x4

    .line 476
    :cond_1a
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    if-eqz p0, :cond_20

    or-int/lit16 p1, p1, 0x1000

    :cond_20
    or-int p0, p1, p2

    return p0
.end method

.method public getCrashedServicesLocked()Ljava/util/Set;
    .registers 1

    .line 424
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    return-object p0
.end method

.method public getEnabledServicesLocked()Ljava/util/Set;
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    return-object p0
.end method

.method public getFocusColorLocked()I
    .registers 1

    .line 1149
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    return p0
.end method

.method public getFocusStrokeWidthLocked()I
    .registers 1

    .line 1141
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    return p0
.end method

.method public getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 5

    const/4 v0, 0x0

    .line 965
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 966
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 967
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInteractiveUiTimeoutLocked()I
    .registers 1

    .line 712
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    return p0
.end method

.method public getLastSentClientStateLocked()I
    .registers 1

    .line 720
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    return p0
.end method

.method public getMagnificationCapabilitiesLocked()I
    .registers 1

    .line 772
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    return p0
.end method

.method public getMagnificationCursorFollowingMode()I
    .registers 1

    .line 796
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCursorFollowingMode:I

    return p0
.end method

.method public getMagnificationModeLocked(I)I
    .registers 5

    .line 748
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_13

    .line 753
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    .line 754
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 756
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationModeLocked(II)V

    :cond_13
    return v0
.end method

.method public getNonInteractiveUiTimeoutLocked()I
    .registers 1

    .line 982
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    return p0
.end method

.method public final getOriginalHardKeyboardValue()Z
    .registers 4

    .line 527
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result p0

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v2
.end method

.method public final getSecureIntForUser(Ljava/lang/String;II)I
    .registers 4

    .line 542
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getServiceConnectionLocked(Landroid/content/ComponentName;)Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .registers 2

    .line 978
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    return-object p0
.end method

.method public getShortcutTargetsLocked(I)Landroid/util/ArraySet;
    .registers 9

    .line 852
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 853
    sget-object v1, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_49

    aget v4, v1, v3

    and-int v5, p1, v4

    if-eq v5, v4, :cond_12

    goto :goto_46

    :cond_12
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1b

    .line 858
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->isMagnificationSingleFingerTripleTapEnabledLocked()Z

    move-result v5

    if-nez v5, :cond_25

    :cond_1b
    const/16 v5, 0x8

    if-ne v4, v5, :cond_2b

    .line 860
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->isMagnificationTwoFingerTripleTapEnabledLocked()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 861
    :cond_25
    const-string v4, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 862
    :cond_2b
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 863
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_49
    return-object v0
.end method

.method public getSoftKeyboardShowModeLocked()I
    .registers 1

    .line 376
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    return p0
.end method

.method public final getSoftKeyboardValueFromSettings()I
    .registers 4

    const/4 v0, 0x0

    .line 521
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v2, "accessibility_soft_keyboard_mode"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public getTargetAssignedToAccessibilityButton()Ljava/lang/String;
    .registers 1

    .line 1091
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    return-object p0
.end method

.method public getTileServiceToA11yServiceInfoMapLocked()Ljava/util/Map;
    .registers 5

    .line 1265
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1267
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 1268
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;-><init>()V

    .line 1271
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v3

    .line 1269
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 1268
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1273
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1275
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1276
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1275
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_52
    return-object v0
.end method

.method public getUserInteractiveUiTimeoutLocked()I
    .registers 1

    .line 1069
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    return p0
.end method

.method public getUserNonInteractiveUiTimeoutLocked()I
    .registers 1

    .line 1077
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    return p0
.end method

.method public final hasUserOverriddenHardKeyboardSetting()Z
    .registers 4

    .line 495
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v2
.end method

.method public isAlwaysOnMagnificationEnabled()Z
    .registers 1

    .line 830
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    return p0
.end method

.method public isAudioDescriptionByDefaultEnabledLocked()Z
    .registers 1

    .line 1022
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    return p0
.end method

.method public isAutoclickEnabledLocked()Z
    .registers 1

    .line 672
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    return p0
.end method

.method public isFilterKeyEventsEnabledLocked()Z
    .registers 1

    .line 696
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsFilterKeyEventsEnabled:Z

    return p0
.end method

.method public isHandlingAccessibilityEventsLocked()Z
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public isMagnificationFollowKeyboardEnabled()Z
    .registers 1

    .line 822
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowKeyboardEnabled:Z

    return p0
.end method

.method public isMagnificationFollowTypingEnabled()Z
    .registers 1

    .line 814
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    return p0
.end method

.method public isMagnificationSingleFingerTripleTapEnabledLocked()Z
    .registers 1

    .line 680
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    return p0
.end method

.method public isMagnificationTwoFingerTripleTapEnabledLocked()Z
    .registers 1

    .line 688
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationTwoFingerTripleTapEnabled:Z

    return p0
.end method

.method public isMouseKeysEnabled()Z
    .registers 1

    .line 708
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMouseKeysEnabled:Z

    return p0
.end method

.method public isMultiFingerGesturesEnabledLocked()Z
    .registers 1

    .line 1046
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    return p0
.end method

.method public isPerformGesturesEnabledLocked()Z
    .registers 1

    .line 990
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsPerformGesturesEnabled:Z

    return p0
.end method

.method public isSendMotionEventsEnabled()Z
    .registers 1

    .line 1061
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    return p0
.end method

.method public isServiceDetectsGesturesEnabled(I)Z
    .registers 3

    .line 1172
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1173
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceHandlesDoubleTapEnabledLocked()Z
    .registers 1

    .line 1038
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    return p0
.end method

.method public isShortcutMagnificationEnabledLocked()Z
    .registers 7

    .line 731
    sget-object v0, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_1a

    aget v4, v0, v3

    .line 732
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v4

    const-string v5, "com.android.server.accessibility.MagnificationController"

    .line 733
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1a
    return v2
.end method

.method public isShortcutTargetInstalledLocked(Ljava/lang/String;)Z
    .registers 6

    .line 906
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 909
    :cond_8
    const-string v0, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    .line 913
    :cond_12
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_19

    return v1

    .line 917
    :cond_19
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    .line 918
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v2

    .line 921
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    return v2

    :cond_2b
    move v0, v1

    .line 924
    :goto_2c
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4a

    .line 925
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    return v2

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_4a
    return v1
.end method

.method public isTextHighContrastEnabledLocked()Z
    .registers 1

    .line 1014
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    return p0
.end method

.method public isTouchExplorationEnabledLocked()Z
    .registers 1

    .line 1030
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    return p0
.end method

.method public isTwoFingerPassthroughEnabledLocked()Z
    .registers 1

    .line 1053
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    return p0
.end method

.method public isValidMagnificationModeLocked(I)Z
    .registers 4

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result p1

    .line 193
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSupportWindowMagnification:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    return v1

    .line 197
    :cond_d
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public final synthetic lambda$updateTileServiceMapForAccessibilityActivityLocked$3(Ljava/util/Set;Landroid/accessibilityservice/AccessibilityShortcutInfo;)V
    .registers 6

    .line 1225
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object v0

    .line 1226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1227
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    .line 1228
    new-instance v1, Landroid/content/ComponentName;

    .line 1229
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 1232
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yActivityToTileService:Ljava/util/Map;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-void
.end method

.method public final synthetic lambda$updateTileServiceMapForAccessibilityServiceLocked$2(Ljava/util/Set;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 6

    .line 1192
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object v0

    .line 1193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1194
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 1195
    new-instance v1, Landroid/content/ComponentName;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    new-instance p2, Landroid/content/ComponentName;

    .line 1200
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1204
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return-void
.end method

.method public onSwitchToAnotherUserLocked()V
    .registers 4

    .line 232
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->unbindAllServicesLocked()V

    .line 235
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 237
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, -0x1

    .line 240
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 244
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 247
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 248
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 249
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 250
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    const/4 v1, 0x0

    .line 251
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 252
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 253
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 254
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 255
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    .line 256
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    .line 257
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 258
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationTwoFingerTripleTapEnabled:Z

    .line 259
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 260
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    .line 261
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    .line 262
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 263
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidthDefaultValue:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 264
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColorDefaultValue:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 265
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCursorFollowingMode:I

    const/4 v1, 0x1

    .line 267
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 268
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowKeyboardEnabled:Z

    .line 269
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    return-void
.end method

.method public final putSecureIntForUser(Ljava/lang/String;II)V
    .registers 6

    .line 546
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 548
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 550
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    throw p0
.end method

.method public reconcileSoftKeyboardModeWithSettingsLocked()V
    .registers 6

    .line 384
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 385
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 386
    :goto_f
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1d

    if-nez v0, :cond_1d

    .line 390
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 391
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setUserOverridesHardKeyboardSetting()V

    .line 396
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSoftKeyboardValueFromSettings()I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    if-eq v0, v1, :cond_36

    .line 397
    sget-object v0, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Show IME setting inconsistent with internal state. Overwriting"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 399
    const-string v0, "accessibility_soft_keyboard_mode"

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    :cond_36
    return-void
.end method

.method public removeDisabledServicesFromTemporaryStatesLocked()V
    .registers 5

    .line 438
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2e

    .line 439
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 441
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 443
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 445
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 450
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2e
    return-void
.end method

.method public removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onRemoved()V

    .line 290
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 292
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 291
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x0

    .line 293
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 297
    :cond_1f
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 298
    :goto_24
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_40

    .line 299
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 300
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 302
    :cond_40
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    invoke-interface {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;->onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z
    .registers 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1d

    .line 950
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 951
    new-instance p1, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda2;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {p0, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    .line 943
    :cond_1d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "removeShortcutTargetLocked only support shortcut type: software and hardware and quick settings for now"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetServiceDetectsGestures()V
    .registers 1

    .line 1168
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final saveSoftKeyboardValueToSettings(I)V
    .registers 5

    const/4 v0, 0x0

    .line 512
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v2, "accessibility_soft_keyboard_mode"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    and-int/lit8 v0, v0, -0x4

    or-int/2addr p1, v0

    .line 516
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    return-void
.end method

.method public serviceDisconnectedLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 2

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 316
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAccessibilityFocusOnlyInActiveWindow(Z)V
    .registers 2

    .line 1002
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    return-void
.end method

.method public setAlwaysOnMagnificationEnabled(Z)V
    .registers 2

    .line 826
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    return-void
.end method

.method public setAudioDescriptionByDefaultEnabledLocked(Z)V
    .registers 2

    .line 1026
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    return-void
.end method

.method public setAutoclickEnabledLocked(Z)V
    .registers 2

    .line 676
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    return-void
.end method

.method public setBindInstantServiceAllowedLocked(Z)V
    .registers 2

    .line 410
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    return-void
.end method

.method public setFilterKeyEventsEnabledLocked(Z)V
    .registers 2

    .line 700
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsFilterKeyEventsEnabled:Z

    return-void
.end method

.method public setFocusAppearanceLocked(II)V
    .registers 3

    .line 1159
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 1160
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    return-void
.end method

.method public setInteractiveUiTimeoutLocked(I)V
    .registers 2

    .line 716
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    return-void
.end method

.method public setLastSentClientStateLocked(I)V
    .registers 2

    .line 724
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    return-void
.end method

.method public setMagnificationCapabilitiesLocked(I)V
    .registers 2

    .line 783
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    return-void
.end method

.method public setMagnificationCursorFollowingMode(I)V
    .registers 2

    .line 806
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCursorFollowingMode:I

    return-void
.end method

.method public setMagnificationFollowKeyboardEnabled(Z)V
    .registers 2

    .line 818
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowKeyboardEnabled:Z

    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .registers 2

    .line 810
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    return-void
.end method

.method public setMagnificationModeLocked(II)V
    .registers 3

    .line 840
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public setMagnificationSingleFingerTripleTapEnabledLocked(Z)V
    .registers 2

    .line 684
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    return-void
.end method

.method public setMouseKeysEnabled(Z)V
    .registers 2

    .line 704
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMouseKeysEnabled:Z

    return-void
.end method

.method public setMultiFingerGesturesLocked(Z)V
    .registers 2

    .line 1050
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    return-void
.end method

.method public setNonInteractiveUiTimeoutLocked(I)V
    .registers 2

    .line 986
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    return-void
.end method

.method public final setOriginalHardKeyboardValue(Z)V
    .registers 6

    .line 502
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    const v3, -0x20000001

    and-int/2addr v0, v3

    if-eqz p1, :cond_11

    const/high16 v2, 0x20000000

    :cond_11
    or-int p1, v0, v2

    .line 507
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    return-void
.end method

.method public setPerformGesturesEnabledLocked(Z)V
    .registers 2

    .line 994
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsPerformGesturesEnabled:Z

    return-void
.end method

.method public setSendMotionEventsEnabled(Z)V
    .registers 2

    .line 1065
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    return-void
.end method

.method public setServiceDetectsGesturesEnabled(IZ)V
    .registers 3

    .line 1164
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setServiceHandlesDoubleTapLocked(Z)V
    .registers 2

    .line 1042
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    return-void
.end method

.method public setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    if-eq p1, v2, :cond_11

    if-eq p1, v1, :cond_11

    .line 339
    sget-object p0, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Invalid soft keyboard mode"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 342
    :cond_11
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    if-ne v3, p1, :cond_16

    return v2

    .line 346
    :cond_16
    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    if-ne p1, v1, :cond_3a

    .line 347
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->hasUserOverriddenHardKeyboardSetting()Z

    move-result v3

    if-eqz v3, :cond_22

    return v0

    .line 354
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSoftKeyboardValueFromSettings()I

    move-result v3

    if-eq v3, v1, :cond_34

    .line 355
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_31

    move v0, v2

    :cond_31
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setOriginalHardKeyboardValue(Z)V

    .line 358
    :cond_34
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v4, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    goto :goto_45

    :cond_3a
    if-ne v3, v1, :cond_45

    .line 361
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getOriginalHardKeyboardValue()Z

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 360
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 364
    :cond_45
    :goto_45
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->saveSoftKeyboardValueToSettings(I)V

    .line 365
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 366
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 367
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_53
    if-ltz p1, :cond_65

    .line 368
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 369
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    invoke-virtual {p2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedLocked(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_53

    :cond_65
    return v2
.end method

.method public setTargetAssignedToAccessibilityButton(Ljava/lang/String;)V
    .registers 2

    .line 1101
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    return-void
.end method

.method public setTextHighContrastEnabledLocked(Z)V
    .registers 2

    .line 1018
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    return-void
.end method

.method public setTouchExplorationEnabledLocked(Z)V
    .registers 2

    .line 1034
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    return-void
.end method

.method public setTwoFingerPassthroughLocked(Z)V
    .registers 2

    .line 1057
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    return-void
.end method

.method public setUserInteractiveUiTimeoutLocked(I)V
    .registers 2

    .line 1073
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    return-void
.end method

.method public setUserNonInteractiveUiTimeoutLocked(I)V
    .registers 2

    .line 1081
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    return-void
.end method

.method public final setUserOverridesHardKeyboardSetting()V
    .registers 4

    const/4 v0, 0x0

    .line 487
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v2, "accessibility_soft_keyboard_mode"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 489
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    return-void
.end method

.method public final unbindAllServicesLocked()V
    .registers 3

    .line 533
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 534
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-lez v0, :cond_15

    const/4 v1, 0x0

    .line 537
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_15
    return-void
.end method

.method public updateA11yTilesInQsPanelLocked(Ljava/util/Set;)V
    .registers 3

    .line 1240
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1241
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public updateShortcutTargetsLocked(Ljava/util/Set;I)Z
    .registers 6

    and-int/lit8 v0, p2, 0xc

    if-nez v0, :cond_4e

    .line 885
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 886
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :cond_1e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 889
    sget-object v0, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    .line 890
    invoke-static {p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p2

    .line 889
    const-string/jumbo v1, "updateShortcutTargets: type:%s, current:%s, new:%s"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-interface {p1, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    const/4 p0, 0x0

    return p0

    .line 894
    :cond_46
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 895
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0

    .line 883
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tap shortcuts cannot be updated with target sets."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateTileServiceMapForAccessibilityActivityLocked(Ljava/util/Set;)V
    .registers 4

    .line 1219
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yActivityToTileService:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1220
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 1223
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateTileServiceMapForAccessibilityServiceLocked(Ljava/util/Set;)V
    .registers 4

    .line 1186
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1187
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 1190
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
