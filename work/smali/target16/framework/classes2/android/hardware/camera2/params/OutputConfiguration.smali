.class public final Landroid/hardware/camera2/params/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/OutputConfiguration$MirrorMode;,
        Landroid/hardware/camera2/params/OutputConfiguration$StreamUseCase;,
        Landroid/hardware/camera2/params/OutputConfiguration$SensorPixelMode;,
        Landroid/hardware/camera2/params/OutputConfiguration$TimestampBase;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_SURFACES_COUNT:I = 0x4

.field public static final whitelist MIRROR_MODE_AUTO:I = 0x0

.field public static final whitelist MIRROR_MODE_H:I = 0x2

.field public static final whitelist MIRROR_MODE_NONE:I = 0x1

.field public static final whitelist MIRROR_MODE_V:I = 0x3

.field public static final whitelist ROTATION_0:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_180:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_270:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_90:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SURFACE_GROUP_ID_NONE:I = -0x1

.field private static final blacklist SURFACE_TYPE_IMAGE_READER:I = 0x4

.field private static final blacklist SURFACE_TYPE_MEDIA_CODEC:I = 0x3

.field private static final blacklist SURFACE_TYPE_MEDIA_RECORDER:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "OutputConfiguration"

.field public static final whitelist TIMESTAMP_BASE_CHOREOGRAPHER_SYNCED:I = 0x4

.field public static final whitelist TIMESTAMP_BASE_DEFAULT:I = 0x0

.field public static final whitelist TIMESTAMP_BASE_MONOTONIC:I = 0x2

.field public static final blacklist TIMESTAMP_BASE_READOUT_SENSOR:I = 0x5

.field public static final whitelist TIMESTAMP_BASE_REALTIME:I = 0x3

.field public static final whitelist TIMESTAMP_BASE_SENSOR:I = 0x1

.field private static blacklist sNextMultiResolutionGroupId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final greylist-max-o SURFACE_TYPE_SURFACE_TEXTURE:I

.field private final greylist-max-o SURFACE_TYPE_SURFACE_VIEW:I

.field private final greylist-max-o SURFACE_TYPE_UNKNOWN:I

.field private blacklist mColorSpace:I

.field private final greylist-max-o mConfiguredDataspace:I

.field private final greylist-max-o mConfiguredFormat:I

.field private final greylist-max-o mConfiguredGenerationId:I

.field private greylist-max-o mConfiguredSize:Landroid/util/Size;

.field private blacklist mDynamicRangeProfile:J

.field private final greylist-max-o mIsDeferredConfig:Z

.field private blacklist mIsMultiResolution:Z

.field private blacklist mIsReadoutSensorTimestampBase:Z

.field private greylist-max-o mIsShared:Z

.field private blacklist mMirrorMode:I

.field private blacklist mMirrorModeForSurfaces:Landroid/util/IntArray;

.field private greylist-max-o mPhysicalCameraId:Ljava/lang/String;

.field private final blacklist mPublicFormat:I

.field private blacklist mReadoutTimestampEnabled:Z

.field private final greylist-max-o mRotation:I

.field private blacklist mSensorPixelModesUsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStreamUseCase:J

.field private final greylist-max-o mSurfaceGroupId:I

.field private final greylist-max-o mSurfaceType:I

.field private greylist-max-o mSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTimestampBase:I

.field private blacklist mUsage:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1832
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/OutputConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2020
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->sNextMultiResolutionGroupId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/util/Size;)V
    .registers 12

    .line 902
    nop

    .line 903
    const/16 v0, 0x22

    if-ne p2, v0, :cond_8

    const-wide/16 v0, 0x0

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x3

    :goto_a
    move-wide v6, v0

    .line 902
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(IILandroid/util/Size;J)V

    .line 904
    return-void
.end method

.method public constructor whitelist <init>(IILandroid/util/Size;J)V
    .registers 9

    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 364
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 369
    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 956
    const-string v2, "surfaceSize must not be null"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eqz v2, :cond_6d

    .line 961
    const/4 v2, 0x4

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 962
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 963
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 964
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 965
    iput-object p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 966
    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 967
    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 968
    invoke-static {p2, p4, p5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getOverrideFormat(IJ)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPublicFormat:I

    .line 969
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 970
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 971
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 972
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 973
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 974
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 975
    const-wide/16 p1, 0x1

    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 976
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 977
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 978
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 979
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 980
    new-instance p1, Landroid/util/IntArray;

    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 981
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 982
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    .line 983
    iput-wide p4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 984
    return-void

    .line 958
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface size needs to be non-zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(ILandroid/util/Size;)V
    .registers 5

    .line 875
    nop

    .line 876
    const/16 v0, 0x22

    if-ne p1, v0, :cond_8

    const-wide/16 v0, 0x0

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x3

    .line 875
    :goto_a
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/util/Size;J)V

    .line 877
    return-void
.end method

.method public constructor whitelist <init>(ILandroid/util/Size;J)V
    .registers 11

    .line 928
    const/4 v1, -0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(IILandroid/util/Size;J)V

    .line 929
    return-void
.end method

.method public constructor whitelist <init>(ILandroid/view/Surface;)V
    .registers 4

    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 428
    return-void
.end method

.method public constructor whitelist <init>(ILandroid/view/Surface;I)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 364
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 369
    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 579
    const-string v2, "Surface must not be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const/4 v2, 0x3

    const-string v3, "Rotation constant"

    invoke-static {p3, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 581
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 582
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 583
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 584
    iget-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    iput p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 586
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 587
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 588
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 589
    invoke-virtual {p2}, Landroid/view/Surface;->getGenerationId()I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 590
    iget p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    invoke-static {p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->internalFormatAndDataspaceToImageFormat(II)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPublicFormat:I

    .line 592
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 593
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 594
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 595
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 596
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 597
    const-wide/16 p1, 0x1

    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 598
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 599
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 600
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 601
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 602
    new-instance p3, Landroid/util/IntArray;

    invoke-direct {p3}, Landroid/util/IntArray;-><init>()V

    iput-object p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 603
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->mirrorModeSharedSurfaces()Z

    move-result p3

    if-eqz p3, :cond_7d

    .line 604
    iget-object p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    invoke-virtual {p3, v0}, Landroid/util/IntArray;->add(I)V

    .line 606
    :cond_7d
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 607
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    .line 608
    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 609
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 4

    .line 1577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 369
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 1578
    if-eqz p1, :cond_6b

    .line 1582
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 1583
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 1584
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 1585
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 1586
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 1587
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 1588
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mPublicFormat:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPublicFormat:I

    .line 1589
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1590
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 1591
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 1592
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 1593
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 1594
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 1595
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 1596
    iget-wide v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 1597
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 1598
    iget-wide v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 1599
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 1600
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 1601
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 1602
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 1603
    iget-wide v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 1604
    return-void

    .line 1579
    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OutputConfiguration shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 27

    .line 1609
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 364
    const/4 v2, 0x0

    iput v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 369
    const/4 v3, 0x1

    iput v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 1610
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1611
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1612
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1613
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1614
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1615
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v3, :cond_2a

    move v9, v3

    goto :goto_2b

    :cond_2a
    move v9, v2

    .line 1616
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v3, :cond_33

    move v10, v3

    goto :goto_34

    :cond_33
    move v10, v2

    .line 1617
    :goto_34
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    sget-object v12, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v13, p1

    invoke-virtual {v13, v11, v12}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 1619
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1620
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-ne v14, v3, :cond_4c

    move v14, v3

    goto :goto_4d

    :cond_4c
    move v14, v2

    .line 1621
    :goto_4d
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .line 1623
    const/4 v1, 0x3

    const-string v3, "Rotation constant"

    invoke-static {v4, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1624
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1625
    invoke-static {v2, v3}, Landroid/hardware/camera2/params/DynamicRangeProfiles;->checkProfileValue(J)V

    .line 1626
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1627
    move-wide/from16 v17, v2

    move v3, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1629
    move/from16 v19, v3

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1630
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1631
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v20

    .line 1632
    move-object/from16 v21, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move/from16 v22, v13

    const/4 v13, 0x1

    if-ne v15, v13, :cond_83

    goto :goto_84

    :cond_83
    const/4 v13, 0x0

    .line 1633
    :goto_84
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1634
    move/from16 v16, v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1635
    move-wide/from16 v23, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1637
    iput v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 1638
    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 1639
    iput-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 1640
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v7, v8}, Landroid/util/Size;-><init>(II)V

    iput-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1641
    iput-boolean v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 1642
    iput-boolean v10, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 1643
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 1644
    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e0

    .line 1645
    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 1646
    iget-object v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-static {v1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 1647
    iget-object v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-static {v1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 1648
    iget-object v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->getGenerationId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    goto :goto_100

    .line 1650
    :cond_e0
    iput v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 1651
    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_f7

    .line 1652
    const/16 v1, 0x22

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v2

    iput v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 1654
    nop

    .line 1655
    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    goto :goto_fd

    .line 1657
    :cond_f7
    iput v15, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 1658
    iput v13, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 1659
    iput-wide v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 1661
    :goto_fd
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 1663
    :goto_100
    iget v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    invoke-static {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->internalFormatAndDataspaceToImageFormat(II)I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPublicFormat:I

    .line 1665
    iput-object v12, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 1666
    iput-boolean v14, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 1667
    invoke-static/range {v21 .. v21}, Landroid/hardware/camera2/params/OutputConfiguration;->convertIntArrayToIntegerList([I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 1668
    move-wide/from16 v1, v17

    iput-wide v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 1669
    move/from16 v1, v19

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 1670
    move-wide/from16 v1, v23

    iput-wide v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 1671
    iput v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 1672
    move/from16 v1, v22

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 1673
    invoke-static/range {v20 .. v20}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 1674
    move/from16 v13, v16

    iput-boolean v13, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 1675
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/util/Size;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 364
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 369
    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 810
    const-string v3, "surfaceSize must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string v3, "klass must not be null"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-class v3, Landroid/view/SurfaceHolder;

    if-ne p2, v3, :cond_1f

    .line 813
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 814
    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    goto :goto_3b

    .line 815
    :cond_1f
    const-class v3, Landroid/graphics/SurfaceTexture;

    if-ne p2, v3, :cond_28

    .line 816
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 817
    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    goto :goto_3b

    .line 818
    :cond_28
    const-class v2, Landroid/media/MediaRecorder;

    if-ne p2, v2, :cond_32

    .line 819
    const/4 p2, 0x2

    iput p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 820
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    goto :goto_3b

    .line 821
    :cond_32
    const-class v2, Landroid/media/MediaCodec;

    if-ne p2, v2, :cond_94

    .line 822
    const/4 p2, 0x3

    iput p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 823
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 829
    :goto_3b
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    if-eqz p2, :cond_8c

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    if-eqz p2, :cond_8c

    .line 833
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 834
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 835
    new-instance p2, Landroid/util/IntArray;

    invoke-direct {p2}, Landroid/util/IntArray;-><init>()V

    iput-object p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 836
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 837
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 838
    const/16 p1, 0x22

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPublicFormat:I

    .line 839
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result p2

    iput p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 840
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 841
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 842
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 843
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 844
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 845
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 846
    const-wide/16 p1, 0x1

    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 847
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 848
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 849
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 850
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    .line 851
    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 852
    return-void

    .line 830
    :cond_8c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface size needs to be non-zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 825
    :cond_94
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 826
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown surface source class type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Landroid/view/Surface;)V
    .registers 4

    .line 353
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 354
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/Surface;I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 553
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 554
    return-void
.end method

.method private static blacklist convertIntArrayToIntegerList([I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    if-nez p0, :cond_8

    .line 1861
    return-object v0

    .line 1863
    :cond_8
    const/4 v1, 0x0

    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 1864
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1863
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1866
    :cond_18
    return-object v0
.end method

.method private static blacklist convertIntegerToIntList(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1851
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1852
    const/4 v1, 0x0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 1853
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1852
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1855
    :cond_1c
    return-object v0
.end method

.method public static whitelist createInstancesForMultiResolutionOutput(Landroid/hardware/camera2/MultiResolutionImageReader;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/MultiResolutionImageReader;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 623
    const-string v0, "Multi-resolution image reader must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    invoke-static {}, Landroid/hardware/camera2/params/OutputConfiguration;->getAndIncreaseMultiResolutionGroupId()I

    move-result v0

    .line 626
    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->getReaders()[Landroid/media/ImageReader;

    move-result-object v1

    .line 627
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 628
    const/4 v3, 0x0

    :goto_13
    array-length v4, v1

    if-ge v3, v4, :cond_37

    .line 629
    aget-object v4, v1, v3

    .line 630
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/MultiResolutionImageReader;->getStreamInfoForImageReader(Landroid/media/ImageReader;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    move-result-object v4

    .line 632
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    aget-object v6, v1, v3

    .line 633
    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    .line 634
    invoke-virtual {v4}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->setMultiResolutionOutput()V

    .line 636
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 643
    :cond_37
    return-object v2
.end method

.method public static whitelist createInstancesForMultiResolutionOutput(Ljava/util/Collection;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 682
    if-eqz p0, :cond_4f

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4f

    .line 686
    const/16 v0, 0x11

    if-eq p1, v0, :cond_47

    .line 691
    invoke-static {}, Landroid/hardware/camera2/params/OutputConfiguration;->getAndIncreaseMultiResolutionGroupId()I

    move-result v0

    .line 692
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 693
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 694
    new-instance v3, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    .line 695
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v4, v0, p1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(IILandroid/util/Size;)V

    .line 697
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->setMultiResolutionOutput()V

    .line 699
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    goto :goto_1a

    .line 706
    :cond_46
    return-object v1

    .line 687
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NV21 format is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 683
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The streams list must contain at least 2 entries"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getAndIncreaseMultiResolutionGroupId()I
    .registers 2

    .line 1980
    sget-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->sNextMultiResolutionGroupId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/hardware/camera2/params/OutputConfiguration$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndUpdate(Ljava/util/function/IntUnaryOperator;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getAndIncreaseMultiResolutionGroupId$0(I)I
    .registers 3

    .line 1981
    add-int/lit8 v0, p0, 0x1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    add-int/lit8 v0, p0, 0x2

    :cond_7
    return v0
.end method

.method public static whitelist setSurfacesForMultiResolutionOutput(Ljava/util/Collection;Landroid/hardware/camera2/MultiResolutionImageReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/MultiResolutionImageReader;",
            ")V"
        }
    .end annotation

    .line 737
    const-string v0, "outputConfigurations must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v0, "multiResolutionImageReader must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/camera2/MultiResolutionImageReader;->getReaders()[Landroid/media/ImageReader;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_3a

    .line 744
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 745
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    .line 746
    if-nez v1, :cond_2d

    .line 747
    const-string v1, ""

    .line 749
    :cond_2d
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getConfiguredSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/MultiResolutionImageReader;->getSurface(Landroid/util/Size;Ljava/lang/String;)Landroid/view/Surface;

    move-result-object v1

    .line 751
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 752
    goto :goto_19

    .line 753
    :cond_39
    return-void

    .line 740
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outputConfigurations and multiResolutionImageReader sizes must match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist addSensorPixelModeUsed(I)V
    .registers 5

    .line 1112
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 1114
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid sensor pixel mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1120
    return-void

    .line 1122
    :cond_2c
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    return-void
.end method

.method public whitelist addSurface(Landroid/view/Surface;)V
    .registers 5

    .line 1233
    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 1237
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 1238
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot have 2 surfaces for a non-sharing configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1240
    :cond_23
    :goto_23
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_9d

    .line 1245
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 1246
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added surface size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is different than pre-configured size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", the pre-configured size will be used."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutputConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_63
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v1

    if-ne v0, v1, :cond_95

    .line 1258
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_82

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 1259
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v1

    if-ne v0, v1, :cond_7a

    goto :goto_82

    .line 1260
    :cond_7a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The dataspace of added surface doesn\'t match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1263
    :cond_82
    :goto_82
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->mirrorModeSharedSurfaces()Z

    move-result p1

    if-eqz p1, :cond_94

    .line 1265
    iget-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 1267
    :cond_94
    return-void

    .line 1253
    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The format of added surface format doesn\'t match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1241
    :cond_9d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Exceeds maximum number of surfaces"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1235
    :cond_a5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Surface is already added!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist clearColorSpace()V
    .registers 2

    .line 514
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 515
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1847
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableSurfaceSharing()V
    .registers 3

    .line 1028
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-nez v0, :cond_8

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 1033
    return-void

    .line 1029
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot enable surface sharing on multi-resolution output configurations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1913
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1914
    return v0

    .line 1915
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 1916
    return v1

    .line 1917
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v2, :cond_124

    .line 1918
    check-cast p1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1919
    iget v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iget v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    if-ne v2, v3, :cond_123

    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iget-object v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1920
    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    iget v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    if-ne v2, v3, :cond_123

    iget v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iget v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    if-ne v2, v3, :cond_123

    iget v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    if-ne v2, v3, :cond_123

    iget-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iget-boolean v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-ne v2, v3, :cond_123

    iget-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iget-boolean v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-ne v2, v3, :cond_123

    iget v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    if-ne v2, v3, :cond_123

    iget v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iget v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    if-ne v2, v3, :cond_123

    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 1928
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    iget-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    iget-boolean v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-ne v2, v3, :cond_123

    iget-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iget-wide v4, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_123

    iget v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    iget v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    if-ne v2, v3, :cond_123

    iget v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    iget v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    if-ne v2, v3, :cond_123

    iget-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    iget-boolean v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    if-ne v2, v3, :cond_123

    iget-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    iget-wide v4, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7c

    goto/16 :goto_123

    .line 1937
    :cond_7c
    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_8b

    .line 1938
    return v0

    .line 1940
    :cond_8b
    move v2, v0

    :goto_8c
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_aa

    .line 1941
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 1942
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1941
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 1943
    return v0

    .line 1940
    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 1946
    :cond_aa
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->mirrorModeSharedSurfaces()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 1947
    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    iget-object v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_bf

    .line 1948
    return v0

    .line 1950
    :cond_bf
    move v2, v0

    :goto_c0
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_da

    .line 1951
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_d7

    .line 1952
    return v0

    .line 1950
    :cond_d7
    add-int/lit8 v2, v2, 0x1

    goto :goto_c0

    .line 1956
    :cond_da
    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1957
    move v3, v0

    :goto_eb
    if-ge v3, v2, :cond_ff

    .line 1958
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_fc

    .line 1959
    return v0

    .line 1957
    :cond_fc
    add-int/lit8 v3, v3, 0x1

    goto :goto_eb

    .line 1961
    :cond_ff
    iget-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-nez v2, :cond_112

    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_112

    return v0

    .line 1962
    :cond_112
    iget-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iget-wide v4, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11b

    .line 1963
    return v0

    .line 1965
    :cond_11b
    iget v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    iget p1, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    if-eq v2, p1, :cond_122

    .line 1966
    return v0

    .line 1969
    :cond_122
    return v1

    .line 1935
    :cond_123
    :goto_123
    return v0

    .line 1971
    :cond_124
    return v0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 526
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 527
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0

    .line 529
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getConfiguredFormat()I
    .registers 2

    .line 1763
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPublicFormat:I

    return v0
.end method

.method public whitelist getConfiguredSize()Landroid/util/Size;
    .registers 2

    .line 1743
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->updateCachedSurfaceSize()V

    .line 1744
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist getDynamicRangeProfile()J
    .registers 3

    .line 487
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    return-wide v0
.end method

.method public whitelist getMaxSharedSurfaceCount()I
    .registers 2

    .line 1685
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist getMirrorMode()I
    .registers 2

    .line 1467
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    return v0
.end method

.method public whitelist getMirrorMode(Landroid/view/Surface;)I
    .registers 3

    .line 1527
    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1530
    const/4 v0, -0x1

    if-eq p1, v0, :cond_15

    .line 1533
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->get(I)I

    move-result p1

    return p1

    .line 1531
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Surface not part of the OutputConfiguration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getPhysicalCameraId()Ljava/lang/String;
    .registers 2

    .line 1829
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRotation()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1723
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    return v0
.end method

.method public blacklist getSensorPixelModes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1791
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getStreamUseCase()J
    .registers 3

    .line 1370
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    return-wide v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 3

    .line 1695
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1696
    const/4 v0, 0x0

    return-object v0

    .line 1699
    :cond_a
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getSurfaceGroupId()I
    .registers 2

    .line 1733
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    return v0
.end method

.method public whitelist getSurfaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1710
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTimestampBase()I
    .registers 2

    .line 1419
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    if-eqz v0, :cond_6

    .line 1420
    const/4 v0, 0x5

    return v0

    .line 1422
    :cond_6
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    return v0
.end method

.method public blacklist getUsage()J
    .registers 3

    .line 1780
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 41

    .line 1992
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    if-eqz v1, :cond_c4

    .line 1993
    iget v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    int-to-float v1, v1

    const/16 v23, 0x11

    iget-object v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1994
    invoke-virtual {v3}, Landroid/util/Size;->hashCode()I

    move-result v3

    int-to-float v3, v3

    const/16 v24, 0x10

    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    int-to-float v4, v4

    const/16 v25, 0xf

    iget v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    int-to-float v5, v5

    const/16 v26, 0xe

    iget v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    int-to-float v6, v6

    const/16 v27, 0xd

    iget v7, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    int-to-float v7, v7

    .line 1995
    const/16 v28, 0xc

    iget-boolean v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v8, :cond_3d

    move/from16 v8, v21

    goto :goto_3f

    :cond_3d
    move/from16 v8, v22

    .line 1996
    :goto_3f
    const/16 v29, 0xb

    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-nez v9, :cond_48

    move/from16 v9, v22

    goto :goto_4f

    :cond_48
    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    int-to-float v9, v9

    .line 1997
    :goto_4f
    const/16 v30, 0xa

    iget-boolean v10, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-eqz v10, :cond_58

    move/from16 v10, v21

    goto :goto_5a

    :cond_58
    move/from16 v10, v22

    :goto_5a
    const/16 v31, 0x9

    iget-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->hashCode()I

    move-result v11

    int-to-float v11, v11

    const/16 v32, 0x8

    const/16 v33, 0x7

    iget-wide v12, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    long-to-float v12, v12

    iget v13, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    int-to-float v13, v13

    const/16 v34, 0x6

    const/16 v35, 0x5

    iget-wide v14, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    long-to-float v14, v14

    iget v15, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    int-to-float v15, v15

    iget v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    int-to-float v2, v2

    move/from16 v37, v1

    iget-object v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 2000
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v1

    int-to-float v1, v1

    .line 2001
    move/from16 v38, v1

    iget-boolean v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    if-eqz v1, :cond_8e

    goto :goto_90

    :cond_8e
    move/from16 v21, v22

    :goto_90
    iget-wide v0, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x12

    new-array v1, v1, [F

    aput v37, v1, v20

    aput v3, v1, v19

    aput v4, v1, v18

    aput v5, v1, v17

    aput v6, v1, v16

    aput v7, v1, v35

    aput v8, v1, v34

    aput v9, v1, v33

    aput v10, v1, v32

    aput v11, v1, v31

    aput v12, v1, v30

    aput v13, v1, v29

    aput v14, v1, v28

    aput v15, v1, v27

    aput v2, v1, v26

    aput v38, v1, v25

    aput v21, v1, v24

    aput v0, v1, v23

    .line 1993
    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    return v0

    .line 2004
    :cond_c4
    const/16 v23, 0x11

    const/16 v24, 0x10

    const/16 v25, 0xf

    const/16 v26, 0xe

    const/16 v27, 0xd

    const/16 v28, 0xc

    const/16 v29, 0xb

    const/16 v30, 0xa

    const/16 v31, 0x9

    const/16 v32, 0x8

    const/16 v33, 0x7

    const/16 v34, 0x6

    const/16 v35, 0x5

    iget v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    int-to-float v1, v1

    iget-object v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 2005
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    int-to-float v3, v3

    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 2006
    invoke-virtual {v4}, Landroid/util/Size;->hashCode()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    int-to-float v5, v5

    iget v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    int-to-float v6, v6

    iget v7, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    int-to-float v7, v7

    .line 2007
    iget-boolean v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v8, :cond_102

    move/from16 v8, v21

    goto :goto_104

    :cond_102
    move/from16 v8, v22

    .line 2008
    :goto_104
    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-nez v9, :cond_10b

    move/from16 v9, v22

    goto :goto_112

    :cond_10b
    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    int-to-float v9, v9

    .line 2009
    :goto_112
    iget-boolean v10, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-eqz v10, :cond_119

    move/from16 v10, v21

    goto :goto_11b

    :cond_119
    move/from16 v10, v22

    :goto_11b
    iget-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->hashCode()I

    move-result v11

    int-to-float v11, v11

    iget-wide v12, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    long-to-float v12, v12

    iget v13, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    int-to-float v13, v13

    iget-wide v14, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    long-to-float v14, v14

    iget v15, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    int-to-float v15, v15

    move/from16 v37, v1

    iget v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    int-to-float v1, v1

    move/from16 v38, v1

    iget-object v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 2011
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v1

    int-to-float v1, v1

    .line 2012
    move/from16 v39, v1

    iget-boolean v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    if-eqz v1, :cond_147

    goto :goto_149

    :cond_147
    move/from16 v21, v22

    :goto_149
    iget-wide v0, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 2013
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x13

    new-array v1, v1, [F

    aput v37, v1, v20

    aput v2, v1, v19

    aput v3, v1, v18

    aput v4, v1, v17

    aput v5, v1, v16

    aput v6, v1, v35

    aput v7, v1, v34

    aput v8, v1, v33

    aput v9, v1, v32

    aput v10, v1, v31

    aput v11, v1, v30

    aput v12, v1, v29

    aput v13, v1, v28

    aput v14, v1, v27

    aput v15, v1, v26

    aput v38, v1, v25

    aput v39, v1, v24

    aput v21, v1, v23

    const/16 v36, 0x12

    aput v0, v1, v36

    .line 2004
    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isDeferredConfiguration()Z
    .registers 2

    .line 1167
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    return v0
.end method

.method public greylist-max-o isForPhysicalCamera()Z
    .registers 2

    .line 1152
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isMultiResolution()Z
    .registers 2

    .line 1815
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    return v0
.end method

.method public whitelist isReadoutTimestampEnabled()Z
    .registers 2

    .line 1566
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    return v0
.end method

.method public blacklist isShared()Z
    .registers 2

    .line 1802
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    return v0
.end method

.method public whitelist removeSensorPixelModeUsed(I)V
    .registers 5

    .line 1138
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1142
    return-void

    .line 1139
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorPixelMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "is not part of this output configuration"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeSurface(Landroid/view/Surface;)V
    .registers 3

    .line 1289
    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eq v0, p1, :cond_2d

    .line 1295
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1296
    const/4 v0, -0x1

    if-eq p1, v0, :cond_25

    .line 1300
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1301
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->mirrorModeSharedSurfaces()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1302
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->remove(I)V

    .line 1304
    :cond_24
    return-void

    .line 1297
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Surface is not part of this output configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1291
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot remove surface associated with this output configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setColorSpace(Landroid/graphics/ColorSpace$Named;)V
    .registers 2

    .line 504
    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 505
    return-void
.end method

.method public whitelist setDynamicRangeProfile(J)V
    .registers 3

    .line 478
    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 479
    return-void
.end method

.method public whitelist setMirrorMode(I)V
    .registers 5

    .line 1448
    if-ltz p1, :cond_19

    const/4 v0, 0x3

    if-gt p1, v0, :cond_19

    .line 1452
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 1453
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1454
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/IntArray;->set(II)V

    .line 1453
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1456
    :cond_18
    return-void

    .line 1450
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid mirror mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMirrorMode(Landroid/view/Surface;I)V
    .registers 5

    .line 1497
    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    if-ltz p2, :cond_21

    const/4 v0, 0x3

    if-gt p2, v0, :cond_21

    .line 1502
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1503
    const/4 v0, -0x1

    if-eq p1, v0, :cond_19

    .line 1507
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/IntArray;->set(II)V

    .line 1508
    return-void

    .line 1504
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface not part of the OutputConfiguration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1500
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a valid mirror mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setMultiResolutionOutput()V
    .registers 3

    .line 445
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-nez v0, :cond_15

    .line 449
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 455
    return-void

    .line 450
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multi-resolution output flag should only be set for surface with non-negative group ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multi-resolution output flag must not be set for configuration with surface sharing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPhysicalCameraId(Ljava/lang/String;)V
    .registers 2

    .line 1066
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 1067
    return-void
.end method

.method public whitelist setReadoutTimestampEnabled(Z)V
    .registers 2

    .line 1558
    iput-boolean p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 1559
    return-void
.end method

.method public whitelist setStreamUseCase(J)V
    .registers 6

    .line 1351
    nop

    .line 1352
    const-wide/16 v0, 0x6

    cmp-long v0, p1, v0

    if-lez v0, :cond_28

    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    goto :goto_28

    .line 1354
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid stream use case value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_28
    :goto_28
    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 1359
    return-void
.end method

.method public whitelist setTimestampBase(I)V
    .registers 5

    .line 1394
    if-ltz p1, :cond_15

    const/4 v0, 0x5

    if-gt p1, v0, :cond_15

    .line 1400
    if-ne p1, v0, :cond_f

    .line 1401
    const/4 p1, 0x1

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 1402
    iput-boolean p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 1403
    iput-boolean p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    goto :goto_14

    .line 1405
    :cond_f
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 1406
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    .line 1408
    :goto_14
    return-void

    .line 1396
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid timestamp base value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateCachedSurfaceSize()V
    .registers 2

    .line 1180
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1181
    if-eqz v0, :cond_c

    .line 1182
    invoke-static {v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1184
    :cond_c
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1871
    if-eqz p1, :cond_7c

    .line 1874
    iget p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    iget p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    iget p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1880
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getConfiguredSize()Landroid/util/Size;

    move-result-object p2

    .line 1881
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1882
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1883
    iget-boolean p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1884
    iget-boolean p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1885
    iget-object p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1886
    iget-object p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1887
    iget-boolean p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1889
    iget-object p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/hardware/camera2/params/OutputConfiguration;->convertIntegerToIntList(Ljava/util/List;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1890
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1891
    iget p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1892
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1893
    iget p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1894
    iget p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    iget-object p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {p2}, Landroid/util/IntArray;->toArray()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1896
    iget-boolean p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1897
    iget p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1898
    iget p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1899
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1900
    return-void

    .line 1872
    :cond_7c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
