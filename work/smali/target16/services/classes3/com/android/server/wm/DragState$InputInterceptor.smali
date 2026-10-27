.class public Lcom/android/server/wm/DragState$InputInterceptor;
.super Ljava/lang/Object;
.source "DragState.java"


# instance fields
.field public mDragApplicationHandle:Landroid/view/InputApplicationHandle;

.field public mDragWindowHandle:Landroid/view/InputWindowHandle;

.field public mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public static synthetic $r8$lambda$XcWAA2A07k3lMjRqf6cMWjB5Sy8(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    .line 453
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->pause()V

    return-void
.end method

.method public static synthetic $r8$lambda$_i4aN9DKrJWpXguOJEa99H8f2-E(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    .line 468
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->resume()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V
    .registers 9

    .line 428
    iput-object p1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iget-object v0, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string v1, "drag"

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    .line 430
    new-instance v2, Lcom/android/server/wm/DragInputEventReceiver;

    iget-object v3, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 431
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/wm/DragInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V

    iput-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    .line 433
    new-instance v0, Landroid/view/InputApplicationHandle;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    sget v3, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v4, v3

    invoke-direct {v0, v2, v1, v4, v5}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 436
    new-instance v0, Landroid/view/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 437
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    invoke-direct {v0, v2, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 438
    iput-object v1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 439
    iget-object p2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    invoke-virtual {p2}, Landroid/view/InputEventReceiver;->getToken()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 440
    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    const/16 p2, 0x7e0

    iput p2, p0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    int-to-long v0, v3

    .line 441
    iput-wide v0, p0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 442
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iput p2, p0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 443
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    iput p2, p0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 444
    iput p2, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    const/high16 p2, 0x80000

    .line 445
    iput p2, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 448
    iget-object p0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    .line 451
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 p2, 0x1

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_77

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const-wide v1, 0x6e065fc9a4823e8dL    # 1.0109595201615303E222

    invoke-static {p0, v1, v2, p2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 452
    :cond_77
    iget-object p0, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance p1, Lcom/android/server/wm/DragState$InputInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/DragState$InputInterceptor$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public tearDown()V
    .registers 6

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    .line 462
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 463
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 466
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x723c18610a163783L    # 1.8733940382774938E242

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 467
    :cond_2d
    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/DragState$InputInterceptor$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    return-void
.end method
