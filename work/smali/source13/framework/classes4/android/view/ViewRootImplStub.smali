.class public Landroid/view/ViewRootImplStub;
.super Ljava/lang/Object;
.source "ViewRootImplStub.java"


# static fields
.field private static final blacklist sInstance:Landroid/view/ViewRootImplStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    const-class v0, Landroid/view/ViewRootImplStub;

    .line 28
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImplStub;

    sput-object v0, Landroid/view/ViewRootImplStub;->sInstance:Landroid/view/ViewRootImplStub;

    .line 27
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/view/ViewRootImplStub;
    .registers 1

    .line 32
    sget-object v0, Landroid/view/ViewRootImplStub;->sInstance:Landroid/view/ViewRootImplStub;

    return-object v0
.end method


# virtual methods
.method public blacklist addDragView(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 67
    return-void
.end method

.method public blacklist disableOnClickForHoverMode(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .line 83
    return-void
.end method

.method public blacklist enableDebugConfig(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 41
    return-void
.end method

.method public blacklist getScreenAntiBurnDimRatio()F
    .registers 2

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist getViewRootImplMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/ViewRootImpl;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public blacklist initScreenAntiBurn(Landroid/content/Context;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowBounds"    # Landroid/graphics/Rect;

    .line 75
    return-void
.end method

.method public blacklist isMiuiLayoutInCutoutAlways(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNotNeedSetFocusKey(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportDragAndDrop(Landroid/view/ViewRootImpl;)Z
    .registers 3
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 48
    return-void
.end method

.method public blacklist processEventForHoverModeIfNeeded(Landroid/view/InputEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 50
    return-void
.end method

.method public blacklist removeDragView(Landroid/view/ViewRootImpl;Landroid/app/Activity;)V
    .registers 3
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 64
    return-void
.end method

.method public blacklist setDragView(Landroid/view/ViewRootImpl;Landroid/view/View;)V
    .registers 3
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "view"    # Landroid/view/View;

    .line 57
    return-void
.end method

.method public blacklist setScreenAntiBurn(Landroid/view/View;Z)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 77
    return-void
.end method

.method public blacklist updateClientHoverState(Landroid/view/ViewRootImpl;ZZ)V
    .registers 4
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "hoverMode"    # Z
    .param p3, "supportTouch"    # Z

    .line 47
    return-void
.end method
