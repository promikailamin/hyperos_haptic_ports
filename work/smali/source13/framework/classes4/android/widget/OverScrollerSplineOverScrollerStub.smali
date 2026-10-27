.class public interface abstract Landroid/widget/OverScrollerSplineOverScrollerStub;
.super Ljava/lang/Object;
.source "OverScrollerSplineOverScrollerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;
    }
.end annotation


# static fields
.field public static final blacklist SCROLLER_NORMAL_MODE:I = 0x0

.field public static final blacklist SCROLLER_POWER_MODE:I = 0x1


# direct methods
.method public static blacklist newInstance()Landroid/widget/OverScrollerSplineOverScrollerStub;
    .registers 1

    .line 37
    const-class v0, Landroid/widget/OverScrollerSplineOverScrollerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/OverScrollerSplineOverScrollerStub;

    return-object v0
.end method


# virtual methods
.method public blacklist adjustDuration(I)I
    .registers 3
    .param p1, "newDistance"    # I

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist fling(IIIII)V
.end method

.method public blacklist getFlingDistance(I)D
    .registers 4
    .param p1, "velocity"    # I

    .line 78
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getFlingDuration(I)I
    .registers 3
    .param p1, "velocity"    # I

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFlingVelocityThreshold()I
    .registers 2

    .line 68
    const/16 v0, 0x1f4

    return v0
.end method

.method public blacklist getScrollerMode()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initialize(Landroid/widget/FlingAnimationStub;Landroid/content/Context;Z)V
    .registers 4
    .param p1, "flingAnimationStub"    # Landroid/widget/FlingAnimationStub;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isScrollY"    # Z

    .line 52
    return-void
.end method

.method public abstract blacklist interceptUpdate()Z
.end method

.method public blacklist isOptimizeEnable()Z
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist updateByMiuiOptimize(IFIIII)Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;
.end method
