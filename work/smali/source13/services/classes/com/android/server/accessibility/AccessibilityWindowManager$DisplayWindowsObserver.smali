.class final Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayWindowsObserver"
.end annotation


# instance fields
.field private final mA11yWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedWindowInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayId:I

.field private mHasWatchOutsideTouchWindow:Z

.field private mTrackingWindows:Z

.field private final mWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    return p0
.end method

.method constructor <init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 3
    .param p2, "displayId"    # I

    .line 141
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 132
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    .line 135
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 142
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 143
    return-void
.end method

.method private cacheWindows(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 409
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 410
    .local v0, "oldWindowCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 411
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 410
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 413
    .end local v1    # "i":I
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 414
    .local v1, "newWindowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v1, :cond_31

    .line 415
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 416
    .local v3, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-static {v3}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v3    # "newWindow":Landroid/view/WindowInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 418
    .end local v2    # "i":I
    :cond_31
    return-void
.end method

.method private clearWindowsLocked()V
    .registers 4

    .line 492
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 493
    .local v0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v1

    .line 496
    .local v1, "activeWindowId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 499
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 500
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 501
    return-void
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .registers 3
    .param p1, "windowType"    # I

    .line 730
    sparse-switch p1, :sswitch_data_12

    .line 782
    const/4 v0, -0x1

    return v0

    .line 778
    :sswitch_5
    const/4 v0, 0x6

    return v0

    .line 770
    :sswitch_7
    const/4 v0, 0x5

    return v0

    .line 774
    :sswitch_9
    const/4 v0, 0x4

    return v0

    .line 748
    :sswitch_b
    const/4 v0, 0x2

    return v0

    .line 766
    :sswitch_d
    const/4 v0, 0x3

    return v0

    .line 744
    :sswitch_f
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_f
        0x3 -> :sswitch_f
        0x4 -> :sswitch_f
        0x3e8 -> :sswitch_f
        0x3e9 -> :sswitch_f
        0x3ea -> :sswitch_f
        0x3eb -> :sswitch_f
        0x3ed -> :sswitch_f
        0x7d0 -> :sswitch_d
        0x7d1 -> :sswitch_d
        0x7d2 -> :sswitch_f
        0x7d3 -> :sswitch_d
        0x7d5 -> :sswitch_f
        0x7d6 -> :sswitch_d
        0x7d7 -> :sswitch_f
        0x7d8 -> :sswitch_d
        0x7d9 -> :sswitch_d
        0x7da -> :sswitch_d
        0x7db -> :sswitch_b
        0x7dc -> :sswitch_f
        0x7e1 -> :sswitch_d
        0x7e3 -> :sswitch_d
        0x7e4 -> :sswitch_d
        0x7e8 -> :sswitch_d
        0x7f0 -> :sswitch_9
        0x7f2 -> :sswitch_7
        0x7f4 -> :sswitch_d
        0x7f6 -> :sswitch_d
        0x7f7 -> :sswitch_5
        0x7f8 -> :sswitch_d
        0x7f9 -> :sswitch_d
    .end sparse-switch
.end method

.method private isEmbeddedHierarchyWindowsLocked(I)Z
    .registers 6
    .param p1, "windowId"    # I

    .line 715
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowIdMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 716
    .local v0, "leashToken":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 717
    return v1

    .line 720
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmHostEmbeddedMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 721
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmHostEmbeddedMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 722
    const/4 v1, 0x1

    return v1

    .line 720
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 726
    .end local v2    # "i":I
    :cond_34
    return v1
.end method

.method private populateReportedWindowLocked(ILandroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "window"    # Landroid/view/WindowInfo;

    .line 669
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v0

    .line 670
    .local v0, "windowId":I
    const/4 v1, 0x0

    if-gez v0, :cond_c

    .line 671
    return-object v1

    .line 675
    :cond_c
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmHostEmbeddedMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_1f

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isEmbeddedHierarchyWindowsLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 676
    return-object v1

    .line 678
    :cond_1f
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 680
    .local v1, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 681
    iget v2, p2, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getTypeForWindowManagerWindowType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 682
    iget v2, p2, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 683
    iget-boolean v2, p2, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 684
    iget-object v2, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setRegionInScreen(Landroid/graphics/Region;)V

    .line 685
    iget-object v2, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 686
    iget-wide v2, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    .line 687
    iget-boolean v2, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 688
    iget v2, p2, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setDisplayId(I)V

    .line 689
    iget v2, p2, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTaskId(I)V

    .line 691
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v2

    .line 692
    .local v2, "parentId":I
    if-ltz v2, :cond_64

    .line 693
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 696
    :cond_64
    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v3, :cond_87

    .line 697
    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 698
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6f
    if-ge v4, v3, :cond_87

    .line 699
    iget-object v5, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 700
    .local v5, "childToken":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v6, p1, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v6

    .line 701
    .local v6, "childId":I
    if-ltz v6, :cond_84

    .line 702
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 698
    .end local v5    # "childToken":Landroid/os/IBinder;
    .end local v6    # "childId":I
    :cond_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 707
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_87
    iget v3, p2, Landroid/view/WindowInfo;->globalScale:F

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setGlobalScale(F)V

    .line 708
    iget-object v3, p2, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransformMatrix([F)V

    .line 711
    return-object v1
.end method

.method private sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 633
    .local p1, "oldWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .local p2, "oldWindowsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 636
    .local v1, "oldWindowsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2e

    .line 637
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 638
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2b

    .line 639
    nop

    .line 640
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    const/4 v5, 0x2

    .line 639
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 645
    .end local v2    # "i":I
    :cond_2e
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 646
    .local v2, "newWindowCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    if-ge v3, v2, :cond_6e

    .line 647
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 648
    .local v4, "newWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 649
    .local v5, "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v5, :cond_59

    .line 650
    nop

    .line 651
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    .line 650
    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 653
    :cond_59
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v6

    .line 654
    .local v6, "changes":I
    if-eqz v6, :cond_6b

    .line 655
    nop

    .line 656
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    .line 655
    invoke-static {v7, v6}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    .end local v4    # "newWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5    # "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v6    # "changes":I
    :cond_6b
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 661
    .end local v3    # "i":I
    :cond_6e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 662
    .local v3, "numEvents":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_73
    if-ge v4, v3, :cond_87

    .line 663
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityEventSender(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityEvent;

    invoke-interface {v5, v6}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 662
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 665
    .end local v4    # "i":I
    :cond_87
    return-void
.end method

.method private shouldUpdateWindowsLocked(ZLjava/util/List;)Z
    .registers 9
    .param p1, "forceSend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)Z"
        }
    .end annotation

    .line 380
    .local p2, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 381
    return v0

    .line 384
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 386
    .local v1, "windowCount":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_11

    .line 388
    return v0

    .line 389
    :cond_11
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 393
    :cond_1f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v1, :cond_3a

    .line 394
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 395
    .local v3, "oldWindow":Landroid/view/WindowInfo;
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    .line 399
    .local v4, "newWindow":Landroid/view/WindowInfo;
    invoke-direct {p0, v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 400
    return v0

    .line 393
    .end local v3    # "oldWindow":Landroid/view/WindowInfo;
    .end local v4    # "newWindow":Landroid/view/WindowInfo;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 405
    .end local v2    # "i":I
    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method private updateWindowsLocked(ILjava/util/List;)V
    .registers 19
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 510
    .local p2, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-nez v2, :cond_f

    .line 511
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 514
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 515
    .local v2, "oldWindowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 516
    .local v3, "oldWindowsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    const/4 v4, 0x0

    .line 518
    .local v4, "shouldClearAccessibilityFocus":Z
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 519
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 521
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_28
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3e

    .line 522
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInfo;

    invoke-virtual {v6}, Landroid/view/WindowInfo;->recycle()V

    .line 521
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 524
    .end local v5    # "i":I
    :cond_3e
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 525
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 527
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    .line 528
    .local v6, "windowCount":I
    iget v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v7, v8, :cond_57

    move v7, v9

    goto :goto_58

    :cond_57
    move v7, v5

    .line 529
    .local v7, "isTopFocusedDisplay":Z
    :goto_58
    iget v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v10

    if-ne v8, v10, :cond_64

    move v8, v9

    goto :goto_65

    :cond_64
    move v8, v5

    .line 533
    .local v8, "isAccessibilityFocusedDisplay":Z
    :goto_65
    const/4 v10, -0x1

    if-eqz v7, :cond_8a

    .line 534
    if-lez v6, :cond_78

    .line 536
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    goto :goto_7d

    .line 539
    :cond_78
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v11, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 542
    :goto_7d
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v11

    if-nez v11, :cond_8a

    .line 543
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v11, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 552
    :cond_8a
    const/4 v11, 0x1

    .line 556
    .local v11, "activeWindowGone":Z
    if-eqz v8, :cond_97

    .line 557
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v12

    if-eq v12, v10, :cond_96

    move v5, v9

    :cond_96
    move v4, v5

    .line 560
    :cond_97
    if-lez v6, :cond_15f

    .line 561
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9a
    if-ge v5, v6, :cond_101

    .line 562
    move-object/from16 v10, p2

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowInfo;

    .line 564
    .local v12, "windowInfo":Landroid/view/WindowInfo;
    iget-boolean v13, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v13, :cond_ad

    .line 565
    invoke-direct {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->populateReportedWindowLocked(ILandroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v13

    .local v13, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    goto :goto_ae

    .line 567
    .end local v13    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_ad
    const/4 v13, 0x0

    .line 569
    .restart local v13    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_ae
    if-eqz v13, :cond_fd

    .line 572
    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 574
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v14

    .line 575
    .local v14, "windowId":I
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v15

    if-eqz v15, :cond_e0

    if-eqz v7, :cond_e0

    .line 576
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v15}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v15

    if-nez v15, :cond_d7

    .line 579
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v15, v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 580
    invoke-virtual {v13, v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_e0

    .line 581
    :cond_d7
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v15}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v15

    if-ne v14, v15, :cond_e0

    .line 582
    const/4 v11, 0x0

    .line 585
    :cond_e0
    :goto_e0
    iget-boolean v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-nez v15, :cond_ea

    iget-boolean v15, v12, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v15, :cond_ea

    .line 586
    iput-boolean v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 588
    :cond_ea
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v15, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 590
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-static {v12}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v9

    invoke-virtual {v15, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 561
    .end local v12    # "windowInfo":Landroid/view/WindowInfo;
    .end local v13    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v14    # "windowId":I
    :cond_fd
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x1

    goto :goto_9a

    :cond_101
    move-object/from16 v10, p2

    .line 593
    .end local v5    # "i":I
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 594
    .local v5, "accessibilityWindowCount":I
    if-eqz v7, :cond_13c

    .line 595
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v9

    if-eqz v9, :cond_11e

    if-eqz v11, :cond_11e

    .line 596
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v12

    invoke-static {v9, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 600
    :cond_11e
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_11f
    if-ge v9, v5, :cond_13c

    .line 601
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 602
    .local v12, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v13

    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v14

    if-ne v13, v14, :cond_139

    .line 603
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 600
    .end local v12    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_139
    add-int/lit8 v9, v9, 0x1

    goto :goto_11f

    .line 607
    .end local v9    # "i":I
    :cond_13c
    if-eqz v8, :cond_161

    .line 608
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_13f
    if-ge v9, v5, :cond_161

    .line 609
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 610
    .restart local v12    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v13

    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v14

    if-ne v13, v14, :cond_15b

    .line 611
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 612
    const/4 v4, 0x0

    .line 613
    goto :goto_161

    .line 610
    :cond_15b
    const/4 v13, 0x1

    .line 608
    .end local v12    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_13f

    .line 560
    .end local v5    # "accessibilityWindowCount":I
    .end local v9    # "i":I
    :cond_15f
    move-object/from16 v10, p2

    .line 619
    :cond_161
    :goto_161
    invoke-direct {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 621
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 622
    .local v5, "oldWindowCount":I
    add-int/lit8 v9, v5, -0x1

    .restart local v9    # "i":I
    :goto_16a
    if-ltz v9, :cond_178

    .line 623
    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 622
    add-int/lit8 v9, v9, -0x1

    goto :goto_16a

    .line 626
    .end local v9    # "i":I
    :cond_178
    if-eqz v4, :cond_183

    .line 627
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v12

    invoke-static {v9, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mclearAccessibilityFocusLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 629
    :cond_183
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .registers 9
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    .line 421
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 422
    return v0

    .line 424
    :cond_4
    const/4 v1, 0x1

    if-nez p1, :cond_8

    .line 425
    return v1

    .line 427
    :cond_8
    if-nez p2, :cond_b

    .line 428
    return v1

    .line 430
    :cond_b
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    iget v3, p2, Landroid/view/WindowInfo;->type:I

    if-eq v2, v3, :cond_12

    .line 431
    return v1

    .line 433
    :cond_12
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v2, v3, :cond_19

    .line 434
    return v1

    .line 436
    :cond_19
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_22

    .line 437
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_2d

    .line 438
    return v1

    .line 440
    :cond_22
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 441
    return v1

    .line 443
    :cond_2d
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v2, :cond_36

    .line 444
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v2, :cond_41

    .line 445
    return v1

    .line 447
    :cond_36
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 448
    return v1

    .line 450
    :cond_41
    iget-object v2, p1, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-nez v2, :cond_4a

    .line 451
    iget-object v2, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-eqz v2, :cond_55

    .line 452
    return v1

    .line 454
    :cond_4a
    iget-object v2, p1, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 455
    return v1

    .line 457
    :cond_55
    iget-object v2, p1, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    iget-object v3, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 458
    return v1

    .line 460
    :cond_60
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_73

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_73

    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 461
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 462
    return v1

    .line 464
    :cond_73
    iget-object v2, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 465
    return v1

    .line 467
    :cond_7e
    iget-wide v2, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iget-wide v4, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_87

    .line 468
    return v1

    .line 470
    :cond_87
    iget-boolean v2, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    if-eq v2, v3, :cond_8e

    .line 471
    return v1

    .line 473
    :cond_8e
    iget-boolean v2, p1, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eq v2, v3, :cond_95

    .line 474
    return v1

    .line 476
    :cond_95
    iget v2, p1, Landroid/view/WindowInfo;->displayId:I

    iget v3, p2, Landroid/view/WindowInfo;->displayId:I

    if-eq v2, v3, :cond_9c

    .line 477
    return v1

    .line 479
    :cond_9c
    iget v2, p1, Landroid/view/WindowInfo;->taskId:I

    iget v3, p2, Landroid/view/WindowInfo;->taskId:I

    if-eq v2, v3, :cond_a3

    .line 480
    return v1

    .line 482
    :cond_a3
    iget-object v2, p1, Landroid/view/WindowInfo;->mTransformMatrix:[F

    iget-object v3, p2, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 483
    return v1

    .line 485
    :cond_ae
    return v0
.end method


# virtual methods
.method computePartialInteractiveRegionForWindowLocked(IZLandroid/graphics/Region;)Z
    .registers 12
    .param p1, "windowId"    # I
    .param p2, "forceComputeRegion"    # Z
    .param p3, "outRegion"    # Landroid/graphics/Region;

    .line 296
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-nez v0, :cond_6

    .line 297
    const/4 v0, 0x0

    return v0

    .line 304
    :cond_6
    const/4 v1, 0x0

    .line 305
    .local v1, "windowInteractiveRegion":Landroid/graphics/Region;
    const/4 v2, 0x0

    .line 307
    .local v2, "windowInteractiveRegionChanged":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 308
    .local v0, "windowCount":I
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 309
    .local v3, "currentWindowRegions":Landroid/graphics/Region;
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_13
    if-ltz v4, :cond_46

    .line 310
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 311
    .local v5, "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v1, :cond_30

    .line 312
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_43

    .line 313
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 314
    invoke-virtual {p3, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 315
    move-object v1, p3

    .line 316
    if-eqz p2, :cond_43

    .line 317
    const/4 v2, 0x1

    goto :goto_43

    .line 321
    :cond_30
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_43

    .line 323
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 324
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 325
    const/4 v2, 0x1

    .line 309
    .end local v5    # "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_43
    :goto_43
    add-int/lit8 v4, v4, -0x1

    goto :goto_13

    .line 330
    .end local v4    # "i":I
    :cond_46
    return v2
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 791
    const-string v0, "Global Info [ "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Top focused display Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     Active Window Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     Top Focused Window Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     Accessibility Focused Window Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 798
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_eb

    .line 799
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 800
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_87
    if-ge v1, v0, :cond_e8

    .line 801
    if-nez v1, :cond_a1

    .line 802
    const-string v2, "Display["

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 803
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 804
    const-string v2, "] : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 805
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 807
    :cond_a1
    if-lez v1, :cond_ab

    .line 808
    const/16 v2, 0x2c

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 809
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 811
    :cond_ab
    const-string v2, "A11yWindow["

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 812
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 813
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 814
    const/16 v3, 0x5d

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 815
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 816
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v3

    .line 817
    .local v3, "windowInfo":Landroid/view/WindowInfo;
    if-eqz v3, :cond_e5

    .line 818
    const-string v4, "WindowInfo["

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 819
    invoke-virtual {v3}, Landroid/view/WindowInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 820
    const-string v4, "]"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 821
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 800
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v3    # "windowInfo":Landroid/view/WindowInfo;
    :cond_e5
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 825
    .end local v1    # "j":I
    :cond_e8
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 827
    .end local v0    # "windowCount":I
    :cond_eb
    return-void
.end method

.method findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3
    .param p1, "windowId"    # I

    .line 205
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object v0
.end method

.method findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;
    .registers 3
    .param p1, "windowId"    # I

    .line 216
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    return-object v0
.end method

.method getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 228
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 229
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 230
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 231
    return-object v2

    .line 228
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 235
    .end local v0    # "windowCount":I
    .end local v1    # "i":I
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;
    .registers 8
    .param p1, "targetWindowId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    .line 335
    .local v0, "targetWindow":Landroid/view/WindowInfo;
    if-eqz v0, :cond_41

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-eqz v1, :cond_41

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v1, "outsideWindowsId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 338
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 339
    .local v3, "window":Landroid/view/WindowInfo;
    if-eqz v3, :cond_3d

    iget v4, v3, Landroid/view/WindowInfo;->layer:I

    iget v5, v0, Landroid/view/WindowInfo;->layer:I

    if-ge v4, v5, :cond_3d

    iget-boolean v4, v3, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v4, :cond_3d

    .line 341
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v3    # "window":Landroid/view/WindowInfo;
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 344
    .end local v2    # "i":I
    :cond_40
    return-object v1

    .line 346
    .end local v1    # "outsideWindowsId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getWindowListLocked()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    return-object v0
.end method

.method isTrackingWindowsLocked()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    return v0
.end method

.method public onWindowsForAccessibilityChanged(ZILandroid/os/IBinder;Ljava/util/List;)V
    .registers 7
    .param p1, "forceSend"    # Z
    .param p2, "topFocusedDisplayId"    # I
    .param p3, "topFocusedWindowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p4, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 365
    :try_start_7
    invoke-direct {p0, p1, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->shouldUpdateWindowsLocked(ZLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 366
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 367
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/os/IBinder;)V

    .line 368
    invoke-direct {p0, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->cacheWindows(Ljava/util/List;)V

    .line 370
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v1

    invoke-direct {p0, v1, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 373
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 375
    :cond_30
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method

.method setAccessibilityFocusedWindowLocked(I)V
    .registers 7
    .param p1, "windowId"    # I

    .line 267
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_3b

    .line 268
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 269
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_3b

    .line 270
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 271
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_34

    .line 272
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmAccessibilityFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 273
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 274
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityEventSender(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object v3

    const/16 v4, 0x80

    .line 275
    invoke-static {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 274
    invoke-interface {v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_38

    .line 279
    :cond_34
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 269
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 283
    .end local v0    # "windowCount":I
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method setActiveWindowLocked(I)V
    .registers 7
    .param p1, "windowId"    # I

    .line 244
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_34

    .line 245
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 246
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_34

    .line 247
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 248
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_2d

    .line 249
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 250
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityEventSender(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object v3

    const/16 v4, 0x20

    .line 251
    invoke-static {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 250
    invoke-interface {v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_31

    .line 254
    :cond_2d
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 246
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 258
    .end local v0    # "windowCount":I
    .end local v1    # "i":I
    :cond_34
    return-void
.end method

.method startTrackingWindowsLocked()V
    .registers 4

    .line 149
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-nez v0, :cond_41

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 154
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mtraceWMEnabled(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setWindowsForAccessibilityCallback"

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mlogTraceWM(Lcom/android/server/accessibility/AccessibilityWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_36
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 161
    :cond_41
    return-void
.end method

.method stopTrackingWindowsLocked()V
    .registers 4

    .line 167
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v0, :cond_41

    .line 168
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mtraceWMEnabled(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 169
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callback=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setWindowsForAccessibilityCallback"

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mlogTraceWM(Lcom/android/server/accessibility/AccessibilityWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_2f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 175
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->clearWindowsLocked()V

    .line 177
    :cond_41
    return-void
.end method
