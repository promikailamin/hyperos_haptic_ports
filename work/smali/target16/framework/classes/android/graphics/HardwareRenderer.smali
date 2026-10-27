.class public Landroid/graphics/HardwareRenderer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;,
        Landroid/graphics/HardwareRenderer$FrameRenderRequest;,
        Landroid/graphics/HardwareRenderer$ProcessInitializer;,
        Landroid/graphics/HardwareRenderer$DestroyContextRunnable;,
        Landroid/graphics/HardwareRenderer$FrameCommitCallback;,
        Landroid/graphics/HardwareRenderer$FrameCompleteCallback;,
        Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;,
        Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;,
        Landroid/graphics/HardwareRenderer$FrameDrawingCallback;,
        Landroid/graphics/HardwareRenderer$PictureCapturedCallback;,
        Landroid/graphics/HardwareRenderer$CopyRequest;,
        Landroid/graphics/HardwareRenderer$CacheTrimLevel;,
        Landroid/graphics/HardwareRenderer$DumpFlags;,
        Landroid/graphics/HardwareRenderer$SyncAndDrawResult;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_PATH_OPENGL_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field private static final blacklist CACHE_PATH_SKIA_PIPELINES:Ljava/lang/String; = "com.android.skia.pipelines_cache"

.field private static final blacklist CACHE_PATH_SKIA_SHADERS:Ljava/lang/String; = "com.android.skia.shaders_cache"

.field public static final blacklist CACHE_TRIM_ALL:I = 0x0

.field public static final blacklist CACHE_TRIM_FONT:I = 0x1

.field public static final blacklist CACHE_TRIM_RESOURCES:I = 0x2

.field public static final blacklist FLAG_DUMP_ALL:I = 0x1

.field public static final blacklist FLAG_DUMP_FRAMESTATS:I = 0x1

.field public static final blacklist FLAG_DUMP_RESET:I = 0x2

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "HardwareRenderer"

.field public static final whitelist SYNC_CONTEXT_IS_STOPPED:I = 0x4

.field public static final whitelist SYNC_FRAME_DROPPED:I = 0x8

.field public static final whitelist SYNC_LOST_SURFACE_REWARD_IF_FOUND:I = 0x2

.field public static final whitelist SYNC_OK:I = 0x0

.field public static final whitelist SYNC_REDRAW_REQUESTED:I = 0x1

.field private static blacklist sDensityDpi:I


# instance fields
.field private blacklist mColorMode:I

.field private blacklist mDesiredSdrHdrRatio:F

.field private blacklist mForceDark:I

.field private final blacklist mNativeProxy:J

.field private final blacklist mNotifyExpensiveFrameRateLimiter:Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

.field private final blacklist mNotifyGpuLoadUpRateLimiter:Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

.field private blacklist mOpaque:Z

.field private blacklist mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

.field protected blacklist mRootNode:Landroid/graphics/RenderNode;


# direct methods
.method public static synthetic blacklist $r8$lambda$5ceByoNWJOM0Lc2nQiaEVWRlrak(Landroid/graphics/HardwareRenderer;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer;->notifyGpuLoadUp()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeProxy(Landroid/graphics/HardwareRenderer;)J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRenderRequest(Landroid/graphics/HardwareRenderer;)Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .registers 1

    iget-object p0, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnDeleteProxy(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nDeleteProxy(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetRenderThreadTid(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nGetRenderThreadTid(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnInitDisplayInfo(IIFIJJZZZ)V
    .registers 11

    invoke-static/range {p0 .. p10}, Landroid/graphics/HardwareRenderer;->nInitDisplayInfo(IIFIJJZZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnRotateProcessStatsBuffer()V
    .registers 0

    invoke-static {}, Landroid/graphics/HardwareRenderer;->nRotateProcessStatsBuffer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetIsHighEndGfx(Z)V
    .registers 1

    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetIsHighEndGfx(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetIsLowRam(Z)V
    .registers 1

    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetIsLowRam(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetProcessStatsBuffer(I)V
    .registers 1

    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetProcessStatsBuffer(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 189
    const/4 v0, 0x0

    sput v0, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    .line 195
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/HardwareRenderer;->mForceDark:I

    .line 196
    iput v1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 197
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/graphics/HardwareRenderer;->mDesiredSdrHdrRatio:F

    .line 199
    new-instance v2, Landroid/graphics/HardwareRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/graphics/HardwareRenderer$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/HardwareRenderer;)V

    .line 200
    const-string/jumbo v3, "notifyExpensiveFrame"

    invoke-direct {p0, v3, v2}, Landroid/graphics/HardwareRenderer;->createNotifyRendererRateLimiter(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/HardwareRenderer;->mNotifyExpensiveFrameRateLimiter:Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

    .line 202
    new-instance v2, Landroid/graphics/HardwareRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/graphics/HardwareRenderer$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/HardwareRenderer;)V

    .line 203
    const-string/jumbo v3, "notifyGpuLoadUp"

    invoke-direct {p0, v3, v2}, Landroid/graphics/HardwareRenderer;->createNotifyRendererRateLimiter(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/HardwareRenderer;->mNotifyGpuLoadUpRateLimiter:Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

    .line 532
    new-instance v2, Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;-><init>(Landroid/graphics/HardwareRenderer;Landroid/graphics/HardwareRenderer-IA;)V

    iput-object v2, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    .line 265
    sget-object v2, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v2}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initUsingContext()V

    .line 266
    invoke-static {}, Landroid/graphics/HardwareRenderer;->nCreateRootRenderNode()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/graphics/RenderNode;->adopt(J)Landroid/graphics/RenderNode;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    .line 267
    iget-object v2, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 268
    iget-boolean v1, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v1, v1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nCreateProxy(ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    .line 269
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6e

    .line 272
    new-instance v0, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;

    iget-wide v1, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-direct {v0, v1, v2}, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;-><init>(J)V

    invoke-static {p0, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 273
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    iget-wide v1, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->init(J)V

    .line 274
    return-void

    .line 270
    :cond_6e
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Unable to create hardware renderer"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist copySurfaceInto(Landroid/view/Surface;Landroid/graphics/HardwareRenderer$CopyRequest;)V
    .registers 9

    .line 1241
    iget-object v0, p1, Landroid/graphics/HardwareRenderer$CopyRequest;->mSrcRect:Landroid/graphics/Rect;

    .line 1242
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Landroid/graphics/HardwareRenderer;->nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/HardwareRenderer$CopyRequest;)V

    .line 1244
    return-void
.end method

.method public static blacklist createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;
    .registers 5

    .line 1254
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private blacklist createNotifyRendererRateLimiter(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;
    .registers 6

    .line 256
    new-instance v0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

    const-wide/16 v1, 0x64

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;-><init>(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-object v0
.end method

.method public static native blacklist disableVsync()V
.end method

.method public static blacklist dumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V
    .registers 2

    .line 946
    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nDumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V

    .line 947
    return-void
.end method

.method static blacklist invokePictureCapturedCallback(JLandroid/graphics/HardwareRenderer$PictureCapturedCallback;)V
    .registers 4

    .line 986
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Picture;-><init>(J)V

    .line 987
    invoke-interface {p2, v0}, Landroid/graphics/HardwareRenderer$PictureCapturedCallback;->onPictureCaptured(Landroid/graphics/Picture;)V

    .line 988
    return-void
.end method

.method public static whitelist isDrawingEnabled()Z
    .registers 1

    .line 1344
    invoke-static {}, Landroid/graphics/HardwareRenderer;->nIsDrawingEnabled()Z

    move-result v0

    return v0
.end method

.method protected static native blacklist isWebViewOverlaysEnabled()Z
.end method

.method private static native blacklist nAddObserver(JJ)V
.end method

.method private static native blacklist nAddRenderNode(JJZ)V
.end method

.method private static native blacklist nAllocateBuffers(J)V
.end method

.method private static native blacklist nBuildLayer(JJ)V
.end method

.method private static native blacklist nCancelLayerUpdate(JJ)V
.end method

.method private static native blacklist nCopyLayerInto(JJJ)Z
.end method

.method private static native blacklist nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/HardwareRenderer$CopyRequest;)V
.end method

.method private static native blacklist nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nCreateProxy(ZJ)J
.end method

.method private static native blacklist nCreateRootRenderNode()J
.end method

.method private static native blacklist nCreateTextureLayer(J)J
.end method

.method private static native blacklist nDeleteProxy(J)V
.end method

.method private static native blacklist nDestroy(JJ)V
.end method

.method private static native blacklist nDestroyHardwareResources(J)V
.end method

.method private static native blacklist nDetachSurfaceTexture(JJ)V
.end method

.method private static native blacklist nDrawRenderNode(JJ)V
.end method

.method private static native blacklist nDumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V
.end method

.method private static native blacklist nDumpProfileInfo(JLjava/io/FileDescriptor;I)V
.end method

.method private static native blacklist nFence(J)V
.end method

.method private static native blacklist nForceDrawNextFrame(J)V
.end method

.method private static native blacklist nGetRenderThreadTid(J)I
.end method

.method private static native blacklist nInitDisplayInfo(IIFIJJZZZ)V
.end method

.method private static native blacklist nIsDrawingEnabled()Z
.end method

.method private static native blacklist nLoadSystemProperties(J)Z
.end method

.method private static native blacklist nNotifyCallbackPending(J)V
.end method

.method private static native blacklist nNotifyExpensiveFrame(J)V
.end method

.method private static native blacklist nNotifyFramePending(J)V
.end method

.method private static native blacklist nNotifyGpuLoadUp(J)V
.end method

.method private static native blacklist nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native blacklist nPause(J)Z
.end method

.method private static native blacklist nPushLayerUpdate(JJ)V
.end method

.method private static native blacklist nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native blacklist nRegisterVectorDrawableAnimator(JJ)V
.end method

.method private static native blacklist nRemoveObserver(JJ)V
.end method

.method private static native blacklist nRemoveRenderNode(JJ)V
.end method

.method private static native blacklist nRotateProcessStatsBuffer()V
.end method

.method private static native blacklist nSetASurfaceTransactionCallback(JLandroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V
.end method

.method private static native blacklist nSetColorMode(JI)F
.end method

.method private static native blacklist nSetContentDrawBounds(JIIII)V
.end method

.method private static native blacklist nSetContextPriority(I)V
.end method

.method private static native blacklist nSetDebuggingEnabled(Z)V
.end method

.method private static native blacklist nSetDisplayDensityDpi(I)V
.end method

.method private static native blacklist nSetDrawingEnabled(Z)V
.end method

.method private static native blacklist nSetForceDark(JI)V
.end method

.method private static native blacklist nSetFrameCallback(JLandroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
.end method

.method private static native blacklist nSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V
.end method

.method private static native blacklist nSetFrameCompleteCallback(JLandroid/graphics/HardwareRenderer$FrameCompleteCallback;)V
.end method

.method private static native blacklist nSetHighContrastText(Z)V
.end method

.method private static native blacklist nSetIsHighEndGfx(Z)V
.end method

.method private static native blacklist nSetIsLowRam(Z)V
.end method

.method private static native blacklist nSetIsSystemOrPersistent(Z)V
.end method

.method private static native blacklist nSetIsolatedProcess(Z)V
.end method

.method private static native blacklist nSetLightAlpha(JFF)V
.end method

.method private static native blacklist nSetLightGeometry(JFFFF)V
.end method

.method private static native blacklist nSetName(JLjava/lang/String;)V
.end method

.method private static native blacklist nSetOpaque(JZ)V
.end method

.method private static native blacklist nSetPictureCaptureCallback(JLandroid/graphics/HardwareRenderer$PictureCapturedCallback;)V
.end method

.method private static native blacklist nSetPrepareSurfaceControlForWebviewCallback(JLandroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V
.end method

.method private static native blacklist nSetProcessStatsBuffer(I)V
.end method

.method private static native blacklist nSetRtAnimationsEnabled(Z)V
.end method

.method private static native blacklist nSetSdrWhitePoint(JF)V
.end method

.method private static native blacklist nSetStopped(JZ)V
.end method

.method private static native blacklist nSetSurface(JLandroid/view/Surface;Z)V
.end method

.method private static native blacklist nSetSurfaceControl(JJ)V
.end method

.method private static native blacklist nSetTargetSdrHdrRatio(JF)V
.end method

.method private static native blacklist nStopDrawing(J)V
.end method

.method private static native blacklist nSyncAndDrawFrame(J[JI)I
.end method

.method private static native blacklist nTrimCaches(I)V
.end method

.method private static native blacklist nTrimMemory(I)V
.end method

.method private blacklist notifyGpuLoadUp()V
    .registers 3

    .line 1144
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nNotifyGpuLoadUp(J)V

    .line 1145
    return-void
.end method

.method public static blacklist overrideProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 1286
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    .line 1289
    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    return-void

    .line 1287
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "name and value must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static native blacklist preInitBufferAllocator()V
.end method

.method public static native blacklist preload()I
.end method

.method public static blacklist sendDeviceConfigurationForDebugging(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1194
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    sget v1, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    if-eq v0, v1, :cond_13

    .line 1196
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    sput v0, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    .line 1197
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetDisplayDensityDpi(I)V

    .line 1199
    :cond_13
    return-void
.end method

.method public static blacklist setContextForInit(Landroid/content/Context;)V
    .registers 2

    .line 1319
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setContext(Landroid/content/Context;)V

    .line 1320
    return-void
.end method

.method public static blacklist setContextPriority(I)V
    .registers 1

    .line 1165
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetContextPriority(I)V

    .line 1166
    return-void
.end method

.method public static blacklist setDebuggingEnabled(Z)V
    .registers 1

    .line 1207
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetDebuggingEnabled(Z)V

    .line 1208
    return-void
.end method

.method public static whitelist setDrawingEnabled(Z)V
    .registers 1

    .line 1366
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetDrawingEnabled(Z)V

    .line 1367
    return-void
.end method

.method public static blacklist setFPSDivisor(I)V
    .registers 2

    .line 1154
    const/4 v0, 0x1

    if-gt p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->nSetRtAnimationsEnabled(Z)V

    .line 1155
    return-void
.end method

.method public static blacklist setHighContrastText(Z)V
    .registers 1

    .line 1175
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetHighContrastText(Z)V

    .line 1176
    return-void
.end method

.method public static blacklist setIsSystemOrPersistent()V
    .registers 1

    .line 1329
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->nSetIsSystemOrPersistent(Z)V

    .line 1330
    return-void
.end method

.method public static blacklist setIsolatedProcess(Z)V
    .registers 2

    .line 1184
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetIsolatedProcess(Z)V

    .line 1185
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setIsolated(Z)V

    .line 1186
    return-void
.end method

.method public static blacklist setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 1308
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setPackageName(Ljava/lang/String;)V

    .line 1309
    return-void
.end method

.method public static blacklist setRtAnimationsEnabled(Z)V
    .registers 1

    .line 1376
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetRtAnimationsEnabled(Z)V

    .line 1377
    return-void
.end method

.method public static blacklist setupDiskCache(Ljava/io/File;)V
    .registers 5

    .line 1300
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "com.android.skia.shaders_cache"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1302
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "com.android.skia.pipelines_cache"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 1300
    invoke-static {v0, v1, p0}, Landroid/graphics/HardwareRenderer;->setupPersistentGraphicsCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    return-void
.end method

.method protected static native blacklist setupPersistentGraphicsCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static blacklist trimCaches(I)V
    .registers 1

    .line 1281
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nTrimCaches(I)V

    .line 1282
    return-void
.end method

.method public static blacklist trimMemory(I)V
    .registers 1

    .line 1267
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nTrimMemory(I)V

    .line 1268
    return-void
.end method

.method private static blacklist validateAlpha(FLjava/lang/String;)V
    .registers 4

    .line 1086
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_c

    .line 1090
    return-void

    .line 1087
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " must be a valid alpha, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not in the range of 0.0f to 1.0f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateFinite(FLjava/lang/String;)V
    .registers 4

    .line 1100
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1103
    return-void

    .line 1101
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " must be finite, given="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validatePositive(FLjava/lang/String;)V
    .registers 4

    .line 1093
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_c

    .line 1097
    return-void

    .line 1094
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " must be a finite positive, given="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addObserver(J)V
    .registers 5

    .line 733
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nAddObserver(JJ)V

    .line 734
    return-void
.end method

.method public blacklist addObserver(Landroid/graphics/HardwareRendererObserver;)V
    .registers 6

    .line 726
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/HardwareRendererObserver;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nAddObserver(JJ)V

    .line 727
    return-void
.end method

.method public blacklist addRenderNode(Landroid/graphics/RenderNode;Z)V
    .registers 7

    .line 906
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/HardwareRenderer;->nAddRenderNode(JJZ)V

    .line 907
    return-void
.end method

.method public blacklist allocateBuffers()V
    .registers 3

    .line 670
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nAllocateBuffers(J)V

    .line 671
    return-void
.end method

.method public blacklist buildLayer(Landroid/graphics/RenderNode;)V
    .registers 6

    .line 848
    invoke-virtual {p1}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 849
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nBuildLayer(JJ)V

    .line 851
    :cond_d
    return-void
.end method

.method public whitelist clearContent()V
    .registers 3

    .line 638
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nDestroyHardwareResources(J)V

    .line 639
    return-void
.end method

.method public blacklist copyLayerInto(Landroid/graphics/TextureLayer;Landroid/graphics/Bitmap;)Z
    .registers 9

    .line 855
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    .line 856
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v4

    .line 855
    invoke-static/range {v0 .. v5}, Landroid/graphics/HardwareRenderer;->nCopyLayerInto(JJJ)Z

    move-result p1

    return p1
.end method

.method public whitelist createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .registers 2

    .line 544
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->-$$Nest$mreset(Landroid/graphics/HardwareRenderer$FrameRenderRequest;)V

    .line 545
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    return-object v0
.end method

.method public blacklist createTextureLayer()Landroid/graphics/TextureLayer;
    .registers 3

    .line 831
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nCreateTextureLayer(J)J

    move-result-wide v0

    .line 832
    invoke-static {p0, v0, v1}, Landroid/graphics/TextureLayer;->adoptTextureLayer(Landroid/graphics/HardwareRenderer;J)Landroid/graphics/TextureLayer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist destroy()V
    .registers 5

    .line 292
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-object v2, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v2, v2, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nDestroy(JJ)V

    .line 293
    return-void
.end method

.method public blacklist detachSurfaceTexture(J)V
    .registers 5

    .line 842
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nDetachSurfaceTexture(JJ)V

    .line 843
    return-void
.end method

.method public blacklist drawRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6

    .line 927
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nDrawRenderNode(JJ)V

    .line 928
    return-void
.end method

.method public blacklist dumpProfileInfo(Ljava/io/FileDescriptor;I)V
    .registers 5

    .line 953
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;I)V

    .line 954
    return-void
.end method

.method public blacklist fence()V
    .registers 3

    .line 795
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nFence(J)V

    .line 796
    return-void
.end method

.method public blacklist forceDrawNextFrame()V
    .registers 3

    .line 976
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nForceDrawNextFrame(J)V

    .line 977
    return-void
.end method

.method public whitelist isOpaque()Z
    .registers 2

    .line 707
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    return v0
.end method

.method public blacklist loadSystemProperties()Z
    .registers 3

    .line 939
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    return v0
.end method

.method public blacklist notifyCallbackPending()V
    .registers 3

    .line 1111
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nNotifyCallbackPending(J)V

    .line 1112
    return-void
.end method

.method public blacklist notifyExpensiveFrame()V
    .registers 3

    .line 1120
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nNotifyExpensiveFrame(J)V

    .line 1121
    return-void
.end method

.method public blacklist notifyExpensiveFrameWithRateLimit(Ljava/lang/String;)I
    .registers 3

    .line 1130
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mNotifyExpensiveFrameRateLimiter:Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

    invoke-static {v0, p1}, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->-$$Nest$mnotifyIfAllow(Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist notifyFramePending()V
    .registers 3

    .line 679
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nNotifyFramePending(J)V

    .line 680
    return-void
.end method

.method public blacklist notifyRendererForGpuLoadUp(Ljava/lang/String;)I
    .registers 3

    .line 1140
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mNotifyGpuLoadUpRateLimiter:Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

    invoke-static {v0, p1}, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->-$$Nest$mnotifyIfAllow(Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist onLayerDestroyed(Landroid/graphics/TextureLayer;)V
    .registers 6

    .line 877
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nCancelLayerUpdate(JJ)V

    .line 878
    return-void
.end method

.method public blacklist pause()Z
    .registers 3

    .line 577
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nPause(J)Z

    move-result v0

    return v0
.end method

.method public blacklist pushLayerUpdate(Landroid/graphics/TextureLayer;)V
    .registers 6

    .line 867
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nPushLayerUpdate(JJ)V

    .line 868
    return-void
.end method

.method public blacklist registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6

    .line 800
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v0, v0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRegisterAnimatingRenderNode(JJ)V

    .line 801
    return-void
.end method

.method public blacklist registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .registers 6

    .line 805
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v0, v0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 806
    invoke-interface {p1}, Landroid/view/NativeVectorDrawableAnimator;->getAnimatorNativePtr()J

    move-result-wide v2

    .line 805
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRegisterVectorDrawableAnimator(JJ)V

    .line 807
    return-void
.end method

.method public blacklist removeObserver(J)V
    .registers 5

    .line 749
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nRemoveObserver(JJ)V

    .line 750
    return-void
.end method

.method public blacklist removeObserver(Landroid/graphics/HardwareRendererObserver;)V
    .registers 6

    .line 742
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/HardwareRendererObserver;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRemoveObserver(JJ)V

    .line 743
    return-void
.end method

.method public blacklist removeRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6

    .line 916
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRemoveRenderNode(JJ)V

    .line 917
    return-void
.end method

.method protected blacklist setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V
    .registers 4

    .line 882
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetASurfaceTransactionCallback(JLandroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    .line 883
    return-void
.end method

.method public blacklist setColorMode(I)F
    .registers 4

    .line 760
    iget v0, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    if-eq v0, p1, :cond_e

    .line 761
    iput p1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 762
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetColorMode(JI)F

    move-result p1

    iput p1, p0, Landroid/graphics/HardwareRenderer;->mDesiredSdrHdrRatio:F

    .line 764
    :cond_e
    iget p1, p0, Landroid/graphics/HardwareRenderer;->mDesiredSdrHdrRatio:F

    return p1
.end method

.method public blacklist setColorMode(IF)V
    .registers 5

    .line 775
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p2}, Landroid/graphics/HardwareRenderer;->nSetSdrWhitePoint(JF)V

    .line 776
    iput p1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 777
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetColorMode(JI)F

    .line 778
    return-void
.end method

.method public blacklist setContentDrawBounds(IIII)V
    .registers 11

    .line 968
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/HardwareRenderer;->nSetContentDrawBounds(JIIII)V

    .line 969
    return-void
.end method

.method public whitelist setContentRoot(Landroid/graphics/RenderNode;)V
    .registers 3

    .line 367
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 368
    if-eqz p1, :cond_b

    .line 369
    invoke-virtual {v0, p1}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 371
    :cond_b
    iget-object p1, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 372
    return-void
.end method

.method public blacklist setForceDark(I)Z
    .registers 4

    .line 646
    iget v0, p0, Landroid/graphics/HardwareRenderer;->mForceDark:I

    if-eq v0, p1, :cond_d

    .line 647
    iput p1, p0, Landroid/graphics/HardwareRenderer;->mForceDark:I

    .line 648
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetForceDark(JI)V

    .line 649
    const/4 p1, 0x1

    return p1

    .line 651
    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 4

    .line 893
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCallback(JLandroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 894
    return-void
.end method

.method public blacklist setFrameCommitCallback(Landroid/graphics/HardwareRenderer$FrameCommitCallback;)V
    .registers 4

    .line 712
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V

    .line 713
    return-void
.end method

.method public blacklist setFrameCompleteCallback(Landroid/graphics/HardwareRenderer$FrameCompleteCallback;)V
    .registers 4

    .line 717
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCompleteCallback(JLandroid/graphics/HardwareRenderer$FrameCompleteCallback;)V

    .line 718
    return-void
.end method

.method public whitelist setLightSourceAlpha(FF)V
    .registers 5

    .line 352
    const-string v0, "ambientShadowAlpha"

    invoke-static {p1, v0}, Landroid/graphics/HardwareRenderer;->validateAlpha(FLjava/lang/String;)V

    .line 353
    const-string/jumbo v0, "spotShadowAlpha"

    invoke-static {p2, v0}, Landroid/graphics/HardwareRenderer;->validateAlpha(FLjava/lang/String;)V

    .line 354
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetLightAlpha(JFF)V

    .line 355
    return-void
.end method

.method public whitelist setLightSourceGeometry(FFFF)V
    .registers 12

    .line 328
    const-string/jumbo v0, "lightX"

    invoke-static {p1, v0}, Landroid/graphics/HardwareRenderer;->validateFinite(FLjava/lang/String;)V

    .line 329
    const-string/jumbo v0, "lightY"

    invoke-static {p2, v0}, Landroid/graphics/HardwareRenderer;->validateFinite(FLjava/lang/String;)V

    .line 330
    const-string/jumbo v0, "lightZ"

    invoke-static {p3, v0}, Landroid/graphics/HardwareRenderer;->validatePositive(FLjava/lang/String;)V

    .line 331
    const-string/jumbo v0, "lightRadius"

    invoke-static {p4, v0}, Landroid/graphics/HardwareRenderer;->validatePositive(FLjava/lang/String;)V

    .line 332
    iget-wide v1, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/HardwareRenderer;->nSetLightGeometry(JFFFF)V

    .line 333
    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .registers 4

    .line 303
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetName(JLjava/lang/String;)V

    .line 304
    return-void
.end method

.method public whitelist setOpaque(Z)V
    .registers 4

    .line 695
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    if-eq v0, p1, :cond_d

    .line 696
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    .line 697
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-boolean p1, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetOpaque(JZ)V

    .line 699
    :cond_d
    return-void
.end method

.method public blacklist setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V
    .registers 4

    .line 981
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetPictureCaptureCallback(JLandroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    .line 982
    return-void
.end method

.method protected blacklist setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V
    .registers 4

    .line 888
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetPrepareSurfaceControlForWebviewCallback(JLandroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    .line 889
    return-void
.end method

.method public blacklist setStopped(Z)V
    .registers 4

    .line 596
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 597
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .registers 3

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;Z)V

    .line 395
    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;Z)V
    .registers 5

    .line 408
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 409
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface is invalid. surface.isValid() == false."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 411
    :cond_11
    :goto_11
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetSurface(JLandroid/view/Surface;Z)V

    .line 412
    return-void
.end method

.method public blacklist setSurfaceControl(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V
    .registers 5

    .line 422
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    if-eqz p1, :cond_7

    iget-wide p1, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    goto :goto_9

    :cond_7
    const-wide/16 p1, 0x0

    :goto_9
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetSurfaceControl(JJ)V

    .line 423
    return-void
.end method

.method public blacklist setTargetHdrSdrRatio(F)V
    .registers 4

    .line 782
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_c

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    move p1, v0

    .line 783
    :cond_d
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetTargetSdrHdrRatio(JF)V

    .line 784
    return-void
.end method

.method public whitelist start()V
    .registers 4

    .line 620
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 621
    return-void
.end method

.method public whitelist stop()V
    .registers 4

    .line 609
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 610
    return-void
.end method

.method public blacklist stopDrawing()V
    .registers 3

    .line 820
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nStopDrawing(J)V

    .line 821
    return-void
.end method

.method public blacklist syncAndDrawFrame(Landroid/graphics/FrameInfo;)I
    .registers 5

    .line 555
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-object v2, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget-object p1, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    array-length p1, p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/HardwareRenderer;->nSyncAndDrawFrame(J[JI)I

    move-result p1

    return p1
.end method
