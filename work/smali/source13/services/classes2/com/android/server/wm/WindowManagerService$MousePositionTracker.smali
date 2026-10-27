.class Lcom/android/server/wm/WindowManagerService$MousePositionTracker;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MousePositionTracker"
.end annotation


# instance fields
.field private mLatestEventWasMouse:Z

.field private mLatestMouseX:F

.field private mLatestMouseY:F

.field private mPointerDisplayId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLatestEventWasMouse(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestMouseX(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestMouseY(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPointerDisplayId(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    return p0
.end method

.method private constructor <init>()V
    .registers 2

    .line 7893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7902
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$MousePositionTracker-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 7931
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7932
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 7933
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 7932
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(IFF)Z

    goto :goto_1d

    .line 7935
    :cond_18
    monitor-enter p0

    .line 7936
    const/4 v0, 0x0

    :try_start_1a
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 7937
    monitor-exit p0

    .line 7939
    :goto_1d
    return-void

    .line 7937
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v0
.end method

.method setPointerDisplayId(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 7924
    monitor-enter p0

    .line 7925
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    .line 7926
    monitor-exit p0

    .line 7927
    return-void

    .line 7926
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method updatePosition(IFF)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 7909
    monitor-enter p0

    .line 7910
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 7912
    iget v1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mPointerDisplayId:I

    if-eq p1, v1, :cond_b

    .line 7915
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 7917
    :cond_b
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    .line 7918
    iput p3, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    .line 7919
    monitor-exit p0

    return v0

    .line 7920
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_11

    throw v0
.end method
