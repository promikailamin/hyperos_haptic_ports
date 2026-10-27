.class public Lcom/android/server/accessibility/AccessibilityWindowManager;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;,
        Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;,
        Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityWindowManager"

.field private static sNextWindowId:I


# instance fields
.field private final mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

.field private mAccessibilityFocusNodeId:J

.field private mAccessibilityFocusedDisplayId:I

.field private mAccessibilityFocusedWindowId:I

.field private final mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

.field private mActiveWindowId:I

.field private final mDisplayWindowsObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHostEmbeddedMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

.field private final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field private mTopFocusedDisplayId:I

.field private mTopFocusedWindowId:I

.field private mTopFocusedWindowToken:Landroid/os/IBinder;

.field private mTouchInteractionInProgress:Z

.field private final mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field private final mWindowIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private final mWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$IYGwnwkTh1g6Cwf2SSjlXXZvkmE(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusMainThread(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAccessibilityEventSender(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccessibilityFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHostEmbeddedMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowIdMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAccessibilityFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAccessibilityFocusLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogTraceWM(Lcom/android/server/accessibility/AccessibilityWindowManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveAccessibilityInteractionConnectionLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionLocked(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtraceWMEnabled(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .registers 11
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p4, "accessibilityEventSender"    # Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
    .param p5, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .param p6, "accessibilityUserManager"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
    .param p7, "traceManager"    # Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 93
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 94
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 95
    const-wide/32 v1, 0x7fffffff

    iput-wide v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 100
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 900
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 901
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHandler:Landroid/os/Handler;

    .line 902
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 903
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    .line 904
    iput-object p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 905
    iput-object p6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 906
    iput-object p7, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 907
    return-void
.end method

.method private clearAccessibilityFocusLocked(I)V
    .registers 6
    .param p1, "windowId"    # I

    .line 1703
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityWindowManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 1706
    invoke-interface {v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1703
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1707
    return-void
.end method

.method private clearAccessibilityFocusMainThread(II)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 1711
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1712
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v1

    .line 1713
    .local v1, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v1, :cond_b

    .line 1714
    monitor-exit v0

    return-void

    .line 1716
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_22

    .line 1717
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceIntConnEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1718
    const-string/jumbo v0, "notifyOutsideTouch"

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceIntConn(Ljava/lang/String;)V

    .line 1721
    :cond_18
    :try_start_18
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->clearAccessibilityFocus()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_20

    .line 1726
    goto :goto_21

    .line 1722
    :catch_20
    move-exception v0

    .line 1727
    :goto_21
    return-void

    .line 1716
    .end local v1    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private findFocusedWindowId(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 1665
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1666
    const-string v0, "getFocusedWindowToken"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowTokenFromWindowStates()Landroid/os/IBinder;

    move-result-object v0

    .line 1669
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1670
    :try_start_16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v2

    monitor-exit v1

    return v2

    .line 1671
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method private getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    .registers 7
    .param p1, "windowId"    # I

    .line 1730
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1731
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_29

    .line 1732
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1733
    .local v2, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v2, :cond_26

    .line 1734
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 1735
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    return-object v3

    .line 1731
    .end local v2    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1739
    .end local v1    # "i":I
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method private getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;"
        }
    .end annotation

    .line 1684
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1686
    .local v0, "connection":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;>;"
    if-nez v0, :cond_15

    .line 1687
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 1688
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1690
    :cond_15
    return-object v0
.end method

.method private getWindowTokensForUserLocked(I)Landroid/util/SparseArray;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1694
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1695
    .local v0, "windowTokens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    if-nez v0, :cond_15

    .line 1696
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 1697
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1699
    :cond_15
    return-object v0
.end method

.method private isValidUserForInteractionConnectionsLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1675
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isValidUserForWindowTokensLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1679
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private logTraceIntConn(Ljava/lang/String;)V
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;

    .line 1757
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessibilityWindowManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 1759
    return-void
.end method

.method private logTraceWM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .line 1747
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManagerInternal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x200

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1749
    return-void
.end method

.method private onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "windowId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    if-ltz p1, :cond_f

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-ne v0, p1, :cond_f

    .line 1194
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1196
    :cond_f
    if-eqz p2, :cond_3c

    .line 1197
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";windowId=AccessibilityWindowInfo.UNDEFINED_WINDOW_ID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "setAccessibilityIdToSurfaceMetadata"

    invoke-direct {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :cond_37
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowManagerInternal;->setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V

    .line 1204
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->unregisterIdLocked(I)V

    .line 1205
    return-void
.end method

.method private removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .registers 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;)I"
        }
    .end annotation

    .line 1142
    .local p2, "windowTokens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    .local p3, "interactionConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1143
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_24

    .line 1144
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_21

    .line 1145
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1146
    .local v2, "windowId":I
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1147
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1148
    .local v3, "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 1149
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1150
    return v2

    .line 1143
    .end local v2    # "windowId":I
    .end local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1153
    .end local v1    # "i":I
    :cond_24
    const/4 v1, -0x1

    return v1
.end method

.method private removeAccessibilityInteractionConnectionLocked(II)V
    .registers 5
    .param p1, "windowId"    # I
    .param p2, "userId"    # I

    .line 1163
    const/4 v0, 0x0

    .line 1164
    .local v0, "window":Landroid/os/IBinder;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_18

    .line 1165
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/IBinder;

    .line 1166
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1167
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3d

    .line 1169
    :cond_18
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1170
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/IBinder;

    .line 1171
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1173
    :cond_30
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForInteractionConnectionsLocked(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1174
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1177
    :cond_3d
    :goto_3d
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 1181
    return-void
.end method

.method private resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1295
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getHostTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 1296
    .local v0, "hostToken":Landroid/os/IBinder;
    if-nez v0, :cond_7

    .line 1297
    return-object p1

    .line 1299
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method private setAccessibilityFocusedWindowLocked(I)V
    .registers 5
    .param p1, "windowId"    # I

    .line 1466
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-eq v0, p1, :cond_2a

    .line 1467
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    const/16 v2, 0x80

    .line 1468
    invoke-static {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1467
    invoke-interface {v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1472
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 1474
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1475
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_2a

    .line 1476
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1477
    .local v2, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v2, :cond_27

    .line 1478
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->setAccessibilityFocusedWindowLocked(I)V

    .line 1475
    .end local v2    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1482
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method

.method private setActiveWindowLocked(I)V
    .registers 5
    .param p1, "windowId"    # I

    .line 1448
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq v0, p1, :cond_2a

    .line 1449
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    const/16 v2, 0x20

    .line 1450
    invoke-static {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1449
    invoke-interface {v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1453
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1455
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1456
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_2a

    .line 1457
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1458
    .local v2, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v2, :cond_27

    .line 1459
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->setActiveWindowLocked(I)V

    .line 1456
    .end local v2    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1463
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method

.method private traceIntConnEnabled()Z
    .registers 4

    .line 1752
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    return v0
.end method

.method private traceWMEnabled()Z
    .registers 4

    .line 1743
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x200

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method accessibilityFocusOnlyInActiveWindowLocked()Z
    .registers 2

    .line 1655
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .registers 23
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "leashToken"    # Landroid/os/IBinder;
    .param p3, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    move-object/from16 v14, p0

    move/from16 v15, p5

    const/16 v16, 0x0

    .line 1005
    .local v16, "shouldComputeWindows":Z
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 1006
    .local v13, "token":Landroid/os/IBinder;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1007
    const-string v0, "getDisplayIdForWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_29
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result v12

    .line 1010
    .local v12, "displayId":I
    iget-object v11, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1014
    :try_start_32
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1015
    invoke-virtual {v0, v15}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 1016
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 1019
    .local v6, "resolvedUid":I
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1020
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v2

    .line 1021
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_129

    .line 1019
    move-object/from16 v4, p4

    :try_start_4c
    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v5
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_125

    .line 1023
    .end local p4    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    :try_start_50
    sget v1, Lcom/android/server/accessibility/AccessibilityWindowManager;->sNextWindowId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/server/accessibility/AccessibilityWindowManager;->sNextWindowId:I

    move v10, v1

    .line 1027
    .local v10, "windowId":I
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, v15}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v1
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_11a

    if-eqz v1, :cond_89

    .line 1028
    :try_start_5f
    new-instance v8, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    const/4 v7, -0x1

    move-object v1, v8

    move-object/from16 v2, p0

    move v3, v10

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    move-object v1, v8

    .line 1030
    .local v1, "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 1031
    iget-object v2, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1032
    iget-object v2, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, v10, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_5f .. :try_end_79} :catchall_80

    .line 1037
    .end local v1    # "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    move-object/from16 p4, v5

    move v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    goto :goto_ae

    .line 1053
    .end local v0    # "resolvedUserId":I
    .end local v6    # "resolvedUid":I
    .end local v10    # "windowId":I
    :catchall_80
    move-exception v0

    move-object/from16 v1, p2

    move-object v4, v5

    move-object v3, v11

    move v2, v12

    move-object v5, v13

    goto/16 :goto_131

    .line 1038
    .restart local v0    # "resolvedUserId":I
    .restart local v6    # "resolvedUid":I
    .restart local v10    # "windowId":I
    :cond_89
    :try_start_89
    new-instance v1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :try_end_8b
    .catchall {:try_start_89 .. :try_end_8b} :catchall_11a

    move-object v7, v1

    move-object/from16 v8, p0

    move v9, v10

    move v2, v10

    .end local v10    # "windowId":I
    .local v2, "windowId":I
    move-object/from16 v10, p3

    move-object v3, v11

    move-object v11, v5

    move v4, v12

    .end local v12    # "displayId":I
    .local v4, "displayId":I
    move v12, v6

    move-object/from16 p4, v5

    move-object v5, v13

    .end local v13    # "token":Landroid/os/IBinder;
    .local v5, "token":Landroid/os/IBinder;
    .restart local p4    # "packageName":Ljava/lang/String;
    move v13, v0

    :try_start_9a
    invoke-direct/range {v7 .. v13}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 1040
    .restart local v1    # "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 1041
    invoke-direct {v14, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1042
    invoke-direct {v14, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1049
    .end local v1    # "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :goto_ae
    invoke-virtual {v14, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v1
    :try_end_b2
    .catchall {:try_start_9a .. :try_end_b2} :catchall_113

    if-eqz v1, :cond_b6

    .line 1050
    const/16 v16, 0x1

    .line 1052
    :cond_b6
    move-object/from16 v1, p2

    :try_start_b8
    invoke-virtual {v14, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->registerIdLocked(Landroid/os/IBinder;I)V

    .line 1053
    .end local v0    # "resolvedUserId":I
    .end local v6    # "resolvedUid":I
    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_111

    .line 1054
    if-eqz v16, :cond_e1

    .line 1055
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1056
    const-string v0, "computeWindowsForAccessibility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_dc
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility(I)V

    .line 1060
    :cond_e1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 1061
    const-string/jumbo v0, "setAccessibilityIdToSurfaceMetadata"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "token="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ";windowId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :cond_10b
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v5, v2}, Lcom/android/server/wm/WindowManagerInternal;->setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V

    .line 1065
    return v2

    .line 1053
    .end local v2    # "windowId":I
    :catchall_111
    move-exception v0

    goto :goto_116

    :catchall_113
    move-exception v0

    move-object/from16 v1, p2

    :goto_116
    move v2, v4

    move-object/from16 v4, p4

    goto :goto_131

    .end local v4    # "displayId":I
    .end local p4    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    .restart local v12    # "displayId":I
    .restart local v13    # "token":Landroid/os/IBinder;
    :catchall_11a
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 p4, v5

    move-object v3, v11

    move-object v5, v13

    move-object/from16 v4, p4

    move v2, v12

    .end local v12    # "displayId":I
    .end local v13    # "token":Landroid/os/IBinder;
    .restart local v4    # "displayId":I
    .local v5, "token":Landroid/os/IBinder;
    .restart local p4    # "packageName":Ljava/lang/String;
    goto :goto_131

    .end local v4    # "displayId":I
    .end local v5    # "token":Landroid/os/IBinder;
    .restart local v12    # "displayId":I
    .restart local v13    # "token":Landroid/os/IBinder;
    :catchall_125
    move-exception v0

    move-object/from16 v1, p2

    goto :goto_12e

    :catchall_129
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v4, p4

    :goto_12e
    move-object v3, v11

    move v2, v12

    move-object v5, v13

    .end local v12    # "displayId":I
    .end local v13    # "token":Landroid/os/IBinder;
    .end local p4    # "packageName":Ljava/lang/String;
    .local v2, "displayId":I
    .local v4, "packageName":Ljava/lang/String;
    .restart local v5    # "token":Landroid/os/IBinder;
    :goto_131
    :try_start_131
    monitor-exit v3
    :try_end_132
    .catchall {:try_start_131 .. :try_end_132} :catchall_133

    throw v0

    :catchall_133
    move-exception v0

    goto :goto_131
.end method

.method public associateEmbeddedHierarchyLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "host"    # Landroid/os/IBinder;
    .param p2, "embedded"    # Landroid/os/IBinder;

    .line 1266
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->associateLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 1267
    return-void
.end method

.method associateLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "embedded"    # Landroid/os/IBinder;
    .param p2, "host"    # Landroid/os/IBinder;

    .line 1768
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .registers 6
    .param p1, "windowId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 1311
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result v0

    .line 1312
    .local v0, "parentWindowId":I
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object v1

    .line 1315
    .local v1, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 1316
    if-eq v0, p1, :cond_e

    const/4 v2, 0x1

    :cond_e
    invoke-virtual {v1, v0, v2, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->computePartialInteractiveRegionForWindowLocked(IZLandroid/graphics/Region;)Z

    move-result v2

    return v2

    .line 1320
    :cond_13
    return v2
.end method

.method public disassociateEmbeddedHierarchyLocked(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1275
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateLocked(Landroid/os/IBinder;)V

    .line 1276
    return-void
.end method

.method disassociateLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1777
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_25

    .line 1779
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1780
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1778
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1783
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1847
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1848
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1849
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1850
    .local v2, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v2, :cond_16

    .line 1851
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1848
    .end local v2    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1854
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method public findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 4
    .param p1, "windowId"    # I

    .line 1492
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result p1

    .line 1493
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object v0

    .line 1494
    .local v0, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v0, :cond_f

    .line 1495
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1

    .line 1497
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public findWindowIdLocked(ILandroid/os/IBinder;)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1245
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 1246
    .local v0, "globalIndex":I
    if-ltz v0, :cond_f

    .line 1247
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1

    .line 1249
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1250
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 1251
    .local v1, "userIndex":I
    if-ltz v1, :cond_28

    .line 1252
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    return v2

    .line 1255
    .end local v1    # "userIndex":I
    :cond_28
    const/4 v1, -0x1

    return v1
.end method

.method public findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;
    .registers 4
    .param p1, "windowId"    # I

    .line 1508
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result p1

    .line 1509
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object v0

    .line 1510
    .local v0, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v0, :cond_f

    .line 1511
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v1

    return-object v1

    .line 1513
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getActiveWindowId(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 1440
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    if-nez v0, :cond_f

    .line 1442
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findFocusedWindowId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1444
    :cond_f
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return v0
.end method

.method public getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 1126
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1127
    .local v0, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForInteractionConnectionsLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1130
    :cond_1b
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1131
    return-object v0

    .line 1136
    :cond_24
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDisplayIdByUserIdAndWindowIdLocked(II)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 1624
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object v0

    .line 1625
    .local v0, "windowToken":Landroid/os/IBinder;
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDisplayIdForWindow"

    invoke-direct {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    :cond_23
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result v1

    .line 1629
    .local v1, "displayId":I
    return v1
.end method

.method public getDisplayListLocked()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    .local v0, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1640
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_26

    .line 1641
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1642
    .local v3, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v3, :cond_23

    .line 1643
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    .end local v3    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1646
    .end local v2    # "i":I
    :cond_26
    return-object v0
.end method

.method public getFocusedWindowId(I)I
    .registers 3
    .param p1, "focusType"    # I

    .line 1524
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1525
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return v0

    .line 1526
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 1527
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    return v0

    .line 1529
    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method getHostTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1840
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .registers 2

    .line 1578
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    return-object v0
.end method

.method public getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 6

    .line 1539
    const/4 v0, 0x0

    .line 1540
    .local v0, "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1541
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1f

    .line 1542
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1543
    .local v3, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v3, :cond_1c

    .line 1544
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_1c

    .line 1545
    goto :goto_1f

    .line 1541
    .end local v3    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1549
    .end local v2    # "i":I
    :cond_1f
    :goto_1f
    return-object v0
.end method

.method getTokenLocked(I)Landroid/os/IBinder;
    .registers 3
    .param p1, "windowId"    # I

    .line 1816
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method getWindowIdLocked(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1826
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 1827
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1828
    return v0

    .line 1830
    :cond_a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1
.end method

.method public getWindowListLocked(I)Ljava/util/List;
    .registers 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 982
    .local v0, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v0, :cond_f

    .line 983
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getWindowListLocked()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 985
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWindowOwnerUserId(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 1231
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getWindowOwnerUserId"

    invoke-direct {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :cond_20
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 1216
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1217
    .local v0, "windowToken":Landroid/os/IBinder;
    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1218
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/IBinder;

    .line 1220
    :cond_1b
    return-object v0
.end method

.method public isTrackingWindowsLocked()Z
    .registers 3

    .line 951
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 952
    .local v0, "count":I
    if-lez v0, :cond_a

    .line 953
    const/4 v1, 0x1

    return v1

    .line 955
    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method public isTrackingWindowsLocked(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 966
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 967
    .local v0, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v0, :cond_f

    .line 968
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isTrackingWindowsLocked()Z

    move-result v1

    return v1

    .line 970
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public notifyOutsideTouch(II)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "targetWindowId"    # I

    .line 1587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1588
    .local v0, "connectionList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1589
    nop

    .line 1590
    :try_start_9
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object v2

    .line 1591
    .local v2, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v2, :cond_2e

    .line 1592
    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1593
    .local v3, "outsideWindowsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2e

    .line 1594
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1597
    .end local v2    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    .end local v3    # "outsideWindowsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "i":I
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_57

    .line 1598
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 1599
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1600
    .local v2, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-eqz v2, :cond_53

    .line 1601
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceIntConnEnabled()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1602
    const-string/jumbo v3, "notifyOutsideTouch"

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceIntConn(Ljava/lang/String;)V

    .line 1606
    :cond_4a
    :try_start_4a
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->notifyOutsideTouch()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_51} :catch_52

    .line 1611
    goto :goto_53

    .line 1607
    :catch_52
    move-exception v3

    .line 1598
    .end local v2    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :cond_53
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1614
    .end local v1    # "i":I
    :cond_56
    return-void

    .line 1597
    :catchall_57
    move-exception v2

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v2
.end method

.method public onTouchInteractionEnd()V
    .registers 4

    .line 1414
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1415
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 1424
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1425
    .local v1, "oldActiveWindow":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setActiveWindowLocked(I)V

    .line 1426
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq v1, v2, :cond_1e

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-ne v2, v1, :cond_1e

    .line 1428
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->accessibilityFocusOnlyInActiveWindowLocked()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1429
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 1431
    .end local v1    # "oldActiveWindow":I
    :cond_1e
    monitor-exit v0

    .line 1432
    return-void

    .line 1431
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public onTouchInteractionStart()V
    .registers 3

    .line 1404
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1405
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 1406
    monitor-exit v0

    .line 1407
    return-void

    .line 1406
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method registerIdLocked(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowId"    # I

    .line 1792
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1793
    return-void
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 10
    .param p1, "window"    # Landroid/view/IWindow;

    .line 1074
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1079
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1078
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 1080
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1081
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v2

    .line 1083
    .local v2, "removedWindowId":I
    if-ltz v2, :cond_1f

    .line 1084
    invoke-direct {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 1090
    monitor-exit v0

    return-void

    .line 1092
    :cond_1f
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1093
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    if-ge v4, v3, :cond_45

    .line 1094
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1095
    .local v5, "userId":I
    nop

    .line 1097
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v6

    .line 1098
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v7

    .line 1096
    invoke-direct {p0, v1, v6, v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v6

    .line 1099
    .local v6, "removedWindowIdForUser":I
    if-ltz v6, :cond_42

    .line 1100
    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 1107
    monitor-exit v0

    return-void

    .line 1093
    .end local v5    # "userId":I
    .end local v6    # "removedWindowIdForUser":I
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1110
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "removedWindowId":I
    .end local v3    # "userCount":I
    .end local v4    # "i":I
    :cond_45
    monitor-exit v0

    .line 1111
    return-void

    .line 1110
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public resolveParentWindowIdLocked(I)I
    .registers 6
    .param p1, "windowId"    # I

    .line 1285
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getTokenLocked(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1286
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_7

    .line 1287
    return p1

    .line 1289
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    .line 1290
    .local v1, "resolvedToken":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowIdLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 1291
    .local v2, "resolvedWindowId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, p1

    :goto_15
    return v3
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .registers 11
    .param p1, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1558
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1559
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    if-eqz v1, :cond_d

    .line 1560
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 1561
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1563
    :cond_d
    if-eqz p1, :cond_22

    .line 1564
    new-instance v1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    const/4 v4, -0x3

    const-string v6, "foo.bar.baz"

    const/16 v7, 0x3e8

    const/4 v8, -0x1

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 1567
    .local v1, "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1568
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 1570
    .end local v1    # "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :cond_22
    monitor-exit v0

    .line 1571
    return-void

    .line 1570
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public startTrackingWindows(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 915
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 917
    .local v1, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-nez v1, :cond_13

    .line 918
    new-instance v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    invoke-direct {v2, p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    move-object v1, v2

    .line 920
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isTrackingWindowsLocked()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 921
    monitor-exit v0

    return-void

    .line 923
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->startTrackingWindowsLocked()V

    .line 924
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 925
    .end local v1    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    monitor-exit v0

    .line 926
    return-void

    .line 925
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public stopTrackingWindows(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 935
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 936
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 937
    .local v1, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v1, :cond_15

    .line 938
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->stopTrackingWindowsLocked()V

    .line 939
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 941
    .end local v1    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_15
    monitor-exit v0

    .line 942
    return-void

    .line 941
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method unregisterIdLocked(I)V
    .registers 4
    .param p1, "windowId"    # I

    .line 1801
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1802
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_b

    .line 1803
    return-void

    .line 1805
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateLocked(Landroid/os/IBinder;)V

    .line 1806
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1807
    return-void
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IIJII)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "windowId"    # I
    .param p3, "nodeId"    # J
    .param p5, "eventType"    # I
    .param p6, "eventAction"    # I

    .line 1343
    sparse-switch p5, :sswitch_data_6a

    goto :goto_69

    .line 1382
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1383
    :try_start_7
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    cmp-long v1, v1, p3

    const-wide/32 v2, 0x7fffffff

    if-nez v1, :cond_12

    .line 1384
    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 1388
    :cond_12
    iget-wide v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_25

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-ne v1, p2, :cond_25

    const/16 v1, 0x40

    if-eq p6, v1, :cond_25

    .line 1391
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 1392
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 1394
    :cond_25
    monitor-exit v0

    goto :goto_69

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1

    .line 1372
    :sswitch_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1373
    :try_start_2d
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-eq v1, p2, :cond_37

    .line 1374
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 1375
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setAccessibilityFocusedWindowLocked(I)V

    .line 1377
    :cond_37
    iput-wide p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 1378
    monitor-exit v0

    .line 1379
    goto :goto_69

    .line 1378
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_3b

    throw v1

    .line 1364
    :sswitch_3e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1365
    :try_start_41
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    if-eqz v1, :cond_4c

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq v1, p2, :cond_4c

    .line 1366
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setActiveWindowLocked(I)V

    .line 1368
    :cond_4c
    monitor-exit v0

    .line 1369
    goto :goto_69

    .line 1368
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_4e

    throw v1

    .line 1351
    :sswitch_51
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1352
    :try_start_54
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result v1

    if-nez v1, :cond_64

    .line 1353
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findFocusedWindowId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 1354
    if-ne p2, v1, :cond_64

    .line 1355
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1358
    :cond_64
    monitor-exit v0

    .line 1359
    goto :goto_69

    .line 1358
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_66

    throw v1

    .line 1397
    :goto_69
    return-void

    :sswitch_data_6a
    .sparse-switch
        0x20 -> :sswitch_51
        0x80 -> :sswitch_3e
        0x8000 -> :sswitch_2a
        0x10000 -> :sswitch_4
    .end sparse-switch
.end method
