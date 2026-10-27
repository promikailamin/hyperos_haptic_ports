.class public Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
.super Ljava/lang/Object;
.source "MagnificationConnectionManager.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# static fields
.field public static final WAIT_CONNECTION_TIMEOUT_MILLIS:I


# instance fields
.field public final mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

.field public mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

.field public mConnectionState:I

.field mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

.field public final mContext:Landroid/content/Context;

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field public final mLastActivatedScale:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mMagnificationFollowKeyboardEnabled:Z

.field public mMagnificationFollowTypingEnabled:Z

.field public mReceiverRegistered:Z

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field protected final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mWindowMagnifiers:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowMagnifiers(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectionCallback(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateWindowMagnifier(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdisableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmoveWindowMagnifierInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IFF)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnifierInternal(IFF)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetWindowMagnifiers(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->resetWindowMagnifiers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetConnectionState(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetScaleForWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IF)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScaleForWindowMagnificationInternal(IF)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 134
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0xc8

    sput v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->WAIT_CONNECTION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .registers 8

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 131
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowKeyboardEnabled:Z

    .line 150
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 152
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    .line 155
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 156
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    .line 222
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 223
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    .line 224
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 225
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 226
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public static connectionStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :cond_1d
    const-string p0, "DISCONNECTED"

    return-object p0

    .line 124
    :cond_20
    const-string p0, "DISCONNECTING"

    return-object p0

    .line 123
    :cond_23
    const-string p0, "CONNECTED"

    return-object p0

    .line 122
    :cond_26
    const-string p0, "CONNECTING"

    return-object p0
.end method


# virtual methods
.method public final createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    .registers 3

    .line 966
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;-><init>(ILcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    .line 967
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public disableAllWindowMagnifiers()V
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 375
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 376
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    const/4 v3, 0x0

    .line 377
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_1b
    move-exception p0

    goto :goto_24

    .line 379
    :cond_1d
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 380
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_1b

    throw p0
.end method

.method public disableWindowMagnification(IZ)Z
    .registers 4

    .line 683
    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 7

    .line 697
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 700
    monitor-exit v0

    return v2

    :catchall_10
    move-exception p0

    goto :goto_26

    .line 703
    :cond_12
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p3

    if-eqz p2, :cond_1d

    .line 705
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 707
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_10

    if-eqz p3, :cond_25

    .line 710
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    invoke-interface {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;->onWindowMagnificationActivationState(IZ)V

    :cond_25
    return p3

    .line 707
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_10

    throw p0
.end method

.method public final disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 3

    .line 1351
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-nez p0, :cond_e

    .line 1352
    const-string p0, "MagnificationConnectionManager"

    const-string/jumbo p1, "mConnectionWrapper is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1355
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->disableWindowMagnification(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public final enableAllTrackingTypingFocus()V
    .registers 5

    .line 507
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 508
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 509
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    const/4 v3, 0x1

    .line 510
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_1b
    move-exception p0

    goto :goto_1f

    .line 512
    :cond_1d
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1b

    throw p0
.end method

.method public enableWindowMagnification(IFFFI)Z
    .registers 14

    .line 630
    sget-object v5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p0

    return p0
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    .line 611
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p0

    return p0
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z
    .registers 17

    .line 653
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez v0, :cond_11

    .line 656
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    move-result-object v0

    :cond_11
    move-object v2, v0

    goto :goto_16

    :catchall_13
    move-exception v0

    move-object p0, v0

    goto :goto_43

    .line 658
    :goto_16
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result v0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 659
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 662
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 664
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_13

    if-eqz p2, :cond_42

    const/4 p3, 0x1

    .line 667
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setTrackingTypingFocusEnabled(IZ)V

    if-nez v0, :cond_42

    .line 669
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    invoke-interface {p0, p1, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;->onWindowMagnificationActivationState(IZ)V

    :cond_42
    return p2

    .line 664
    :goto_43
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_13

    throw p0
.end method

.method public final enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 16

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableWindowMagnificationInternal mConnectionWrapper is null. mConnectionState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 1333
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1331
    const-string p1, "MagnificationConnectionManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1336
    :cond_24
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public getCenterX(I)F
    .registers 3

    .line 906
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz p0, :cond_1c

    .line 908
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1c

    .line 911
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getCenterX()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_20

    :cond_1c
    :goto_1c
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 909
    monitor-exit v0

    return p0

    .line 912
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1a

    throw p0
.end method

.method public getCenterY(I)F
    .registers 3

    .line 922
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz p0, :cond_1c

    .line 924
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1c

    .line 927
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getCenterY()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_20

    :cond_1c
    :goto_1c
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 925
    monitor-exit v0

    return p0

    .line 928
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1a

    throw p0
.end method

.method public getConnectionState()Ljava/lang/String;
    .registers 1

    .line 359
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .registers 3

    .line 471
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz p0, :cond_15

    .line 474
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmIdOfLastServiceToControl(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto :goto_18

    .line 476
    :cond_15
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_13

    throw p0
.end method

.method public getLastActivatedScale(I)F
    .registers 4

    .line 818
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_11

    const/high16 p0, -0x40800000    # -1.0f

    .line 820
    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    goto :goto_1f

    .line 822
    :cond_11
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    monitor-exit v0

    return p0

    .line 823
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_f

    throw p0
.end method

.method public getMagnificationSourceBounds(ILandroid/graphics/Region;)V
    .registers 4

    .line 949
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz p0, :cond_1e

    .line 951
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1e

    .line 954
    :cond_14
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmSourceBounds(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_21

    :catchall_1c
    move-exception p0

    goto :goto_23

    .line 952
    :cond_1e
    :goto_1e
    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    .line 956
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1c

    throw p0
.end method

.method public getPersistedScale(I)F
    .registers 3

    .line 781
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result p0

    const p1, 0x3fa66666    # 1.3f

    sget v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    invoke-static {p0, p1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public getScale(I)F
    .registers 3

    .line 808
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz p0, :cond_1c

    .line 810
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1c

    .line 813
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getScale()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_20

    :cond_1c
    :goto_1c
    const/high16 p0, 0x3f800000    # 1.0f

    .line 811
    monitor-exit v0

    return p0

    .line 814
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1a

    throw p0
.end method

.method public isConnected()Z
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 283
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isImeVisible(I)Z
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 545
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isPositionInSourceBounds(IFF)Z
    .registers 4

    .line 750
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 754
    :cond_c
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->isPositionInSourceBounds(FF)Z

    move-result p0

    return p0
.end method

.method public isTrackingTypingFocusEnabled(I)Z
    .registers 3

    .line 932
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 935
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 937
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->isTrackingTypingFocusEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 938
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public isWindowMagnifierEnabled(I)Z
    .registers 3

    .line 764
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 767
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 769
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->isEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 770
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public logTrackingTypingFocus(J)V
    .registers 3

    .line 549
    invoke-static {p1, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationFollowTypingFocusSession(J)V

    return-void
.end method

.method public moveWindowMagnification(IFF)V
    .registers 5

    .line 836
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_11

    .line 839
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_16

    .line 841
    :cond_11
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->move(FF)V

    .line 842
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_f

    throw p0
.end method

.method public final moveWindowMagnifierInternal(IFF)Z
    .registers 4

    .line 1361
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->moveWindowMagnifier(IFF)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 5

    .line 1368
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    const/4 v0, 0x1

    .line 977
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z

    return-void
.end method

.method public onFullscreenMagnificationActivationChanged(IZ)Z
    .registers 5

    .line 719
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 721
    const-string p1, "MagnificationConnectionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFullscreenMagnificationActivationChanged mConnectionWrapper is null. mConnectionState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 723
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 721
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 724
    monitor-exit v0

    return p0

    :catchall_29
    move-exception p0

    goto :goto_33

    .line 726
    :cond_2b
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 727
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->onFullscreenMagnificationActivationChanged(IZ)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 728
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_29

    throw p0
.end method

.method public onImeWindowVisibilityChanged(IZ)V
    .registers 5

    .line 532
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 534
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    if-eqz p2, :cond_f

    .line 536
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableAllTrackingTypingFocus()V

    return-void

    .line 538
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->pauseTrackingTypingFocusRecord(I)V

    return-void

    :catchall_13
    move-exception p0

    .line 534
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onRectangleOnScreenRequested(IIIIII)V
    .registers 8

    add-int/2addr p2, p4

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    add-int/2addr p3, p5

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 418
    iget-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 419
    :try_start_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isPositionInSourceBounds(IFF)Z

    move-result p5

    if-eqz p5, :cond_15

    .line 420
    monitor-exit p4

    return-void

    :catchall_13
    move-exception p0

    goto :goto_3a

    .line 423
    :cond_15
    invoke-virtual {p0, p6}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->shouldFollowTyping(I)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_2b

    iget-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 424
    invoke-virtual {p5, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p5

    if-eqz p5, :cond_2b

    .line 425
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isTrackingTypingFocusEnabled(I)Z

    move-result p5

    if-eqz p5, :cond_2b

    const/4 v0, 0x1

    .line 426
    :cond_2b
    invoke-virtual {p0, p6}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->shouldFollowKeyboard(I)Z

    move-result p5

    if-nez v0, :cond_33

    if-eqz p5, :cond_38

    .line 429
    :cond_33
    sget-object p5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 432
    :cond_38
    monitor-exit p4

    return-void

    :goto_3a
    monitor-exit p4
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_13

    throw p0
.end method

.method public onUserMagnificationScaleChanged(IIF)Z
    .registers 5

    .line 893
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_11

    .line 895
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->onUserMagnificationScaleChanged(IIF)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 896
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public final pauseTrackingTypingFocusRecord(I)V
    .registers 3

    .line 517
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_11

    .line 520
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_16

    .line 522
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_f

    .line 523
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->pauseTrackingTypingFocusRecord()V

    return-void

    .line 522
    :goto_16
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_f

    throw p0
.end method

.method public persistScale(I)V
    .registers 4

    .line 794
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v0

    const v1, 0x3fa66666    # 1.3f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_c

    return-void

    .line 798
    :cond_c
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    return-void
.end method

.method public pointersInWindow(ILandroid/view/MotionEvent;)I
    .registers 4

    .line 739
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 742
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    .line 744
    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->pointersInWindow(Landroid/view/MotionEvent;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 745
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_10

    throw p0
.end method

.method public processScroll(IFF)Z
    .registers 4

    neg-float p2, p2

    neg-float p3, p3

    .line 554
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnification(IFF)V

    const/4 p2, 0x0

    .line 555
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setTrackingTypingFocusEnabled(IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public removeMagnificationButton(I)Z
    .registers 3

    .line 866
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_11

    .line 868
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->removeMagnificationButton(I)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 869
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public removeMagnificationSettingsPanel(I)Z
    .registers 3

    .line 879
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_11

    .line 881
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->removeMagnificationSettingsPanel(I)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 882
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public requestConnection(Z)Z
    .registers 10

    .line 297
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 305
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 306
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "MagnificationConnectionManager.requestMagnificationConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 309
    :cond_2e
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3e

    .line 310
    :try_start_35
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-eq v3, v0, :cond_48

    if-eqz v3, :cond_48

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_a9

    :cond_3e
    :goto_3e
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-nez p1, :cond_6f

    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-eq v5, v4, :cond_48

    if-ne v5, v3, :cond_6f

    .line 313
    :cond_48
    const-string v0, "MagnificationConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestConnection duplicated request: connect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mConnectionState="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 314
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    monitor-exit v1

    return v2

    :cond_6f
    if-eqz p1, :cond_86

    .line 319
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 320
    iget-boolean v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    if-nez v6, :cond_96

    .line 321
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    goto :goto_96

    .line 325
    :cond_86
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableAllWindowMagnifiers()V

    .line 326
    iget-boolean v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    if-eqz v5, :cond_96

    .line 327
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 328
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 331
    :cond_96
    :goto_96
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_35 .. :try_end_97} :catchall_3c

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->requestConnectionInternal(Z)Z

    move-result v1

    if-eqz v1, :cond_a5

    if-eqz p1, :cond_a0

    goto :goto_a1

    :cond_a0
    move v2, v3

    .line 333
    :goto_a1
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    return v0

    .line 336
    :cond_a5
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    return v2

    .line 331
    :goto_a9
    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_3c

    throw p0

    .line 299
    :cond_ab
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Visible background user(u"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not permitted to request magnification connection."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestConnectionInternal(Z)Z
    .registers 4

    .line 342
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 344
    :try_start_4
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_18

    .line 347
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->requestMagnificationConnection(Z)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_16
    move-exception p0

    goto :goto_1d

    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 351
    throw p0
.end method

.method public resetAllIfNeeded(I)V
    .registers 6

    .line 391
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 392
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 393
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz v2, :cond_29

    .line 394
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 396
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getIdOfLastServiceToControl()I

    move-result v3

    if-ne p1, v3, :cond_29

    const/4 v3, 0x0

    .line 397
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_2e

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 400
    :cond_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_27

    throw p0
.end method

.method public final resetWindowMagnifiers()V
    .registers 4

    .line 404
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 405
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 406
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 407
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 409
    :cond_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method public setConnection(Landroid/view/accessibility/IMagnificationConnection;)V
    .registers 8

    .line 239
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_27

    .line 242
    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)Z

    .line 243
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    if-eqz v1, :cond_17

    .line 244
    invoke-static {v1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->-$$Nest$fputmExpiredDeathRecipient(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;Z)V

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_6b

    .line 246
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 247
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 252
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-eqz v1, :cond_27

    .line 253
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    :cond_27
    if-eqz p1, :cond_32

    .line 257
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-direct {v1, p1, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;-><init>(Landroid/view/accessibility/IMagnificationConnection;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 260
    :cond_32
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_15

    if-eqz p1, :cond_69

    .line 262
    :try_start_36
    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    invoke-direct {p1, p0, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager-IA;)V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    .line 263
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 264
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)Z

    .line 265
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_4c} :catch_54
    .catchall {:try_start_36 .. :try_end_4c} :catchall_52

    .line 271
    :goto_4c
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_15

    goto :goto_69

    :catchall_52
    move-exception p1

    goto :goto_63

    :catch_54
    move-exception p1

    .line 267
    :try_start_55
    const-string v1, "MagnificationConnectionManager"

    const-string/jumbo v3, "setConnection failed"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_52

    goto :goto_4c

    .line 271
    :goto_63
    :try_start_63
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 272
    throw p1

    .line 274
    :cond_69
    :goto_69
    monitor-exit v0

    return-void

    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_15

    throw p0
.end method

.method public final setConnectionState(I)V
    .registers 2

    .line 367
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    return-void
.end method

.method public setMagnificationFollowKeyboardEnabled(Z)V
    .registers 2

    .line 456
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowKeyboardEnabled:Z

    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .registers 2

    .line 448
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    return-void
.end method

.method public setScale(IF)V
    .registers 5

    .line 567
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez v1, :cond_11

    .line 570
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1f

    .line 572
    :cond_11
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setScale(F)V

    .line 573
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 574
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_f

    throw p0
.end method

.method public final setScaleForWindowMagnificationInternal(IF)Z
    .registers 3

    .line 1344
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_c

    .line 1345
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->setScaleForWindowMagnification(IF)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public setTrackingTypingFocusEnabled(IZ)V
    .registers 4

    .line 494
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_11

    .line 497
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_16

    .line 499
    :cond_11
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    .line 500
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_f

    throw p0
.end method

.method public final shouldFollowKeyboard(I)Z
    .registers 2

    .line 443
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowKeyboardEnabled:Z

    if-eqz p0, :cond_9

    const/4 p0, 0x3

    if-ne p1, p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldFollowTyping(I)Z
    .registers 2

    .line 437
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    if-eqz p0, :cond_b

    const/4 p0, 0x2

    if-eq p1, p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public showMagnificationButton(II)Z
    .registers 4

    .line 853
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_11

    .line 855
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->showMagnificationButton(II)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 856
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public waitConnectionWithTimeoutIfNeeded()Z
    .registers 6

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->WAIT_CONNECTION_TIMEOUT_MILLIS:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1375
    :catch_8
    :goto_8
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-nez v2, :cond_20

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_20

    .line 1377
    :try_start_14
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1f} :catch_8

    goto :goto_8

    .line 1382
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isConnected()Z

    move-result p0

    return p0
.end method
