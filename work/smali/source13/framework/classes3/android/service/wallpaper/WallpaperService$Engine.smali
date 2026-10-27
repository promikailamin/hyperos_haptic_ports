.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# instance fields
.field blacklist mBbqSurfaceControl:Landroid/view/SurfaceControl;

.field blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field greylist-max-o mCaller:Lcom/android/internal/os/HandlerCaller;

.field private final greylist-max-o mClockFunction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field greylist-max-o mCreated:Z

.field greylist-max-o mCurHeight:I

.field greylist-max-o mCurWidth:I

.field greylist-max-o mCurWindowFlags:I

.field greylist-max-o mCurWindowPrivateFlags:I

.field private blacklist mDefaultDimAmount:F

.field greylist-max-o mDestroyed:Z

.field final greylist-max-o mDispatchedContentInsets:Landroid/graphics/Rect;

.field greylist-max-o mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

.field final greylist-max-o mDispatchedStableInsets:Landroid/graphics/Rect;

.field private greylist-max-o mDisplay:Landroid/view/Display;

.field private blacklist mDisplayContext:Landroid/content/Context;

.field private blacklist mDisplayInstallOrientation:I

.field private final greylist-max-o mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private greylist-max-o mDisplayState:I

.field greylist-max-o mDrawingAllowed:Z

.field greylist-max-o mFixedSizeAllowed:Z

.field greylist-max-o mFormat:I

.field private blacklist mFrozenRequested:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mHeight:I

.field greylist-max-o mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field greylist-max-o mInitializing:Z

.field greylist-max-o mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field final blacklist mInsetsState:Landroid/view/InsetsState;

.field greylist-max-o mIsCreating:Z

.field greylist-max-o mIsInAmbientMode:Z

.field private greylist-max-o mLastColorInvalidation:J

.field blacklist mLastScreenshot:Landroid/graphics/Bitmap;

.field private final blacklist mLastSurfaceSize:Landroid/graphics/Point;

.field blacklist mLastWindowPage:I

.field final greylist-max-o mLayout:Landroid/view/WindowManager$LayoutParams;

.field final blacklist mLocalColorAreas:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mLocalColorsToAdd:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mLock:Ljava/lang/Object;

.field final greylist-max-o mMergedConfiguration:Landroid/util/MergedConfiguration;

.field private final greylist-max-o mNotifyColorsChanged:Ljava/lang/Runnable;

.field greylist-max-o mOffsetMessageEnqueued:Z

.field greylist-max-o mOffsetsChanged:Z

.field greylist-max-o mPendingMove:Landroid/view/MotionEvent;

.field greylist-max-o mPendingSync:Z

.field greylist-max-p mPendingXOffset:F

.field greylist-max-o mPendingXOffsetStep:F

.field greylist-max-o mPendingYOffset:F

.field greylist-max-o mPendingYOffsetStep:F

.field blacklist mPreviewSurfacePosition:Landroid/graphics/Rect;

.field private blacklist mPreviousWallpaperDimAmount:F

.field greylist-max-o mReportedVisible:Z

.field final blacklist mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field private blacklist mResetWindowPages:Z

.field private blacklist mScreenshotSize:Landroid/graphics/Point;

.field private blacklist mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSession:Landroid/view/IWindowSession;

.field blacklist mShouldDim:Z

.field blacklist mShouldDimByDefault:Z

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSurfaceCreated:Z

.field final greylist-max-o mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field private final blacklist mSurfaceSize:Landroid/graphics/Point;

.field final blacklist mSyncSeqIdBundle:Landroid/os/Bundle;

.field final blacklist mTempControls:[Landroid/view/InsetsSourceControl;

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTmpValues:[F

.field greylist-max-o mType:I

.field greylist-max-o mVisible:Z

.field private blacklist mWallpaperDimAmount:F

.field greylist-max-o mWidth:I

.field final blacklist mWinFrames:Landroid/window/ClientWindowFrames;

.field final greylist-max-o mWindow:Lcom/android/internal/view/BaseIWindow;

.field greylist-max-o mWindowFlags:I

.field private final blacklist mWindowLayout:Landroid/view/WindowLayout;

.field blacklist mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

.field greylist-max-o mWindowPrivateFlags:I

.field greylist-max-o mWindowToken:Landroid/os/IBinder;

.field blacklist mZoom:F

.field final synthetic blacklist this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/Display;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayState(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .registers 1

    iget p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchPointer(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscalePreview(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->scalePreview(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPrimaryWallpaperColors(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/app/WallpaperColors;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateConfiguration(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/util/MergedConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateConfiguration(Landroid/util/MergedConfiguration;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateWallpaperDimming(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateWallpaperDimming(F)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/wallpaper/WallpaperService;)V
    .registers 4
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;

    .line 470
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    .line 471
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .registers 7
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 481
    .local p2, "clockFunction":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    .line 202
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    .line 205
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 207
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastWindowPage:I

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 224
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 243
    const/4 v1, 0x0

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 244
    const/16 v1, 0x10

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 245
    const v2, 0x2000004

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 247
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 248
    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 250
    new-instance v1, Landroid/window/ClientWindowFrames;

    invoke-direct {v1}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    .line 251
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    .line 252
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    .line 253
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 254
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1}, Landroid/view/InsetsState;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    .line 255
    new-instance v1, Landroid/view/InsetsVisibilities;

    invoke-direct {v1}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 256
    new-array v0, v0, [Landroid/view/InsetsSourceControl;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;

    .line 257
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSyncSeqIdBundle:Landroid/os/Bundle;

    .line 259
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    .line 260
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 261
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 262
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    .line 263
    new-instance v0, Landroid/view/WindowLayout;

    invoke-direct {v0}, Landroid/view/WindowLayout;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowLayout:Landroid/view/WindowLayout;

    .line 264
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempRect:Landroid/graphics/Rect;

    .line 266
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 270
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 283
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    .line 291
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 292
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 293
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 295
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 299
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    .line 301
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 396
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    .line 2124
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$4;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 482
    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    .line 483
    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    .line 484
    return-void
.end method

.method private blacklist cleanUpScreenshotSurfaceControl()V
    .registers 3

    .line 1952
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1b

    .line 1953
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 1954
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1955
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1956
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1957
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 1959
    :cond_1b
    return-void
.end method

.method private greylist-max-o dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1037
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1038
    :try_start_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 1039
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_16

    .line 1041
    :cond_13
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 1043
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_25

    .line 1044
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2738

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1045
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1046
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_2b

    .line 1043
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1

    .line 1047
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1049
    :goto_2b
    return-void
.end method

.method private blacklist fixRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 1874
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_13

    goto :goto_16

    .line 1876
    :cond_13
    iget v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_17

    .line 1875
    :cond_16
    :goto_16
    const/4 v0, 0x0

    .line 1876
    :goto_17
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1877
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_2b

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_28

    goto :goto_2b

    .line 1879
    :cond_28
    iget v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_2f

    .line 1878
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1879
    :goto_2f
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1880
    return-object p2
.end method

.method private blacklist freeze()V
    .registers 2

    .line 1928
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_9

    goto :goto_18

    .line 1932
    :cond_9
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->showScreenshotOfWallpaper()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1933
    return-void

    .line 1936
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 1940
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 1941
    return-void

    .line 1930
    :cond_18
    :goto_18
    return-void
.end method

.method private blacklist generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .registers 11
    .param p1, "in"    # Landroid/graphics/RectF;
    .param p2, "pageInx"    # I
    .param p3, "numPages"    # I

    .line 1793
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 1794
    .local v0, "minLeft":F
    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 1795
    .local v1, "maxRight":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 1796
    .local v2, "left":F
    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 1799
    .local v3, "right":F
    cmpg-float v4, v2, v0

    if-gez v4, :cond_11

    move v2, v0

    .line 1800
    :cond_11
    cmpl-float v4, v3, v1

    if-lez v4, :cond_16

    move v3, v1

    .line 1803
    :cond_16
    int-to-float v4, p3

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v4, v5

    .line 1804
    .end local v2    # "left":F
    .local v4, "left":F
    int-to-float v2, p3

    mul-float/2addr v2, v3

    rem-float/2addr v2, v5

    .line 1805
    .end local v3    # "right":F
    .local v2, "right":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_25

    .line 1806
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1809
    :cond_25
    new-instance v3, Landroid/graphics/RectF;

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method private blacklist getOrCreateBLASTSurface(III)Landroid/view/Surface;
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 2142
    const/4 v0, 0x0

    .line 2143
    .local v0, "ret":Landroid/view/Surface;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v1, :cond_19

    .line 2144
    new-instance v1, Landroid/graphics/BLASTBufferQueue;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const-string v3, "Wallpaper"

    move-object v2, v1

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2148
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_1e

    .line 2150
    :cond_19
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 2153
    :goto_1e
    return-object v0
.end method

.method private blacklist getRectFPage(Landroid/graphics/RectF;F)I
    .registers 7
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "step"    # F

    .line 1823
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1824
    :cond_a
    invoke-direct {p0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 1825
    :cond_11
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1826
    .local v0, "pages":I
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1827
    .local v1, "page":I
    if-ne v1, v0, :cond_27

    add-int/lit8 v2, v0, -0x1

    return v2

    .line 1828
    :cond_27
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v3, v2

    if-ne v1, v3, :cond_2f

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 1829
    :cond_2f
    return v1
.end method

.method private blacklist initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V
    .registers 7
    .param p1, "windowPages"    # [Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "step"    # F

    .line 1676
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 1677
    new-instance v1, Landroid/service/wallpaper/EngineWindowPage;

    invoke-direct {v1}, Landroid/service/wallpaper/EngineWindowPage;-><init>()V

    aput-object v1, p1, v0

    .line 1676
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1679
    .end local v0    # "i":I
    :cond_e
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1680
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1681
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1682
    .local v1, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v2, v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1683
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1684
    goto :goto_20

    .line 1686
    :cond_3a
    invoke-direct {p0, v1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v2

    .line 1687
    .local v2, "pageNum":I
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Landroid/service/wallpaper/EngineWindowPage;->addArea(Landroid/graphics/RectF;)V

    .line 1688
    .end local v1    # "area":Landroid/graphics/RectF;
    .end local v2    # "pageNum":I
    goto :goto_20

    .line 1689
    :cond_44
    return-void
.end method

.method private blacklist processLocalColors(FF)V
    .registers 13
    .param p1, "xOffset"    # F
    .param p2, "xOffsetStep"    # F

    .line 1607
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1613
    :cond_7
    rem-float v0, p1, p2

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_54

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1614
    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_54

    .line 1617
    :cond_1d
    invoke-direct {p0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1621
    const/4 p1, 0x0

    .line 1622
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1623
    const/4 v0, 0x0

    .line 1624
    .local v0, "xCurrentPage":I
    const/4 v1, 0x1

    .local v1, "xPages":I
    goto :goto_43

    .line 1626
    .end local v0    # "xCurrentPage":I
    .end local v1    # "xPages":I
    :cond_29
    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1627
    .restart local v1    # "xPages":I
    int-to-float v2, v1

    div-float p2, v0, v2

    .line 1628
    add-int/lit8 v0, v1, -0x1

    int-to-float v0, v0

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 1629
    .local v0, "shrink":F
    mul-float/2addr p1, v0

    .line 1630
    div-float v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v0, v2

    .line 1637
    .local v0, "xCurrentPage":I
    :goto_43
    move v7, p2

    .line 1638
    .local v7, "finalXOffsetStep":F
    move v8, p1

    .line 1639
    .local v8, "finalXOffset":F
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v9, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;

    move-object v3, v9

    move-object v4, p0

    move v5, v0

    move v6, v1

    invoke-direct/range {v3 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;IIFF)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1673
    return-void

    .line 1614
    .end local v0    # "xCurrentPage":I
    .end local v1    # "xPages":I
    .end local v7    # "finalXOffsetStep":F
    .end local v8    # "finalXOffset":F
    :cond_54
    :goto_54
    return-void
.end method

.method private blacklist reposition()V
    .registers 8

    .line 1398
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    .line 1399
    return-void

    .line 1405
    :cond_5
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1406
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    .line 1407
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1406
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1408
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1409
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1410
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1412
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1414
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1415
    return-void
.end method

.method private blacklist resetWindowPages()V
    .registers 5

    .line 1813
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1814
    :cond_7
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    if-nez v0, :cond_c

    return-void

    .line 1815
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 1816
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastWindowPage:I

    .line 1817
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 1818
    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 1817
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1820
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method private blacklist scalePreview(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "position"    # Landroid/graphics/Rect;

    .line 1385
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    if-nez p1, :cond_16

    :cond_c
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-eqz v0, :cond_28

    .line 1387
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1388
    :cond_16
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    .line 1389
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1390
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    goto :goto_28

    .line 1392
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1395
    :cond_28
    :goto_28
    return-void
.end method

.method private blacklist setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V
    .registers 6
    .param p1, "colors"    # Landroid/app/WallpaperColors;

    .line 881
    if-nez p1, :cond_3

    .line 882
    return-void

    .line 884
    :cond_3
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    .line 885
    .local v0, "colorHints":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_11

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    .line 889
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    if-eq v1, v2, :cond_24

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_24

    .line 890
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    .line 891
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurfaceDimming()V

    .line 893
    :cond_24
    return-void
.end method

.method private blacklist showScreenshotOfWallpaper()Z
    .registers 8

    .line 1998
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_e1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_e1

    .line 2003
    :cond_11
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2004
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const-string v3, "WallpaperService"

    if-eqz v2, :cond_2c

    .line 2005
    const-string v2, "Failed to screenshot wallpaper: surface bounds are empty"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    return v1

    .line 2009
    :cond_2c
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_38

    .line 2010
    const-string v2, "Screenshot is unexpectedly not null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 2015
    :cond_38
    new-instance v2, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v2, v4}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 2021
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2022
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    move-result-object v2

    .line 2023
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2024
    invoke-virtual {v2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v2

    .line 2016
    invoke-static {v2}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v2

    .line 2026
    .local v2, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v2, :cond_64

    .line 2027
    const-string v4, "Failed to screenshot wallpaper: screenshotBuffer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    return v1

    .line 2031
    :cond_64
    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 2033
    .local v1, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2036
    .local v3, "t":Landroid/view/SurfaceControl$Transaction;
    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper snapshot for engine "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2037
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2038
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2039
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2040
    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2041
    const-string v5, "WallpaperService.Engine.showScreenshotOfWallpaper"

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2042
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2043
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2045
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 2047
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 2048
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 2050
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const v5, 0x7fffffff

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2051
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2052
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2053
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2055
    const/4 v4, 0x1

    return v4

    .line 2000
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .end local v2    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .end local v3    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_e1
    :goto_e1
    return v1
.end method

.method private blacklist unfreeze()V
    .registers 2

    .line 1944
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 1945
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_b

    .line 1946
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 1948
    :cond_b
    return-void
.end method

.method private blacklist updateConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 3
    .param p1, "mergedConfiguration"    # Landroid/util/MergedConfiguration;

    .line 1052
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 1053
    return-void
.end method

.method private blacklist updateFrozenState(Z)V
    .registers 3
    .param p1, "frozenRequested"    # Z

    .line 1908
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    .line 1913
    return-void

    .line 1915
    :cond_d
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 1916
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 1917
    .local v0, "isFrozen":Z
    :goto_16
    if-ne p1, v0, :cond_19

    .line 1918
    return-void

    .line 1920
    :cond_19
    if-eqz p1, :cond_1f

    .line 1921
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    goto :goto_22

    .line 1923
    :cond_1f
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->unfreeze()V

    .line 1925
    :goto_22
    return-void
.end method

.method private blacklist updatePageColors(Landroid/service/wallpaper/EngineWindowPage;IIF)V
    .registers 22
    .param p1, "page"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "pageIndx"    # I
    .param p3, "numPages"    # I
    .param p4, "xOffsetStep"    # F

    .line 1742
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WallpaperService"

    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 1743
    :cond_d
    const-string v0, "WallpaperService#updatePageColors"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1749
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getAreas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/RectF;

    .line 1750
    .local v5, "area":Landroid/graphics/RectF;
    if-nez v5, :cond_2a

    goto :goto_1a

    .line 1751
    :cond_2a
    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct {v1, v5, v6, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v8

    .line 1752
    .local v8, "subArea":Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1753
    .local v9, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v10, v8, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1754
    .local v10, "x":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v11, v8, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 1755
    .local v11, "y":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1756
    .local v12, "width":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1759
    .local v13, "height":I
    :try_start_6a
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_72} :catch_a6

    move-object v14, v0

    .line 1763
    .local v14, "target":Landroid/graphics/Bitmap;
    nop

    .line 1764
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    invoke-static {v14, v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v15

    .line 1765
    .local v15, "color":Landroid/app/WallpaperColors;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 1766
    move-object/from16 v16, v4

    invoke-virtual {v2, v5}, Landroid/service/wallpaper/EngineWindowPage;->getColors(Landroid/graphics/RectF;)Landroid/app/WallpaperColors;

    move-result-object v4

    .line 1774
    .local v4, "currentColor":Landroid/app/WallpaperColors;
    if-eqz v4, :cond_8b

    invoke-virtual {v15, v4}, Landroid/app/WallpaperColors;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 1775
    :cond_8b
    invoke-virtual {v2, v5, v15}, Landroid/service/wallpaper/EngineWindowPage;->addWallpaperColors(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    .line 1782
    :try_start_8e
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1783
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 1782
    invoke-interface {v0, v5, v15, v2}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_99} :catch_9a

    .line 1786
    goto :goto_a0

    .line 1784
    :catch_9a
    move-exception v0

    .line 1785
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling Connection.onLocalWallpaperColorsChanged"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1788
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "currentColor":Landroid/app/WallpaperColors;
    .end local v5    # "area":Landroid/graphics/RectF;
    .end local v8    # "subArea":Landroid/graphics/RectF;
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v14    # "target":Landroid/graphics/Bitmap;
    .end local v15    # "color":Landroid/app/WallpaperColors;
    :cond_a0
    :goto_a0
    move-object/from16 v2, p1

    move-object/from16 v4, v16

    goto/16 :goto_1a

    .line 1760
    .restart local v5    # "area":Landroid/graphics/RectF;
    .restart local v8    # "subArea":Landroid/graphics/RectF;
    .restart local v9    # "b":Landroid/graphics/Bitmap;
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    :catch_a6
    move-exception v0

    move-object/from16 v16, v4

    .line 1761
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error creating page local color bitmap"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1762
    move-object/from16 v2, p1

    move-object/from16 v4, v16

    goto/16 :goto_1a

    .line 1789
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "area":Landroid/graphics/RectF;
    .end local v8    # "subArea":Landroid/graphics/RectF;
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    :cond_b4
    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1790
    return-void
.end method

.method private blacklist updateSurfaceDimming()V
    .registers 7

    .line 914
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetENABLE_WALLPAPER_DIMMING()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_b

    goto :goto_7e

    .line 918
    :cond_b
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 921
    .local v0, "surfaceControlTransaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "WallpaperService"

    const/4 v4, 0x0

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    if-nez v1, :cond_26

    :cond_1e
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_66

    .line 923
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting wallpaper dimming: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    aput v3, v1, v4

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 929
    .local v1, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 930
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 937
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 943
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 944
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_79

    .line 945
    :cond_66
    const-string v1, "Setting wallpaper dimming: 0"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 947
    invoke-virtual {p0, v4, v4, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 950
    :goto_79
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 951
    return-void

    .line 915
    .end local v0    # "surfaceControlTransaction":Landroid/view/SurfaceControl$Transaction;
    :cond_7e
    :goto_7e
    return-void
.end method

.method private blacklist updateWallpaperDimming(F)V
    .registers 3
    .param p1, "dimAmount"    # F

    .line 901
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    .line 902
    return-void

    .line 906
    :cond_7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 909
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    .line 910
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurfaceDimming()V

    .line 911
    return-void
.end method

.method private blacklist validStep(F)Z
    .registers 6
    .param p1, "step"    # F

    .line 1884
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetPROHIBITED_STEPS()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1e

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method


# virtual methods
.method public blacklist addLocalColorsAreas(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 1838
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1842
    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1848
    return-void
.end method

.method greylist-max-o attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .registers 5
    .param p1, "wrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 1419
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 1420
    return-void

    .line 1423
    :cond_5
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 1424
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-$$Nest$fgetmCaller(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1425
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 1426
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 1427
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 1428
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1429
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 1431
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 1433
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1434
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1435
    invoke-virtual {v2}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1434
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1436
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplay:Landroid/view/Display;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1438
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7dd

    const/4 v2, 0x0

    .line 1439
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1440
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 1442
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 1443
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 1444
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 1445
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getInstallOrientation()I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayInstallOrientation:I

    .line 1448
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 1450
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1452
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1453
    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1454
    return-void
.end method

.method greylist-max-o detach()V
    .registers 5

    .line 2075
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 2076
    return-void

    .line 2079
    :cond_5
    invoke-static {p0}, Landroid/animation/AnimationHandler;->removeRequestor(Ljava/lang/Object;)V

    .line 2081
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 2083
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1a

    .line 2084
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 2087
    :cond_1a
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 2088
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2090
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 2093
    :cond_24
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 2096
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 2098
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_67

    .line 2103
    const/4 v0, 0x0

    :try_start_2f
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v2, :cond_38

    .line 2104
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    .line 2105
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 2108
    :cond_38
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3f} :catch_40

    .line 2110
    goto :goto_41

    .line 2109
    :catch_40
    move-exception v2

    .line 2111
    :goto_41
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 2112
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v2, :cond_51

    .line 2113
    invoke-virtual {v2}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 2114
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2116
    :cond_51
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_65

    .line 2117
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2118
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2120
    :cond_65
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 2122
    :cond_67
    return-void
.end method

.method public blacklist doAmbientModeChanged(ZJ)V
    .registers 5
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J

    .line 1482
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_d

    .line 1487
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    .line 1488
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_d

    .line 1489
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->onAmbientModeChanged(ZJ)V

    .line 1492
    :cond_d
    return-void
.end method

.method greylist-max-o doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .registers 10
    .param p1, "cmd"    # Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 1889
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_35

    .line 1890
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    const-string v1, "android.wallpaper.freeze"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.wallpaper.unfreeze"

    if-nez v0, :cond_18

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1891
    :cond_18
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateFrozenState(Z)V

    .line 1893
    :cond_23
    iget-object v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v7, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "result":Landroid/os/Bundle;
    goto :goto_36

    .line 1896
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_35
    const/4 v0, 0x0

    .line 1898
    .restart local v0    # "result":Landroid/os/Bundle;
    :goto_36
    iget-boolean v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v1, :cond_47

    .line 1901
    :try_start_3a
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_45} :catch_46

    .line 1903
    goto :goto_47

    .line 1902
    :catch_46
    move-exception v1

    .line 1905
    :cond_47
    :goto_47
    return-void
.end method

.method greylist-max-o doDesiredSizeChanged(II)V
    .registers 4
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .line 1495
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_13

    .line 1498
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 1499
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 1500
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 1501
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 1503
    :cond_13
    return-void
.end method

.method greylist-max-o doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1506
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1a

    .line 1508
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1509
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1510
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1513
    :cond_1a
    return-void
.end method

.method greylist-max-o doOffsetsChanged(Z)V
    .registers 15
    .param p1, "always"    # Z

    .line 1556
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 1557
    return-void

    .line 1560
    :cond_5
    if-nez p1, :cond_c

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-nez v0, :cond_c

    .line 1561
    return-void

    .line 1569
    :cond_c
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1570
    :try_start_f
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 1571
    .local v1, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    move v9, v2

    .line 1572
    .local v9, "yOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    move v10, v2

    .line 1573
    .local v10, "xOffsetStep":F
    iget v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 1574
    .local v6, "yOffsetStep":F
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    move v11, v2

    .line 1575
    .local v11, "sync":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 1576
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 1577
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_6b

    .line 1579
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_58

    .line 1580
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_55

    .line 1583
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int/2addr v0, v3

    .line 1584
    .local v0, "availw":I
    const/high16 v3, 0x3f000000    # 0.5f

    if-lez v0, :cond_3c

    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v4, v4

    neg-int v4, v4

    move v7, v4

    goto :goto_3d

    :cond_3c
    move v7, v2

    .line 1585
    .local v7, "xPixels":I
    :goto_3d
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v12, v4, v5

    .line 1586
    .local v12, "availh":I
    if-lez v12, :cond_4c

    int-to-float v2, v12

    mul-float/2addr v2, v9

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    :cond_4c
    move v8, v2

    .line 1587
    .local v8, "yPixels":I
    move-object v2, p0

    move v3, v1

    move v4, v9

    move v5, v10

    invoke-virtual/range {v2 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 1588
    .end local v0    # "availw":I
    .end local v7    # "xPixels":I
    .end local v8    # "yPixels":I
    .end local v12    # "availh":I
    goto :goto_58

    .line 1589
    :cond_55
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    .line 1593
    :cond_58
    :goto_58
    if-eqz v11, :cond_67

    .line 1596
    :try_start_5a
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_65} :catch_66

    .line 1598
    goto :goto_67

    .line 1597
    :catch_66
    move-exception v0

    .line 1602
    :cond_67
    :goto_67
    invoke-direct {p0, v1, v10}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 1603
    return-void

    .line 1577
    .end local v1    # "xOffset":F
    .end local v6    # "yOffsetStep":F
    .end local v9    # "yOffset":F
    .end local v10    # "xOffsetStep":F
    .end local v11    # "sync":Z
    :catchall_6b
    move-exception v1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method greylist-max-o doVisibilityChanged(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 1516
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_15

    .line 1517
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 1518
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 1519
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {p0, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    goto :goto_18

    .line 1521
    :cond_15
    invoke-static {p1, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 1523
    :cond_18
    :goto_18
    return-void
.end method

.method protected whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 964
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 965
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 966
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 967
    const-string v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 968
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDisplay="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 969
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 970
    const-string v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 971
    const-string v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 972
    const-string v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 973
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 974
    const-string v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 975
    const-string v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 976
    const-string v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 977
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 978
    const-string v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 979
    const-string v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 980
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 981
    const-string v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 982
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWinFrames="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 983
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 985
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 986
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mZoom="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 987
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPreviewSurfacePosition="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 989
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_11d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingXOffset="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 991
    const-string v1, " mPendingXOffset="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 992
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingXOffsetStep="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 993
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 994
    const-string v1, " mPendingXOffsetStep="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 995
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 996
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 997
    const-string v1, " mPendingSync="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 998
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz v1, :cond_177

    .line 999
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingMove="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1001
    :cond_177
    monitor-exit v0

    .line 1002
    return-void

    .line 1001
    :catchall_179
    move-exception v1

    monitor-exit v0
    :try_end_17b
    .catchall {:try_start_11d .. :try_end_17b} :catchall_179

    throw v1
.end method

.method public whitelist getDesiredMinimumHeight()I
    .registers 2

    .line 508
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .registers 2

    .line 499
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public whitelist getDisplayContext()Landroid/content/Context;
    .registers 2

    .line 1469
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .line 490
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public blacklist getZoom()F
    .registers 2

    .line 656
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    return v0
.end method

.method public whitelist isInAmbientMode()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 549
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    return v0
.end method

.method public whitelist isPreview()Z
    .registers 2

    .line 539
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public whitelist isVisible()Z
    .registers 2

    .line 517
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method synthetic blacklist lambda$addLocalColorsAreas$3$android-service-wallpaper-WallpaperService$Engine(Ljava/util/List;)V
    .registers 4
    .param p1, "regions"    # Ljava/util/List;

    .line 1843
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1844
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    invoke-direct {p0, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 1845
    return-void
.end method

.method synthetic blacklist lambda$processLocalColors$1$android-service-wallpaper-WallpaperService$Engine(IIFF)V
    .registers 12
    .param p1, "xCurrentPage"    # I
    .param p2, "xPages"    # I
    .param p3, "finalXOffsetStep"    # F
    .param p4, "finalXOffset"    # F

    .line 1640
    const-string v0, "WallpaperService#processLocalColors"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1641
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 1642
    move v0, p1

    .line 1644
    .local v0, "xPage":I
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v1

    if-eqz v2, :cond_11

    array-length v1, v1

    if-eq v1, p2, :cond_18

    .line 1645
    :cond_11
    new-array v1, p2, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 1646
    invoke-direct {p0, v1, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V

    .line 1648
    :cond_18
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-eqz v1, :cond_56

    .line 1649
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 1650
    .local v2, "colorArea":Landroid/graphics/RectF;
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v3, v2}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_26

    .line 1651
    :cond_3b
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1652
    invoke-direct {p0, v2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v3

    .line 1653
    .local v3, "colorPage":I
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v4, v4, v3

    .line 1654
    .local v4, "currentPage":Landroid/service/wallpaper/EngineWindowPage;
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 1655
    invoke-virtual {v4, v2}, Landroid/service/wallpaper/EngineWindowPage;->removeColor(Landroid/graphics/RectF;)V

    .line 1656
    .end local v2    # "colorArea":Landroid/graphics/RectF;
    .end local v3    # "colorPage":I
    .end local v4    # "currentPage":Landroid/service/wallpaper/EngineWindowPage;
    goto :goto_26

    .line 1657
    :cond_51
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1659
    :cond_56
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v1

    if-lt v0, v2, :cond_5e

    .line 1667
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .line 1669
    :cond_5e
    aget-object v1, v1, v0

    .line 1670
    .local v1, "current":Landroid/service/wallpaper/EngineWindowPage;
    invoke-virtual {p0, v1, v0, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePage(Landroid/service/wallpaper/EngineWindowPage;IIF)V

    .line 1671
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1672
    return-void
.end method

.method synthetic blacklist lambda$removeLocalColorsAreas$4$android-service-wallpaper-WallpaperService$Engine(Ljava/util/List;)V
    .registers 7
    .param p1, "regions"    # Ljava/util/List;

    .line 1858
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 1859
    .local v0, "step":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 1860
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 1861
    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1862
    return-void

    .line 1864
    :cond_13
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v2

    if-ge v1, v2, :cond_33

    .line 1865
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 1866
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v3, v3, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/service/wallpaper/EngineWindowPage;->removeArea(Landroid/graphics/RectF;)V

    .line 1865
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1864
    .end local v2    # "j":I
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1869
    .end local v1    # "i":I
    :cond_33
    return-void
.end method

.method synthetic blacklist lambda$updatePage$2$android-service-wallpaper-WallpaperService$Engine(Landroid/service/wallpaper/EngineWindowPage;IIFLandroid/graphics/Bitmap;JI)V
    .registers 12
    .param p1, "currentPage"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "pageIndx"    # I
    .param p3, "numPages"    # I
    .param p4, "xOffsetStep"    # F
    .param p5, "finalScreenShot"    # Landroid/graphics/Bitmap;
    .param p6, "current"    # J
    .param p8, "res"    # I

    .line 1718
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1720
    if-eqz p8, :cond_22

    .line 1721
    invoke-virtual {p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1723
    .local v0, "lastBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1724
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 1725
    .local v1, "lastScreenshot":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_21

    .line 1726
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1727
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;IIF)V

    .line 1729
    .end local v0    # "lastBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "lastScreenshot":Landroid/graphics/Bitmap;
    :cond_21
    goto :goto_2d

    .line 1730
    :cond_22
    iput-object p5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 1732
    invoke-virtual {p1, p5}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1733
    invoke-virtual {p1, p6, p7}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 1734
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;IIF)V

    .line 1736
    :goto_2d
    return-void
.end method

.method synthetic blacklist lambda$updateSurfaceDimming$0$android-service-wallpaper-WallpaperService$Engine(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "surfaceControlTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "va"    # Landroid/animation/ValueAnimator;

    .line 931
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 932
    .local v0, "dimValue":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_18

    .line 933
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    .line 934
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 936
    :cond_18
    return-void
.end method

.method public whitelist notifyColorsChanged()V
    .registers 7

    .line 801
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 802
    .local v0, "now":J
    iget-wide v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    const-string v3, "WallpaperService"

    if-gez v2, :cond_2f

    .line 803
    const-string v2, "This call has been deferred. You should only call notifyColorsChanged() once every 1.0 seconds."

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 807
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 809
    :cond_2e
    return-void

    .line 811
    :cond_2f
    iput-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    .line 812
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 815
    :try_start_38
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onComputeColors()Landroid/app/WallpaperColors;

    move-result-object v2

    .line 816
    .local v2, "newColors":Landroid/app/WallpaperColors;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    if-eqz v4, :cond_4a

    .line 817
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-interface {v4, v2, v5}, Landroid/service/wallpaper/IWallpaperConnection;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V

    goto :goto_4f

    .line 819
    :cond_4a
    const-string v4, "Can\'t notify system because wallpaper connection was not established."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_4f
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 823
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {p0, v4, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_59} :catch_5a

    .line 826
    .end local v2    # "newColors":Landroid/app/WallpaperColors;
    goto :goto_60

    .line 824
    :catch_5a
    move-exception v2

    .line 825
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "Can\'t notify system because wallpaper connection was lost."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_60
    return-void
.end method

.method public blacklist notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/WallpaperColors;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 855
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local p2, "colors":Ljava/util/List;, "Ljava/util/List<Landroid/app/WallpaperColors;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 856
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    .line 857
    .local v1, "color":Landroid/app/WallpaperColors;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 858
    .local v2, "area":Landroid/graphics/RectF;
    if-eqz v1, :cond_31

    if-nez v2, :cond_1e

    .line 863
    goto :goto_31

    .line 866
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 869
    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    .line 866
    invoke-interface {v3, v2, v1, v4}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    .line 873
    goto :goto_31

    .line 871
    :catch_2a
    move-exception v3

    .line 872
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 855
    .end local v1    # "color":Landroid/app/WallpaperColors;
    .end local v2    # "area":Landroid/graphics/RectF;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 875
    .end local v0    # "i":I
    :cond_34
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 876
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 877
    .local v0, "primaryColors":Landroid/app/WallpaperColors;
    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    .line 878
    return-void
.end method

.method public whitelist onAmbientModeChanged(ZJ)V
    .registers 4
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 749
    return-void
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .registers 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 690
    return-void
.end method

.method public whitelist onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .line 732
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onComputeColors()Landroid/app/WallpaperColors;
    .registers 2

    .line 843
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 664
    return-void
.end method

.method public whitelist onDesiredSizeChanged(II)V
    .registers 3
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .line 756
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 672
    return-void
.end method

.method public whitelist onOffsetsChanged(FFFFII)V
    .registers 7
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .line 711
    return-void
.end method

.method public whitelist onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 763
    return-void
.end method

.method public whitelist onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 777
    return-void
.end method

.method public whitelist onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 784
    return-void
.end method

.method public whitelist onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 770
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 700
    return-void
.end method

.method public whitelist onVisibilityChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 680
    return-void
.end method

.method public whitelist onZoomChanged(F)V
    .registers 2
    .param p1, "zoom"    # F

    .line 794
    return-void
.end method

.method public blacklist removeLocalColorsAreas(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 1856
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1857
    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1870
    return-void
.end method

.method public blacklist reportEngineShown(Z)V
    .registers 7
    .param p1, "waitForEngineShown"    # Z

    .line 583
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-eqz v0, :cond_7

    return-void

    .line 584
    :cond_7
    const/16 v0, 0x27a6

    if-nez p1, :cond_1c

    .line 585
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 586
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 587
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 588
    .end local v1    # "message":Landroid/os/Message;
    goto :goto_37

    .line 590
    :cond_1c
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_37

    .line 591
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 592
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 595
    .end local v0    # "message":Landroid/os/Message;
    :cond_37
    :goto_37
    return-void
.end method

.method greylist-max-o reportSurfaceDestroyed()V
    .registers 6

    .line 2059
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_26

    .line 2060
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 2061
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2062
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    .line 2063
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_21

    .line 2064
    array-length v2, v1

    :goto_15
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    .line 2065
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2064
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 2070
    :cond_21
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2072
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_26
    return-void
.end method

.method greylist-max-o reportVisibility()V
    .registers 5

    .line 1526
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_9

    .line 1528
    return-void

    .line 1530
    :cond_9
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_43

    .line 1531
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    :goto_18
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 1532
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    if-eq v0, v3, :cond_23

    move v0, v3

    goto :goto_24

    :cond_23
    move v0, v1

    .line 1533
    .local v0, "visible":Z
    :goto_24
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eq v2, v0, :cond_43

    .line 1534
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1537
    if-eqz v0, :cond_32

    .line 1541
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 1543
    invoke-virtual {p0, v3, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1545
    :cond_32
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1546
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v1, :cond_40

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-eqz v1, :cond_40

    .line 1548
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    .line 1550
    :cond_40
    invoke-static {v0, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 1553
    .end local v0    # "visible":Z
    :cond_43
    return-void
.end method

.method blacklist scaleAndCropScreenshot()V
    .registers 12

    .line 1962
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1963
    return-void

    .line 1965
    :cond_5
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_89

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_12

    goto :goto_89

    .line 1971
    :cond_12
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1974
    .local v0, "scaleFactor":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    .line 1975
    .local v1, "diffX":I
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v8, v2, v3

    .line 1981
    .local v8, "diffY":I
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1982
    move v4, v0

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v4, Landroid/graphics/Rect;

    div-int/lit8 v5, v1, 0x2

    div-int/lit8 v6, v8, 0x2

    div-int/lit8 v7, v1, 0x2

    iget-object v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v9

    div-int/lit8 v9, v8, 0x2

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    invoke-direct {v4, v5, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1986
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    neg-int v4, v1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    neg-int v5, v8

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 1993
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 1994
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1995
    return-void

    .line 1966
    .end local v0    # "scaleFactor":F
    .end local v1    # "diffX":I
    .end local v8    # "diffY":I
    :cond_89
    :goto_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected screenshot size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    return-void
.end method

.method public greylist-max-o setCreated(Z)V
    .registers 2
    .param p1, "created"    # Z

    .line 960
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 961
    return-void
.end method

.method public greylist setFixedSizeAllowed(Z)V
    .registers 2
    .param p1, "allowed"    # Z

    .line 647
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    .line 648
    return-void
.end method

.method public whitelist setOffsetNotificationsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 622
    if-eqz p1, :cond_7

    .line 623
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_b

    .line 625
    :cond_7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    :goto_b
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 627
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_15

    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 630
    :cond_15
    return-void
.end method

.method public blacklist setShowForAllUsers(Z)V
    .registers 3
    .param p1, "show"    # Z

    .line 634
    if-eqz p1, :cond_7

    .line 635
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_b

    .line 637
    :cond_7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_b
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 639
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_15

    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 642
    :cond_15
    return-void
.end method

.method public whitelist setTouchEventsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 605
    if-eqz p1, :cond_7

    .line 606
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_b

    .line 607
    :cond_7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    :goto_b
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 608
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_15

    .line 609
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 611
    :cond_15
    return-void
.end method

.method public blacklist setZoom(F)V
    .registers 5
    .param p1, "zoom"    # F

    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "updated":Z
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1021
    :try_start_4
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    if-eqz v2, :cond_b

    .line 1022
    const/4 v2, 0x0

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1024
    :cond_b
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_16

    .line 1025
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1026
    const/4 v0, 0x1

    .line 1028
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_23

    .line 1030
    if-eqz v0, :cond_22

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v1, :cond_22

    .line 1031
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onZoomChanged(F)V

    .line 1033
    :cond_22
    return-void

    .line 1028
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public blacklist shouldWaitForEngineShown()Z
    .registers 2

    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldZoomOutWallpaper()Z
    .registers 2

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsLocalColorExtraction()Z
    .registers 2

    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method blacklist updatePage(Landroid/service/wallpaper/EngineWindowPage;IIF)V
    .registers 27
    .param p1, "currentPage"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "pageIndx"    # I
    .param p3, "numPages"    # I
    .param p4, "xOffsetStep"    # F

    .line 1694
    move-object/from16 v9, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long v10, v0, v2

    .line 1695
    .local v10, "current":J
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getLastUpdateTime()J

    move-result-wide v0

    sub-long v12, v10, v0

    .line 1698
    .local v12, "lapsed":J
    cmp-long v0, v12, v2

    if-gez v0, :cond_16

    .line 1699
    return-void

    .line 1701
    :cond_16
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v14

    .line 1702
    .local v14, "surface":Landroid/view/Surface;
    invoke-virtual {v14}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    .line 1703
    :cond_23
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    move v15, v0

    .line 1704
    .local v15, "widthIsLarger":Z
    if-eqz v15, :cond_38

    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_3c

    .line 1705
    :cond_38
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_3c
    move v7, v0

    .line 1706
    .local v7, "smaller":I
    const/high16 v0, 0x42800000    # 64.0f

    int-to-float v1, v7

    div-float v16, v0, v1

    .line 1707
    .local v16, "ratio":F
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v8, v0

    .line 1708
    .local v8, "width":I
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v5, v0

    .line 1709
    .local v5, "height":I
    if-lez v8, :cond_8f

    if-gtz v5, :cond_60

    move/from16 v21, v5

    move/from16 v20, v7

    move-wide/from16 v17, v12

    move/from16 v19, v15

    move v15, v8

    goto :goto_98

    .line 1713
    :cond_60
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1715
    .local v4, "screenShot":Landroid/graphics/Bitmap;
    move-object v6, v4

    .line 1716
    .local v6, "finalScreenShot":Landroid/graphics/Bitmap;
    const-string v0, "WallpaperService#pixelCopy"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1717
    new-instance v3, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v17, v12

    move-object v12, v3

    .end local v12    # "lapsed":J
    .local v17, "lapsed":J
    move/from16 v3, p2

    move-object v13, v4

    .end local v4    # "screenShot":Landroid/graphics/Bitmap;
    .local v13, "screenShot":Landroid/graphics/Bitmap;
    move/from16 v4, p3

    move/from16 v19, v15

    move v15, v5

    .end local v5    # "height":I
    .local v15, "height":I
    .local v19, "widthIsLarger":Z
    move/from16 v5, p4

    move/from16 v20, v7

    move/from16 v21, v15

    move v15, v8

    .end local v7    # "smaller":I
    .end local v8    # "width":I
    .local v15, "width":I
    .local v20, "smaller":I
    .local v21, "height":I
    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/service/wallpaper/EngineWindowPage;IIFLandroid/graphics/Bitmap;J)V

    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    invoke-static {v14, v13, v12, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 1738
    return-void

    .line 1709
    .end local v6    # "finalScreenShot":Landroid/graphics/Bitmap;
    .end local v13    # "screenShot":Landroid/graphics/Bitmap;
    .end local v17    # "lapsed":J
    .end local v19    # "widthIsLarger":Z
    .end local v20    # "smaller":I
    .end local v21    # "height":I
    .restart local v5    # "height":I
    .restart local v7    # "smaller":I
    .restart local v8    # "width":I
    .restart local v12    # "lapsed":J
    .local v15, "widthIsLarger":Z
    :cond_8f
    move/from16 v21, v5

    move/from16 v20, v7

    move-wide/from16 v17, v12

    move/from16 v19, v15

    move v15, v8

    .line 1710
    .end local v5    # "height":I
    .end local v7    # "smaller":I
    .end local v8    # "width":I
    .end local v12    # "lapsed":J
    .local v15, "width":I
    .restart local v17    # "lapsed":J
    .restart local v19    # "widthIsLarger":Z
    .restart local v20    # "smaller":I
    .restart local v21    # "height":I
    :goto_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong width and height values of bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v21

    .end local v21    # "height":I
    .local v1, "height":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    return-void
.end method

.method greylist-max-o updateSurface(ZZZ)V
    .registers 54
    .param p1, "forceRelayout"    # Z
    .param p2, "forceReport"    # Z
    .param p3, "redrawNeeded"    # Z

    .line 1056
    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v2, "WallpaperService"

    if-eqz v0, :cond_e

    .line 1057
    const-string v0, "Ignoring updateSurface due to destroyed"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    return-void

    .line 1061
    :cond_e
    const/4 v0, 0x0

    .line 1062
    .local v0, "fixedSize":Z
    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v3

    .line 1063
    .local v3, "myWidth":I
    if-gtz v3, :cond_19

    const/4 v3, -0x1

    goto :goto_1a

    .line 1064
    :cond_19
    const/4 v0, 0x1

    .line 1065
    :goto_1a
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v4

    .line 1066
    .local v4, "myHeight":I
    if-gtz v4, :cond_26

    const/4 v4, -0x1

    move v5, v4

    move v4, v0

    goto :goto_29

    .line 1067
    :cond_26
    const/4 v0, 0x1

    move v5, v4

    move v4, v0

    .line 1069
    .end local v0    # "fixedSize":Z
    .local v4, "fixedSize":Z
    .local v5, "myHeight":I
    :goto_29
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    move v7, v0

    .line 1070
    .local v7, "creating":Z
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    xor-int/2addr v0, v6

    move v8, v0

    .line 1071
    .local v8, "surfaceCreating":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v9}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v9

    const/4 v10, 0x0

    if-eq v0, v9, :cond_3f

    move v0, v6

    goto :goto_40

    :cond_3f
    move v0, v10

    :goto_40
    move v9, v0

    .line 1072
    .local v9, "formatChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    if-ne v0, v3, :cond_4c

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    if-eq v0, v5, :cond_4a

    goto :goto_4c

    :cond_4a
    move v0, v10

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v0, v6

    :goto_4d
    move v11, v0

    .line 1073
    .local v11, "sizeChanged":Z
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    xor-int/2addr v0, v6

    move v12, v0

    .line 1074
    .local v12, "insetsChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v13}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v13

    if-eq v0, v13, :cond_5e

    move v0, v6

    goto :goto_5f

    :cond_5e
    move v0, v10

    :goto_5f
    move v13, v0

    .line 1075
    .local v13, "typeChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v0, v14, :cond_6f

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v0, v14, :cond_6d

    goto :goto_6f

    :cond_6d
    move v0, v10

    goto :goto_70

    :cond_6f
    :goto_6f
    move v0, v6

    :goto_70
    move v14, v0

    .line 1077
    .local v14, "flagsChanged":Z
    if-nez p1, :cond_9c

    if-nez v7, :cond_9c

    if-nez v8, :cond_9c

    if-nez v9, :cond_9c

    if-nez v11, :cond_9c

    if-nez v13, :cond_9c

    if-nez v14, :cond_9c

    if-nez p3, :cond_9c

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v0, :cond_88

    goto :goto_9c

    :cond_88
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v36, v9

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v4, p3

    goto/16 :goto_719

    .line 1085
    :cond_9c
    :goto_9c
    :try_start_9c
    iput v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 1086
    iput v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 1087
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 1088
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 1090
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1091
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1093
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v15, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1095
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 1096
    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    or-int/lit16 v0, v0, 0x200

    const/high16 v16, 0x10000

    or-int v0, v0, v16

    or-int/lit16 v0, v0, 0x100

    or-int/lit8 v0, v0, 0x8

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1102
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v15, v0

    .line 1103
    .local v15, "config":Landroid/content/res/Configuration;
    iget-object v0, v15, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    move-object/from16 v16, v0

    .line 1104
    .local v16, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual/range {v16 .. v16}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v18
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_df} :catch_702

    .line 1105
    .local v18, "maxBounds":Landroid/graphics/Rect;
    const/4 v0, -0x1

    if-ne v3, v0, :cond_10a

    if-ne v5, v0, :cond_10a

    .line 1107
    :try_start_e4
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1108
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1109
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_f4
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_f4} :catch_f5

    goto :goto_139

    .line 1376
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    :catch_f5
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v36, v9

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v4, p3

    goto/16 :goto_719

    .line 1111
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    :cond_10a
    nop

    .line 1112
    :try_start_10b
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float v6, v3

    div-float/2addr v0, v6

    .line 1113
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    int-to-float v10, v5

    div-float/2addr v6, v10

    .line 1111
    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1114
    .local v0, "layoutScale":F
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v10, v3

    mul-float/2addr v10, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v10, v10, v17

    float-to-int v10, v10

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1115
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v10, v5

    mul-float/2addr v10, v0

    add-float v10, v10, v17

    float-to-int v10, v10

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1116
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v10, v10, 0x4000

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1119
    .end local v0    # "layoutScale":F
    :goto_139
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 1120
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1122
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 1123
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1125
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z
    :try_end_14f
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_14f} :catch_702

    if-nez v0, :cond_235

    .line 1127
    :try_start_151
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    sget-object v6, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v6}, Landroid/service/wallpaper/WallpaperService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1129
    .local v0, "windowStyle":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1132
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v10, v10, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1133
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x800033

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1134
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1135
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1136
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x1030310

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1138
    new-instance v6, Landroid/view/InputChannel;

    invoke-direct {v6}, Landroid/view/InputChannel;-><init>()V

    .line 1140
    .local v6, "inputChannel":Landroid/view/InputChannel;
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v17, v0

    .end local v0    # "windowStyle":Landroid/content/res/TypedArray;
    .local v17, "windowStyle":Landroid/content/res/TypedArray;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;
    :try_end_192
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_192} :catch_21e

    move/from16 v33, v11

    .end local v11    # "sizeChanged":Z
    .local v33, "sizeChanged":Z
    :try_start_194
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;
    :try_end_196
    .catch Landroid/os/RemoteException; {:try_start_194 .. :try_end_196} :catch_207

    const/16 v27, 0x0

    move/from16 v34, v13

    .end local v13    # "typeChanged":Z
    .local v34, "typeChanged":Z
    :try_start_19a
    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1141
    invoke-virtual {v13}, Landroid/view/Display;->getDisplayId()I

    move-result v28

    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;
    :try_end_1a2
    .catch Landroid/os/RemoteException; {:try_start_19a .. :try_end_1a2} :catch_1f2

    move/from16 v35, v14

    .end local v14    # "flagsChanged":Z
    .local v35, "flagsChanged":Z
    :try_start_1a4
    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_1a4 .. :try_end_1a6} :catch_1df

    move/from16 v36, v9

    .end local v9    # "formatChanged":Z
    .local v36, "formatChanged":Z
    :try_start_1a8
    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;

    .line 1140
    move-object/from16 v24, v10

    move-object/from16 v25, v0

    move-object/from16 v26, v11

    move-object/from16 v29, v13

    move-object/from16 v30, v6

    move-object/from16 v31, v14

    move-object/from16 v32, v9

    invoke-interface/range {v24 .. v32}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    if-gez v0, :cond_1c4

    .line 1143
    const-string v0, "Failed to add window while updating wallpaper surface."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    return-void

    .line 1146
    :cond_1c4
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldZoomOutWallpaper()Z

    move-result v9

    invoke-interface {v0, v2, v9}, Landroid/view/IWindowSession;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 1147
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1149
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 1150
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    :try_end_1dd
    .catch Landroid/os/RemoteException; {:try_start_1a8 .. :try_end_1dd} :catch_255

    goto/16 :goto_23d

    .line 1376
    .end local v6    # "inputChannel":Landroid/view/InputChannel;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v17    # "windowStyle":Landroid/content/res/TypedArray;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    .end local v36    # "formatChanged":Z
    .restart local v9    # "formatChanged":Z
    :catch_1df
    move-exception v0

    move/from16 v36, v9

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v11, v33

    move/from16 v4, p3

    .end local v9    # "formatChanged":Z
    .restart local v36    # "formatChanged":Z
    goto/16 :goto_719

    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .restart local v9    # "formatChanged":Z
    .restart local v14    # "flagsChanged":Z
    :catch_1f2
    move-exception v0

    move/from16 v36, v9

    move/from16 v35, v14

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v11, v33

    move/from16 v4, p3

    .end local v9    # "formatChanged":Z
    .end local v14    # "flagsChanged":Z
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    goto/16 :goto_719

    .end local v34    # "typeChanged":Z
    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .restart local v9    # "formatChanged":Z
    .restart local v13    # "typeChanged":Z
    .restart local v14    # "flagsChanged":Z
    :catch_207
    move-exception v0

    move/from16 v36, v9

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v11, v33

    move/from16 v4, p3

    .end local v9    # "formatChanged":Z
    .end local v13    # "typeChanged":Z
    .end local v14    # "flagsChanged":Z
    .restart local v34    # "typeChanged":Z
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    goto/16 :goto_719

    .end local v33    # "sizeChanged":Z
    .end local v34    # "typeChanged":Z
    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .restart local v9    # "formatChanged":Z
    .restart local v11    # "sizeChanged":Z
    .restart local v13    # "typeChanged":Z
    .restart local v14    # "flagsChanged":Z
    :catch_21e
    move-exception v0

    move/from16 v36, v9

    move/from16 v33, v11

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v4, p3

    .end local v9    # "formatChanged":Z
    .end local v11    # "sizeChanged":Z
    .end local v13    # "typeChanged":Z
    .end local v14    # "flagsChanged":Z
    .restart local v33    # "sizeChanged":Z
    .restart local v34    # "typeChanged":Z
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    goto/16 :goto_719

    .line 1125
    .end local v33    # "sizeChanged":Z
    .end local v34    # "typeChanged":Z
    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .restart local v9    # "formatChanged":Z
    .restart local v11    # "sizeChanged":Z
    .restart local v13    # "typeChanged":Z
    .restart local v14    # "flagsChanged":Z
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    :cond_235
    move/from16 v36, v9

    move/from16 v33, v11

    move/from16 v34, v13

    move/from16 v35, v14

    .line 1153
    .end local v9    # "formatChanged":Z
    .end local v11    # "sizeChanged":Z
    .end local v13    # "typeChanged":Z
    .end local v14    # "flagsChanged":Z
    .restart local v33    # "sizeChanged":Z
    .restart local v34    # "typeChanged":Z
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    :goto_23d
    :try_start_23d
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1154
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z
    :try_end_247
    .catch Landroid/os/RemoteException; {:try_start_23d .. :try_end_247} :catch_6f0

    .line 1156
    if-nez v4, :cond_266

    .line 1157
    :try_start_249
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_254
    .catch Landroid/os/RemoteException; {:try_start_249 .. :try_end_254} :catch_255

    goto :goto_26e

    .line 1376
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    :catch_255
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v11, v33

    move/from16 v4, p3

    goto/16 :goto_719

    .line 1159
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    :cond_266
    :try_start_266
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1162
    :goto_26e
    const/4 v0, 0x0

    .line 1163
    .local v0, "relayoutResult":I
    sget-boolean v2, Landroid/view/ViewRootImpl;->LOCAL_LAYOUT:Z
    :try_end_271
    .catch Landroid/os/RemoteException; {:try_start_266 .. :try_end_271} :catch_6f0

    if-eqz v2, :cond_2fa

    .line 1164
    :try_start_273
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_29e

    .line 1165
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v27, 0x0

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    invoke-interface/range {v24 .. v31}, Landroid/view/IWindowSession;->updateVisibility(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v2

    move v0, v2

    .line 1170
    :cond_29e
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempRect:Landroid/graphics/Rect;

    .line 1171
    .local v2, "displayCutoutSafe":Landroid/graphics/Rect;
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v6, v2}, Landroid/view/InsetsState;->getDisplayCutoutSafe(Landroid/graphics/Rect;)V

    .line 1172
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowLayout:Landroid/view/WindowLayout;

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    .line 1173
    invoke-virtual/range {v16 .. v16}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v16 .. v16}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v42

    iget v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    const/16 v46, 0x0

    const/high16 v47, 0x3f800000    # 1.0f

    move/from16 v17, v0

    .end local v0    # "relayoutResult":I
    .local v17, "relayoutResult":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    .line 1172
    move-object/from16 v37, v6

    move-object/from16 v38, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v2

    move/from16 v43, v11

    move/from16 v44, v13

    move-object/from16 v45, v14

    move-object/from16 v48, v0

    invoke-virtual/range {v37 .. v48}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;)V

    .line 1177
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v27, 0x0

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move-object/from16 v24, v0

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v13

    invoke-interface/range {v24 .. v30}, Landroid/view/IWindowSession;->updateLayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V
    :try_end_2f1
    .catch Landroid/os/RemoteException; {:try_start_273 .. :try_end_2f1} :catch_255

    .line 1179
    .end local v2    # "displayCutoutSafe":Landroid/graphics/Rect;
    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v12

    move/from16 v2, v17

    goto :goto_337

    .line 1180
    .end local v17    # "relayoutResult":I
    .restart local v0    # "relayoutResult":I
    :cond_2fa
    :try_start_2fa
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    const/16 v42, 0x0

    const/16 v43, 0x0

    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    move/from16 v17, v0

    .end local v0    # "relayoutResult":I
    .restart local v17    # "relayoutResult":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_310
    .catch Landroid/os/RemoteException; {:try_start_2fa .. :try_end_310} :catch_6f0

    move/from16 v24, v7

    .end local v7    # "creating":Z
    .local v24, "creating":Z
    :try_start_312
    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;
    :try_end_314
    .catch Landroid/os/RemoteException; {:try_start_312 .. :try_end_314} :catch_6e0

    move/from16 v25, v8

    .end local v8    # "surfaceCreating":Z
    .local v25, "surfaceCreating":Z
    :try_start_316
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;
    :try_end_318
    .catch Landroid/os/RemoteException; {:try_start_316 .. :try_end_318} :catch_6d2

    move/from16 v26, v12

    .end local v12    # "insetsChanged":Z
    .local v26, "insetsChanged":Z
    :try_start_31a
    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSyncSeqIdBundle:Landroid/os/Bundle;

    move-object/from16 v37, v2

    move-object/from16 v38, v6

    move-object/from16 v39, v9

    move/from16 v40, v10

    move/from16 v41, v11

    move-object/from16 v44, v13

    move-object/from16 v45, v14

    move-object/from16 v46, v0

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    move-object/from16 v49, v12

    invoke-interface/range {v37 .. v49}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I

    move-result v0

    .end local v17    # "relayoutResult":I
    .restart local v0    # "relayoutResult":I
    move v2, v0

    .line 1185
    .end local v0    # "relayoutResult":I
    .local v2, "relayoutResult":I
    :goto_337
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayInstallOrientation:I

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1186
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    add-int/2addr v0, v6

    rem-int/lit8 v0, v0, 0x4

    .line 1185
    invoke-static {v0}, Landroid/view/SurfaceControl;->rotationToBufferTransform(I)I

    move-result v0

    move v6, v0

    .line 1187
    .local v6, "transformHint":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1188
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v9, v9, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    const/16 v22, 0x0

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    invoke-static/range {v17 .. v23}, Landroid/view/WindowLayout;->computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V

    .line 1191
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0
    :try_end_36d
    .catch Landroid/os/RemoteException; {:try_start_31a .. :try_end_36d} :catch_6c4

    if-eqz v0, :cond_3cc

    .line 1192
    :try_start_36f
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_3a0

    .line 1193
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v7, "Wallpaper BBQ wrapper"

    .line 1194
    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1195
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v7, 0x2

    const/16 v8, 0x7dd

    .line 1197
    invoke-virtual {v0, v7, v8}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1198
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1199
    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v7, "Wallpaper#relayout"

    .line 1200
    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1201
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1205
    :cond_3a0
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1206
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    invoke-direct {v1, v0, v7, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->getOrCreateBLASTSurface(III)Landroid/view/Surface;

    move-result-object v0

    .line 1211
    .local v0, "blastSurface":Landroid/view/Surface;
    if-eqz v0, :cond_3cc

    .line 1212
    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v7, v7, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7, v0}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V
    :try_end_3bc
    .catch Landroid/os/RemoteException; {:try_start_36f .. :try_end_3bc} :catch_3bd

    goto :goto_3cc

    .line 1376
    .end local v0    # "blastSurface":Landroid/view/Surface;
    .end local v2    # "relayoutResult":I
    .end local v6    # "transformHint":I
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    :catch_3bd
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v12, v26

    move/from16 v11, v33

    move/from16 v4, p3

    goto/16 :goto_719

    .line 1215
    .restart local v2    # "relayoutResult":I
    .restart local v6    # "transformHint":I
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    :cond_3cc
    :goto_3cc
    :try_start_3cc
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v7}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3d4
    .catch Landroid/os/RemoteException; {:try_start_3cc .. :try_end_3d4} :catch_6c4

    if-nez v0, :cond_3e3

    .line 1216
    :try_start_3d6
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Point;->set(II)V
    :try_end_3e3
    .catch Landroid/os/RemoteException; {:try_start_3d6 .. :try_end_3e3} :catch_3bd

    .line 1222
    :cond_3e3
    :try_start_3e3
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1223
    .local v0, "w":I
    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v7, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1225
    .local v7, "h":I
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v8}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    .line 1226
    .local v8, "rawCutout":Landroid/view/DisplayCutout;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v10, v10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1227
    .local v9, "visibleFrame":Landroid/graphics/Rect;
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v10}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1228
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    const/16 v39, 0x0

    .line 1229
    invoke-virtual {v15}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v40

    const/16 v41, 0x0

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v44, 0x0

    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1232
    invoke-virtual/range {v16 .. v16}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v46

    const/16 v47, 0x0

    .line 1228
    move-object/from16 v37, v10

    move-object/from16 v38, v9

    move/from16 v42, v11

    move/from16 v43, v12

    move/from16 v45, v13

    invoke-virtual/range {v37 .. v47}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v10
    :try_end_437
    .catch Landroid/os/RemoteException; {:try_start_3e3 .. :try_end_437} :catch_6c4

    .line 1234
    .local v10, "windowInsets":Landroid/view/WindowInsets;
    if-nez v4, :cond_461

    .line 1235
    :try_start_439
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v11, v11, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    .line 1236
    .local v11, "padding":Landroid/graphics/Rect;
    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    add-int/2addr v0, v12

    .line 1237
    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    .line 1238
    iget v12, v11, Landroid/graphics/Rect;->left:I

    neg-int v12, v12

    iget v13, v11, Landroid/graphics/Rect;->top:I

    neg-int v13, v13

    iget v14, v11, Landroid/graphics/Rect;->right:I

    neg-int v14, v14

    move/from16 v17, v0

    .end local v0    # "w":I
    .local v17, "w":I
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    invoke-virtual {v10, v12, v13, v14, v0}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object v0
    :try_end_45b
    .catch Landroid/os/RemoteException; {:try_start_439 .. :try_end_45b} :catch_3bd

    move-object v10, v0

    .line 1240
    .end local v11    # "padding":Landroid/graphics/Rect;
    move-object v11, v10

    move v10, v7

    move/from16 v7, v17

    goto :goto_466

    .line 1241
    .end local v17    # "w":I
    .restart local v0    # "w":I
    :cond_461
    move v0, v3

    .line 1242
    move v7, v5

    move-object v11, v10

    move v10, v7

    move v7, v0

    .line 1245
    .end local v0    # "w":I
    .local v7, "w":I
    .local v10, "h":I
    .local v11, "windowInsets":Landroid/view/WindowInsets;
    :goto_466
    :try_start_466
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_468
    .catch Landroid/os/RemoteException; {:try_start_466 .. :try_end_468} :catch_6c4

    if-eq v0, v7, :cond_47c

    .line 1246
    const/4 v12, 0x1

    .line 1247
    .end local v33    # "sizeChanged":Z
    .local v12, "sizeChanged":Z
    :try_start_46b
    iput v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_46d
    .catch Landroid/os/RemoteException; {:try_start_46b .. :try_end_46d} :catch_46e

    goto :goto_47e

    .line 1376
    .end local v2    # "relayoutResult":I
    .end local v6    # "transformHint":I
    .end local v7    # "w":I
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .end local v10    # "h":I
    .end local v11    # "windowInsets":Landroid/view/WindowInsets;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    :catch_46e
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move v11, v12

    move/from16 v12, v26

    move/from16 v4, p3

    goto/16 :goto_719

    .line 1245
    .end local v12    # "sizeChanged":Z
    .restart local v2    # "relayoutResult":I
    .restart local v6    # "transformHint":I
    .restart local v7    # "w":I
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v10    # "h":I
    .restart local v11    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    .restart local v33    # "sizeChanged":Z
    :cond_47c
    move/from16 v12, v33

    .line 1249
    .end local v33    # "sizeChanged":Z
    .restart local v12    # "sizeChanged":Z
    :goto_47e
    :try_start_47e
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_480
    .catch Landroid/os/RemoteException; {:try_start_47e .. :try_end_480} :catch_6b6

    if-eq v0, v10, :cond_485

    .line 1250
    const/4 v12, 0x1

    .line 1251
    :try_start_483
    iput v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_485
    .catch Landroid/os/RemoteException; {:try_start_483 .. :try_end_485} :catch_46e

    .line 1258
    :cond_485
    :try_start_485
    invoke-virtual {v11}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v13, v0

    .line 1259
    .local v13, "contentInsets":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v14, v0

    .line 1260
    .local v14, "stableInsets":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0
    :try_end_49b
    .catch Landroid/os/RemoteException; {:try_start_485 .. :try_end_49b} :catch_6b6

    if-eqz v0, :cond_4a2

    .line 1261
    :try_start_49d
    invoke-virtual {v11}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0
    :try_end_4a1
    .catch Landroid/os/RemoteException; {:try_start_49d .. :try_end_4a1} :catch_46e

    goto :goto_4a3

    :cond_4a2
    move-object v0, v8

    :goto_4a3
    move-object/from16 v17, v0

    .line 1262
    .local v17, "displayCutout":Landroid/view/DisplayCutout;
    :try_start_4a5
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4ab
    .catch Landroid/os/RemoteException; {:try_start_4a5 .. :try_end_4ab} :catch_6b6

    if-nez v0, :cond_4af

    const/4 v0, 0x1

    goto :goto_4b0

    :cond_4af
    const/4 v0, 0x0

    :goto_4b0
    or-int v19, v26, v0

    .line 1263
    .end local v26    # "insetsChanged":Z
    .local v19, "insetsChanged":Z
    :try_start_4b2
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4bc

    const/4 v0, 0x1

    goto :goto_4bd

    :cond_4bc
    const/4 v0, 0x0

    :goto_4bd
    or-int v19, v19, v0

    .line 1264
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;
    :try_end_4c1
    .catch Landroid/os/RemoteException; {:try_start_4b2 .. :try_end_4c1} :catch_6a8

    move/from16 v20, v3

    move-object/from16 v3, v17

    .end local v17    # "displayCutout":Landroid/view/DisplayCutout;
    .local v3, "displayCutout":Landroid/view/DisplayCutout;
    .local v20, "myWidth":I
    :try_start_4c5
    invoke-virtual {v0, v3}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4c9
    .catch Landroid/os/RemoteException; {:try_start_4c5 .. :try_end_4c9} :catch_69c

    if-nez v0, :cond_4cd

    const/4 v0, 0x1

    goto :goto_4ce

    :cond_4cd
    const/4 v0, 0x0

    :goto_4ce
    or-int v17, v19, v0

    .line 1266
    .end local v19    # "insetsChanged":Z
    .local v17, "insetsChanged":Z
    :try_start_4d0
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v7, v10}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1267
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1269
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_4e4
    .catch Landroid/os/RemoteException; {:try_start_4d0 .. :try_end_4e4} :catch_690

    if-nez v0, :cond_4f6

    .line 1270
    :try_start_4e6
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V
    :try_end_4e9
    .catch Landroid/os/RemoteException; {:try_start_4e6 .. :try_end_4e9} :catch_4ea

    .line 1272
    return-void

    .line 1376
    .end local v2    # "relayoutResult":I
    .end local v3    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v6    # "transformHint":I
    .end local v7    # "w":I
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .end local v10    # "h":I
    .end local v11    # "windowInsets":Landroid/view/WindowInsets;
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "stableInsets":Landroid/graphics/Rect;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    :catch_4ea
    move-exception v0

    move/from16 v21, v4

    move/from16 v27, v5

    move v11, v12

    move/from16 v12, v17

    move/from16 v4, p3

    goto/16 :goto_719

    .line 1275
    .restart local v2    # "relayoutResult":I
    .restart local v3    # "displayCutout":Landroid/view/DisplayCutout;
    .restart local v6    # "transformHint":I
    .restart local v7    # "w":I
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v10    # "h":I
    .restart local v11    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    .restart local v14    # "stableInsets":Landroid/graphics/Rect;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    :cond_4f6
    const/16 v19, 0x0

    .line 1278
    .local v19, "didSurface":Z
    move/from16 v21, v4

    .end local v4    # "fixedSize":Z
    .local v21, "fixedSize":Z
    :try_start_4fa
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V
    :try_end_4ff
    .catchall {:try_start_4fa .. :try_end_4ff} :catchall_654

    .line 1280
    if-eqz v25, :cond_553

    .line 1281
    const/4 v4, 0x1

    :try_start_502
    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1282
    const/16 v19, 0x1

    .line 1285
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1286
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1287
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_53f

    .line 1288
    array-length v4, v0
    :try_end_514
    .catchall {:try_start_502 .. :try_end_514} :catchall_544

    move/from16 v27, v5

    const/4 v5, 0x0

    .end local v5    # "myHeight":I
    .local v27, "myHeight":I
    :goto_517
    if-ge v5, v4, :cond_53c

    :try_start_519
    aget-object v26, v0, v5

    move-object/from16 v28, v26

    .line 1289
    .local v28, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v26, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v26, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v29, v4

    move-object/from16 v4, v28

    .end local v28    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v4, "c":Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_528
    .catchall {:try_start_519 .. :try_end_528} :catchall_52f

    .line 1288
    .end local v4    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v26

    move/from16 v4, v29

    goto :goto_517

    .line 1365
    .end local v26    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_52f
    move-exception v0

    move/from16 v4, p3

    move/from16 v28, v2

    move/from16 v29, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    goto/16 :goto_661

    .line 1288
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_53c
    move-object/from16 v26, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v26    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_555

    .line 1287
    .end local v26    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "myHeight":I
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v5    # "myHeight":I
    :cond_53f
    move-object/from16 v26, v0

    move/from16 v27, v5

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v5    # "myHeight":I
    .restart local v26    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v27    # "myHeight":I
    goto :goto_555

    .line 1365
    .end local v26    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "myHeight":I
    .restart local v5    # "myHeight":I
    :catchall_544
    move-exception v0

    move/from16 v27, v5

    move/from16 v4, p3

    move/from16 v28, v2

    move/from16 v29, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    .end local v5    # "myHeight":I
    .restart local v27    # "myHeight":I
    goto/16 :goto_661

    .line 1280
    .end local v27    # "myHeight":I
    .restart local v5    # "myHeight":I
    :cond_553
    move/from16 v27, v5

    .line 1294
    .end local v5    # "myHeight":I
    .restart local v27    # "myHeight":I
    :goto_555
    if-nez v24, :cond_55e

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_55c

    goto :goto_55e

    :cond_55c
    const/4 v0, 0x0

    goto :goto_55f

    :cond_55e
    :goto_55e
    const/4 v0, 0x1

    :goto_55f
    or-int v4, p3, v0

    .line 1297
    .end local p3    # "redrawNeeded":Z
    .local v4, "redrawNeeded":Z
    if-nez p2, :cond_575

    if-nez v24, :cond_575

    if-nez v25, :cond_575

    if-nez v36, :cond_575

    if-eqz v12, :cond_56c

    goto :goto_575

    :cond_56c
    move/from16 v28, v2

    move/from16 v29, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    goto :goto_5c4

    .line 1310
    :cond_575
    :goto_575
    const/16 v19, 0x1

    .line 1311
    :try_start_577
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I
    :try_end_57b
    .catchall {:try_start_577 .. :try_end_57b} :catchall_64a

    move/from16 v28, v2

    .end local v2    # "relayoutResult":I
    .local v28, "relayoutResult":I
    :try_start_57d
    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_57f
    .catchall {:try_start_57d .. :try_end_57f} :catchall_642

    move/from16 v29, v6

    .end local v6    # "transformHint":I
    .local v29, "transformHint":I
    :try_start_581
    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v1, v0, v5, v2, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1313
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1314
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_5be

    .line 1315
    array-length v2, v0

    const/4 v5, 0x0

    :goto_590
    if-ge v5, v2, :cond_5b7

    aget-object v6, v0, v5

    .line 1316
    .local v6, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 p3, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local p3, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v26, v2

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I
    :try_end_59c
    .catchall {:try_start_581 .. :try_end_59c} :catchall_63c

    move/from16 v30, v7

    .end local v7    # "w":I
    .local v30, "w":I
    :try_start_59e
    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_5a0
    .catchall {:try_start_59e .. :try_end_5a0} :catchall_5b2

    move-object/from16 v31, v8

    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .local v31, "rawCutout":Landroid/view/DisplayCutout;
    :try_start_5a2
    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-interface {v6, v0, v2, v7, v8}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1315
    .end local v6    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    move/from16 v2, v26

    move/from16 v7, v30

    move-object/from16 v8, v31

    goto :goto_590

    .line 1365
    .end local v31    # "rawCutout":Landroid/view/DisplayCutout;
    .end local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    :catchall_5b2
    move-exception v0

    move-object/from16 v31, v8

    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v31    # "rawCutout":Landroid/view/DisplayCutout;
    goto/16 :goto_661

    .line 1315
    .end local v30    # "w":I
    .end local v31    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v7    # "w":I
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    :cond_5b7
    move-object/from16 p3, v0

    move/from16 v30, v7

    move-object/from16 v31, v8

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v7    # "w":I
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v30    # "w":I
    .restart local v31    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_5c4

    .line 1314
    .end local v30    # "w":I
    .end local v31    # "rawCutout":Landroid/view/DisplayCutout;
    .end local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v7    # "w":I
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    :cond_5be
    move-object/from16 p3, v0

    move/from16 v30, v7

    move-object/from16 v31, v8

    .line 1322
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v7    # "w":I
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v30    # "w":I
    .restart local v31    # "rawCutout":Landroid/view/DisplayCutout;
    :goto_5c4
    if-eqz v17, :cond_5d9

    .line 1323
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1324
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1325
    iput-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 1329
    invoke-virtual {v1, v11}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    goto :goto_5d9

    .line 1365
    :catchall_5d6
    move-exception v0

    goto/16 :goto_661

    .line 1332
    :cond_5d9
    :goto_5d9
    if-eqz v4, :cond_5fd

    .line 1333
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1334
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1335
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_5fd

    .line 1336
    array-length v2, v0

    const/4 v5, 0x0

    :goto_5ea
    if-ge v5, v2, :cond_5fd

    aget-object v6, v0, v5

    .line 1337
    .restart local v6    # "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v7, v6, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v7, :cond_5fa

    .line 1338
    move-object v7, v6

    check-cast v7, Landroid/view/SurfaceHolder$Callback2;

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v7, v8}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1336
    .end local v6    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_5fa
    add-int/lit8 v5, v5, 0x1

    goto :goto_5ea

    .line 1345
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_5fd
    if-eqz v19, :cond_60f

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v0, :cond_60f

    .line 1351
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    if-eqz v0, :cond_60b

    .line 1358
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1362
    :cond_60b
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V
    :try_end_60f
    .catchall {:try_start_5a2 .. :try_end_60f} :catchall_5d6

    .line 1365
    :cond_60f
    const/4 v2, 0x0

    :try_start_610
    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1366
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1367
    if-eqz v4, :cond_62c

    .line 1368
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 1369
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const v5, 0x7fffffff

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1371
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {v1, v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 1373
    :cond_62c
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1374
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 1375
    nop

    .line 1377
    .end local v3    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .end local v10    # "h":I
    .end local v11    # "windowInsets":Landroid/view/WindowInsets;
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "stableInsets":Landroid/graphics/Rect;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    .end local v19    # "didSurface":Z
    .end local v28    # "relayoutResult":I
    .end local v29    # "transformHint":I
    .end local v30    # "w":I
    .end local v31    # "rawCutout":Landroid/view/DisplayCutout;
    move v11, v12

    move/from16 v12, v17

    goto/16 :goto_719

    .line 1365
    .restart local v3    # "displayCutout":Landroid/view/DisplayCutout;
    .restart local v7    # "w":I
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v10    # "h":I
    .restart local v11    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    .restart local v14    # "stableInsets":Landroid/graphics/Rect;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    .restart local v19    # "didSurface":Z
    .restart local v28    # "relayoutResult":I
    .restart local v29    # "transformHint":I
    :catchall_63c
    move-exception v0

    move/from16 v30, v7

    move-object/from16 v31, v8

    .end local v7    # "w":I
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v30    # "w":I
    .restart local v31    # "rawCutout":Landroid/view/DisplayCutout;
    goto :goto_661

    .end local v29    # "transformHint":I
    .end local v30    # "w":I
    .end local v31    # "rawCutout":Landroid/view/DisplayCutout;
    .local v6, "transformHint":I
    .restart local v7    # "w":I
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    :catchall_642
    move-exception v0

    move/from16 v29, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    .end local v6    # "transformHint":I
    .end local v7    # "w":I
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v29    # "transformHint":I
    .restart local v30    # "w":I
    .restart local v31    # "rawCutout":Landroid/view/DisplayCutout;
    goto :goto_661

    .end local v28    # "relayoutResult":I
    .end local v29    # "transformHint":I
    .end local v30    # "w":I
    .end local v31    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v2    # "relayoutResult":I
    .restart local v6    # "transformHint":I
    .restart local v7    # "w":I
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    :catchall_64a
    move-exception v0

    move/from16 v28, v2

    move/from16 v29, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    .end local v2    # "relayoutResult":I
    .end local v6    # "transformHint":I
    .end local v7    # "w":I
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v28    # "relayoutResult":I
    .restart local v29    # "transformHint":I
    .restart local v30    # "w":I
    .restart local v31    # "rawCutout":Landroid/view/DisplayCutout;
    goto :goto_661

    .end local v4    # "redrawNeeded":Z
    .end local v27    # "myHeight":I
    .end local v28    # "relayoutResult":I
    .end local v29    # "transformHint":I
    .end local v30    # "w":I
    .end local v31    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v2    # "relayoutResult":I
    .restart local v5    # "myHeight":I
    .restart local v6    # "transformHint":I
    .restart local v7    # "w":I
    .restart local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .local p3, "redrawNeeded":Z
    :catchall_654
    move-exception v0

    move/from16 v28, v2

    move/from16 v27, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v4, p3

    .end local v2    # "relayoutResult":I
    .end local v5    # "myHeight":I
    .end local v6    # "transformHint":I
    .end local v7    # "w":I
    .end local v8    # "rawCutout":Landroid/view/DisplayCutout;
    .end local p3    # "redrawNeeded":Z
    .restart local v4    # "redrawNeeded":Z
    .restart local v27    # "myHeight":I
    .restart local v28    # "relayoutResult":I
    .restart local v29    # "transformHint":I
    .restart local v30    # "w":I
    .restart local v31    # "rawCutout":Landroid/view/DisplayCutout;
    :goto_661
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1366
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1367
    if-eqz v4, :cond_67e

    .line 1368
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 1369
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const v6, 0x7fffffff

    const/4 v7, 0x0

    invoke-interface {v2, v5, v7, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1371
    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {v1, v2, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 1373
    :cond_67e
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1374
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 1375
    nop

    .end local v4    # "redrawNeeded":Z
    .end local v12    # "sizeChanged":Z
    .end local v17    # "insetsChanged":Z
    .end local v20    # "myWidth":I
    .end local v21    # "fixedSize":Z
    .end local v24    # "creating":Z
    .end local v25    # "surfaceCreating":Z
    .end local v27    # "myHeight":I
    .end local v34    # "typeChanged":Z
    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .end local p0    # "this":Landroid/service/wallpaper/WallpaperService$Engine;
    .end local p1    # "forceRelayout":Z
    .end local p2    # "forceReport":Z
    throw v0
    :try_end_68a
    .catch Landroid/os/RemoteException; {:try_start_610 .. :try_end_68a} :catch_68a

    .line 1376
    .end local v3    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v9    # "visibleFrame":Landroid/graphics/Rect;
    .end local v10    # "h":I
    .end local v11    # "windowInsets":Landroid/view/WindowInsets;
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "stableInsets":Landroid/graphics/Rect;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    .end local v19    # "didSurface":Z
    .end local v28    # "relayoutResult":I
    .end local v29    # "transformHint":I
    .end local v30    # "w":I
    .end local v31    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v4    # "redrawNeeded":Z
    .restart local v12    # "sizeChanged":Z
    .restart local v17    # "insetsChanged":Z
    .restart local v20    # "myWidth":I
    .restart local v21    # "fixedSize":Z
    .restart local v24    # "creating":Z
    .restart local v25    # "surfaceCreating":Z
    .restart local v27    # "myHeight":I
    .restart local v34    # "typeChanged":Z
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    .restart local p0    # "this":Landroid/service/wallpaper/WallpaperService$Engine;
    .restart local p1    # "forceRelayout":Z
    .restart local p2    # "forceReport":Z
    :catch_68a
    move-exception v0

    move v11, v12

    move/from16 v12, v17

    goto/16 :goto_719

    .end local v21    # "fixedSize":Z
    .end local v27    # "myHeight":I
    .local v4, "fixedSize":Z
    .restart local v5    # "myHeight":I
    .restart local p3    # "redrawNeeded":Z
    :catch_690
    move-exception v0

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v4, p3

    move v11, v12

    move/from16 v12, v17

    .end local v4    # "fixedSize":Z
    .end local v5    # "myHeight":I
    .restart local v21    # "fixedSize":Z
    .restart local v27    # "myHeight":I
    goto/16 :goto_719

    .end local v17    # "insetsChanged":Z
    .end local v21    # "fixedSize":Z
    .end local v27    # "myHeight":I
    .restart local v4    # "fixedSize":Z
    .restart local v5    # "myHeight":I
    .local v19, "insetsChanged":Z
    :catch_69c
    move-exception v0

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v4, p3

    move v11, v12

    move/from16 v12, v19

    .end local v4    # "fixedSize":Z
    .end local v5    # "myHeight":I
    .restart local v21    # "fixedSize":Z
    .restart local v27    # "myHeight":I
    goto/16 :goto_719

    .end local v20    # "myWidth":I
    .end local v21    # "fixedSize":Z
    .end local v27    # "myHeight":I
    .local v3, "myWidth":I
    .restart local v4    # "fixedSize":Z
    .restart local v5    # "myHeight":I
    :catch_6a8
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v4, p3

    move v11, v12

    move/from16 v12, v19

    .end local v3    # "myWidth":I
    .end local v4    # "fixedSize":Z
    .end local v5    # "myHeight":I
    .restart local v20    # "myWidth":I
    .restart local v21    # "fixedSize":Z
    .restart local v27    # "myHeight":I
    goto/16 :goto_719

    .end local v19    # "insetsChanged":Z
    .end local v20    # "myWidth":I
    .end local v21    # "fixedSize":Z
    .end local v27    # "myHeight":I
    .restart local v3    # "myWidth":I
    .restart local v4    # "fixedSize":Z
    .restart local v5    # "myHeight":I
    .local v26, "insetsChanged":Z
    :catch_6b6
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v4, p3

    move v11, v12

    move/from16 v12, v26

    .end local v3    # "myWidth":I
    .end local v4    # "fixedSize":Z
    .end local v5    # "myHeight":I
    .restart local v20    # "myWidth":I
    .restart local v21    # "fixedSize":Z
    .restart local v27    # "myHeight":I
    goto/16 :goto_719

    .end local v12    # "sizeChanged":Z
    .end local v20    # "myWidth":I
    .end local v21    # "fixedSize":Z
    .end local v27    # "myHeight":I
    .restart local v3    # "myWidth":I
    .restart local v4    # "fixedSize":Z
    .restart local v5    # "myHeight":I
    .restart local v33    # "sizeChanged":Z
    :catch_6c4
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v4, p3

    move/from16 v12, v26

    move/from16 v11, v33

    .end local v3    # "myWidth":I
    .end local v4    # "fixedSize":Z
    .end local v5    # "myHeight":I
    .restart local v20    # "myWidth":I
    .restart local v21    # "fixedSize":Z
    .restart local v27    # "myHeight":I
    goto :goto_719

    .end local v20    # "myWidth":I
    .end local v21    # "fixedSize":Z
    .end local v26    # "insetsChanged":Z
    .end local v27    # "myHeight":I
    .restart local v3    # "myWidth":I
    .restart local v4    # "fixedSize":Z
    .restart local v5    # "myHeight":I
    .local v12, "insetsChanged":Z
    :catch_6d2
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v26, v12

    move/from16 v4, p3

    move/from16 v11, v33

    .end local v3    # "myWidth":I
    .end local v4    # "fixedSize":Z
    .end local v5    # "myHeight":I
    .end local v12    # "insetsChanged":Z
    .restart local v20    # "myWidth":I
    .restart local v21    # "fixedSize":Z
    .restart local v26    # "insetsChanged":Z
    .restart local v27    # "myHeight":I
    goto :goto_719

    .end local v20    # "myWidth":I
    .end local v21    # "fixedSize":Z
    .end local v25    # "surfaceCreating":Z
    .end local v26    # "insetsChanged":Z
    .end local v27    # "myHeight":I
    .restart local v3    # "myWidth":I
    .restart local v4    # "fixedSize":Z
    .restart local v5    # "myHeight":I
    .local v8, "surfaceCreating":Z
    .restart local v12    # "insetsChanged":Z
    :catch_6e0
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v25, v8

    move/from16 v26, v12

    move/from16 v4, p3

    move/from16 v11, v33

    .end local v3    # "myWidth":I
    .end local v4    # "fixedSize":Z
    .end local v5    # "myHeight":I
    .end local v8    # "surfaceCreating":Z
    .end local v12    # "insetsChanged":Z
    .restart local v20    # "myWidth":I
    .restart local v21    # "fixedSize":Z
    .restart local v25    # "surfaceCreating":Z
    .restart local v26    # "insetsChanged":Z
    .restart local v27    # "myHeight":I
    goto :goto_719

    .end local v20    # "myWidth":I
    .end local v21    # "fixedSize":Z
    .end local v24    # "creating":Z
    .end local v25    # "surfaceCreating":Z
    .end local v26    # "insetsChanged":Z
    .end local v27    # "myHeight":I
    .restart local v3    # "myWidth":I
    .restart local v4    # "fixedSize":Z
    .restart local v5    # "myHeight":I
    .local v7, "creating":Z
    .restart local v8    # "surfaceCreating":Z
    .restart local v12    # "insetsChanged":Z
    :catch_6f0
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v12

    move/from16 v4, p3

    move/from16 v11, v33

    .end local v3    # "myWidth":I
    .end local v4    # "fixedSize":Z
    .end local v5    # "myHeight":I
    .end local v7    # "creating":Z
    .end local v8    # "surfaceCreating":Z
    .end local v12    # "insetsChanged":Z
    .restart local v20    # "myWidth":I
    .restart local v21    # "fixedSize":Z
    .restart local v24    # "creating":Z
    .restart local v25    # "surfaceCreating":Z
    .restart local v26    # "insetsChanged":Z
    .restart local v27    # "myHeight":I
    goto :goto_719

    .end local v20    # "myWidth":I
    .end local v21    # "fixedSize":Z
    .end local v24    # "creating":Z
    .end local v25    # "surfaceCreating":Z
    .end local v26    # "insetsChanged":Z
    .end local v27    # "myHeight":I
    .end local v33    # "sizeChanged":Z
    .end local v34    # "typeChanged":Z
    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .restart local v3    # "myWidth":I
    .restart local v4    # "fixedSize":Z
    .restart local v5    # "myHeight":I
    .restart local v7    # "creating":Z
    .restart local v8    # "surfaceCreating":Z
    .local v9, "formatChanged":Z
    .local v11, "sizeChanged":Z
    .restart local v12    # "insetsChanged":Z
    .local v13, "typeChanged":Z
    .local v14, "flagsChanged":Z
    :catch_702
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v27, v5

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v36, v9

    move/from16 v33, v11

    move/from16 v26, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v4, p3

    .line 1382
    .end local v3    # "myWidth":I
    .end local v5    # "myHeight":I
    .end local v7    # "creating":Z
    .end local v8    # "surfaceCreating":Z
    .end local v9    # "formatChanged":Z
    .end local v13    # "typeChanged":Z
    .end local v14    # "flagsChanged":Z
    .end local p3    # "redrawNeeded":Z
    .local v4, "redrawNeeded":Z
    .restart local v20    # "myWidth":I
    .restart local v21    # "fixedSize":Z
    .restart local v24    # "creating":Z
    .restart local v25    # "surfaceCreating":Z
    .restart local v27    # "myHeight":I
    .restart local v34    # "typeChanged":Z
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    :goto_719
    return-void
.end method
