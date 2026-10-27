.class public Landroid/hovermode/MiuiHoverModeTransfer;
.super Ljava/lang/Object;
.source "MiuiHoverModeTransfer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiHoverModeTransfer"


# instance fields
.field private final blacklist mBoundsInHover:Landroid/graphics/Rect;

.field private blacklist mIsHoverMode:Z

.field private final blacklist mRoot:Landroid/view/ViewRootImpl;

.field private blacklist mSupportTouchMode:Z


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "root"    # Landroid/view/ViewRootImpl;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mBoundsInHover:Landroid/graphics/Rect;

    .line 33
    iput-object p1, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mRoot:Landroid/view/ViewRootImpl;

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist disableOnClickForHoverMode(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 83
    if-eqz p1, :cond_11

    iget-boolean v0, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mIsHoverMode:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mSupportTouchMode:Z

    if-eqz v0, :cond_11

    if-eqz p2, :cond_11

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->isTainted()Z

    move-result v0

    return v0

    .line 88
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 55
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->inMiuiHoverWindowingMode()Z

    move-result v0

    .line 56
    .local v0, "hover":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged, hover = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiHoverModeTransfer"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz v0, :cond_38

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mIsHoverMode:Z

    .line 59
    iget-object v1, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mBoundsInHover:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 60
    iget-object v1, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mBoundsInHover:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 61
    return-void

    .line 63
    :cond_37
    return-void

    .line 65
    :cond_38
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mIsHoverMode:Z

    .line 66
    return-void
.end method

.method public blacklist processEventForHoverModeIfNeeded(Landroid/view/InputEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 69
    iget-boolean v0, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mIsHoverMode:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mSupportTouchMode:Z

    if-eqz v0, :cond_30

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_d

    goto :goto_30

    .line 74
    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 75
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mBoundsInHover:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 76
    .local v1, "appHeight":F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2f

    .line 77
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setTainted(Z)V

    .line 80
    :cond_2f
    return-void

    .line 72
    .end local v0    # "ev":Landroid/view/MotionEvent;
    .end local v1    # "appHeight":F
    :cond_30
    :goto_30
    return-void
.end method

.method public blacklist updateClientHoverState(ZZ)V
    .registers 8
    .param p1, "hoverMode"    # Z
    .param p2, "supportTouch"    # Z

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateClientHoverState: hoverMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportTouch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHoverModeTransfer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-boolean p1, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mIsHoverMode:Z

    .line 40
    iput-boolean p2, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mSupportTouchMode:Z

    .line 42
    if-eqz p1, :cond_75

    iget-object v0, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mBoundsInHover:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mRoot:Landroid/view/ViewRootImpl;

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 44
    iget-object v0, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, "localResources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 46
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->inMiuiHoverWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateClientHoverState, appBounds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 48
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Landroid/hovermode/MiuiHoverModeTransfer;->mBoundsInHover:Landroid/graphics/Rect;

    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 52
    .end local v0    # "localResources":Landroid/content/res/Resources;
    .end local v2    # "config":Landroid/content/res/Configuration;
    :cond_75
    return-void
.end method
