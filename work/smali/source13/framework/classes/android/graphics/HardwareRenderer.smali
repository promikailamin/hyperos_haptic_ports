.class public Landroid/graphics/HardwareRenderer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/HardwareRenderer$ProcessInitializer;,
        Landroid/graphics/HardwareRenderer$DestroyContextRunnable;,
        Landroid/graphics/HardwareRenderer$FrameDroppedCallback;,
        Landroid/graphics/HardwareRenderer$PictureCapturedCallback;,
        Landroid/graphics/HardwareRenderer$FrameCompleteCallback;,
        Landroid/graphics/HardwareRenderer$FrameCommitCallback;,
        Landroid/graphics/HardwareRenderer$FrameDrawingCallback;,
        Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;,
        Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;,
        Landroid/graphics/HardwareRenderer$FrameRenderRequest;,
        Landroid/graphics/HardwareRenderer$DumpFlags;,
        Landroid/graphics/HardwareRenderer$SyncAndDrawResult;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field private static final blacklist CACHE_PATH_SKIASHADERS:Ljava/lang/String; = "com.android.skia.shaders_cache"

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

.field private blacklist mForceDark:Z

.field private final blacklist mNativeProxy:J

.field private blacklist mOpaque:Z

.field private blacklist mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

.field protected blacklist mRootNode:Landroid/graphics/RenderNode;


# direct methods
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

.method static bridge synthetic blacklist -$$Nest$smnInitDisplayInfo(IIFIJJ)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/graphics/HardwareRenderer;->nInitDisplayInfo(IIFIJJ)V

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

.method static bridge synthetic blacklist -$$Nest$smnSetProcessStatsBuffer(I)V
    .registers 1

    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetProcessStatsBuffer(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 164
    const/4 v0, 0x0

    sput v0, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/HardwareRenderer;->mForceDark:Z

    .line 171
    iput v1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 444
    new-instance v2, Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;-><init>(Landroid/graphics/HardwareRenderer;Landroid/graphics/HardwareRenderer$FrameRenderRequest-IA;)V

    iput-object v2, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    .line 178
    sget-object v2, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v2}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initUsingContext()V

    .line 179
    invoke-static {}, Landroid/graphics/HardwareRenderer;->nCreateRootRenderNode()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/graphics/RenderNode;->adopt(J)Landroid/graphics/RenderNode;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    .line 180
    invoke-virtual {v2, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 181
    iget-boolean v1, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v1, v1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nCreateProxy(ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    .line 182
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_46

    .line 185
    new-instance v2, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;

    invoke-direct {v2, v0, v1}, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;-><init>(J)V

    invoke-static {p0, v2}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 186
    sget-object v2, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->init(J)V

    .line 187
    return-void

    .line 183
    :cond_46
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Unable to create hardware renderer"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist copySurfaceInto(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)I
    .registers 11
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1097
    if-nez p1, :cond_10

    .line 1099
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/HardwareRenderer;->nCopySurfaceInto(Landroid/view/Surface;IIIIJ)I

    move-result v0

    return v0

    .line 1101
    :cond_10
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1102
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v6

    .line 1101
    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/HardwareRenderer;->nCopySurfaceInto(Landroid/view/Surface;IIIIJ)I

    move-result v0

    return v0
.end method

.method public static blacklist createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "node"    # Landroid/graphics/RenderNode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1114
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static native blacklist disableVsync()V
.end method

.method public static blacklist dumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "dumpFlags"    # I

    .line 853
    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nDumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V

    .line 854
    return-void
.end method

.method static blacklist invokePictureCapturedCallback(JLandroid/graphics/HardwareRenderer$PictureCapturedCallback;)V
    .registers 4
    .param p0, "picturePtr"    # J
    .param p2, "callback"    # Landroid/graphics/HardwareRenderer$PictureCapturedCallback;

    .line 893
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Picture;-><init>(J)V

    .line 894
    .local v0, "picture":Landroid/graphics/Picture;
    invoke-interface {p2, v0}, Landroid/graphics/HardwareRenderer$PictureCapturedCallback;->onPictureCaptured(Landroid/graphics/Picture;)V

    .line 895
    return-void
.end method

.method public static whitelist isDrawingEnabled()Z
    .registers 1

    .line 1178
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

.method private static native blacklist nCopySurfaceInto(Landroid/view/Surface;IIIIJ)I
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

.method private static native blacklist nInitDisplayInfo(IIFIJJ)V
.end method

.method private static native blacklist nIsDrawingEnabled()Z
.end method

.method private static native blacklist nLoadSystemProperties(J)Z
.end method

.method private static native blacklist nNotifyFramePending(J)V
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

.method private static native blacklist nSetColorMode(JI)V
.end method

.method private static native blacklist nSetContentDrawBounds(JIIII)V
.end method

.method private static native blacklist nSetContextPriority(I)V
.end method

.method private static native blacklist nSetDebuggingEnabled(Z)V
.end method

.method private static native blacklist nSetDisableWCGFlag(JZ)V
.end method

.method private static native blacklist nSetDisplayDensityDpi(I)V
.end method

.method private static native blacklist nSetDrawingEnabled(Z)V
.end method

.method private static native blacklist nSetForceDark(JZ)V
.end method

.method private static native blacklist nSetFrameCallback(JLandroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
.end method

.method private static native blacklist nSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V
.end method

.method private static native blacklist nSetFrameCompleteCallback(JLandroid/graphics/HardwareRenderer$FrameCompleteCallback;)V
.end method

.method private static native blacklist nSetFrameDroppedCallback(JLandroid/graphics/HardwareRenderer$FrameDroppedCallback;)V
.end method

.method private static native blacklist nSetHighContrastText(Z)V
.end method

.method private static native blacklist nSetIsHighEndGfx(Z)V
.end method

.method private static native blacklist nSetIsolatedProcess(Z)V
.end method

.method private static native blacklist nSetLightAlpha(JFF)V
.end method

.method private static native blacklist nSetLightGeometry(JFFFF)V
.end method

.method private static native blacklist nSetName(JLjava/lang/String;)V
.end method

.method private static native blacklist nSetNativeConsumer(JLandroid/graphics/SurfaceTexture;)V
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

.method private static native blacklist nSetTextureAvailable(JZI)V
.end method

.method private static native blacklist nStopDrawing(J)V
.end method

.method private static native blacklist nSyncAndDrawFrame(J[JI)I
.end method

.method private static native blacklist nTrimMemory(I)V
.end method

.method public static blacklist overrideProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1132
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    .line 1135
    invoke-static {p0, p1}, Landroid/graphics/HardwareRenderer;->nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    return-void

    .line 1133
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name and value must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native blacklist preload()V
.end method

.method public static blacklist sendDeviceConfigurationForDebugging(Landroid/content/res/Configuration;)V
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 1079
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    sget v1, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    if-eq v0, v1, :cond_13

    .line 1081
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    sput v0, Landroid/graphics/HardwareRenderer;->sDensityDpi:I

    .line 1082
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->nSetDisplayDensityDpi(I)V

    .line 1084
    :cond_13
    return-void
.end method

.method public static blacklist setContextForInit(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1163
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setContext(Landroid/content/Context;)V

    .line 1164
    return-void
.end method

.method public static blacklist setContextPriority(I)V
    .registers 1
    .param p0, "priority"    # I

    .line 1050
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetContextPriority(I)V

    .line 1051
    return-void
.end method

.method public static blacklist setDebuggingEnabled(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 1092
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetDebuggingEnabled(Z)V

    .line 1093
    return-void
.end method

.method public static whitelist setDrawingEnabled(Z)V
    .registers 1
    .param p0, "drawingEnabled"    # Z

    .line 1200
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetDrawingEnabled(Z)V

    .line 1201
    return-void
.end method

.method public static blacklist setFPSDivisor(I)V
    .registers 2
    .param p0, "divisor"    # I

    .line 1039
    const/4 v0, 0x1

    if-gt p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->nSetRtAnimationsEnabled(Z)V

    .line 1040
    return-void
.end method

.method public static blacklist setHighContrastText(Z)V
    .registers 1
    .param p0, "highContrastText"    # Z

    .line 1060
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetHighContrastText(Z)V

    .line 1061
    return-void
.end method

.method public static blacklist setIsolatedProcess(Z)V
    .registers 2
    .param p0, "isIsolated"    # Z

    .line 1069
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetIsolatedProcess(Z)V

    .line 1070
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setIsolated(Z)V

    .line 1071
    return-void
.end method

.method public static blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1152
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->setPackageName(Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method public static blacklist setRtAnimationsEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .line 1210
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nSetRtAnimationsEnabled(Z)V

    .line 1211
    return-void
.end method

.method public static blacklist setupDiskCache(Ljava/io/File;)V
    .registers 4
    .param p0, "cacheDir"    # Ljava/io/File;

    .line 1146
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "com.android.skia.shaders_cache"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1146
    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->setupShadersDiskCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    return-void
.end method

.method protected static native blacklist setupShadersDiskCache(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static blacklist trimMemory(I)V
    .registers 1
    .param p0, "level"    # I

    .line 1127
    invoke-static {p0}, Landroid/graphics/HardwareRenderer;->nTrimMemory(I)V

    .line 1128
    return-void
.end method

.method private static blacklist validateAlpha(FLjava/lang/String;)V
    .registers 5
    .param p0, "alpha"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 1014
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_c

    .line 1018
    return-void

    .line 1015
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a valid alpha, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range of 0.0f to 1.0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateFinite(FLjava/lang/String;)V
    .registers 5
    .param p0, "f"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 1028
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1031
    return-void

    .line 1029
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be finite, given="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validatePositive(FLjava/lang/String;)V
    .registers 5
    .param p0, "f"    # F
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 1021
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_c

    .line 1025
    return-void

    .line 1022
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a finite positive, given="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addObserver(Landroid/graphics/HardwareRendererObserver;)V
    .registers 6
    .param p1, "observer"    # Landroid/graphics/HardwareRendererObserver;

    .line 645
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/HardwareRendererObserver;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nAddObserver(JJ)V

    .line 646
    return-void
.end method

.method public blacklist addRenderNode(Landroid/graphics/RenderNode;Z)V
    .registers 7
    .param p1, "node"    # Landroid/graphics/RenderNode;
    .param p2, "placeFront"    # Z

    .line 813
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/HardwareRenderer;->nAddRenderNode(JJZ)V

    .line 814
    return-void
.end method

.method public blacklist allocateBuffers()V
    .registers 3

    .line 589
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nAllocateBuffers(J)V

    .line 590
    return-void
.end method

.method public blacklist buildLayer(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 755
    invoke-virtual {p1}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 756
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nBuildLayer(JJ)V

    .line 758
    :cond_d
    return-void
.end method

.method public whitelist clearContent()V
    .registers 3

    .line 550
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nDestroyHardwareResources(J)V

    .line 551
    return-void
.end method

.method public blacklist copyLayerInto(Landroid/graphics/TextureLayer;Landroid/graphics/Bitmap;)Z
    .registers 9
    .param p1, "layer"    # Landroid/graphics/TextureLayer;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 762
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    .line 763
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v4

    .line 762
    invoke-static/range {v0 .. v5}, Landroid/graphics/HardwareRenderer;->nCopyLayerInto(JJJ)Z

    move-result v0

    return v0
.end method

.method public whitelist createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .registers 2

    .line 456
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->-$$Nest$mreset(Landroid/graphics/HardwareRenderer$FrameRenderRequest;)V

    .line 457
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRenderRequest:Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    return-object v0
.end method

.method public blacklist createTextureLayer()Landroid/graphics/TextureLayer;
    .registers 4

    .line 738
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nCreateTextureLayer(J)J

    move-result-wide v0

    .line 739
    .local v0, "layer":J
    invoke-static {p0, v0, v1}, Landroid/graphics/TextureLayer;->adoptTextureLayer(Landroid/graphics/HardwareRenderer;J)Landroid/graphics/TextureLayer;

    move-result-object v2

    return-object v2
.end method

.method public whitelist destroy()V
    .registers 5

    .line 205
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-object v2, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v2, v2, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nDestroy(JJ)V

    .line 206
    return-void
.end method

.method public blacklist detachSurfaceTexture(J)V
    .registers 5
    .param p1, "hardwareLayer"    # J

    .line 749
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nDetachSurfaceTexture(JJ)V

    .line 750
    return-void
.end method

.method public blacklist drawRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 834
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nDrawRenderNode(JJ)V

    .line 835
    return-void
.end method

.method public blacklist dumpProfileInfo(Ljava/io/FileDescriptor;I)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "dumpFlags"    # I

    .line 860
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;I)V

    .line 861
    return-void
.end method

.method public blacklist fence()V
    .registers 3

    .line 702
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nFence(J)V

    .line 703
    return-void
.end method

.method public blacklist forceDrawNextFrame()V
    .registers 3

    .line 883
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nForceDrawNextFrame(J)V

    .line 884
    return-void
.end method

.method public blacklist getForceDark()Z
    .registers 2

    .line 570
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mForceDark:Z

    return v0
.end method

.method public blacklist isForceDark()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mForceDark:Z

    return v0
.end method

.method public whitelist isOpaque()Z
    .registers 2

    .line 626
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    return v0
.end method

.method public blacklist loadSystemProperties()Z
    .registers 3

    .line 846
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    return v0
.end method

.method public whitelist notifyFramePending()V
    .registers 3

    .line 598
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nNotifyFramePending(J)V

    .line 599
    return-void
.end method

.method public blacklist onLayerDestroyed(Landroid/graphics/TextureLayer;)V
    .registers 6
    .param p1, "layer"    # Landroid/graphics/TextureLayer;

    .line 784
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nCancelLayerUpdate(JJ)V

    .line 785
    return-void
.end method

.method public blacklist pause()Z
    .registers 3

    .line 489
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nPause(J)Z

    move-result v0

    return v0
.end method

.method public blacklist pushLayerUpdate(Landroid/graphics/TextureLayer;)V
    .registers 6
    .param p1, "layer"    # Landroid/graphics/TextureLayer;

    .line 774
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nPushLayerUpdate(JJ)V

    .line 775
    return-void
.end method

.method public blacklist registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "animator"    # Landroid/graphics/RenderNode;

    .line 707
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v0, v0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRegisterAnimatingRenderNode(JJ)V

    .line 708
    return-void
.end method

.method public blacklist registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .registers 6
    .param p1, "animator"    # Landroid/view/NativeVectorDrawableAnimator;

    .line 712
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget-wide v0, v0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 713
    invoke-interface {p1}, Landroid/view/NativeVectorDrawableAnimator;->getAnimatorNativePtr()J

    move-result-wide v2

    .line 712
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRegisterVectorDrawableAnimator(JJ)V

    .line 714
    return-void
.end method

.method public blacklist removeObserver(Landroid/graphics/HardwareRendererObserver;)V
    .registers 6
    .param p1, "observer"    # Landroid/graphics/HardwareRendererObserver;

    .line 654
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/graphics/HardwareRendererObserver;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRemoveObserver(JJ)V

    .line 655
    return-void
.end method

.method public blacklist removeRenderNode(Landroid/graphics/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 823
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nRemoveRenderNode(JJ)V

    .line 824
    return-void
.end method

.method protected blacklist setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;

    .line 789
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetASurfaceTransactionCallback(JLandroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    .line 790
    return-void
.end method

.method public blacklist setColorMode(I)V
    .registers 4
    .param p1, "colorMode"    # I

    .line 665
    iget v0, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    if-eq v0, p1, :cond_b

    .line 666
    iput p1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 667
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetColorMode(JI)V

    .line 669
    :cond_b
    return-void
.end method

.method public blacklist setColorMode(IF)V
    .registers 5
    .param p1, "colorMode"    # I
    .param p2, "whitePoint"    # F

    .line 679
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p2}, Landroid/graphics/HardwareRenderer;->nSetSdrWhitePoint(JF)V

    .line 680
    iput p1, p0, Landroid/graphics/HardwareRenderer;->mColorMode:I

    .line 681
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetColorMode(JI)V

    .line 682
    return-void
.end method

.method public blacklist setContentDrawBounds(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 875
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/HardwareRenderer;->nSetContentDrawBounds(JIIII)V

    .line 876
    return-void
.end method

.method public whitelist setContentRoot(Landroid/graphics/RenderNode;)V
    .registers 4
    .param p1, "content"    # Landroid/graphics/RenderNode;

    .line 280
    iget-object v0, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 281
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    if-eqz p1, :cond_b

    .line 282
    invoke-virtual {v0, p1}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 284
    :cond_b
    iget-object v1, p0, Landroid/graphics/HardwareRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 285
    return-void
.end method

.method public blacklist setDisableWCGFlag(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .line 689
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetDisableWCGFlag(JZ)V

    .line 690
    return-void
.end method

.method public blacklist setForceDark(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 558
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mForceDark:Z

    if-eq v0, p1, :cond_d

    .line 559
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer;->mForceDark:Z

    .line 560
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetForceDark(JZ)V

    .line 561
    const/4 v0, 0x1

    return v0

    .line 563
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 800
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCallback(JLandroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 801
    return-void
.end method

.method public blacklist setFrameCommitCallback(Landroid/graphics/HardwareRenderer$FrameCommitCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    .line 631
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V

    .line 632
    return-void
.end method

.method public blacklist setFrameCompleteCallback(Landroid/graphics/HardwareRenderer$FrameCompleteCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameCompleteCallback;

    .line 636
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameCompleteCallback(JLandroid/graphics/HardwareRenderer$FrameCompleteCallback;)V

    .line 637
    return-void
.end method

.method public blacklist setFrameDroppedCallback(Landroid/graphics/HardwareRenderer$FrameDroppedCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameDroppedCallback;

    .line 1009
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetFrameDroppedCallback(JLandroid/graphics/HardwareRenderer$FrameDroppedCallback;)V

    .line 1010
    return-void
.end method

.method public whitelist setLightSourceAlpha(FF)V
    .registers 5
    .param p1, "ambientShadowAlpha"    # F
    .param p2, "spotShadowAlpha"    # F

    .line 265
    const-string v0, "ambientShadowAlpha"

    invoke-static {p1, v0}, Landroid/graphics/HardwareRenderer;->validateAlpha(FLjava/lang/String;)V

    .line 266
    const-string/jumbo v0, "spotShadowAlpha"

    invoke-static {p2, v0}, Landroid/graphics/HardwareRenderer;->validateAlpha(FLjava/lang/String;)V

    .line 267
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetLightAlpha(JFF)V

    .line 268
    return-void
.end method

.method public whitelist setLightSourceGeometry(FFFF)V
    .registers 12
    .param p1, "lightX"    # F
    .param p2, "lightY"    # F
    .param p3, "lightZ"    # F
    .param p4, "lightRadius"    # F

    .line 241
    const-string v0, "lightX"

    invoke-static {p1, v0}, Landroid/graphics/HardwareRenderer;->validateFinite(FLjava/lang/String;)V

    .line 242
    const-string v0, "lightY"

    invoke-static {p2, v0}, Landroid/graphics/HardwareRenderer;->validateFinite(FLjava/lang/String;)V

    .line 243
    const-string v0, "lightZ"

    invoke-static {p3, v0}, Landroid/graphics/HardwareRenderer;->validatePositive(FLjava/lang/String;)V

    .line 244
    const-string v0, "lightRadius"

    invoke-static {p4, v0}, Landroid/graphics/HardwareRenderer;->validatePositive(FLjava/lang/String;)V

    .line 245
    iget-wide v1, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/HardwareRenderer;->nSetLightGeometry(JFFFF)V

    .line 246
    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 216
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetName(JLjava/lang/String;)V

    .line 217
    return-void
.end method

.method public blacklist setNativeConsumer(Landroid/graphics/SurfaceTexture;)V
    .registers 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 1386
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetNativeConsumer(JLandroid/graphics/SurfaceTexture;)V

    .line 1387
    return-void
.end method

.method public whitelist setOpaque(Z)V
    .registers 4
    .param p1, "opaque"    # Z

    .line 614
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    if-eq v0, p1, :cond_b

    .line 615
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer;->mOpaque:Z

    .line 616
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetOpaque(JZ)V

    .line 618
    :cond_b
    return-void
.end method

.method public blacklist setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$PictureCapturedCallback;

    .line 888
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetPictureCaptureCallback(JLandroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    .line 889
    return-void
.end method

.method protected blacklist setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;

    .line 795
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetPrepareSurfaceControlForWebviewCallback(JLandroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    .line 796
    return-void
.end method

.method public blacklist setStopped(Z)V
    .registers 4
    .param p1, "stopped"    # Z

    .line 508
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 509
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;Z)V

    .line 308
    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;Z)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "discardBuffer"    # Z

    .line 321
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 322
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is invalid. surface.isValid() == false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_11
    :goto_11
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetSurface(JLandroid/view/Surface;Z)V

    .line 325
    return-void
.end method

.method public blacklist setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 334
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    if-eqz p1, :cond_7

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    goto :goto_9

    :cond_7
    const-wide/16 v2, 0x0

    :goto_9
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nSetSurfaceControl(JJ)V

    .line 335
    return-void
.end method

.method public blacklist setTextureAvailable(ZI)V
    .registers 5
    .param p1, "available"    # Z
    .param p2, "configRot"    # I

    .line 1391
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/HardwareRenderer;->nSetTextureAvailable(JZI)V

    .line 1392
    return-void
.end method

.method public whitelist start()V
    .registers 4

    .line 532
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 533
    return-void
.end method

.method public whitelist stop()V
    .registers 4

    .line 521
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->nSetStopped(JZ)V

    .line 522
    return-void
.end method

.method public blacklist stopDrawing()V
    .registers 3

    .line 727
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->nStopDrawing(J)V

    .line 728
    return-void
.end method

.method public blacklist syncAndDrawFrame(Landroid/graphics/FrameInfo;)I
    .registers 6
    .param p1, "frameInfo"    # Landroid/graphics/FrameInfo;

    .line 467
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer;->mNativeProxy:J

    iget-object v2, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget-object v3, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    array-length v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/HardwareRenderer;->nSyncAndDrawFrame(J[JI)I

    move-result v0

    return v0
.end method
