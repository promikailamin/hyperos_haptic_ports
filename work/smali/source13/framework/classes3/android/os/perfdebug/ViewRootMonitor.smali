.class public Landroid/os/perfdebug/ViewRootMonitor;
.super Ljava/lang/Object;
.source "ViewRootMonitor.java"


# static fields
.field public static final blacklist DRAW_MODE_HARDWARE:I = 0x1

.field public static final blacklist DRAW_MODE_SOFTWARE:I = 0x2

.field public static final blacklist DRAW_MODE_SURFACE:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist newViewRootMonitor()Landroid/os/perfdebug/ViewRootMonitor;
    .registers 1

    .line 15
    const-class v0, Landroid/os/perfdebug/ViewRootMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/ViewRootMonitor;

    return-object v0
.end method


# virtual methods
.method public blacklist monitorGlobalLayoutBegin()V
    .registers 1

    .line 41
    return-void
.end method

.method public blacklist monitorGlobalLayoutEnd()V
    .registers 1

    .line 44
    return-void
.end method

.method public blacklist monitorPerformDrawBegin()V
    .registers 1

    .line 65
    return-void
.end method

.method public blacklist monitorPerformDrawEnd()V
    .registers 1

    .line 68
    return-void
.end method

.method public blacklist monitorPerformLayoutBegin()V
    .registers 1

    .line 35
    return-void
.end method

.method public blacklist monitorPerformLayoutEnd()V
    .registers 1

    .line 38
    return-void
.end method

.method public blacklist monitorPerformMeasureBegin()V
    .registers 1

    .line 29
    return-void
.end method

.method public blacklist monitorPerformMeasureEnd()V
    .registers 1

    .line 32
    return-void
.end method

.method public blacklist monitorTraversalsBegin()V
    .registers 1

    .line 23
    return-void
.end method

.method public blacklist monitorTraversalsEnd()V
    .registers 1

    .line 26
    return-void
.end method

.method public blacklist monitorViewDrawBegin()V
    .registers 1

    .line 59
    return-void
.end method

.method public blacklist monitorViewDrawEnd()V
    .registers 1

    .line 62
    return-void
.end method

.method public blacklist monitorViewTreeDrawBegin()V
    .registers 1

    .line 53
    return-void
.end method

.method public blacklist monitorViewTreeDrawEnd()V
    .registers 1

    .line 56
    return-void
.end method

.method public blacklist monitorViewTreePreDrawBegin()V
    .registers 1

    .line 47
    return-void
.end method

.method public blacklist monitorViewTreePreDrawEnd()V
    .registers 1

    .line 50
    return-void
.end method

.method public blacklist onAppVisibilityChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 74
    return-void
.end method

.method public blacklist onSurfaceCreate()V
    .registers 1

    .line 80
    return-void
.end method

.method public blacklist onSurfaceDestroy(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 77
    return-void
.end method

.method public blacklist onWindowStoped(Landroid/view/ViewRootImpl;Z)V
    .registers 3
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "stopped"    # Z

    .line 83
    return-void
.end method

.method public blacklist setDrawMode(I)V
    .registers 2
    .param p1, "drawMode"    # I

    .line 71
    return-void
.end method
