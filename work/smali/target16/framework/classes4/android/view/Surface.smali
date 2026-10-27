.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$HwuiContext;,
        Landroid/view/Surface$FrameRateParams;,
        Landroid/view/Surface$OutOfResourcesException;,
        Landroid/view/Surface$FrameRateCategory;,
        Landroid/view/Surface$ChangeFrameRateStrategy;,
        Landroid/view/Surface$FrameRateCompatibility;,
        Landroid/view/Surface$Rotation;,
        Landroid/view/Surface$ScalingMode;
    }
.end annotation


# static fields
.field public static final whitelist CHANGE_FRAME_RATE_ALWAYS:I = 0x1

.field public static final whitelist CHANGE_FRAME_RATE_ONLY_IF_SEAMLESS:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FRAME_RATE_CATEGORY_DEFAULT:I = 0x0

.field public static final blacklist FRAME_RATE_CATEGORY_HIGH:I = 0x5

.field public static final blacklist FRAME_RATE_CATEGORY_HIGH_HINT:I = 0x4

.field public static final blacklist FRAME_RATE_CATEGORY_LOW:I = 0x2

.field public static final blacklist FRAME_RATE_CATEGORY_NORMAL:I = 0x3

.field public static final blacklist FRAME_RATE_CATEGORY_NO_PREFERENCE:I = 0x1

.field public static final whitelist FRAME_RATE_COMPATIBILITY_AT_LEAST:I = 0x2

.field public static final whitelist FRAME_RATE_COMPATIBILITY_DEFAULT:I = 0x0

.field public static final blacklist FRAME_RATE_COMPATIBILITY_EXACT:I = 0x64

.field public static final whitelist FRAME_RATE_COMPATIBILITY_FIXED_SOURCE:I = 0x1

.field public static final blacklist FRAME_RATE_COMPATIBILITY_MIN:I = 0x66

.field public static final blacklist FRAME_RATE_COMPATIBILITY_NO_VOTE:I = 0x65

.field public static final whitelist ROTATION_0:I = 0x0

.field public static final whitelist ROTATION_180:I = 0x2

.field public static final whitelist ROTATION_270:I = 0x3

.field public static final whitelist ROTATION_90:I = 0x1

.field public static final greylist-max-o SCALING_MODE_FREEZE:I = 0x0

.field public static final greylist-max-o SCALING_MODE_NO_SCALE_CROP:I = 0x3

.field public static final greylist-max-o SCALING_MODE_SCALE_CROP:I = 0x2

.field public static final greylist-max-o SCALING_MODE_SCALE_TO_WINDOW:I = 0x1

.field private static final blacklist SURFACE_NATIVE_ALLOCATION_SIZE_BYTES:J = 0x1388L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mCompatibleMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mGenerationId:I

.field private greylist-max-o mHwuiContext:Landroid/view/Surface$HwuiContext;

.field private greylist-max-o mIsAutoRefreshEnabled:Z

.field private greylist-max-o mIsSharedBufferModeEnabled:Z

.field private greylist-max-o mIsSingleBuffered:Z

.field final greylist mLock:Ljava/lang/Object;

.field private greylist-max-r mLockedObject:J

.field private greylist mName:Ljava/lang/String;

.field greylist mNativeObject:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCompatibleMatrix(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface-IA;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 351
    invoke-static {}, Landroid/view/Surface;->registerNativeMemoryUsage()V

    .line 352
    return-void
.end method

.method private constructor greylist-max-r <init>(J)V
    .registers 5

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface-IA;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 398
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_1b
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 400
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_23

    .line 401
    invoke-static {}, Landroid/view/Surface;->registerNativeMemoryUsage()V

    .line 402
    return-void

    .line 400
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public constructor whitelist <init>(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface-IA;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 384
    if-eqz p1, :cond_38

    .line 387
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isSingleBuffered()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    .line 388
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 390
    invoke-static {p1}, Landroid/view/Surface;->nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 391
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_35

    .line 392
    invoke-static {}, Landroid/view/Surface;->registerNativeMemoryUsage()V

    .line 393
    return-void

    .line 391
    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1

    .line 385
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "surfaceTexture must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Landroid/view/SurfaceControl;)V
    .registers 4

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface-IA;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 363
    invoke-virtual {p0, p1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 364
    invoke-static {}, Landroid/view/Surface;->registerNativeMemoryUsage()V

    .line 365
    return-void
.end method

.method private greylist-max-o checkNotReleasedLocked()V
    .registers 5

    .line 872
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 875
    return-void

    .line 873
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist freeNativeMemoryUsage()V
    .registers 3

    .line 1490
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->enableSurfaceNativeAllocRegistrationRo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1491
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(J)V

    .line 1493
    :cond_f
    return-void
.end method

.method private static native greylist-max-o nativeAllocateBuffers(J)V
.end method

.method private static native blacklist nativeAttachAndQueueBufferWithColorSpace(JLandroid/hardware/HardwareBuffer;I)I
.end method

.method private static native greylist-max-o nativeCreateFromSurfaceControl(J)J
.end method

.method private static native greylist-max-o nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native blacklist nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeForceScopedDisconnect(J)I
.end method

.method private static native blacklist nativeGetFromBlastBufferQueue(JJ)J
.end method

.method private static native blacklist nativeGetFromSurfaceControl(JJ)J
.end method

.method private static native greylist-max-o nativeGetHeight(J)I
.end method

.method private static native greylist-max-o nativeGetNextFrameNumber(J)J
.end method

.method private static native greylist-max-o nativeGetWidth(J)I
.end method

.method private static native greylist-max-o nativeIsConsumerRunningBehind(J)Z
.end method

.method private static native greylist-max-o nativeIsValid(J)Z
.end method

.method private static native greylist-max-o nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native greylist-max-r nativeRelease(J)V
.end method

.method private static native greylist-max-o nativeSetAutoRefreshEnabled(JZ)I
.end method

.method private static native blacklist nativeSetFrameRate(JFII)I
.end method

.method private static native greylist-max-o nativeSetScalingMode(JI)I
.end method

.method private static native greylist-max-o nativeSetSharedBufferModeEnabled(JZ)I
.end method

.method private static native greylist-max-o nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static blacklist registerNativeMemoryUsage()V
    .registers 3

    .line 1484
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->enableSurfaceNativeAllocRegistrationRo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1485
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->registerNativeAllocation(J)V

    .line 1487
    :cond_f
    return-void
.end method

.method public static greylist-max-o rotationToString(I)Ljava/lang/String;
    .registers 1

    .line 1355
    packed-switch p0, :pswitch_data_14

    .line 1369
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1366
    :pswitch_8
    const-string p0, "ROTATION_270"

    return-object p0

    .line 1363
    :pswitch_b
    const-string p0, "ROTATION_180"

    return-object p0

    .line 1360
    :pswitch_e
    const-string p0, "ROTATION_90"

    return-object p0

    .line 1357
    :pswitch_11
    const-string p0, "ROTATION_0"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private greylist-max-o setNativeObjectLocked(J)V
    .registers 7

    .line 857
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3a

    .line 858
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1a

    .line 859
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "Surface.release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    goto :goto_29

    .line 860
    :cond_1a
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    cmp-long v0, p1, v2

    if-nez v0, :cond_29

    .line 861
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 863
    :cond_29
    :goto_29
    iput-wide p1, p0, Landroid/view/Surface;->mNativeObject:J

    .line 864
    iget p1, p0, Landroid/view/Surface;->mGenerationId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/Surface;->mGenerationId:I

    .line 865
    iget-object p1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz p1, :cond_3a

    .line 866
    iget-object p1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {p1}, Landroid/view/Surface$HwuiContext;->updateSurface()V

    .line 869
    :cond_3a
    return-void
.end method

.method private greylist-max-o unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 6

    .line 583
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_67

    .line 587
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_40

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING: Surface\'s mNativeObject (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    .line 589
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") != mLockedObject (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/Surface;->mLockedObject:J

    .line 590
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    const-string v1, "Surface"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_40
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5f

    .line 596
    :try_start_48
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_56

    .line 598
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1}, Landroid/view/Surface;->nativeRelease(J)V

    .line 599
    iput-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    .line 600
    nop

    .line 601
    return-void

    .line 598
    :catchall_56
    move-exception p1

    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1}, Landroid/view/Surface;->nativeRelease(J)V

    .line 599
    iput-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    .line 600
    throw p1

    .line 593
    :cond_5f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Surface was not locked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 584
    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist updateNativeObject(J)V
    .registers 8

    .line 691
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_3
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_b

    .line 693
    monitor-exit v0

    return-void

    .line 695
    :cond_b
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_18

    .line 696
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeRelease(J)V

    .line 698
    :cond_18
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 699
    monitor-exit v0

    .line 700
    return-void

    .line 699
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method


# virtual methods
.method public greylist-max-o allocateBuffers()V
    .registers 4

    .line 882
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 883
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 884
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeAllocateBuffers(J)V

    .line 885
    monitor-exit v0

    .line 886
    return-void

    .line 885
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V
    .registers 6

    .line 919
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 921
    if-nez p2, :cond_e

    .line 922
    sget-object p2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    .line 924
    :cond_e
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    .line 925
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result p2

    .line 924
    invoke-static {v1, v2, p1, p2}, Landroid/view/Surface;->nativeAttachAndQueueBufferWithColorSpace(JLandroid/hardware/HardwareBuffer;I)I

    move-result p1

    .line 926
    if-nez p1, :cond_1c

    .line 931
    monitor-exit v0

    .line 932
    return-void

    .line 927
    :cond_1c
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to attach and queue buffer to Surface (bad object?), native error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 931
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public whitelist clearFrameRate()V
    .registers 6

    .line 1309
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 1313
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Landroid/view/Surface;->nativeSetFrameRate(JFII)I

    move-result v1

    .line 1315
    if-nez v1, :cond_12

    .line 1319
    monitor-exit v0

    .line 1320
    return-void

    .line 1316
    :cond_12
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clear the frame rate on Surface. Native error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1319
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist copyFrom(Landroid/graphics/BLASTBufferQueue;)V
    .registers 6

    .line 736
    if-eqz p1, :cond_1c

    .line 740
    iget-wide v0, p1, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    .line 741
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_14

    .line 744
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, v0, v1}, Landroid/view/Surface;->nativeGetFromBlastBufferQueue(JJ)J

    move-result-wide v0

    .line 745
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->updateNativeObject(J)V

    .line 746
    return-void

    .line 742
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null BLASTBufferQueue native object"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 737
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "queue must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist copyFrom(Landroid/view/SurfaceControl;)V
    .registers 6

    .line 715
    if-eqz p1, :cond_1c

    .line 719
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 720
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_14

    .line 724
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, v0, v1}, Landroid/view/Surface;->nativeGetFromSurfaceControl(JJ)J

    move-result-wide v0

    .line 725
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->updateNativeObject(J)V

    .line 726
    return-void

    .line 721
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null SurfaceControl native object. Are you using a released SurfaceControl?"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 716
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "other must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o createFrom(Landroid/view/SurfaceControl;)V
    .registers 8

    .line 761
    if-eqz p1, :cond_2c

    .line 765
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 766
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_24

    .line 770
    invoke-static {v0, v1}, Landroid/view/Surface;->nativeCreateFromSurfaceControl(J)J

    move-result-wide v0

    .line 772
    iget-object p1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 773
    :try_start_11
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1c

    .line 774
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeRelease(J)V

    .line 776
    :cond_1c
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 777
    monitor-exit p1

    .line 778
    return-void

    .line 777
    :catchall_21
    move-exception v0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_21

    throw v0

    .line 767
    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null SurfaceControl native object. Are you using a released SurfaceControl?"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 762
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "other must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public greylist destroy()V
    .registers 6

    .line 443
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_3
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_10

    .line 445
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeDestroy(J)V

    .line 447
    :cond_10
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 448
    monitor-exit v0

    .line 449
    return-void

    .line 448
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 407
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 408
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 410
    :cond_9
    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_14

    .line 412
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 413
    invoke-static {}, Landroid/view/Surface;->freeNativeMemoryUsage()V

    .line 414
    nop

    .line 415
    return-void

    .line 412
    :catchall_14
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 413
    invoke-static {}, Landroid/view/Surface;->freeNativeMemoryUsage()V

    .line 414
    throw v0
.end method

.method greylist-max-o forceScopedDisconnect()V
    .registers 4

    .line 903
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 905
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeForceScopedDisconnect(J)I

    move-result v1

    .line 906
    if-nez v1, :cond_10

    .line 909
    monitor-exit v0

    .line 910
    return-void

    .line 907
    :cond_10
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to disconnect Surface instance (bad object?)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 909
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist getDefaultSize()Landroid/graphics/Point;
    .registers 6

    .line 524
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 526
    new-instance v1, Landroid/graphics/Point;

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    move-result v2

    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v3, v4}, Landroid/view/Surface;->nativeGetHeight(J)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    monitor-exit v0

    return-object v1

    .line 527
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public greylist-max-o getGenerationId()I
    .registers 3

    .line 484
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_3
    iget v1, p0, Landroid/view/Surface;->mGenerationId:I

    monitor-exit v0

    return v1

    .line 486
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist getNextFrameNumber()J
    .registers 4

    .line 497
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 499
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeGetNextFrameNumber(J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 500
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public greylist-max-o hwuiDestroy()V
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_c

    .line 458
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->destroy()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 461
    :cond_c
    return-void
.end method

.method public greylist-max-o isAutoRefreshEnabled()Z
    .registers 2

    .line 1038
    iget-boolean v0, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    return v0
.end method

.method public greylist-max-o isConsumerRunningBehind()Z
    .registers 4

    .line 510
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 512
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeIsConsumerRunningBehind(J)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 513
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public greylist-max-o isSharedBufferModeEnabled()Z
    .registers 2

    .line 997
    iget-boolean v0, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    return v0
.end method

.method public greylist-max-o isSingleBuffered()Z
    .registers 2

    .line 939
    iget-boolean v0, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    return v0
.end method

.method public whitelist isValid()Z
    .registers 6

    .line 470
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_3
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 472
    :cond_e
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeIsValid(J)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 473
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 552
    iget-wide v1, p0, Landroid/view/Surface;->mLockedObject:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1c

    .line 559
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    iget-object v3, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v1, v2, v3, p1}, Landroid/view/Surface;->nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/Surface;->mLockedObject:J

    .line 560
    iget-object p1, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    monitor-exit v0

    return-object p1

    .line 557
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface was already locked"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 561
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public whitelist lockHardwareCanvas()Landroid/graphics/Canvas;
    .registers 6

    .line 622
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 624
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-nez v1, :cond_12

    .line 625
    new-instance v1, Landroid/view/Surface$HwuiContext;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$HwuiContext;-><init>(Landroid/view/Surface;Z)V

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 627
    :cond_12
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    .line 628
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    move-result v2

    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    .line 629
    invoke-static {v3, v4}, Landroid/view/Surface;->nativeGetHeight(J)I

    move-result v3

    .line 627
    invoke-virtual {v1, v2, v3}, Landroid/view/Surface$HwuiContext;->lockCanvas(II)Landroid/graphics/Canvas;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 630
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public greylist-max-o lockHardwareWideColorGamutCanvas()Landroid/graphics/Canvas;
    .registers 6

    .line 655
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 657
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v1}, Landroid/view/Surface$HwuiContext;->isWideColorGamut()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 658
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v1}, Landroid/view/Surface$HwuiContext;->destroy()V

    .line 659
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 661
    :cond_1a
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-nez v1, :cond_26

    .line 662
    new-instance v1, Landroid/view/Surface$HwuiContext;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$HwuiContext;-><init>(Landroid/view/Surface;Z)V

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 664
    :cond_26
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    .line 665
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    move-result v2

    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    .line 666
    invoke-static {v3, v4}, Landroid/view/Surface;->nativeGetHeight(J)I

    move-result v3

    .line 664
    invoke-virtual {v1, v2, v3}, Landroid/view/Surface$HwuiContext;->lockCanvas(II)Landroid/graphics/Canvas;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 667
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 814
    if-eqz p1, :cond_24

    .line 818
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 825
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 826
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput-boolean v1, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    .line 827
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1}, Landroid/view/Surface;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 828
    monitor-exit v0

    .line 829
    return-void

    .line 828
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw p1

    .line 815
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist release()V
    .registers 6

    .line 423
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_3
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v1, :cond_f

    .line 425
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v1}, Landroid/view/Surface$HwuiContext;->destroy()V

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 428
    :cond_f
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1f

    .line 429
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeRelease(J)V

    .line 430
    invoke-direct {p0, v3, v4}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 432
    :cond_1f
    monitor-exit v0

    .line 433
    return-void

    .line 432
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public greylist-max-o setAutoRefreshEnabled(Z)V
    .registers 4

    .line 1022
    iget-boolean v0, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    if-eq v0, p1, :cond_17

    .line 1023
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeSetAutoRefreshEnabled(JZ)I

    move-result v0

    .line 1024
    if-nez v0, :cond_f

    .line 1027
    iput-boolean p1, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    goto :goto_17

    .line 1025
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to set auto refresh on Surface (bad object?)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1030
    :cond_17
    :goto_17
    return-void
.end method

.method greylist-max-o setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .registers 3

    .line 683
    if-eqz p1, :cond_10

    .line 684
    iget p1, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 685
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 686
    iget-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 688
    :cond_10
    return-void
.end method

.method public whitelist setFrameRate(FI)V
    .registers 4

    .line 1330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/Surface;->setFrameRate(FII)V

    .line 1331
    return-void
.end method

.method public whitelist setFrameRate(FII)V
    .registers 7

    .line 1285
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 1287
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1, p2, p3}, Landroid/view/Surface;->nativeSetFrameRate(JFII)I

    move-result p1

    .line 1289
    sget p2, Landroid/system/OsConstants;->EINVAL:I

    neg-int p2, p2

    if-eq p1, p2, :cond_2d

    .line 1291
    if-eqz p1, :cond_2b

    .line 1292
    const-string p2, "Surface"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set frame rate on Surface. Native error: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_2b
    monitor-exit v0

    .line 1295
    return-void

    .line 1290
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid argument to Surface.setFrameRate()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1294
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public blacklist setFrameRate(Landroid/view/Surface$FrameRateParams;)V
    .registers 7

    .line 1226
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1227
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 1230
    invoke-virtual {p1}, Landroid/view/Surface$FrameRateParams;->getFixedSourceRate()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_11

    .line 1231
    const/4 v1, 0x0

    goto :goto_12

    .line 1232
    :cond_11
    const/4 v1, 0x1

    .line 1233
    :goto_12
    if-nez v1, :cond_19

    .line 1234
    invoke-virtual {p1}, Landroid/view/Surface$FrameRateParams;->getDesiredMinRate()F

    move-result v2

    goto :goto_1d

    .line 1235
    :cond_19
    invoke-virtual {p1}, Landroid/view/Surface$FrameRateParams;->getFixedSourceRate()F

    move-result v2

    .line 1236
    :goto_1d
    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    .line 1237
    invoke-virtual {p1}, Landroid/view/Surface$FrameRateParams;->getChangeFrameRateStrategy()I

    move-result p1

    .line 1236
    invoke-static {v3, v4, v2, v1, p1}, Landroid/view/Surface;->nativeSetFrameRate(JFII)I

    move-result p1

    .line 1238
    sget v1, Landroid/system/OsConstants;->EINVAL:I

    neg-int v1, v1

    if-eq p1, v1, :cond_48

    .line 1240
    if-eqz p1, :cond_46

    .line 1241
    const-string v1, "Surface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set frame rate on Surface. Native error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_46
    monitor-exit v0

    .line 1244
    return-void

    .line 1239
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid argument to Surface.setFrameRate()"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1243
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public greylist-max-o setScalingMode(I)V
    .registers 6

    .line 893
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 895
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1}, Landroid/view/Surface;->nativeSetScalingMode(JI)I

    move-result v1

    .line 896
    if-nez v1, :cond_10

    .line 899
    monitor-exit v0

    .line 900
    return-void

    .line 897
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid scaling mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 899
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public greylist-max-o setSharedBufferModeEnabled(Z)V
    .registers 4

    .line 978
    iget-boolean v0, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    if-eq v0, p1, :cond_17

    .line 979
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeSetSharedBufferModeEnabled(JZ)I

    move-result v0

    .line 980
    if-nez v0, :cond_f

    .line 984
    iput-boolean p1, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    goto :goto_17

    .line 981
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to set shared buffer mode on Surface (bad object?)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 987
    :cond_17
    :goto_17
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 850
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface(name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNativeObject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")/@0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 852
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 851
    return-object v1

    .line 853
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public greylist transferFrom(Landroid/view/Surface;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 789
    if-eqz p1, :cond_29

    .line 792
    if-eq p1, p0, :cond_28

    .line 794
    iget-object v0, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_7
    iget-wide v1, p1, Landroid/view/Surface;->mNativeObject:J

    .line 796
    const-wide/16 v3, 0x0

    invoke-direct {p1, v3, v4}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 797
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_25

    .line 799
    iget-object p1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 800
    :try_start_12
    iget-wide v5, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_1d

    .line 801
    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v3, v4}, Landroid/view/Surface;->nativeRelease(J)V

    .line 803
    :cond_1d
    invoke-direct {p0, v1, v2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 804
    monitor-exit p1

    goto :goto_28

    :catchall_22
    move-exception v0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_22

    throw v0

    .line 797
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1

    .line 806
    :cond_28
    :goto_28
    return-void

    .line 790
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "other must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unlockCanvas(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 4

    .line 571
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 574
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v1, :cond_10

    .line 575
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v1, p1}, Landroid/view/Surface$HwuiContext;->unlockAndPost(Landroid/graphics/Canvas;)V

    goto :goto_13

    .line 577
    :cond_10
    invoke-direct {p0, p1}, Landroid/view/Surface;->unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 579
    :goto_13
    monitor-exit v0

    .line 580
    return-void

    .line 579
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 833
    if-eqz p1, :cond_26

    .line 836
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_5
    iget-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 840
    iget-boolean v1, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v3, v4, p1}, Landroid/view/Surface;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 842
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_23

    .line 843
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_22

    .line 844
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 846
    :cond_22
    return-void

    .line 842
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1

    .line 834
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
