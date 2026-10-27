.class public final Landroid/hardware/HardwareBuffer;
.super Ljava/lang/Object;
.source "HardwareBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/HardwareBuffer$Usage;,
        Landroid/hardware/HardwareBuffer$Format;
    }
.end annotation


# static fields
.field public static final blacklist BGRA_1010102:I = 0x43

.field public static final blacklist BGRX_1010102:I = 0x44

.field public static final whitelist BLOB:I = 0x21

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DS_24UI8:I = 0x32

.field public static final whitelist DS_FP32UI8:I = 0x34

.field public static final whitelist D_16:I = 0x30

.field public static final whitelist D_24:I = 0x31

.field public static final whitelist D_FP32:I = 0x33

.field public static final whitelist RGBA_10101010:I = 0x3b

.field public static final whitelist RGBA_1010102:I = 0x2b

.field public static final blacklist RGBA_12121212:I = 0x41

.field public static final blacklist RGBA_14141414:I = 0x42

.field public static final whitelist RGBA_8888:I = 0x1

.field public static final whitelist RGBA_FP16:I = 0x16

.field public static final whitelist RGBX_8888:I = 0x2

.field public static final whitelist RGB_565:I = 0x4

.field public static final whitelist RGB_888:I = 0x3

.field public static final blacklist RG_1212:I = 0x3f

.field public static final blacklist RG_1414:I = 0x40

.field public static final whitelist RG_1616:I = 0x3a

.field public static final blacklist R_12:I = 0x3d

.field public static final blacklist R_14:I = 0x3e

.field public static final whitelist R_16:I = 0x39

.field public static final whitelist R_8:I = 0x38

.field public static final whitelist S_UI8:I = 0x35

.field public static final whitelist USAGE_COMPOSER_OVERLAY:J = 0x800L

.field public static final whitelist USAGE_CPU_READ_OFTEN:J = 0x3L

.field public static final whitelist USAGE_CPU_READ_RARELY:J = 0x2L

.field public static final whitelist USAGE_CPU_WRITE_OFTEN:J = 0x30L

.field public static final whitelist USAGE_CPU_WRITE_RARELY:J = 0x20L

.field public static final whitelist USAGE_FRONT_BUFFER:J = 0x100000000L

.field public static final whitelist USAGE_GPU_COLOR_OUTPUT:J = 0x200L

.field public static final whitelist USAGE_GPU_CUBE_MAP:J = 0x2000000L

.field public static final whitelist USAGE_GPU_DATA_BUFFER:J = 0x1000000L

.field public static final whitelist USAGE_GPU_MIPMAP_COMPLETE:J = 0x4000000L

.field public static final whitelist USAGE_GPU_SAMPLED_IMAGE:J = 0x100L

.field public static final whitelist USAGE_PROTECTED_CONTENT:J = 0x4000L

.field public static final whitelist USAGE_SENSOR_DIRECT_DATA:J = 0x800000L

.field public static final whitelist USAGE_VIDEO_ENCODE:J = 0x10000L

.field public static final whitelist YCBCR_420_888:I = 0x23

.field public static final whitelist YCBCR_P010:I = 0x36

.field public static final whitelist YCBCR_P210:I = 0x3c


# instance fields
.field private greylist-max-o mCleaner:Ljava/lang/Runnable;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-r mNativeObject:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnReadHardwareBufferFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/hardware/HardwareBuffer;->nReadHardwareBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 533
    new-instance v0, Landroid/hardware/HardwareBuffer$1;

    invoke-direct {v0}, Landroid/hardware/HardwareBuffer$1;-><init>()V

    sput-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-p <init>(J)V
    .registers 5

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 397
    iput-wide p1, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    .line 398
    invoke-static {p1, p2}, Landroid/hardware/HardwareBuffer;->nEstimateSize(J)J

    move-result-wide p1

    .line 399
    invoke-static {p1, p2}, Landroid/hardware/HardwareBuffer;->getRegistry(J)Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    .line 400
    iget-object p1, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p2, "HardwareBuffer.close"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/hardware/HardwareBuffer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/HardwareBuffer;-><init>(J)V

    return-void
.end method

.method private blacklist checkClosed(Ljava/lang/String;)V
    .registers 5

    .line 473
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 477
    return-void

    .line 474
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This HardwareBuffer has been closed and its "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cannot be obtained."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(IIIIJ)Landroid/hardware/HardwareBuffer;
    .registers 12

    .line 317
    if-lez p0, :cond_67

    .line 320
    if-lez p1, :cond_4d

    .line 323
    if-lez p3, :cond_33

    .line 326
    const/16 v0, 0x21

    if-ne p2, v0, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_16

    .line 327
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Height must be 1 when using the BLOB format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_16
    :goto_16
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Landroid/hardware/HardwareBuffer;->nCreateHardwareBuffer(IIIIJ)J

    move-result-wide p0

    .line 330
    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_2b

    .line 335
    new-instance p2, Landroid/hardware/HardwareBuffer;

    invoke-direct {p2, p0, p1}, Landroid/hardware/HardwareBuffer;-><init>(J)V

    return-object p2

    .line 331
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to create a HardwareBuffer, either the dimensions passed were too large, too many image layers were requested, or an invalid set of usage flags or invalid format was passed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_33
    move v3, p3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid layer count "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 321
    :cond_4d
    move v1, p1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid height "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 318
    :cond_67
    move v0, p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid width "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;
    .registers 3

    .line 376
    invoke-static {p0}, Landroid/hardware/HardwareBuffer;->nCreateFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)J

    move-result-wide v0

    .line 377
    new-instance p0, Landroid/hardware/HardwareBuffer;

    invoke-direct {p0, v0, v1}, Landroid/hardware/HardwareBuffer;-><init>(J)V

    return-object p0
.end method

.method private static blacklist getRegistry(J)Llibcore/util/NativeAllocationRegistry;
    .registers 6

    .line 384
    invoke-static {}, Landroid/hardware/HardwareBuffer;->nGetNativeFinalizer()J

    move-result-wide v0

    .line 385
    nop

    .line 386
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/readonly/Flags;->nativeMetrics()Z

    move-result v2

    const-class v3, Landroid/hardware/HardwareBuffer;

    if-eqz v2, :cond_12

    .line 387
    invoke-static {v3, v0, v1, p0, p1}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/Class;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object p0

    goto :goto_1a

    .line 388
    :cond_12
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v0, v1, p0, p1}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object p0

    .line 386
    :goto_1a
    return-object p0
.end method

.method public static whitelist isSupported(IIIIJ)Z
    .registers 12

    .line 352
    if-lez p0, :cond_54

    .line 355
    if-lez p1, :cond_3a

    .line 358
    if-lez p3, :cond_20

    .line 361
    const/16 v0, 0x21

    if-ne p2, v0, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_16

    .line 362
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Height must be 1 when using the BLOB format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 364
    :cond_16
    :goto_16
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Landroid/hardware/HardwareBuffer;->nIsSupported(IIIIJ)Z

    move-result p0

    return p0

    .line 359
    :cond_20
    move v3, p3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid layer count "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_3a
    move v1, p1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid height "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :cond_54
    move v0, p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid width "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native blacklist nCreateFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)J
.end method

.method private static native greylist-max-o nCreateHardwareBuffer(IIIIJ)J
.end method

.method private static native blacklist nEstimateSize(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFormat(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetHeight(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetId(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetLayers(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetNativeFinalizer()J
.end method

.method private static native greylist-max-o nGetUsage(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetWidth(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nIsSupported(IIIIJ)Z
.end method

.method private static native greylist-max-o nReadHardwareBufferFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nWriteHardwareBufferToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 488
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 489
    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 490
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    .line 491
    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    .line 494
    :cond_17
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 406
    :try_start_0
    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 407
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    .line 409
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 410
    nop

    .line 411
    return-void

    .line 409
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 410
    throw v0
.end method

.method public whitelist getFormat()I
    .registers 3

    .line 434
    const-string v0, "format"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 435
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetFormat(J)I

    move-result v0

    return v0
.end method

.method public whitelist getHeight()I
    .registers 3

    .line 425
    const-string v0, "height"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 426
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetHeight(J)I

    move-result v0

    return v0
.end method

.method public whitelist getId()J
    .registers 3

    .line 468
    const-string v0, "id"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 469
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLayers()I
    .registers 3

    .line 442
    const-string/jumbo v0, "layer count"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 443
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetLayers(J)I

    move-result v0

    return v0
.end method

.method public whitelist getUsage()J
    .registers 3

    .line 450
    const-string/jumbo v0, "usage"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 451
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetUsage(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getWidth()I
    .registers 3

    .line 417
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0}, Landroid/hardware/HardwareBuffer;->checkClosed(Ljava/lang/String;)V

    .line 418
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetWidth(J)I

    move-result v0

    return v0
.end method

.method public whitelist isClosed()Z
    .registers 5

    .line 506
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 526
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result p2

    if-nez p2, :cond_c

    .line 530
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/hardware/HardwareBuffer;->nWriteHardwareBufferToParcel(JLandroid/os/Parcel;)V

    .line 531
    return-void

    .line 527
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This HardwareBuffer has been closed and cannot be written to a parcel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
