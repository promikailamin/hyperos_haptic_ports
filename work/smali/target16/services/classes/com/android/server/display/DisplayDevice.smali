.class public abstract Lcom/android/server/display/DisplayDevice;
.super Ljava/lang/Object;
.source "DisplayDevice.java"


# static fields
.field public static final EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayRect:Landroid/graphics/Rect;

.field public mCurrentFlags:I

.field public mCurrentLayerStack:I

.field public mCurrentLayerStackRect:Landroid/graphics/Rect;

.field public mCurrentOrientation:I

.field public mCurrentSurface:Landroid/view/Surface;

.field public mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayToken:Landroid/os/IBinder;

.field public mLastDisplayHeight:I

.field public mLastDisplayWidth:I

.field public final mUniqueId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$icCjAt3NvD1wZvC7Pld2_13VD74(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 3

    .line 484
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, p0

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/view/Display$Mode$Builder;

    invoke-direct {v0}, Landroid/view/Display$Mode$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display$Mode$Builder;->build()Landroid/view/Display$Mode;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    const/4 v1, 0x0

    .line 70
    iput v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    .line 71
    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 87
    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    .line 88
    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 89
    iput-object p3, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 91
    iput-object p4, p0, Lcom/android/server/display/DisplayDevice;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 1

    .line 0
    return-void
.end method

.method public configureDisplaySizeLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 388
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 389
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    const/4 v3, 0x3

    if-ne v1, v3, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :cond_e
    :goto_e
    if-eqz v2, :cond_13

    .line 391
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_15

    :cond_13
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_15
    if-eqz v2, :cond_1a

    .line 392
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_1c

    :cond_1a
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 393
    :goto_1c
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/display/DisplayDevice;->setDisplaySizeLocked(Landroid/view/SurfaceControl$Transaction;II)V

    return-void
.end method

.method public configureSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayerStackRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDisplayRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;
    .registers 1

    .line 278
    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_a

    .line 110
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->loadDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 112
    :cond_a
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method public abstract getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
.end method

.method public getDisplayIdToMirrorLocked()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getDisplaySurfaceDefaultSizeLocked()Landroid/graphics/Point;
    .registers 6

    .line 156
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 157
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 158
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 159
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;

    move-result-object v3

    .line 160
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_22

    if-eqz v3, :cond_22

    .line 161
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getFlags()I

    move-result v0

    and-int/2addr v0, v4

    if-eqz v0, :cond_22

    .line 162
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 163
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    .line 173
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->isRotatedLocked()Z

    move-result p0

    if-eqz p0, :cond_2e

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_2e
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public final getDisplayTokenLocked()Landroid/os/IBinder;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getNameLocked()Ljava/lang/String;
    .registers 1

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedResolutionsLocked()[Landroid/graphics/Point;
    .registers 7

    .line 477
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 478
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 479
    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_25

    aget-object v3, p0, v2

    .line 480
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 482
    :cond_25
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Landroid/graphics/Point;

    .line 483
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 484
    new-instance v0, Lcom/android/server/display/DisplayDevice$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDevice$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .registers 1

    .line 269
    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .registers 1

    .line 262
    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public abstract hasStableUniqueId()Z
.end method

.method public isRotatedLocked()Z
    .registers 3

    .line 470
    iget p0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x3

    if-ne p0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    return v0
.end method

.method public isWindowManagerMirroringLocked()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final loadDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .registers 3

    .line 489
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    .line 490
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object p0

    const/4 v1, 0x0

    .line 489
    invoke-static {v0, v1, p0}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;ZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public onOverlayChangedLocked()V
    .registers 1

    .line 0
    return-void
.end method

.method public final populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V
    .registers 4

    .line 422
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    iput v0, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 424
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_e

    .line 425
    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    .line 427
    :cond_e
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 430
    :goto_13
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1d

    .line 431
    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_22

    .line 433
    :cond_1d
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 436
    :goto_22
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->isRotatedLocked()Z

    move-result v0

    .line 437
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p0

    if-eqz v0, :cond_2f

    .line 438
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_31

    :cond_2f
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_31
    iput v1, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    if-eqz v0, :cond_38

    .line 439
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_3a

    :cond_38
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_3a
    iput v0, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 441
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v0, p1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 443
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    instance-of v0, p0, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_53

    .line 444
    check-cast p0, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p1, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    return-void

    :cond_53
    const/4 p0, 0x0

    .line 446
    iput-object p0, p1, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    return-void
.end method

.method public requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;
    .registers 5

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAutoLowLatencyModeLocked(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final setDisplayFlagsLocked(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 344
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    if-eq v0, p2, :cond_b

    .line 345
    iput p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    .line 346
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplayFlags(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    :cond_b
    return-void
.end method

.method public final setDisplaySizeLocked(Landroid/view/SurfaceControl$Transaction;II)V
    .registers 5

    .line 400
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayWidth:I

    if-ne p2, v0, :cond_a

    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayHeight:I

    if-eq p3, v0, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 401
    :cond_a
    :goto_a
    iput p2, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayWidth:I

    .line 402
    iput p3, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayHeight:I

    .line 403
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setGameContentTypeLocked(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public final setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;II)V
    .registers 5

    .line 329
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    if-eq v0, p2, :cond_33

    .line 330
    iput p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    .line 331
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] Layerstack set to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayDevice"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method public final setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    .line 362
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    if-ne v0, p2, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1a

    .line 364
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1a

    .line 366
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 367
    :cond_1a
    :goto_1a
    iput p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 369
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-nez v0, :cond_27

    .line 370
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    .line 372
    :cond_27
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-nez v0, :cond_37

    .line 375
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 377
    :cond_37
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 379
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public final setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    if-eq v0, p2, :cond_b

    .line 412
    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 413
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    :cond_b
    return-void
.end method

.method public setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setWindowManagerMirroringLocked(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public shouldAutoMirror()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldOnlyMirror()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
