.class public final Lcom/android/server/wm/Letterbox$InputInterceptor;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Letterbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "InputInterceptor"
.end annotation


# instance fields
.field private final mClientChannel:Landroid/view/InputChannel;

.field private final mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private final mToken:Landroid/os/IBinder;

.field final mWindowHandle:Landroid/view/InputWindowHandle;

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;

.field final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method constructor <init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;Lcom/android/server/wm/WindowState;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/wm/Letterbox;
    .param p2, "namePrefix"    # Ljava/lang/String;
    .param p3, "win"    # Lcom/android/server/wm/WindowState;

    .line 354
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_19

    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_1a

    :cond_19
    move-object v2, p3

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "name":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 358
    new-instance v3, Lcom/android/server/wm/Letterbox$TapEventReceiver;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v2, v0}, Lcom/android/server/wm/Letterbox$TapEventReceiver;-><init>(Lcom/android/server/wm/Letterbox;Landroid/view/InputChannel;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 360
    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    .line 362
    new-instance v2, Landroid/view/InputWindowHandle;

    const/4 v3, 0x0

    .line 363
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 364
    iput-object v1, v2, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 365
    iput-object v0, v2, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 366
    const/16 v0, 0x7e6

    iput v0, v2, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 367
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v3, v0

    iput-wide v3, v2, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 368
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, v2, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 369
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, v2, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 370
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 371
    const/16 v0, 0x404

    iput v0, v2, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 372
    return-void
.end method


# virtual methods
.method dispose()V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 391
    return-void
.end method

.method updateTouchableRegion(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 380
    return-void

    .line 382
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->translate(II)V

    .line 385
    return-void
.end method
