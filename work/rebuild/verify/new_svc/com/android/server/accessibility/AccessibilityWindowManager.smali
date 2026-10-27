.class public Lcom/android/server/accessibility/AccessibilityWindowManager;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"


# static fields
.field public static sNextWindowId:I


# instance fields
.field public final mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

.field public mAccessibilityFocusNodeId:J

.field public mAccessibilityFocusedDisplayId:I

.field public mAccessibilityFocusedWindowId:I

.field public final mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

.field public mActiveWindowId:I

.field public final mDisplayWindowsObservers:Landroid/util/SparseArray;

.field public final mGlobalInteractionConnections:Landroid/util/SparseArray;

.field public final mGlobalWindowTokens:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public mHasProxy:Z

.field public final mHostEmbeddedMap:Landroid/util/ArrayMap;

.field public final mInteractionConnections:Landroid/util/SparseArray;

.field public mLastNonProxyTopFocusedDisplayId:I

.field public final mLock:Ljava/lang/Object;

.field public mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

.field public final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public mTopFocusedDisplayId:I

.field public mTopFocusedWindowId:I

.field public mTopFocusedWindowToken:Landroid/os/IBinder;

.field public mTouchInteractionInProgress:Z

.field public final mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mWindowAttributes:Landroid/util/SparseArray;

.field public final mWindowIdMap:Landroid/util/SparseArray;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public final mWindowTokens:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$YhP75-7wzMSIl7oTi9YhSqMv54o(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusMainThread(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityEventSender(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTmpRegion(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/graphics/Region;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTmpRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/os/IBinder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowAttributes(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowAttributes:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastNonProxyTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLastNonProxyTopFocusedDisplayId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearAccessibilityFocusLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misProxyed(Lcom/android/server/accessibility/AccessibilityWindowManager;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isProxyed(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogTraceWM(Lcom/android/server/accessibility/AccessibilityWindowManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAccessibilityInteractionConnectionLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionLocked(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtraceWMEnabled(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .registers 11

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTmpRegion:Landroid/graphics/Region;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 109
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 110
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    const-wide/32 v1, 0x7fffffff

    .line 111
    iput-wide v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 119
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowAttributes:Landroid/util/SparseArray;

    .line 1156
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 1157
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHandler:Landroid/os/Handler;

    .line 1158
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1159
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    .line 1160
    iput-object p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1161
    iput-object p6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 1162
    iput-object p7, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-void
.end method


# virtual methods
.method public accessibilityFocusOnlyInActiveWindowLocked()Z
    .registers 1

    .line 2042
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .registers 16

    move v0, p5

    .line 1313
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1315
    const-string v2, "getDisplayIdForWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :cond_22
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, v7}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result v8

    .line 1318
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1322
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1323
    invoke-virtual {v2, p5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v6

    .line 1324
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v2

    invoke-static {v6, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 1327
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1328
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v3

    .line 1329
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1327
    invoke-virtual {v2, p4, v3, v6, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v4

    .line 1331
    sget v2, Lcom/android/server/accessibility/AccessibilityWindowManager;->sNextWindowId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/server/accessibility/AccessibilityWindowManager;->sNextWindowId:I

    .line 1335
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v3, p5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1336
    new-instance v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    const/4 v6, -0x1

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 1338
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 1339
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1340
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_85

    :catchall_6b
    move-exception v0

    goto :goto_dc

    .line 1346
    :cond_6d
    new-instance v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 1348
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 1349
    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1350
    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1357
    :goto_85
    invoke-virtual {p0, v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v0

    .line 1360
    invoke-virtual {p0, p2, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->registerIdLocked(Landroid/os/IBinder;I)V

    .line 1361
    monitor-exit v9
    :try_end_8d
    .catchall {:try_start_2b .. :try_end_8d} :catchall_6b

    if-eqz v0, :cond_b0

    .line 1363
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1364
    const-string v0, "computeWindowsForAccessibility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :cond_ab
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility(I)V

    .line 1368
    :cond_b0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 1369
    const-string/jumbo v0, "setAccessibilityIdToSurfaceMetadata"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";windowId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :cond_d6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v7, v2}, Lcom/android/server/wm/WindowManagerInternal;->setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V

    return v2

    .line 1361
    :goto_dc
    :try_start_dc
    monitor-exit v9
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_6b

    throw v0
.end method

.method public associateEmbeddedHierarchyLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 1575
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->associateLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method public associateLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 2161
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clearAccessibilityFocusLocked(I)V
    .registers 5

    .line 2096
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityWindowManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 2099
    invoke-interface {v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2096
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final clearAccessibilityFocusMainThread(II)V
    .registers 4

    .line 2104
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2105
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object p1

    if-nez p1, :cond_d

    .line 2107
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_22

    .line 2109
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b

    .line 2110
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceIntConnEnabled()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 2111
    const-string/jumbo p2, "notifyOutsideTouch"

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceIntConn(Ljava/lang/String;)V

    .line 2114
    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->clearAccessibilityFocus()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_21

    :catch_21
    return-void

    .line 2109
    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_b

    throw p0
.end method

.method public final clearProxyFocusLocked(II)Z
    .registers 8

    const/16 v0, 0x40

    const/4 v1, 0x0

    if-ne p2, v0, :cond_6

    return v1

    :cond_6
    move p2, v1

    .line 2263
    :goto_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_4c

    .line 2264
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v0, :cond_49

    .line 2265
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmWindows(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_49

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 2266
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmWindows(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_2e
    if-ge v3, v2, :cond_49

    .line 2268
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmWindows(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 2269
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_46

    const/4 p0, -0x1

    .line 2270
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fputmProxyDisplayAccessibilityFocusedWindow(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;I)V

    const/4 p0, 0x1

    return p0

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_49
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_4c
    return v1
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .registers 5

    .line 1620
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result v0

    .line 1621
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_13

    if-eq v0, p1, :cond_e

    const/4 v1, 0x1

    .line 1625
    :cond_e
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->computePartialInteractiveRegionForWindowLocked(IZLandroid/graphics/Region;)Z

    move-result p0

    return p0

    :cond_13
    return v1
.end method

.method public disassociateEmbeddedHierarchyLocked(Landroid/os/IBinder;)V
    .registers 2

    .line 1584
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method public disassociateLocked(Landroid/os/IBinder;)V
    .registers 4

    .line 2170
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_25

    .line 2172
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v1, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2173
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_25
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 2329
    const-string v0, "Global Info [ "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Top focused display Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     Active Window Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     Top Focused Window Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     Accessibility Focused Window Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2336
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_6c
    if-ge v1, v0, :cond_7e

    .line 2338
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v2, :cond_7b

    .line 2340
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 2343
    :cond_7e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2344
    const-string p1, "Window attributes:["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2345
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2346
    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2347
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2

    .line 1833
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result p1

    .line 1834
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1836
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findFocusedWindowId(I)I
    .registers 4

    .line 2052
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2053
    const-string v0, "getFocusedWindowToken"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowTokenFromWindowStates()Landroid/os/IBinder;

    move-result-object v0

    .line 2062
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2063
    :try_start_16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_1c
    move-exception p0

    .line 2064
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public findWindowIdLocked(ILandroid/os/IBinder;)I
    .registers 4

    .line 1554
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_f

    .line 1556
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    .line 1558
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1559
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_28

    .line 1561
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_28
    const/4 p0, -0x1

    return p0
.end method

.method public findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;
    .registers 2

    .line 1849
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result p1

    .line 1850
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1852
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveWindowId(I)I
    .registers 4

    .line 1758
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    if-nez v0, :cond_f

    .line 1760
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findFocusedWindowId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1762
    :cond_f
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return p0
.end method

.method public getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .registers 5

    .line 1434
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    if-nez v0, :cond_1b

    .line 1435
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForInteractionConnectionsLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1436
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    :cond_1b
    if-eqz v0, :cond_24

    .line 1438
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object p0

    if-eqz p0, :cond_24

    return-object v0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDefaultFocus(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1893
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return p0

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 1895
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public getDisplayIdByUserIdAndWindowId(II)I
    .registers 5

    .line 2003
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2004
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object p1

    .line 2005
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2c

    .line 2006
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 2007
    const-string p2, "getDisplayIdForWindow"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    :cond_25
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result p0

    return p0

    :catchall_2c
    move-exception p0

    .line 2005
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public getDisplayListLocked(I)Ljava/util/ArrayList;
    .registers 7

    .line 2021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2022
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_46

    .line 2024
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v3, :cond_43

    .line 2026
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Z

    move-result v4

    if-nez v4, :cond_2e

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2e

    .line 2027
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 2028
    :cond_2e
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Z

    move-result v4

    if-eqz v4, :cond_43

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_43

    .line 2029
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_46
    return-object v0
.end method

.method public final getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    .registers 6

    .line 2123
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_29

    .line 2125
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v2, :cond_26

    .line 2127
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 2128
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    return-object p0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFocusedWindowId(I)I
    .registers 3

    const/4 v0, -0x1

    .line 1865
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getFocusedWindowId(II)I

    move-result p0

    return p0
.end method

.method public getFocusedWindowId(II)I
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_24

    if-eqz p2, :cond_24

    .line 1878
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    if-nez v0, :cond_a

    goto :goto_24

    .line 1883
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz p2, :cond_1f

    .line 1884
    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1885
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getProxyFocus(ILcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result p0

    return p0

    .line 1887
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDefaultFocus(I)I

    move-result p0

    return p0

    .line 1880
    :cond_24
    :goto_24
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDefaultFocus(I)I

    move-result p0

    return p0
.end method

.method public getHostTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    .line 2233
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public final getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;
    .registers 3

    .line 2077
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    .line 2080
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2081
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getLastNonProxyTopFocusedDisplayId()I
    .registers 1

    .line 1259
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLastNonProxyTopFocusedDisplayId:I

    return p0
.end method

.method public getLeashTokenLocked(I)Landroid/os/IBinder;
    .registers 2

    .line 2209
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .registers 1

    .line 1956
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    return-object p0
.end method

.method public getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 1918
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1e

    .line 1920
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v3, :cond_1b

    .line 1922
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    if-eqz v1, :cond_1b

    return-object v1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    return-object v1
.end method

.method public final getProxyFocus(ILcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1902
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return p0

    :cond_6
    const/4 p0, 0x2

    if-ne p1, p0, :cond_e

    .line 1904
    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmProxyDisplayAccessibilityFocusedWindow(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result p0

    return p0

    :cond_e
    const/4 p0, -0x1

    return p0
.end method

.method public getTopFocusedDisplayId()I
    .registers 1

    .line 1263
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    return p0
.end method

.method public getWindowIdLocked(Landroid/os/IBinder;)I
    .registers 3

    .line 2219
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    return p1

    .line 2223
    :cond_a
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public getWindowListLocked(I)Ljava/util/List;
    .registers 2

    .line 1289
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz p0, :cond_f

    .line 1291
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getWindowListLocked()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowOwnerUserId(Landroid/os/IBinder;)I
    .registers 4

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getWindowOwnerUserId"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    :cond_1d
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;
    .registers 5

    .line 1525
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_1b

    .line 1526
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1527
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0

    :cond_1b
    return-object v0
.end method

.method public final getWindowTokensForUserLocked(I)Landroid/util/SparseArray;
    .registers 3

    .line 2087
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    .line 2089
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2090
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public isEmbeddedHierarchyWindowsLocked(I)Z
    .registers 4

    .line 2241
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2245
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getLeashTokenLocked(I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_11

    return v1

    .line 2250
    :cond_11
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isProxyed(I)Z
    .registers 2

    .line 1248
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz p0, :cond_12

    .line 1249
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isTrackingWindowsLocked()Z
    .registers 1

    .line 1240
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isTrackingWindowsLocked(I)Z
    .registers 2

    .line 1274
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz p0, :cond_f

    .line 1276
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isTrackingWindowsLocked()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final isValidUserForInteractionConnectionsLocked(I)Z
    .registers 2

    .line 2068
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isValidUserForWindowTokensLocked(I)Z
    .registers 2

    .line 2072
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final logTraceIntConn(Ljava/lang/String;)V
    .registers 4

    .line 2150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessibilityWindowManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    return-void
.end method

.method public final logTraceWM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2140
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowManagerInternal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x200

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public moveNonProxyTopFocusedDisplayToTopIfNeeded()V
    .registers 3

    .line 1253
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLastNonProxyTopFocusedDisplayId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    if-eq v0, v1, :cond_f

    .line 1255
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerInternal;->moveDisplayToTopIfAllowed(I)V

    :cond_f
    return-void
.end method

.method public notifyOutsideTouch(II)V
    .registers 8

    .line 1965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1966
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1968
    :try_start_8
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    .line 1970
    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;

    move-result-object p2

    move v2, v3

    .line 1971
    :goto_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_30

    .line 1972
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :catchall_2e
    move-exception p0

    goto :goto_56

    .line 1975
    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2e

    .line 1976
    :goto_31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_55

    .line 1977
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    if-eqz p1, :cond_52

    .line 1979
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceIntConnEnabled()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 1980
    const-string/jumbo p2, "notifyOutsideTouch"

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceIntConn(Ljava/lang/String;)V

    .line 1984
    :cond_4b
    :try_start_4b
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->notifyOutsideTouch()V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_52} :catch_52

    :catch_52
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_55
    return-void

    .line 1975
    :goto_56
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_2e

    throw p0
.end method

.method public final onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V
    .registers 6

    .line 1501
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    if-ltz p1, :cond_f

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-ne v0, p1, :cond_f

    .line 1502
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    :cond_f
    if-eqz p2, :cond_39

    .line 1505
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";windowId=AccessibilityWindowInfo.UNDEFINED_WINDOW_ID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "setAccessibilityIdToSurfaceMetadata"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    :cond_34
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowManagerInternal;->setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V

    .line 1512
    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->unregisterIdLocked(I)V

    .line 1513
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onTouchInteractionEnd()V
    .registers 4

    .line 1732
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1733
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 1742
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1743
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setActiveWindowLocked(I)V

    .line 1744
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq v1, v2, :cond_21

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-ne v2, v1, :cond_21

    .line 1746
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->accessibilityFocusOnlyInActiveWindowLocked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1747
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_23

    .line 1749
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_1f

    throw p0
.end method

.method public onTouchInteractionStart()V
    .registers 3

    .line 1722
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1723
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 1724
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public registerIdLocked(Landroid/os/IBinder;I)V
    .registers 3

    .line 2185
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 7

    .line 1382
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1386
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1387
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1386
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 1388
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1389
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v1

    if-ltz v1, :cond_21

    .line 1392
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 1398
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    goto :goto_48

    .line 1400
    :cond_21
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_46

    .line 1402
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1405
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v4

    .line 1406
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v3

    .line 1404
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v3

    if-ltz v3, :cond_43

    .line 1408
    invoke-virtual {p0, v3, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 1415
    monitor-exit v0

    return-void

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1418
    :cond_46
    monitor-exit v0

    return-void

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_1f

    throw p0
.end method

.method public final removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .registers 6

    .line 1450
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_24

    .line 1452
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_21

    .line 1453
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    .line 1454
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1455
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1456
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 1457
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->remove(I)V

    return p0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_24
    const/4 p0, -0x1

    return p0
.end method

.method public final removeAccessibilityInteractionConnectionLocked(II)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_16

    .line 1473
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    .line 1474
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1475
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3d

    .line 1477
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1478
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1479
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 1481
    :goto_2f
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForInteractionConnectionsLocked(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1482
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_3c
    move-object p2, v0

    .line 1485
    :goto_3d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    return-void
.end method

.method public final resetHasProxyIfNeededLocked()V
    .registers 5

    .line 1221
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_1e

    .line 1223
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v3, :cond_1b

    .line 1225
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1230
    :cond_1e
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    return-void
.end method

.method public resolveParentWindowIdLocked(I)I
    .registers 3

    .line 1594
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getLeashTokenLocked(I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_13

    .line 1598
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 1599
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowIdLocked(Landroid/os/IBinder;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    return p0

    :cond_13
    :goto_13
    return p1
.end method

.method public final resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 3

    .line 1604
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getHostTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p1

    .line 1608
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final setAccessibilityFocusedWindowLocked(I)V
    .registers 9

    .line 1795
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-eq v0, p1, :cond_60

    .line 1796
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1797
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    const/16 v2, 0x80

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1c

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-eq v4, v3, :cond_1c

    .line 1801
    invoke-static {v1, v4, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1806
    :cond_1c
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 1808
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_26
    if-ge v4, v1, :cond_4c

    .line 1810
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v5, :cond_49

    .line 1811
    invoke-virtual {v5, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->setAccessibilityFocusedWindowLocked(I)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1812
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v6

    iput v6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 1814
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v5

    invoke-static {v5, p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1819
    :cond_4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_50
    if-ge v3, p1, :cond_60

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 1820
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    invoke-interface {v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_50

    :cond_60
    return-void
.end method

.method public setAccessibilityWindowAttributes(IIILandroid/view/accessibility/AccessibilityWindowAttributes;)V
    .registers 7

    .line 162
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 164
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p3

    .line 165
    invoke-virtual {p0, p3, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object p3

    if-nez p3, :cond_13

    .line 166
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_2a

    .line 168
    :cond_13
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowAttributes:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object p2

    if-eqz p2, :cond_20

    const/4 p2, 0x1

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    .line 170
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_11

    if-eqz p2, :cond_29

    .line 172
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility(I)V

    :cond_29
    return-void

    .line 170
    :goto_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_11

    throw p0
.end method

.method public final setActiveWindowLocked(I)V
    .registers 9

    .line 1766
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq v0, p1, :cond_62

    .line 1767
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1768
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    const/4 v2, -0x1

    const/16 v3, 0x20

    if-eq v1, v2, :cond_24

    .line 1770
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1772
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    invoke-static {v1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1777
    :cond_24
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1779
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    :goto_2e
    if-ge v4, v1, :cond_4e

    .line 1781
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v5, :cond_4b

    .line 1782
    invoke-virtual {v5, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->setActiveWindowLocked(I)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1783
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v5

    invoke-static {v5, p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 1788
    :cond_4e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_52
    if-ge v2, p1, :cond_62

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 1789
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    invoke-interface {v3, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_52

    :cond_62
    return-void
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .registers 11

    .line 1936
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1937
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    if-eqz v0, :cond_11

    .line 1938
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->unlinkToDeath()V

    const/4 v0, 0x0

    .line 1939
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    goto :goto_11

    :catchall_e
    move-exception v0

    move-object p0, v0

    goto :goto_27

    :cond_11
    :goto_11
    if-eqz p1, :cond_25

    .line 1942
    new-instance v2, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    const-string v6, "foo.bar.baz"

    const/16 v7, 0x3e8

    const/4 v8, -0x1

    const/4 v4, -0x3

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 1945
    iput-object v2, v3, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1946
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 1948
    :cond_25
    monitor-exit v1

    return-void

    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_e

    throw p0
.end method

.method public final setProxyFocusLocked(I)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 2290
    :goto_2
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_55

    .line 2291
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v2, :cond_52

    .line 2292
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 2293
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->setAccessibilityFocusedWindowLocked(I)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 2294
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmProxyDisplayAccessibilityFocusedWindow(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_28

    return v1

    :cond_28
    const/4 v3, -0x1

    const/16 v4, 0x80

    if-eq v0, v3, :cond_3d

    .line 2305
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 2306
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v5

    .line 2307
    invoke-static {v5, v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2306
    invoke-interface {v3, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2311
    :cond_3d
    invoke-static {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fputmProxyDisplayAccessibilityFocusedWindow(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;I)V

    .line 2313
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result p1

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmProxyDisplayAccessibilityFocusedWindow(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v0

    .line 2314
    invoke-static {p1, v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2313
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    return v1

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_55
    return v0
.end method

.method public startTrackingWindows(IZ)V
    .registers 5

    .line 1171
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1172
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-nez v1, :cond_15

    .line 1174
    new-instance v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_35

    :cond_15
    :goto_15
    if-eqz p2, :cond_23

    .line 1176
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Z

    move-result p2

    if-nez p2, :cond_23

    const/4 p2, 0x1

    .line 1177
    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fputmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;Z)V

    .line 1178
    iput-boolean p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    .line 1180
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isTrackingWindowsLocked()Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 1181
    monitor-exit v0

    return-void

    .line 1183
    :cond_2b
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->startTrackingWindowsLocked()V

    .line 1184
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1185
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_13

    throw p0
.end method

.method public stopTrackingDisplayProxy(I)V
    .registers 4

    .line 1210
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz p1, :cond_14

    const/4 v1, 0x0

    .line 1213
    invoke-static {p1, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fputmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;Z)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_19

    .line 1215
    :cond_14
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resetHasProxyIfNeededLocked()V

    .line 1216
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_12

    throw p0
.end method

.method public stopTrackingWindows(I)V
    .registers 4

    .line 1195
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1196
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v1, :cond_18

    .line 1198
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->stopTrackingWindowsLocked()V

    .line 1199
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1d

    .line 1201
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resetHasProxyIfNeededLocked()V

    .line 1202
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_16

    throw p0
.end method

.method public final traceIntConnEnabled()Z
    .registers 3

    .line 2145
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public final traceWMEnabled()Z
    .registers 3

    .line 2136
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v0, 0x200

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public unregisterIdLocked(I)V
    .registers 3

    .line 2194
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_b

    return-void

    .line 2198
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateLocked(Landroid/os/IBinder;)V

    .line 2199
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IIJII)V
    .registers 9

    const/16 v0, 0x20

    if-eq p5, v0, :cond_7b

    const/16 p1, 0x80

    if-eq p5, p1, :cond_66

    const p1, 0x8000

    if-eq p5, p1, :cond_45

    const/high16 p1, 0x10000

    if-eq p5, p1, :cond_12

    return-void

    .line 1696
    :cond_12
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1698
    :try_start_15
    iget-boolean p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    if-eqz p5, :cond_23

    invoke-virtual {p0, p2, p6}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearProxyFocusLocked(II)Z

    move-result p5

    if-eqz p5, :cond_23

    .line 1699
    monitor-exit p1

    return-void

    :catchall_21
    move-exception p0

    goto :goto_43

    .line 1701
    :cond_23
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    cmp-long p3, v0, p3

    const-wide/32 p4, 0x7fffffff

    if-nez p3, :cond_2e

    .line 1702
    iput-wide p4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 1706
    :cond_2e
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    cmp-long p3, v0, p4

    if-nez p3, :cond_41

    iget p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-ne p3, p2, :cond_41

    const/16 p2, 0x40

    if-eq p6, p2, :cond_41

    const/4 p2, -0x1

    .line 1709
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 1710
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 1712
    :cond_41
    monitor-exit p1

    return-void

    :goto_43
    monitor-exit p1
    :try_end_44
    .catchall {:try_start_15 .. :try_end_44} :catchall_21

    throw p0

    .line 1681
    :cond_45
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1684
    :try_start_48
    iget-boolean p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    if-eqz p5, :cond_56

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setProxyFocusLocked(I)Z

    move-result p5

    if-eqz p5, :cond_56

    .line 1685
    monitor-exit p1

    return-void

    :catchall_54
    move-exception p0

    goto :goto_64

    .line 1687
    :cond_56
    iget p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-eq p5, p2, :cond_60

    .line 1688
    invoke-virtual {p0, p5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 1689
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setAccessibilityFocusedWindowLocked(I)V

    .line 1691
    :cond_60
    iput-wide p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 1692
    monitor-exit p1

    return-void

    :goto_64
    monitor-exit p1
    :try_end_65
    .catchall {:try_start_48 .. :try_end_65} :catchall_54

    throw p0

    .line 1673
    :cond_66
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1674
    :try_start_69
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    if-eqz p1, :cond_77

    iget p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq p1, p2, :cond_77

    .line 1675
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setActiveWindowLocked(I)V

    goto :goto_77

    :catchall_75
    move-exception p0

    goto :goto_79

    .line 1677
    :cond_77
    :goto_77
    monitor-exit p3

    return-void

    :goto_79
    monitor-exit p3
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_75

    throw p0

    .line 1660
    :cond_7b
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1661
    :try_start_7e
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result p4

    if-nez p4, :cond_91

    .line 1662
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findFocusedWindowId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    if-ne p2, p1, :cond_91

    .line 1664
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    goto :goto_91

    :catchall_8f
    move-exception p0

    goto :goto_93

    .line 1667
    :cond_91
    :goto_91
    monitor-exit p3

    return-void

    :goto_93
    monitor-exit p3
    :try_end_94
    .catchall {:try_start_7e .. :try_end_94} :catchall_8f

    throw p0
.end method

.method public windowIdBelongsToDisplayType(II)Z
    .registers 10

    .line 180
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    and-int/lit8 v0, p2, 0x3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    return v1

    .line 188
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_f
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, v2, :cond_41

    .line 191
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v5, :cond_3e

    .line 193
    invoke-virtual {v5, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6

    if-eqz v6, :cond_3e

    .line 194
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Z

    move-result p0

    if-eqz p0, :cond_36

    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_34

    goto :goto_3a

    :cond_34
    move v1, v3

    goto :goto_3a

    :cond_36
    and-int/lit8 p0, p2, 0x1

    if-eqz p0, :cond_34

    .line 196
    :goto_3a
    monitor-exit v0

    return v1

    :catchall_3c
    move-exception p0

    goto :goto_43

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 199
    :cond_41
    monitor-exit v0

    return v3

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_3c

    throw p0
.end method
