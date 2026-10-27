.class Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction$HierarchyOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActivityIntent:Landroid/content/Intent;

.field private blacklist mActivityTypes:[I

.field private blacklist mContainer:Landroid/os/IBinder;

.field private blacklist mInsetsProviderFrame:Landroid/graphics/Rect;

.field private blacklist mInsetsTypes:[I

.field private blacklist mLaunchOptions:Landroid/os/Bundle;

.field private blacklist mMoveAdjacentTogether:Z

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mReparent:Landroid/os/IBinder;

.field private blacklist mReparentTopOnly:Z

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

.field private blacklist mToTop:Z

.field private final blacklist mType:I

.field private blacklist mWindowingModes:[I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1533
    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mType:I

    .line 1534
    return-void
.end method


# virtual methods
.method blacklist build()Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5

    .line 1608
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mType:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(ILandroid/window/WindowContainerTransaction$HierarchyOp-IA;)V

    .line 1609
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainer:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmContainer(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    .line 1610
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparent:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    .line 1611
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    if-eqz v1, :cond_1c

    .line 1612
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_1d

    .line 1613
    :cond_1c
    move-object v1, v2

    :goto_1d
    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmWindowingModes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V

    .line 1614
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    if-eqz v1, :cond_2a

    .line 1615
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_2b

    .line 1616
    :cond_2a
    nop

    :goto_2b
    invoke-static {v0, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmActivityTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V

    .line 1617
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsTypes:[I

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmInsetsTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V

    .line 1618
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsProviderFrame:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmInsetsProviderFrame(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V

    .line 1619
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mToTop:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmToTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 1620
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentTopOnly:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparentTopOnly(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 1621
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mMoveAdjacentTogether:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmMoveAdjacentTogether(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 1622
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchOptions:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmLaunchOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V

    .line 1623
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmActivityIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/Intent;)V

    .line 1624
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmPendingIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/app/PendingIntent;)V

    .line 1625
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmTaskFragmentCreationOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/TaskFragmentCreationParams;)V

    .line 1626
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmShortcutInfo(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/pm/ShortcutInfo;)V

    .line 1628
    return-object v0
.end method

.method blacklist setActivityIntent(Landroid/content/Intent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "activityIntent"    # Landroid/content/Intent;

    .line 1587
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityIntent:Landroid/content/Intent;

    .line 1588
    return-object p0
.end method

.method blacklist setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "activityTypes"    # [I

    .line 1577
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    .line 1578
    return-object p0
.end method

.method blacklist setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "container"    # Landroid/os/IBinder;

    .line 1537
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainer:Landroid/os/IBinder;

    .line 1538
    return-object p0
.end method

.method blacklist setInsetsProviderFrame(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "insetsProviderFrame"    # Landroid/graphics/Rect;

    .line 1552
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsProviderFrame:Landroid/graphics/Rect;

    .line 1553
    return-object p0
.end method

.method blacklist setInsetsTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "insetsTypes"    # [I

    .line 1547
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsTypes:[I

    .line 1548
    return-object p0
.end method

.method blacklist setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "launchOptions"    # Landroid/os/Bundle;

    .line 1582
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchOptions:Landroid/os/Bundle;

    .line 1583
    return-object p0
.end method

.method blacklist setMoveAdjacentTogether(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "moveAdjacentTogether"    # Z

    .line 1567
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mMoveAdjacentTogether:Z

    .line 1568
    return-object p0
.end method

.method blacklist setPendingIntent(Landroid/app/PendingIntent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "sender"    # Landroid/app/PendingIntent;

    .line 1592
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1593
    return-object p0
.end method

.method blacklist setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "reparentContainer"    # Landroid/os/IBinder;

    .line 1542
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparent:Landroid/os/IBinder;

    .line 1543
    return-object p0
.end method

.method blacklist setReparentTopOnly(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "reparentTopOnly"    # Z

    .line 1562
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentTopOnly:Z

    .line 1563
    return-object p0
.end method

.method blacklist setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 1603
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 1604
    return-object p0
.end method

.method blacklist setTaskFragmentCreationOptions(Landroid/window/TaskFragmentCreationParams;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "taskFragmentCreationOptions"    # Landroid/window/TaskFragmentCreationParams;

    .line 1598
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    .line 1599
    return-object p0
.end method

.method blacklist setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "toTop"    # Z

    .line 1557
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mToTop:Z

    .line 1558
    return-object p0
.end method

.method blacklist setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "windowingModes"    # [I

    .line 1572
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    .line 1573
    return-object p0
.end method
