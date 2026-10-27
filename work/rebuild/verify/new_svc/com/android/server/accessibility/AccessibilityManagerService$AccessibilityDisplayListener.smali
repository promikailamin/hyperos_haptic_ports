.class public Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mDisplayManager:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;

.field public final mDisplaysList:Ljava/util/ArrayList;

.field public mSystemUiUid:I

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;Landroid/os/Handler;)V
    .registers 7

    .line 5760
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5758
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mSystemUiUid:I

    .line 5764
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    .line 5767
    :cond_1a
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    const-string v2, "AccessibilityDisplayListener must use the main handler"

    if-nez v1, :cond_2d

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_25

    goto :goto_2d

    :cond_25
    if-nez v0, :cond_30

    .line 5770
    const-string v0, "AccessibilityManagerService"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 5768
    :cond_2d
    :goto_2d
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5773
    :cond_30
    :goto_30
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplayManager:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;

    .line 5774
    invoke-virtual {p2, p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 5775
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->initializeDisplayList()V

    .line 5777
    const-class p2, Landroid/content/pm/PackageManagerInternal;

    .line 5778
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    if-eqz p2, :cond_55

    .line 5780
    invoke-virtual {p2}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-wide/32 v0, 0x100000

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mSystemUiUid:I

    :cond_55
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 5895
    const-string p1, "Accessibility Display Listener:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5896
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    SystemUI uid: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mSystemUiUid:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5897
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 5898
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    const-string v0, ""

    goto :goto_2e

    :cond_2b
    const-string/jumbo v0, "s"

    :goto_2e
    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "    %d valid display%s: "

    invoke-virtual {p2, v0, p3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p3, 0x0

    :goto_38
    if-ge p3, p1, :cond_55

    .line 5900
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v0, p1, -0x1

    if-ge p3, v0, :cond_52

    .line 5902
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_52
    add-int/lit8 p3, p3, 0x1

    goto :goto_38

    .line 5905
    :cond_55
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getValidDisplayList()Ljava/util/ArrayList;
    .registers 2

    .line 5791
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5792
    :try_start_7
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 5793
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final initializeDisplayList()V
    .registers 6

    .line 5797
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplayManager:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 5798
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5799
    :try_start_d
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .line 5800
    :goto_13
    array-length v3, v0

    if-ge v2, v3, :cond_29

    .line 5804
    aget-object v3, v0, v2

    .line 5805
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->isValidDisplay(Landroid/view/Display;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 5806
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_2b

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 5809
    :cond_29
    monitor-exit v1

    return-void

    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_24

    throw p0
.end method

.method public final isValidDisplay(Landroid/view/Display;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 5920
    :cond_4
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_24

    .line 5921
    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_24

    .line 5922
    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_24

    .line 5923
    invoke-virtual {p1}, Landroid/view/Display;->getOwnerUid()I

    move-result p1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mSystemUiUid:I

    if-eq p1, p0, :cond_24

    return v0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public onDisplayAdded(I)V
    .registers 6

    .line 5814
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    .line 5816
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_1c

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_11

    goto :goto_1c

    :cond_11
    if-nez v0, :cond_22

    .line 5819
    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "onDisplayAdded must be called from the main thread"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 5817
    :cond_1c
    :goto_1c
    const-string/jumbo v1, "onDisplayAdded must be called from the main thread"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5821
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplayManager:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 5822
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->isValidDisplay(Landroid/view/Display;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_94

    .line 5827
    :cond_2f
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5828
    :try_start_36
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5829
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmA11yOverlayLayers(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmWindowManagerService(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v3

    .line 5830
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerInternal;->getA11yOverlayLayer(I)Landroid/view/SurfaceControl;

    move-result-object v3

    .line 5829
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5831
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 5832
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onDisplayAdded(Landroid/view/Display;)V

    goto :goto_62

    :catchall_60
    move-exception p0

    goto :goto_95

    .line 5834
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetCurrentUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 5835
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5836
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mupdateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 5837
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mupdateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 5838
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    .line 5839
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_36 .. :try_end_7f} :catchall_60

    if-eqz p1, :cond_94

    const/4 p0, 0x0

    .line 5841
    :goto_82
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_94

    .line 5842
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 5843
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->addWindowTokenForDisplay(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_82

    :cond_94
    :goto_94
    return-void

    .line 5839
    :goto_95
    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_60

    throw p0
.end method

.method public onDisplayChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 6

    .line 5850
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    .line 5852
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_1c

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_11

    goto :goto_1c

    :cond_11
    if-nez v0, :cond_22

    .line 5855
    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "onDisplayRemoved must be called from the main thread"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 5853
    :cond_1c
    :goto_1c
    const-string/jumbo v1, "onDisplayRemoved must be called from the main thread"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5857
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5858
    :try_start_29
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->removeDisplayFromList(I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 5859
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    goto :goto_7e

    .line 5861
    :cond_33
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmA11yOverlayLayers(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5862
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 5863
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onDisplayRemoved(I)V

    .line 5865
    :cond_4d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetCurrentUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    if-eqz p1, :cond_6a

    .line 5867
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 5868
    :goto_58
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6a

    .line 5869
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 5870
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayRemoved(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 5873
    :cond_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_29 .. :try_end_6b} :catchall_31

    .line 5874
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmMagnificationController(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->onDisplayRemoved(I)V

    .line 5875
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmA11yWindowManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->stopTrackingWindows(I)V

    return-void

    .line 5873
    :goto_7e
    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_31

    throw p0
.end method

.method public final removeDisplayFromList(I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 5880
    :goto_2
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 5881
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 5882
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    return v0
.end method
