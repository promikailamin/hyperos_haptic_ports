.class Lcom/android/server/wm/Transition$ChangeInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChangeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Transition$ChangeInfo$Flag;
    }
.end annotation


# static fields
.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_SEAMLESS_ROTATION:I = 0x1


# instance fields
.field final mAbsoluteBounds:Landroid/graphics/Rect;

.field mExistenceChanged:Z

.field mFlags:I

.field mKnownConfigChanges:I

.field mParent:Lcom/android/server/wm/WindowContainer;

.field mRotation:I

.field mShowWallpaper:Z

.field mVisible:Z

.field mWindowingMode:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "origState"    # Lcom/android/server/wm/WindowContainer;

    .line 1524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 1516
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 1518
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1522
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 1525
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 1526
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 1527
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1528
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 1529
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1530
    return-void
.end method

.method constructor <init>(ZZ)V
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "existChange"    # Z

    .line 1533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 1516
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 1518
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1522
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 1534
    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 1535
    iput-boolean p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 1536
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 1537
    return-void
.end method


# virtual methods
.method getChangeFlags(Lcom/android/server/wm/WindowContainer;)I
    .registers 7
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-nez v1, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1570
    :cond_b
    or-int/lit8 v0, v0, 0x1

    .line 1572
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1577
    or-int/lit8 v0, v0, 0x4

    .line 1579
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1580
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_21

    iget-object v2, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_21

    .line 1581
    or-int/lit8 v0, v0, 0x10

    .line 1583
    :cond_21
    if-eqz v1, :cond_2c

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1584
    or-int/lit8 v0, v0, 0x4

    .line 1586
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1587
    .local v2, "record":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3e

    .line 1588
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mUseTransferredAnimation:Z

    if-eqz v3, :cond_38

    .line 1589
    or-int/lit8 v0, v0, 0x8

    .line 1591
    :cond_38
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v3, :cond_3e

    .line 1592
    or-int/lit8 v0, v0, 0x10

    .line 1595
    :cond_3e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1596
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_4e

    .line 1597
    or-int/lit8 v0, v0, 0x20

    .line 1598
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1599
    or-int/lit16 v0, v0, 0x80

    .line 1602
    :cond_4e
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1603
    or-int/lit8 v0, v0, 0x2

    .line 1605
    :cond_56
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smoccludesKeyguard(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1606
    or-int/lit8 v0, v0, 0x40

    .line 1608
    :cond_5e
    return v0
.end method

.method getTransitMode(Lcom/android/server/wm/WindowContainer;)I
    .registers 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1555
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    .line 1556
    .local v0, "nowVisible":Z
    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-ne v0, v1, :cond_a

    .line 1557
    const/4 v1, 0x6

    return v1

    .line 1559
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz v1, :cond_14

    .line 1560
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x2

    :goto_13
    return v1

    .line 1562
    :cond_14
    if-eqz v0, :cond_18

    const/4 v1, 0x3

    goto :goto_19

    :cond_18
    const/4 v1, 0x4

    :goto_19
    return v1
.end method

.method hasChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6
    .param p1, "newState"    # Lcom/android/server/wm/WindowContainer;

    .line 1542
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    .line 1543
    .local v0, "currVisible":Z
    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    if-nez v1, :cond_c

    return v2

    .line 1544
    :cond_c
    if-ne v0, v1, :cond_36

    iget v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    if-nez v1, :cond_36

    iget v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-eqz v1, :cond_1e

    .line 1548
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v1

    iget v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v1, v3, :cond_36

    .line 1549
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1550
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    if-eq v1, v3, :cond_37

    :cond_36
    const/4 v2, 0x1

    .line 1544
    :cond_37
    return v2
.end method
