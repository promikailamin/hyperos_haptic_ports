.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mA11yWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

.field private final mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

.field private final mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mDisplayId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempA11yWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempRegion2:Landroid/graphics/Region;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInitialized(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;Lcom/android/server/wm/AccessibilityWindowsPopulator;)V
    .registers 7
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayId"    # I
    .param p3, "callback"    # Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;
    .param p4, "accessibilityWindowsPopulator"    # Lcom/android/server/wm/AccessibilityWindowsPopulator;

    .line 1478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempA11yWindows:Ljava/util/List;

    .line 1450
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1452
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 1454
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1456
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1458
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion2:Landroid/graphics/Region;

    .line 1479
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1480
    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1481
    iput p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    .line 1482
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 1483
    nop

    .line 1484
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController;->getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 1485
    nop

    .line 1486
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 1487
    iput-object p4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mA11yWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    .line 1488
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 1489
    return-void
.end method

.method private static addPopulatedWindowInfo(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;Ljava/util/List;Ljava/util/Set;)V
    .registers 6
    .param p0, "a11yWindow"    # Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .param p1, "regionInScreen"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;",
            "Landroid/graphics/Region;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1701
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    .local p3, "tokenOut":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v0

    .line 1702
    .local v0, "window":Landroid/view/WindowInfo;
    iget-object v1, v0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1703
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 1704
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1705
    iget-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1706
    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 1709
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1710
    .local v0, "windowCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_14

    .line 1711
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1710
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1713
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method private getTopFocusWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1729
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private static isReportedWindowType(I)Z
    .registers 2
    .param p0, "windowType"    # I

    .line 1716
    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e5

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7ea

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e0

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e2

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method private updateUnaccountedSpace(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;)V
    .registers 6
    .param p1, "a11yWindow"    # Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .param p2, "unaccountedSpace"    # Landroid/graphics/Region;

    .line 1681
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result v0

    const/16 v1, 0x7f0

    if-eq v0, v1, :cond_23

    .line 1686
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion2:Landroid/graphics/Region;

    .line 1687
    .local v0, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInScreen(Landroid/graphics/Region;)V

    .line 1688
    sget-object v1, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, p2, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1691
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1692
    .local v1, "letterboxBounds":Landroid/graphics/Region;
    invoke-virtual {p1, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->setLetterBoxBoundsIfNeeded(Landroid/graphics/Region;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1693
    sget-object v2, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v1, p2, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1697
    .end local v0    # "touchableRegion":Landroid/graphics/Region;
    .end local v1    # "letterboxBounds":Landroid/graphics/Region;
    :cond_23
    return-void
.end method

.method private windowMattersToAccessibility(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;Landroid/graphics/Region;)Z
    .registers 8
    .param p1, "a11yWindow"    # Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .param p2, "regionInScreen"    # Landroid/graphics/Region;
    .param p3, "unaccountedSpace"    # Landroid/graphics/Region;

    .line 1649
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->ignoreRecentsAnimationForAccessibility()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1650
    return v1

    .line 1653
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isFocused()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 1654
    return v2

    .line 1660
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTouchable()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1661
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result v0

    const/16 v3, 0x7f2

    if-eq v0, v3, :cond_25

    .line 1662
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isPIPMenu()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1663
    return v1

    .line 1667
    :cond_25
    invoke-virtual {p3, p2}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Region;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1668
    return v1

    .line 1672
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1673
    return v2

    .line 1676
    :cond_37
    return v1
.end method

.method private windowMattersToUnaccountedSpaceComputation(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Z
    .registers 5
    .param p1, "a11yWindow"    # Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    .line 1635
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTouchable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 1636
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result v0

    const/16 v2, 0x7f2

    if-eq v0, v2, :cond_16

    .line 1637
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTrustedOverlay()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1638
    return v1

    .line 1641
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result v0

    const/16 v2, 0x7f0

    if-ne v0, v2, :cond_1f

    .line 1642
    return v1

    .line 1644
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method computeChangedWindows(Z)V
    .registers 25
    .param p1, "forceSend"    # Z

    .line 1517
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v3, 0x400

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1518
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-string v5, "WindowManager.computeChangedWindows"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceSend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v3, v4, v6}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1525
    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1527
    .local v3, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    const/4 v4, 0x0

    .line 1529
    .local v4, "topFocusedWindowToken":Landroid/os/IBinder;
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1534
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1535
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_17d

    .line 1536
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_44

    .line 1537
    :try_start_3f
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->getTargetAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_185

    goto :goto_48

    .line 1538
    :cond_44
    :try_start_44
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->getTopFocusWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_17d

    :goto_48
    nop

    .line 1539
    .local v6, "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    if-nez v6, :cond_50

    .line 1543
    :try_start_4b
    monitor-exit v5
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_185

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1546
    :cond_50
    :try_start_50
    iget-object v7, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v8, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v7
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_17d

    .line 1547
    .local v7, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v7, :cond_68

    .line 1549
    :try_start_5c
    const-string v8, "WindowManager"

    const-string v9, "display content is null, should be created later"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    monitor-exit v5
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_185

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1552
    :cond_68
    :try_start_68
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v8

    .line 1553
    .local v8, "display":Landroid/view/Display;
    iget-object v9, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1554
    iget-object v9, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    .line 1555
    .local v9, "screenWidth":I
    iget-object v10, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    .line 1557
    .local v10, "screenHeight":I
    iget-object v11, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1558
    .local v11, "unaccountedSpace":Landroid/graphics/Region;
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v12, v9, v10}, Landroid/graphics/Region;->set(IIII)Z

    .line 1560
    iget-object v12, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempA11yWindows:Ljava/util/List;

    .line 1561
    .local v12, "visibleWindows":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;>;"
    iget-object v13, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mA11yWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    iget v14, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v13, v14, v12}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->populateVisibleWindowsOnScreenLocked(ILjava/util/List;)V

    .line 1563
    iget-object v13, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1564
    .local v13, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v13}, Ljava/util/Set;->clear()V

    .line 1566
    const/4 v14, 0x0

    .line 1568
    .local v14, "focusedWindowAdded":Z
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    .line 1571
    .local v15, "visibleWindowCount":I
    const/16 v16, 0x0

    move/from16 v22, v16

    move-object/from16 v16, v0

    move/from16 v0, v22

    .local v0, "i":I
    .local v16, "controller":Lcom/android/server/wm/RecentsAnimationController;
    :goto_9a
    if-ge v0, v15, :cond_fd

    .line 1572
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    move-object/from16 v18, v17

    .line 1573
    .local v18, "a11yWindow":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    new-instance v17, Landroid/graphics/Region;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Region;-><init>()V
    :try_end_a9
    .catchall {:try_start_68 .. :try_end_a9} :catchall_17d

    move-object/from16 v19, v17

    .line 1574
    .local v19, "regionInWindow":Landroid/graphics/Region;
    move-object/from16 v17, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v19

    .end local v19    # "regionInWindow":Landroid/graphics/Region;
    .local v4, "a11yWindow":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .local v8, "regionInWindow":Landroid/graphics/Region;
    .local v17, "topFocusedWindowToken":Landroid/os/IBinder;
    .local v18, "display":Landroid/view/Display;
    :try_start_b3
    invoke-virtual {v4, v8}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInWindow(Landroid/graphics/Region;)V

    .line 1575
    invoke-direct {v1, v4, v8, v11}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowMattersToAccessibility(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;Landroid/graphics/Region;)Z

    move-result v19

    if-eqz v19, :cond_d3

    .line 1577
    invoke-static {v4, v8, v3, v13}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->addPopulatedWindowInfo(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;Ljava/util/List;Ljava/util/Set;)V

    .line 1578
    invoke-direct {v1, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowMattersToUnaccountedSpaceComputation(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Z

    move-result v19

    if-eqz v19, :cond_c8

    .line 1579
    invoke-direct {v1, v4, v11}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->updateUnaccountedSpace(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;)V

    .line 1581
    :cond_c8
    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isFocused()Z

    move-result v19

    or-int v14, v14, v19

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    goto :goto_eb

    .line 1582
    :cond_d3
    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isUntouchableNavigationBar()Z

    move-result v19

    if-eqz v19, :cond_e7

    .line 1587
    move-object/from16 v19, v4

    .end local v4    # "a11yWindow":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .local v19, "a11yWindow":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController;->getNavBarInsets(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v20, v7

    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v20, "dc":Lcom/android/server/wm/DisplayContent;
    sget-object v7, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v4, v11, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_eb

    .line 1582
    .end local v19    # "a11yWindow":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .end local v20    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v4    # "a11yWindow":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .restart local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_e7
    move-object/from16 v19, v4

    move-object/from16 v20, v7

    .line 1591
    .end local v4    # "a11yWindow":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v19    # "a11yWindow":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .restart local v20    # "dc":Lcom/android/server/wm/DisplayContent;
    :goto_eb
    invoke-virtual {v11}, Landroid/graphics/Region;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f4

    if-eqz v14, :cond_f4

    .line 1592
    goto :goto_103

    .line 1571
    .end local v8    # "regionInWindow":Landroid/graphics/Region;
    .end local v19    # "a11yWindow":Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    :cond_f4
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v17

    move-object/from16 v8, v18

    move-object/from16 v7, v20

    goto :goto_9a

    .end local v17    # "topFocusedWindowToken":Landroid/os/IBinder;
    .end local v18    # "display":Landroid/view/Display;
    .end local v20    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v4, "topFocusedWindowToken":Landroid/os/IBinder;
    .restart local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v8, "display":Landroid/view/Display;
    :cond_fd
    move-object/from16 v17, v4

    move-object/from16 v20, v7

    move-object/from16 v18, v8

    .line 1597
    .end local v0    # "i":I
    .end local v4    # "topFocusedWindowToken":Landroid/os/IBinder;
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "display":Landroid/view/Display;
    .restart local v17    # "topFocusedWindowToken":Landroid/os/IBinder;
    .restart local v18    # "display":Landroid/view/Display;
    .restart local v20    # "dc":Lcom/android/server/wm/DisplayContent;
    :goto_103
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1598
    .local v0, "windowCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_108
    if-ge v4, v0, :cond_14f

    .line 1599
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowInfo;

    .line 1600
    .local v7, "window":Landroid/view/WindowInfo;
    iget-object v8, v7, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v13, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11b

    .line 1601
    const/4 v8, 0x0

    iput-object v8, v7, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1603
    :cond_11b
    iget-object v8, v7, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v8, :cond_148

    .line 1604
    iget-object v8, v7, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 1605
    .local v8, "childTokenCount":I
    add-int/lit8 v19, v8, -0x1

    move/from16 v21, v0

    move/from16 v0, v19

    .local v0, "j":I
    .local v21, "windowCount":I
    :goto_12b
    if-ltz v0, :cond_145

    .line 1606
    move/from16 v19, v8

    .end local v8    # "childTokenCount":I
    .local v19, "childTokenCount":I
    iget-object v8, v7, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v13, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_140

    .line 1607
    iget-object v8, v7, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1605
    :cond_140
    add-int/lit8 v0, v0, -0x1

    move/from16 v8, v19

    goto :goto_12b

    .end local v19    # "childTokenCount":I
    .restart local v8    # "childTokenCount":I
    :cond_145
    move/from16 v19, v8

    .end local v8    # "childTokenCount":I
    .restart local v19    # "childTokenCount":I
    goto :goto_14a

    .line 1603
    .end local v19    # "childTokenCount":I
    .end local v21    # "windowCount":I
    .local v0, "windowCount":I
    :cond_148
    move/from16 v21, v0

    .line 1598
    .end local v0    # "windowCount":I
    .end local v7    # "window":Landroid/view/WindowInfo;
    .restart local v21    # "windowCount":I
    :goto_14a
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v21

    goto :goto_108

    .end local v21    # "windowCount":I
    .restart local v0    # "windowCount":I
    :cond_14f
    move/from16 v21, v0

    .line 1614
    .end local v0    # "windowCount":I
    .end local v4    # "i":I
    .restart local v21    # "windowCount":I
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1615
    invoke-interface {v13}, Ljava/util/Set;->clear()V

    .line 1618
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 1619
    .local v0, "topFocusedDisplayId":I
    iget-object v4, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4
    :try_end_169
    .catchall {:try_start_b3 .. :try_end_169} :catchall_179

    .line 1620
    .end local v6    # "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    .end local v9    # "screenWidth":I
    .end local v10    # "screenHeight":I
    .end local v11    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v12    # "visibleWindows":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;>;"
    .end local v13    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v14    # "focusedWindowAdded":Z
    .end local v15    # "visibleWindowCount":I
    .end local v16    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    .end local v17    # "topFocusedWindowToken":Landroid/os/IBinder;
    .end local v18    # "display":Landroid/view/Display;
    .end local v20    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v21    # "windowCount":I
    .local v4, "topFocusedWindowToken":Landroid/os/IBinder;
    :try_start_169
    monitor-exit v5
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_185

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1621
    iget-object v5, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    invoke-interface {v5, v2, v0, v4, v3}, Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(ZILandroid/os/IBinder;Ljava/util/List;)V

    .line 1625
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    .line 1626
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    .line 1627
    return-void

    .line 1620
    .end local v0    # "topFocusedDisplayId":I
    .end local v4    # "topFocusedWindowToken":Landroid/os/IBinder;
    .restart local v17    # "topFocusedWindowToken":Landroid/os/IBinder;
    :catchall_179
    move-exception v0

    move-object/from16 v4, v17

    goto :goto_180

    .end local v17    # "topFocusedWindowToken":Landroid/os/IBinder;
    .restart local v4    # "topFocusedWindowToken":Landroid/os/IBinder;
    :catchall_17d
    move-exception v0

    move-object/from16 v17, v4

    :goto_180
    :try_start_180
    monitor-exit v5
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_185

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_185
    move-exception v0

    goto :goto_180
.end method

.method performComputeChangedWindows(Z)V
    .registers 7
    .param p1, "forceSend"    # Z

    .line 1492
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1493
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceSend="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager.performComputeChangedWindows"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1496
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1497
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 1498
    return-void
.end method

.method scheduleComputeChangedWindows()V
    .registers 5

    .line 1501
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1502
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-string v3, "WindowManager.scheduleComputeChangedWindows"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 1505
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1506
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1509
    :cond_21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowsForAccessibilityObserver{mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
