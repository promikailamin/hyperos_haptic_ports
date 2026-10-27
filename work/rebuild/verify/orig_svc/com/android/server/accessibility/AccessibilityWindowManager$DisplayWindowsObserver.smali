.class public final Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# instance fields
.field public final mA11yWindowInfoById:Landroid/util/SparseArray;

.field public final mCachedWindowInfos:Ljava/util/List;

.field public final mDisplayId:I

.field public mHasWatchOutsideTouchWindow:Z

.field public mIsProxy:Z

.field public mProxyDisplayAccessibilityFocusedWindow:I

.field public mTrackingWindows:Z

.field public final mWindowInfoById:Landroid/util/SparseArray;

.field public mWindows:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProxyDisplayAccessibilityFocusedWindow(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindows(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsProxy(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProxyDisplayAccessibilityFocusedWindow(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 3

    .line 226
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 214
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 215
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    const/4 p1, -0x1

    .line 219
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    .line 230
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    return-void
.end method

.method public static isReportedWindowType(I)Z
    .registers 2

    .line 0
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

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public static windowMattersToUnaccountedSpaceComputation(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Z
    .registers 4

    .line 625
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTouchable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 626
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result v0

    const/16 v2, 0x7f2

    if-eq v0, v2, :cond_16

    .line 627
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTrustedOverlay()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    .line 631
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result p0

    const/16 v0, 0x7f0

    if-ne p0, v0, :cond_1f

    return v1

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final cacheWindows(Ljava/util/List;)V
    .registers 6

    .line 678
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 680
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    invoke-virtual {v1}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 682
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_31

    .line 684
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    .line 685
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-static {v2}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_31
    return-void
.end method

.method public final clearWindowsLocked()V
    .registers 4

    .line 761
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 762
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v1

    .line 765
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 768
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    const/4 v0, 0x0

    .line 769
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(IZLandroid/graphics/Region;)Z
    .registers 12

    .line 384
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 395
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 396
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    :goto_12
    if-ltz v0, :cond_45

    .line 398
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v4, :cond_2f

    .line 400
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_42

    .line 401
    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 402
    invoke-virtual {p3, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    move-object v4, p3

    if-eqz p2, :cond_42

    :goto_2d
    move v1, v3

    goto :goto_42

    .line 409
    :cond_2f
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_42

    .line 411
    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 412
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v5

    if-eqz v5, :cond_42

    goto :goto_2d

    :cond_42
    :goto_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_45
    return v1
.end method

.method public final createWindowInfoListLocked(Landroid/graphics/Point;Ljava/util/List;)Ljava/util/List;
    .registers 14

    .line 497
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 501
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 502
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 504
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v4

    .line 508
    new-instance v5, Landroid/graphics/Region;

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-direct {v5, v7, v7, v6, p1}, Landroid/graphics/Region;-><init>(IIII)V

    .line 509
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v7

    :cond_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    .line 510
    invoke-virtual {v6, v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInWindow(Landroid/graphics/Region;)V

    .line 512
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v8

    .line 513
    iget-object v9, v8, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v9, :cond_4b

    .line 514
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v10, v4, v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v9

    goto :goto_4c

    :cond_4b
    const/4 v9, -0x1

    .line 517
    :goto_4c
    invoke-virtual {p0, v6, v9, v2, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->windowMattersToAccessibilityLocked(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;ILandroid/graphics/Region;Landroid/graphics/Region;)Z

    move-result v10

    if-eqz v10, :cond_8a

    if-ltz v9, :cond_76

    .line 522
    iget-object v10, v8, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v10, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 523
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v10

    iput v10, v8, Landroid/view/WindowInfo;->layer:I

    .line 524
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowAttributes(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowAttributes;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowWithWindowAttributes(Landroid/view/WindowInfo;Landroid/view/accessibility/AccessibilityWindowAttributes;)V

    .line 526
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v8, v8, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_76
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->windowMattersToUnaccountedSpaceComputation(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 532
    invoke-virtual {v6, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInScreen(Landroid/graphics/Region;)V

    .line 533
    sget-object v8, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v3, v5, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 537
    :cond_84
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isFocused()Z

    move-result v6

    or-int/2addr p2, v6

    goto :goto_9f

    .line 538
    :cond_8a
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isUntouchableNavigationBar()Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 539
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getSystemBarInsetsFrame()Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_9f

    .line 545
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getSystemBarInsetsFrame()Landroid/graphics/Rect;

    move-result-object v6

    sget-object v8, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    .line 544
    invoke-virtual {v5, v6, v5, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 550
    :cond_9f
    :goto_9f
    invoke-virtual {v5}, Landroid/graphics/Region;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2d

    if-eqz p2, :cond_2d

    .line 556
    :cond_a7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_ab
    if-ge v7, p0, :cond_e0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v7, v7, 0x1

    check-cast p1, Landroid/view/WindowInfo;

    .line 557
    iget-object p2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c0

    const/4 p2, 0x0

    .line 558
    iput-object p2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 560
    :cond_c0
    iget-object p2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz p2, :cond_ab

    .line 561
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_ca
    if-ltz p2, :cond_ab

    .line 563
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dd

    .line 564
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_dd
    add-int/lit8 p2, p2, -0x1

    goto :goto_ca

    :cond_e0
    return-object v1
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1049
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    if-eqz p1, :cond_1d

    .line 1050
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Proxy accessibility focused window = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1054
    :cond_1d
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz p1, :cond_8a

    .line 1055
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_26
    if-ge p3, p1, :cond_87

    if-nez p3, :cond_40

    .line 1058
    const-string v0, "Display["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1059
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1060
    const-string v0, "] : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1061
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_40
    if-lez p3, :cond_4a

    const/16 v0, 0x2c

    .line 1064
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 1065
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1067
    :cond_4a
    const-string v0, "A11yWindow["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1068
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 1069
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/16 v1, 0x5d

    .line 1070
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 1071
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1072
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 1074
    const-string v1, "WindowInfo["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1075
    invoke-virtual {v0}, Landroid/view/WindowInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1076
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1077
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_84
    add-int/lit8 p3, p3, 0x1

    goto :goto_26

    .line 1081
    :cond_87
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_8a
    return-void
.end method

.method public findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2

    .line 293
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object p0
.end method

.method public findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;
    .registers 2

    .line 304
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInfo;

    return-object p0
.end method

.method public getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 315
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1d

    .line 317
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 318
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTypeForWindowManagerWindowType(I)I
    .registers 6

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_41

    const/4 v0, 0x2

    if-eq p1, v0, :cond_41

    const/4 v1, 0x3

    if-eq p1, v1, :cond_41

    const/4 v2, 0x4

    if-eq p1, v2, :cond_41

    const/16 v3, 0x3ed

    if-eq p1, v3, :cond_41

    const/16 v3, 0x7e1

    if-eq p1, v3, :cond_40

    const/16 v3, 0x7e8

    if-eq p1, v3, :cond_40

    const/16 v3, 0x7f0

    if-eq p1, v3, :cond_3f

    const/16 v2, 0x7f2

    if-eq p1, v2, :cond_3d

    const/16 v2, 0x7f4

    if-eq p1, v2, :cond_40

    const/16 v2, 0x7e3

    if-eq p1, v2, :cond_40

    const/16 v2, 0x7e4

    if-eq p1, v2, :cond_40

    packed-switch p1, :pswitch_data_42

    packed-switch p1, :pswitch_data_4e

    packed-switch p1, :pswitch_data_5a

    packed-switch p1, :pswitch_data_6e

    const/4 p0, -0x1

    return p0

    :pswitch_3a
    const/4 p0, 0x6

    return p0

    :pswitch_3c
    return v0

    :cond_3d
    const/4 p0, 0x5

    return p0

    :cond_3f
    return v2

    :cond_40
    :pswitch_40
    return v1

    :cond_41
    :pswitch_41
    return p0

    :pswitch_data_42
    .packed-switch 0x3e8
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x7d0
        :pswitch_40
        :pswitch_40
        :pswitch_41
        :pswitch_40
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x7d5
        :pswitch_41
        :pswitch_40
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_3c
        :pswitch_41
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x7f6
        :pswitch_40
        :pswitch_3a
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method

.method public getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;
    .registers 7

    .line 422
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInfo;

    if-eqz p1, :cond_41

    .line 423
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-eqz v0, :cond_41

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 425
    :goto_14
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 426
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    if-eqz v2, :cond_3d

    .line 427
    iget v3, v2, Landroid/view/WindowInfo;->layer:I

    iget v4, p1, Landroid/view/WindowInfo;->layer:I

    if-ge v3, v4, :cond_3d

    iget-boolean v2, v2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v2, :cond_3d

    .line 429
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_40
    return-object v0

    .line 434
    :cond_41
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getWindowListLocked()Ljava/util/List;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    return-object p0
.end method

.method public isTrackingWindowsLocked()Z
    .registers 1

    .line 273
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    return p0
.end method

.method public onAccessibilityWindowsChanged(ZILandroid/os/IBinder;Landroid/graphics/Point;Ljava/util/List;)V
    .registers 7

    .line 451
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 453
    :try_start_7
    invoke-virtual {p0, p4, p5}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->createWindowInfoListLocked(Landroid/graphics/Point;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    if-nez p1, :cond_16

    .line 470
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->shouldUpdateWindowsLocked(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_46

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_48

    .line 471
    :cond_16
    :goto_16
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 472
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$misProxyed(Lcom/android/server/accessibility/AccessibilityWindowManager;I)Z

    move-result p1

    if-nez p1, :cond_28

    .line 473
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmLastNonProxyTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 475
    :cond_28
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/os/IBinder;)V

    .line 481
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->cacheWindows(Ljava/util/List;)V

    .line 483
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 486
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 492
    :cond_46
    monitor-exit v0

    return-void

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_14

    throw p0
.end method

.method public final populateReportedWindowLocked(ILandroid/view/WindowInfo;Landroid/util/SparseArray;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 10

    .line 941
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v0

    .line 942
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 944
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 945
    iget v2, p2, Landroid/view/WindowInfo;->type:I

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getTypeForWindowManagerWindowType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 946
    iget v2, p2, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 947
    iget-boolean v2, p2, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 948
    iget-object v2, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setRegionInScreen(Landroid/graphics/Region;)V

    .line 949
    iget-object v2, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 950
    iget-wide v2, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    .line 951
    iget-boolean v2, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 952
    iget v2, p2, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setDisplayId(I)V

    .line 953
    iget v2, p2, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTaskId(I)V

    .line 954
    iget-object v2, p2, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLocales(Landroid/os/LocaleList;)V

    .line 956
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v2

    if-ltz v2, :cond_52

    .line 958
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 961
    :cond_52
    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_73

    .line 962
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_5b
    if-ge v3, v2, :cond_73

    .line 964
    iget-object v4, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 965
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5, p1, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v4

    if-ltz v4, :cond_70

    .line 967
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 972
    :cond_73
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez p0, :cond_83

    .line 974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    return-object v1

    .line 976
    :cond_83
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    .line 977
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 978
    iget-object p2, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1, p2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 979
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTransitionTimeMillis()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    return-object v1

    .line 981
    :cond_9b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    return-object v1
.end method

.method public final sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V
    .registers 10

    .line 905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 907
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_30

    .line 909
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 910
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2d

    .line 911
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 912
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    const/4 v6, 0x2

    .line 911
    invoke-static {v5, v4, v6}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 917
    :cond_30
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v2

    :goto_37
    if-ge v1, p1, :cond_72

    .line 919
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 920
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v4, :cond_5c

    .line 922
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 923
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    const/4 v5, 0x1

    .line 922
    invoke-static {v4, v3, v5}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 925
    :cond_5c
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v4

    if-eqz v4, :cond_6f

    .line 927
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 928
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    .line 927
    invoke-static {v5, v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6f
    :goto_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 933
    :cond_72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_76
    if-ge v2, p1, :cond_8a

    .line 935
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityEventSender(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-interface {p2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_8a
    return-void
.end method

.method public setAccessibilityFocusedWindowLocked(I)Z
    .registers 8

    .line 358
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 359
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_b
    if-ge v2, v0, :cond_26

    .line 361
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 362
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_20

    const/4 v3, 0x1

    .line 363
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    goto :goto_23

    .line 366
    :cond_20
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_26
    return v3

    :cond_27
    return v1
.end method

.method public setActiveWindowLocked(I)Z
    .registers 8

    .line 334
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 335
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_b
    if-ge v2, v0, :cond_26

    .line 337
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 338
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_20

    const/4 v3, 0x1

    .line 339
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_23

    .line 342
    :cond_20
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_26
    return v3

    :cond_27
    return v1
.end method

.method public final shouldUpdateWindowsLocked(Ljava/util/List;)Z
    .registers 8

    .line 647
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 655
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_e

    return v2

    .line 658
    :cond_e
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    :cond_1d
    move v1, v3

    :goto_1e
    if-ge v1, v0, :cond_38

    .line 663
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    .line 664
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowInfo;

    .line 668
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v4

    if-eqz v4, :cond_35

    return v2

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_38
    return v3
.end method

.method public startTrackingWindowsLocked()V
    .registers 4

    .line 237
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mtraceWMEnabled(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 243
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setWindowsForAccessibilityCallback"

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mlogTraceWM(Lcom/android/server/accessibility/AccessibilityWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_32
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    :cond_3d
    return-void
.end method

.method public stopTrackingWindowsLocked()V
    .registers 4

    .line 255
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v0, :cond_3e

    .line 256
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mtraceWMEnabled(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 257
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";callback=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setWindowsForAccessibilityCallback"

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mlogTraceWM(Lcom/android/server/accessibility/AccessibilityWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_2c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 263
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->clearWindowsLocked()V

    :cond_3e
    return-void
.end method

.method public final updateWindowWithWindowAttributes(Landroid/view/WindowInfo;Landroid/view/accessibility/AccessibilityWindowAttributes;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 642
    :cond_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityWindowAttributes;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 643
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityWindowAttributes;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    iput-object p0, p1, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    return-void
.end method

.method public final updateWindowsLocked(ILjava/util/List;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 779
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-nez v2, :cond_f

    .line 780
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 783
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 784
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 787
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 788
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    const/4 v4, 0x0

    move v5, v4

    .line 790
    :goto_28
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3e

    .line 791
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInfo;

    invoke-virtual {v6}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 793
    :cond_3e
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 794
    iput-boolean v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 796
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    .line 797
    iget v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v7

    if-ne v6, v7, :cond_55

    const/4 v6, 0x1

    goto :goto_56

    :cond_55
    move v6, v4

    .line 799
    :goto_56
    iget v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v7, v9, :cond_6c

    iget-boolean v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    if-eqz v7, :cond_6a

    iget v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    if-eq v7, v10, :cond_6a

    goto :goto_6c

    :cond_6a
    move v7, v4

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 v7, 0x1

    :goto_6d
    if-eqz v6, :cond_91

    if-lez v5, :cond_7f

    .line 808
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v9, v1, v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v11

    invoke-static {v9, v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    goto :goto_84

    .line 811
    :cond_7f
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 814
    :goto_84
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v9

    if-nez v9, :cond_91

    .line 815
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 828
    :cond_91
    iget-boolean v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    if-eqz v9, :cond_98

    .line 829
    iget v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    goto :goto_9e

    .line 830
    :cond_98
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v9

    :goto_9e
    if-eqz v7, :cond_a4

    if-eq v9, v10, :cond_a4

    const/4 v10, 0x1

    goto :goto_a5

    :cond_a4
    move v10, v4

    :goto_a5
    if-lez v5, :cond_166

    .line 837
    iget-boolean v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v11, :cond_10f

    move v11, v4

    const/4 v12, 0x1

    :goto_ad
    if-ge v11, v5, :cond_110

    move-object/from16 v13, p2

    .line 839
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowInfo;

    .line 841
    invoke-virtual {v0, v1, v14, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->populateReportedWindowLocked(ILandroid/view/WindowInfo;Landroid/util/SparseArray;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v15

    add-int/lit8 v16, v5, -0x1

    .line 844
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v17

    sub-int v4, v16, v17

    invoke-virtual {v15, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 846
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    .line 847
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v16

    if-eqz v16, :cond_ed

    if-eqz v6, :cond_ed

    .line 848
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v8

    if-nez v8, :cond_e4

    .line 851
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v8, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    const/4 v8, 0x1

    .line 852
    invoke-virtual {v15, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_ed

    .line 853
    :cond_e4
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v8

    if-ne v4, v8, :cond_ed

    const/4 v12, 0x0

    .line 857
    :cond_ed
    :goto_ed
    iget-boolean v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-nez v8, :cond_f8

    iget-boolean v8, v14, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v8, :cond_f8

    const/4 v8, 0x1

    .line 858
    iput-boolean v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 860
    :cond_f8
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 862
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-static {v14}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v14

    invoke-virtual {v8, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_ad

    :cond_10f
    const/4 v12, 0x1

    .line 865
    :cond_110
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v6, :cond_149

    .line 867
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_12b

    if-eqz v12, :cond_12b

    .line 868
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    :cond_12b
    const/4 v4, 0x0

    :goto_12c
    if-ge v4, v1, :cond_149

    .line 873
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 874
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v8

    if-ne v6, v8, :cond_146

    const/4 v8, 0x1

    .line 875
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    :cond_146
    add-int/lit8 v4, v4, 0x1

    goto :goto_12c

    :cond_149
    if-eqz v7, :cond_166

    const/4 v4, 0x0

    :goto_14c
    if-ge v4, v1, :cond_166

    .line 881
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 882
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, v9, :cond_162

    const/4 v8, 0x1

    .line 883
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    const/4 v4, 0x0

    goto :goto_168

    :cond_162
    const/4 v8, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_14c

    :cond_166
    const/4 v8, 0x1

    move v4, v10

    .line 891
    :goto_168
    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 893
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    :goto_170
    if-ltz v1, :cond_17e

    .line 895
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_170

    :cond_17e
    if-eqz v4, :cond_185

    .line 899
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0, v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mclearAccessibilityFocusLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    :cond_185
    return-void
.end method

.method public final windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .registers 8

    const/4 p0, 0x0

    if-ne p1, p2, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x1

    if-nez p1, :cond_8

    return v0

    :cond_8
    if-nez p2, :cond_b

    return v0

    .line 699
    :cond_b
    iget v1, p1, Landroid/view/WindowInfo;->type:I

    iget v2, p2, Landroid/view/WindowInfo;->type:I

    if-eq v1, v2, :cond_12

    return v0

    .line 702
    :cond_12
    iget-boolean v1, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v2, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v1, v2, :cond_19

    return v0

    .line 705
    :cond_19
    iget-object v1, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v1, :cond_22

    .line 706
    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_2b

    return v0

    .line 709
    :cond_22
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v0

    .line 712
    :cond_2b
    iget-object v1, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v1, :cond_34

    .line 713
    iget-object v1, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_3d

    return v0

    .line 716
    :cond_34
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v0

    .line 719
    :cond_3d
    iget-object v1, p1, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-nez v1, :cond_46

    .line 720
    iget-object v1, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-eqz v1, :cond_4f

    return v0

    .line 723
    :cond_46
    iget-object v2, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    return v0

    .line 726
    :cond_4f
    iget-object v1, p1, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    iget-object v2, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    return v0

    .line 729
    :cond_5a
    iget-object v1, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v1, :cond_69

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_69

    .line 730
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    return v0

    .line 733
    :cond_69
    iget-object v1, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_74

    return v0

    .line 736
    :cond_74
    iget-wide v1, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iget-wide v3, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7d

    return v0

    .line 739
    :cond_7d
    iget-boolean v1, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iget-boolean v2, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    if-eq v1, v2, :cond_84

    return v0

    .line 742
    :cond_84
    iget-boolean v1, p1, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iget-boolean v2, p2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eq v1, v2, :cond_8b

    return v0

    .line 745
    :cond_8b
    iget v1, p1, Landroid/view/WindowInfo;->displayId:I

    iget v2, p2, Landroid/view/WindowInfo;->displayId:I

    if-eq v1, v2, :cond_92

    return v0

    .line 748
    :cond_92
    iget v1, p1, Landroid/view/WindowInfo;->taskId:I

    iget v2, p2, Landroid/view/WindowInfo;->taskId:I

    if-eq v1, v2, :cond_99

    return v0

    .line 751
    :cond_99
    iget-object p1, p1, Landroid/view/WindowInfo;->mTransformMatrix:[F

    iget-object p2, p2, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-nez p1, :cond_a4

    return v0

    :cond_a4
    return p0
.end method

.method public final windowMattersToAccessibilityLocked(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;ILandroid/graphics/Region;Landroid/graphics/Region;)Z
    .registers 9

    .line 576
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 583
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTouchable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    .line 584
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result v0

    const/16 v3, 0x7f2

    if-eq v0, v3, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isPIPMenu()Z

    move-result v0

    if-nez v0, :cond_1e

    return v2

    .line 588
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isEmbeddedHierarchyWindowsLocked(I)Z

    move-result p2

    if-eqz p2, :cond_27

    return v2

    .line 593
    :cond_27
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTmpRegion(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/graphics/Region;

    move-result-object p0

    sget-object p2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p4, p3, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result p0

    if-nez p0, :cond_36

    return v2

    .line 598
    :cond_36
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isReportedWindowType(I)Z

    move-result p0

    if-eqz p0, :cond_41

    return v1

    :cond_41
    return v2
.end method
